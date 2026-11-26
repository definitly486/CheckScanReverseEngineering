package yads;

import androidx.collection.SieveCacheKt;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bq3 extends cq3 {
    public static int[] a(Collection collection) {
        if (collection instanceof aq3) {
            return ((aq3) collection).a();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            Object obj = array[i];
            obj.getClass();
            iArr[i] = ((Number) obj).intValue();
        }
        return iArr;
    }

    public static int b(long j) {
        if (j > SieveCacheKt.NodeLinkMask) {
            return Integer.MAX_VALUE;
        }
        if (j < SieveCacheKt.NodeMetaAndPreviousMask) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int a(long j) {
        int i = (int) j;
        if (((long) i) == j) {
            return i;
        }
        defpackage.fg.c(gt5.a("Out of range: %s", Long.valueOf(j)));
        return 0;
    }
}
