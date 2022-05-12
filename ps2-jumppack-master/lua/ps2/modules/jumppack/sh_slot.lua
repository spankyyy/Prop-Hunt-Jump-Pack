Pointshop2.AddEquipmentSlot( "JumpPack", function( item )
    --Check if the item is a jumpack item
    return instanceOf( Pointshop2.GetItemClassByName( "jumppack" ), item )
end )