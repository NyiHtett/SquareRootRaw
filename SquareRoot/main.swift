enum OutOfBound: Error{
    case lessthan, greaterthan, noRoot;
}

func squareRoot(_ num: Int) throws -> Int{
    var ans: Int = 0;
    for i in 1...100{
        if(i<1){
            throw OutOfBound.lessthan;
        }
        if(i>100){
            throw OutOfBound.greaterthan;
        }
        if (i*i == num){
            ans = i;
        }
    }
    if (ans == 0){
        throw OutOfBound.noRoot;
    }
    else{
        return ans;
    }
}

do{
    print(try squareRoot(13));
}
catch(OutOfBound.lessthan){
    print("input must be greater than 1");
}
catch(OutOfBound.greaterthan){
    print("input must be less than 10000");
}
catch(OutOfBound.noRoot){
    print("there is no root");
}

