package androidx.compose.ui.text.input;

import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class MathUtilsKt {
    public static final int addExactOrElse(int i, int i2, ll3<Integer> ll3Var) {
        int i3 = i + i2;
        return ((i ^ i3) & (i2 ^ i3)) < 0 ? ll3Var.invoke().intValue() : i3;
    }

    public static final int subtractExactOrElse(int i, int i2, ll3<Integer> ll3Var) {
        int i3 = i - i2;
        return ((i ^ i3) & (i2 ^ i)) < 0 ? ll3Var.invoke().intValue() : i3;
    }
}
