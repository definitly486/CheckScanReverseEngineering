package androidx.compose.foundation.layout;

import defpackage.cl4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class FlowLayoutOverflowKt {
    public static final cl4<Integer> lazyInt(String str, ll3<Integer> ll3Var) {
        return new LazyImpl(ll3Var, str);
    }

    public static /* synthetic */ cl4 lazyInt$default(String str, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "Lazy item is not yet initialized";
        }
        return lazyInt(str, ll3Var);
    }
}
