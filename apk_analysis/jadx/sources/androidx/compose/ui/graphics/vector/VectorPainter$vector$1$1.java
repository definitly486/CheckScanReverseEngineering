package androidx.compose.ui.graphics.vector;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class VectorPainter$vector$1$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ VectorPainter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorPainter$vector$1$1(VectorPainter vectorPainter) {
        super(0);
        this.this$0 = vectorPainter;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.setDrawInvalidation(j59.a);
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}
