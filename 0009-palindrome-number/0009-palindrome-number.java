class Solution {
    public boolean isPalindrome(int x) {
        if (x < 0) {
            return false;
        }
        int temp=x,rev=0,r;
        while(x!=0){
            r=x%10;
            x=x/10;
            rev=(rev*10)+r;   
            }
        if(temp==rev)
        return true;
        else
        return false;
        
    }
}