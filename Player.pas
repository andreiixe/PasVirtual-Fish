unit Player;

interface

type
  TRod = (Plastic, Improved, Steel, Fiberglass, Heavy, Alloy, Lava, Magma);
  TBait = (Worms, Leeches);
  TBoat = (Rowboat, Fishboat, Speedboat, Pontoon, Sailboat, Yacht);

  TFish = (Trout, Salmon, Carp, Catfish);  
  TFishCount = array[TFish] of Integer;

  TInventory = record
    Rod: TRod;
    Bait: TBait;
    Boat: TBoat;
    FishCaught: TFishCount;
  end;

  TPlayer = record
    Money: Integer;
    Level: Integer;
    Inventory: TInventory;
    Language: string;
  end;

var
  CurrentPlayer: TPlayer;
  FishValue: array[TFish] of Integer = (10, 20, 30, 40);  

implementation

end.
