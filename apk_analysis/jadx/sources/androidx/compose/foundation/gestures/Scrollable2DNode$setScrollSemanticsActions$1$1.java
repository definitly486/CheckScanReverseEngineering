package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.Scrollable2DNode$setScrollSemanticsActions$1$1", f = "Scrollable2D.kt", l = {290}, m = "invokeSuspend", v = 1)
public final class Scrollable2DNode$setScrollSemanticsActions$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ float $x;
    final /* synthetic */ float $y;
    int label;
    final /* synthetic */ Scrollable2DNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scrollable2DNode$setScrollSemanticsActions$1$1(Scrollable2DNode scrollable2DNode, float f, float f2, e02<? super Scrollable2DNode$setScrollSemanticsActions$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = scrollable2DNode;
        this.$x = f;
        this.$y = f2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Scrollable2DNode$setScrollSemanticsActions$1$1(this.this$0, this.$x, this.$y, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Scrollable2DNode$setScrollSemanticsActions$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            ScrollingLogic2D scrollingLogic2D = this.this$0.scrollingLogic;
            float f = this.$x;
            float f2 = this.$y;
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            this.label = 1;
            if (Scrollable2DKt.m1597semanticsScrollByd4ec7I(scrollingLogic2D, jM5979constructorimpl, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
