package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.gh4;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorComponent$drawVectorBlock$1 extends gh4 implements nl3<DrawScope, j59> {
    final /* synthetic */ VectorComponent this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorComponent$drawVectorBlock$1(VectorComponent vectorComponent) {
        super(1);
        this.this$0 = vectorComponent;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DrawScope drawScope) {
        GroupComponent root = this.this$0.getRoot();
        VectorComponent vectorComponent = this.this$0;
        float f = vectorComponent.rootScaleX;
        float f2 = vectorComponent.rootScaleY;
        long jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6734scale0AR0LA0(f, f2, jM6003getZeroF1C5BW0);
            root.draw(drawScope);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
        invoke2(drawScope);
        return j59.a;
    }
}
