nohup java -cp weka.jar weka.classifiers.functions.MultilayerPerceptron  -L 0.3 -M 0.2 -N 100000 -V 0 -S 0 -E 20 -H "a,a" -R -t ~/work/git/makeArff/training_data_deck_1.arff  -d ./nn_h2_8_8_n10000_deck1_kusanag.model &
nohup java -cp weka.jar weka.classifiers.functions.MultilayerPerceptron  -L 0.3 -M 0.2 -N 100000 -V 0 -S 0 -E 20 -H "a,a" -R -t ~/work/git/makeArff/training_data_deck_2.arff  -d ./nn_h2_8_8_n10000_deck2_kusanag.model &
nohup java -cp weka.jar weka.classifiers.functions.MultilayerPerceptron  -L 0.3 -M 0.2 -N 100000 -V 0 -S 0 -E 20 -H "a,a" -R -t ~/work/git/makeArff/training_data_deck_3.arff  -d ./nn_h2_8_8_n10000_deck3_kusanag.model &

