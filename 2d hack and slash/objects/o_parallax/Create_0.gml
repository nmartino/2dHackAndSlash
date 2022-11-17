var layerId = layer_get_id("closeGravesBackground");
var backgroundId = layer_background_get_id(layerId);
layer_background_blend(backgroundId,closeGrave);

layerId = layer_get_id("farGravesBackground");
backgroundId = layer_background_get_id(layerId);
layer_background_blend(backgroundId,farGrave);