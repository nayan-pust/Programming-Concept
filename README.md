# Programming-Concept


// Data Insert in set ??


int solve()
{
  vector<int>v(4);
  set<int>s;
  for(int i=0;i<4;i++)
  {
      cin>>v[i];
      s.insert(v[i]);
  }
  cout<<(4-s.size());
 
}
//cout<<cnt<<endl;
 
 
int main()
{
    Naimur Rahman Nayan
    solve();
 
 
}

// End//


/* Duita string er man kono jaiga soman ase kina bar korar algorithm and solution*/
Q. Duita string input nibo keyboard diyre othoba akta string er man deya thakbe akta string input koreh dekhbo oi string er man input kora man er vetor kono jaiga mill/soman ase kina bar korte hobe::::

_CODE :  
int solve()
{
   ll m=0,y=0,i,n;
    string s;
    cin>>s;
    string a;
    cin>>a;
    n=s.size();
    ll x=a.size();
   for(i=0;i<x;i++)
    {
        if(s[m]==a[i])
        {
            m++;
            y++;
        }
    }
    if(y==n)
    {
        cout<<"True"<<lb;
    }
    else
    {
        cout<<"False"<<lb;
    }
}


int main()
{
    Naimur Rahman Nayan
    solve();
}

