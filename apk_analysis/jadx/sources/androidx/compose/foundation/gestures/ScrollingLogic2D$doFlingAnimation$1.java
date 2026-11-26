package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollingLogic2D", f = "Scrollable2D.kt", l = {439}, m = "doFlingAnimation-QWom1Mo", v = 1)
public final class ScrollingLogic2D$doFlingAnimation$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ScrollingLogic2D this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic2D$doFlingAnimation$1(ScrollingLogic2D scrollingLogic2D, e02<? super ScrollingLogic2D$doFlingAnimation$1> e02Var) {
        super(e02Var);
        this.this$0 = scrollingLogic2D;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1590doFlingAnimationQWom1Mo(0L, this);
    }
}
