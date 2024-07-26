program FishingGame;

uses
  crt, Menus, GameMechanics;

var
  mainChoice: integer;
  inGameChoice: integer;

begin
  repeat
    ShowMainMenu;
    readln(mainChoice);
    case mainChoice of
      1: begin
        NewGame;
        repeat
          ShowInGameMenu;
          readln(inGameChoice);
          case inGameChoice of
            1: writeln('Biome'); // Implement biome logic
            2: Settings;
            3: DailyReward;
            4: Quests;
            5: Shop;
            6: Fish;
            7: SellFish;
          end;
        until inGameChoice = 0; // Placeholder to exit the in-game menu
      end;
      2: Settings;
    end;
  until mainChoice = 3;
end.
