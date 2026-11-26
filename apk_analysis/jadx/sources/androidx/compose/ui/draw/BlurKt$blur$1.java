package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffectKt;
import androidx.compose.ui.graphics.Shape;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class BlurKt$blur$1 extends gh4 implements nl3<GraphicsLayerScope, j59> {
    final /* synthetic */ boolean $clip;
    final /* synthetic */ Shape $edgeTreatment;
    final /* synthetic */ float $radiusX;
    final /* synthetic */ float $radiusY;
    final /* synthetic */ int $tileMode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlurKt$blur$1(float f, float f2, int i, Shape shape, boolean z) {
        super(1);
        this.$radiusX = f;
        this.$radiusY = f2;
        this.$tileMode = i;
        this.$edgeTreatment = shape;
        this.$clip = z;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(GraphicsLayerScope graphicsLayerScope) {
        float fMo1434toPx0680j_4 = graphicsLayerScope.mo1434toPx0680j_4(this.$radiusX);
        float fMo1434toPx0680j_5 = graphicsLayerScope.mo1434toPx0680j_4(this.$radiusY);
        graphicsLayerScope.setRenderEffect((fMo1434toPx0680j_4 <= 0.0f || fMo1434toPx0680j_5 <= 0.0f) ? null : RenderEffectKt.m6556BlurEffect3YTHUZs(fMo1434toPx0680j_4, fMo1434toPx0680j_5, this.$tileMode));
        Shape rectangleShape = this.$edgeTreatment;
        if (rectangleShape == null) {
            rectangleShape = RectangleShapeKt.getRectangleShape();
        }
        graphicsLayerScope.setShape(rectangleShape);
        graphicsLayerScope.setClip(this.$clip);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(GraphicsLayerScope graphicsLayerScope) {
        invoke2(graphicsLayerScope);
        return j59.a;
    }
}
