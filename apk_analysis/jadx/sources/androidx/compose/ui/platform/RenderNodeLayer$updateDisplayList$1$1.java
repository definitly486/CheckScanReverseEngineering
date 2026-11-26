package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class RenderNodeLayer$updateDisplayList$1$1 extends gh4 implements nl3<Canvas, j59> {
    final /* synthetic */ bm3<Canvas, GraphicsLayer, j59> $drawBlock;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RenderNodeLayer$updateDisplayList$1$1(bm3<? super Canvas, ? super GraphicsLayer, j59> bm3Var) {
        super(1);
        this.$drawBlock = bm3Var;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Canvas canvas) {
        invoke2(canvas);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Canvas canvas) {
        this.$drawBlock.invoke(canvas, null);
    }
}
