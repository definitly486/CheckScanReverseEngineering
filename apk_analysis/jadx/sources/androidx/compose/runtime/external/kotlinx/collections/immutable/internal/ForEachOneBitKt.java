package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ForEachOneBitKt {
    public static final void forEachOneBit(int i, bm3<? super Integer, ? super Integer, j59> bm3Var) {
        int i2 = 0;
        while (i != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i);
            bm3Var.invoke(Integer.valueOf(iLowestOneBit), Integer.valueOf(i2));
            i2++;
            i ^= iLowestOneBit;
        }
    }
}
