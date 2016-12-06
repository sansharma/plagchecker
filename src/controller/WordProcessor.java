package controller;

import java.util.*;

/**
 * Created by l on 12/4/2016.
 */
public class WordProcessor {

    private Map<String,Integer> wordFrequencyFirst = null;
    private Map<String,Integer> wordFrequencySecond = null;

    public WordProcessor(){
        wordFrequencyFirst = new LinkedHashMap<>();
        wordFrequencySecond = new LinkedHashMap<>();
    }

    public double getSimilarity(String firstLine,String secondLine){
        double cosineSimilarity = 0.0;

        List<String> firstTokenizeWords = getTokenizeWords(firstLine);
        List<String> secondTokenizeWords = getTokenizeWords(secondLine);

        setFrequencyData(firstTokenizeWords,secondTokenizeWords);


        int dotProduct = getDotProduct();
        double firstMagnitude = getMagnitude(new ArrayList<>(wordFrequencyFirst.values()));
        double secondMagnitude = getMagnitude(new ArrayList<>(wordFrequencySecond.values()));

        cosineSimilarity = dotProduct/(firstMagnitude*secondMagnitude);

        return cosineSimilarity;
    }


    public List<String> getTokenizeWords(String text){

        String[] words = text.toLowerCase().split(" ");
        return new ArrayList<>(Arrays.asList(words));
    }

    public void setFrequencyData(List<String> listOne,List<String> listTwo){

        listOne.forEach(word->{
            setFrequencyOfFirst(listOne,word);
            setFrequencyOfSecond(listTwo,word);
        });

        listTwo.forEach(word->{
            setFrequencyOfFirst(listOne,word);
            setFrequencyOfSecond(listTwo,word);
        });

        System.out.println(wordFrequencyFirst);
        System.out.println(wordFrequencySecond);
    }

    public void setFrequencyOfFirst(List<String> listOne,String word){
        if(!wordFrequencyFirst.keySet().contains(word)){
            final int[] wordCount = {0};
            listOne.forEach(w->{
                if(w.equalsIgnoreCase(word)){
                    wordCount[0]++;
                }
            });
            wordFrequencyFirst.put(word,wordCount[0]);
        }

    }

    public void setFrequencyOfSecond(List<String> listTwo,String word){

        if(!wordFrequencySecond.containsKey(word)){
            final int[] wordCount = {0};
            listTwo.forEach(w->{
                if(w.equalsIgnoreCase(word)){
                    wordCount[0]++;
                }
            });
            wordFrequencySecond.put(word,wordCount[0]);
        }

    }

    public int getDotProduct(){
        List<Integer> firstVector =  new ArrayList<>(wordFrequencyFirst.values());
        List<Integer> secondVector =  new ArrayList<>(wordFrequencySecond.values());
        int dotProduct = 0;

        for(int i = 0;i<firstVector.size();i++){
            dotProduct+=firstVector.get(i)*secondVector.get(i);
        }

        return dotProduct;

    }

    public double getDotProduct(List<Integer> firstVector,List<Integer> secondVector){
        int dotProduct = 0;

        for(int i = 0;i<firstVector.size();i++){
            dotProduct+=firstVector.get(i)*secondVector.get(i);
        }
        return dotProduct;
    }

    public double getMagnitude(List<Integer> vector){
        return Math.sqrt(getDotProduct(vector,vector));
    }



}

