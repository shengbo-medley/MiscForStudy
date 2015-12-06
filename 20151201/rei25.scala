import org.apache.spark.SparkContext
import org.apache.spark.mllib.tree.RandomForest
import org.apache.spark.mllib.util
import org.apache.spark.mllib.util.MLUtils
import org.apache.spark.mllib.evaluation.BinaryClassificationMetrics
import org.apache.spark.mllib.evaluation.MulticlassMetrics

val data = MLUtils.loadLibSVMFile(sc, "/Users/shengbo-xu/Develop/MiscForStudy/20151201/bank-full_num.csv")
val splits = data.randomSplit(Array(0.7, 0.3), seed=123)
val (trainingData, testData) = (splits(0), splits(1))
val numClasses = 2
val categoricalFeaturesInfo = Map[Int, Int] (
(1,12),(2,3),(3,4),(4,2),(6,2),(7,2),(8,3),(10,12),(15,4))
val numTrees = 500
val featureSubsetStrategy = "auto"
val impurity = "gini"
val maxDepth = 4
val maxBins = 32
val model = RandomForest.trainClassifier(trainingData, numClasses, categoricalFeaturesInfo, numTrees, featureSubsetStrategy, impurity, maxDepth, maxBins, seed=123)

val labelAndPreds = testData.map { point =>
    val prediction = model.predict(point.features)
    (point.label, prediction) }

val mm_metrics = new MulticlassMetrics(labelAndPreds)
mm_metrics.confusionMatrix
val metrics = new BinaryClassificationMetrics(labelAndPreds)
val auROC = metrics.areaUnderROC()