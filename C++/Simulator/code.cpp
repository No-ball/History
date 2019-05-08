#include<iostream>
#include<string>
#include<vector>
#include<map>

using namespace std;

class Technology {

    public:

        string name;

        int level;
        int dailyEarn;
        int dailyPollution;
        int reputation;
        int cost;

        bool unlocked;

    Technology() {

    }

    Technology(string name, int level, int dailyEarn,int dailyPollution, int reputation, int cost) {
        this->name = name;
        this->dailyEarn = dailyEarn;
        this->dailyPollution = dailyPollution;
        this->reputation = reputation;
        this->cost = cost;
    }

};

class Company {

    public:

        string name;

        int money;
        int dailyEarn;
        int pollution;
        int dailyPollution;
        int reputation;

        vector<Technology> ownedTechnology;
        vector<Company> ownedCompany;

        bool isBought;

    Company(string name, int money, int dailyEarn, int pollution, int dailyPollution, int reputation) {
        this->name = name;
        this->money = money;
        this->dailyEarn = dailyEarn;
        this->pollution = pollution;
        this->dailyPollution = dailyPollution;
        this->reputation = reputation;
    }

    void Grow() {
        this->money += this->dailyEarn;
        this->pollution += this->dailyPollution;
    }

    void printInfo() {
        cout << "name: " << this->name << "\n";
        cout << "money: " << this->money << "\n";
        cout << "dailyEarn: " << this->dailyEarn << "\n";
        cout << "pollution: " << this->pollution << "\n";
        cout << "dailyPollution: " << this->dailyPollution << "\n";
        cout << "reputation: " << this->reputation << "\n";
        cout << "----------------------------\n";
    }

    void buyTechnology(Technology technology) {
        cout << technology.name << "\n";
        this->ownedTechnology.push_back(technology);
        this->money -= technology.cost;
        this->dailyEarn += technology.dailyEarn;
        this->dailyPollution += technology.dailyPollution;
        this->reputation += technology.reputation;
    }

};

int main() {

    string op;
    int n;
    string tech;

    vector<Company> companyList;

    map<string, Technology> technologyList;

    Company Alice("Alice", 1000, 100, 50, 5, 1);
    companyList.push_back(Alice);

    Company User("User", 1000, 100, 50, 5, 1);
    companyList.push_back(User);

    Technology firePlant("firePlant", 0, 10, 10, 1, 10000);
    technologyList["firePlant"] = firePlant;

    while(1){
        cin >> op;
        if (op == "skip"){
            cin >> n;
            for (int i = 0; i < companyList.size(); i++) {
                for(int j = 0; j < n; j++) {
                    companyList[i].Grow();
                }
                companyList[i].printInfo();
            }
        }
        if (op == "buy") {
            cin >> tech;
            User.buyTechnology(technologyList[tech]);
            cout << "success\n";
        }
        if (op == "list") {
            for (int i = 0; i < companyList.size(); i++)
                companyList[i].printInfo();
        }
        if (op == "end")
            break;
    }

    return 0;

}