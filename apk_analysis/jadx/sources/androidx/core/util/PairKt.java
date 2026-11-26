package androidx.core.util;

import defpackage.b36;

/* JADX INFO: loaded from: classes.dex */
public final class PairKt {
    public static final <F, S> F component1(Pair<F, S> pair) {
        return pair.first;
    }

    public static final <F, S> S component2(Pair<F, S> pair) {
        return pair.second;
    }

    public static final <F, S> android.util.Pair<F, S> toAndroidPair(b36<? extends F, ? extends S> b36Var) {
        return new android.util.Pair<>(b36Var.b, b36Var.c);
    }

    public static final <F, S> Pair<F, S> toAndroidXPair(b36<? extends F, ? extends S> b36Var) {
        return new Pair<>(b36Var.b, b36Var.c);
    }

    public static final <F, S> b36<F, S> toKotlinPair(Pair<F, S> pair) {
        return new b36<>(pair.first, pair.second);
    }

    public static final <F, S> F component1(android.util.Pair<F, S> pair) {
        return (F) pair.first;
    }

    public static final <F, S> S component2(android.util.Pair<F, S> pair) {
        return (S) pair.second;
    }

    public static final <F, S> b36<F, S> toKotlinPair(android.util.Pair<F, S> pair) {
        return new b36<>(pair.first, pair.second);
    }
}
