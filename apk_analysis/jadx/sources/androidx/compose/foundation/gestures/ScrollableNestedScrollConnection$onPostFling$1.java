package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollableNestedScrollConnection", f = "Scrollable.kt", l = {1008}, m = "onPostFling-RZ2iAVY", v = 1)
public final class ScrollableNestedScrollConnection$onPostFling$1 extends f02 {
    long J$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ScrollableNestedScrollConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableNestedScrollConnection$onPostFling$1(ScrollableNestedScrollConnection scrollableNestedScrollConnection, e02<? super ScrollableNestedScrollConnection$onPostFling$1> e02Var) {
        super(e02Var);
        this.this$0 = scrollableNestedScrollConnection;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1601onPostFlingRZ2iAVY(0L, 0L, this);
    }
}
