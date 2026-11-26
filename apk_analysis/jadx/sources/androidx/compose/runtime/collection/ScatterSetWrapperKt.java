package androidx.compose.runtime.collection;

import androidx.collection.ScatterSet;
import defpackage.j59;
import defpackage.nl3;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class ScatterSetWrapperKt {
    /* JADX WARN: Code duplicated, block: B:18:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0055 A[LOOP:0: B:7:0x0016->B:19:0x0055, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x0058 A[SYNTHETIC] */
    public static final boolean fastAny(Set<? extends Object> set, nl3<Object, Boolean> nl3Var) {
        if (!(set instanceof ScatterSetWrapper)) {
            Set<? extends Object> set2 = set;
            if ((set2 instanceof Collection) && set2.isEmpty()) {
                return false;
            }
            Iterator<T> it = set2.iterator();
            while (it.hasNext()) {
                if (nl3Var.invoke(it.next()).booleanValue()) {
                    return true;
                }
            }
            return false;
        }
        ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
        Object[] objArr = set$runtime.elements;
        long[] jArr = set$runtime.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && nl3Var.invoke(objArr[(i << 3) + i3]).booleanValue()) {
                            return true;
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return false;
    }

    public static final <T> void fastForEach(Set<? extends T> set, nl3<? super T, j59> nl3Var) {
        if (!(set instanceof ScatterSetWrapper)) {
            Iterator<T> it = set.iterator();
            while (it.hasNext()) {
                nl3Var.invoke(it.next());
            }
            return;
        }
        ScatterSet<T> set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
        Object[] objArr = set$runtime.elements;
        long[] jArr = set$runtime.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        nl3Var.invoke(objArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public static final <T> Set<T> wrapIntoSet(ScatterSet<T> scatterSet) {
        return new ScatterSetWrapper(scatterSet);
    }
}
