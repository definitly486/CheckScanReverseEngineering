package androidx.compose.foundation.gestures;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogic", f = "NonTouchScrollingLogic.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "userScroll$foundation", v = 1)
public final class NonTouchScrollingLogic$userScroll$1 extends f02 {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NonTouchScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonTouchScrollingLogic$userScroll$1(NonTouchScrollingLogic nonTouchScrollingLogic, e02<? super NonTouchScrollingLogic$userScroll$1> e02Var) {
        super(e02Var);
        this.this$0 = nonTouchScrollingLogic;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.userScroll$foundation(null, this);
    }
}
