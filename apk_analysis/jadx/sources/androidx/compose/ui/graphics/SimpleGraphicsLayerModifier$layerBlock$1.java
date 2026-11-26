package androidx.compose.ui.graphics;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SimpleGraphicsLayerModifier$layerBlock$1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
    final /* synthetic */ SimpleGraphicsLayerModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleGraphicsLayerModifier$layerBlock$1(SimpleGraphicsLayerModifier simpleGraphicsLayerModifier) {
        super(1);
        this.this$0 = simpleGraphicsLayerModifier;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setScaleX(this.this$0.getScaleX());
        graphicsLayerScope.setScaleY(this.this$0.getScaleY());
        graphicsLayerScope.setAlpha(this.this$0.getAlpha());
        graphicsLayerScope.setTranslationX(this.this$0.getTranslationX());
        graphicsLayerScope.setTranslationY(this.this$0.getTranslationY());
        graphicsLayerScope.setShadowElevation(this.this$0.getShadowElevation());
        graphicsLayerScope.setRotationX(this.this$0.getRotationX());
        graphicsLayerScope.setRotationY(this.this$0.getRotationY());
        graphicsLayerScope.setRotationZ(this.this$0.getRotationZ());
        graphicsLayerScope.setCameraDistance(this.this$0.getCameraDistance());
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(this.this$0.m6582getTransformOriginSzJe1aQ());
        graphicsLayerScope.setShape(this.this$0.getShape());
        graphicsLayerScope.setClip(this.this$0.getClip());
        graphicsLayerScope.setRenderEffect(this.this$0.getRenderEffect());
        graphicsLayerScope.mo6429setAmbientShadowColor8_81llA(this.this$0.m6578getAmbientShadowColor0d7_KjU());
        graphicsLayerScope.mo6432setSpotShadowColor8_81llA(this.this$0.m6581getSpotShadowColor0d7_KjU());
        graphicsLayerScope.mo6431setCompositingStrategyaDBOjCE(this.this$0.m6580getCompositingStrategyNrFUSI());
        graphicsLayerScope.mo6430setBlendModes9anfk8(this.this$0.m6579getBlendMode0nO6VwU());
        graphicsLayerScope.setColorFilter(this.this$0.getColorFilter());
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
        invoke2(graphicsLayerScope);
        return j59.a;
    }
}
