unit Prices;

interface

uses
  Player;  // Include the Player unit to access TRod, TBait, TBoat

const
  RodPrice: array[TRod] of Integer = (
    50,   // Plastic
    100,  // Improved
    200,  // Steel
    400,  // Fiberglass
    800,  // Heavy
    1600, // Alloy
    3200, // Lava
    6400  // Magma
  );

  BaitPrice: array[TBait] of Integer = (
    5,  // Worms
    10  // Leeches
  );

  BoatPrice: array[TBoat] of Integer = (
    100,   // Rowboat
    500,   // Fishboat
    1000,  // Speedboat
    2000,  // Pontoon
    4000,  // Sailboat
    8000   // Yacht
  );

implementation

end.
