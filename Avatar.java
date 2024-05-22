public class Avatar{
    public ArrayList<Clothing> clothesOn;
    public int rating;

    public Avatar(){
        clothesOn = new ArrayList<Clothing>();
        rating = 0;
    }

    public boolean addClothing(Clothing c){
        clothesOn.add(c);
        return true;
    }

    public boolean removeClothing(Clothing c){
        for (int i = 0; i < clothesOn.size(); i++){
            if (c.getFile().equals(clothesOn.get(i).getFile())){
                clothesOn.remove(i);
            }
        }
        return true;
    }
}