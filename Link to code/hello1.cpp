int main(){
	int x,y,z,a,b,c,d,e,f,p,q;
	if(x>0){
		x=a;  // [[v1,x,a]]
		y=b;	//[[v1,x,a],[v2,y,b]]
		c=x+y;  //[[v1,x,a],[v2,y,b],[v3,c,v1+v2]]
		z=10;   //[[v1,x,a],[v2,y,b],[v3,c,v1+v2],[v4,z,10]]
		e=c+z;  //[[v1,x,a],[v2,y,b],[v3,c,v1+v2],[v4,z,10],[v5,e,v3+V4]]
	}
	else{
		p=x;  //[[v6,p,x]]
		q=y;   //[[v6,p,x],[v7,p,y]]
		z=10;  //[[v6,p,x],[v7,p,y],[v8,z,10]]
		d=p+q;  //[[v6,p,x],[v7,p,y],[v8,z,10],[v9,d,v6+v7]]
		f=d+z;  //[[v6,p,x],[v7,p,y],[v8,z,10],[v9,d,v6+v7],[v10,f,v9+v8]]
	}
	
}
