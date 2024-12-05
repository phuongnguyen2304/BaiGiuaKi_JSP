package Bai13;

public class Vote {
    private String question;
    private String[] choices;
    private int[] counts;
    public Vote(String question, String[] choices, int[] counts) {
        this.question = question;
        this.choices = choices;
        this.counts = counts;
    }
    public String getQuestion() {
        return question;
    }
    public void setQuestion(String question) {
        this.question = question;
    }
    public String[] getChoices() {
        return choices;
    }
    public void setChoices(String[] choices) {
        this.choices = choices;
    }
    public int[] getCounts() {
        return counts;
    }
    public void setCounts(int[] counts) {
        this.counts = counts;
    }
}
