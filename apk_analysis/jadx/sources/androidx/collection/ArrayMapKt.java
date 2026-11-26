package androidx.collection;

import defpackage.b36;
import defpackage.zx0;

/* JADX INFO: loaded from: classes.dex */
public final class ArrayMapKt {
    public static final <K, V> ArrayMap<K, V> arrayMapOf(b36<? extends K, ? extends V>... b36VarArr) {
        b36VarArr.getClass();
        zx0 zx0Var = (ArrayMap<K, V>) new ArrayMap(b36VarArr.length);
        for (b36<? extends K, ? extends V> b36Var : b36VarArr) {
            zx0Var.put(b36Var.b, b36Var.c);
        }
        return zx0Var;
    }

    public static final <K, V> ArrayMap<K, V> arrayMapOf() {
        return new ArrayMap<>();
    }
}
