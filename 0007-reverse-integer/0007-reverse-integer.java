class Solution {
    public int reverse(int x) {
          int r,r1=0;
            while(x!=0){
                r=x%10;
                x=x/10;
                if(r1>Integer.MAX_VALUE/10||r1<Integer.MIN_VALUE/10){return 0;}
                r1=(r1*10)+r;
            }
            return r1;
    }
}