package androidx.compose.foundation.text.input.internal;

import defpackage.aa4;
import defpackage.dm3;
import defpackage.j59;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class OpArray {
    private final int[] values;

    private /* synthetic */ OpArray(int[] iArr) {
        this.values = iArr;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OpArray m2783boximpl(int[] iArr) {
        return new OpArray(iArr);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int[] m2784constructorimpl(int i) {
        return m2785constructorimpl(new int[i * 3]);
    }

    /* JADX INFO: renamed from: copyOf-pSmdads, reason: not valid java name */
    public static final int[] m2786copyOfpSmdads(int[] iArr, int i) {
        return m2785constructorimpl(Arrays.copyOf(iArr, i * 3));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2787equalsimpl(int[] iArr, Object obj) {
        return (obj instanceof OpArray) && aa4.e(iArr, ((OpArray) obj).m2795unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2788equalsimpl0(int[] iArr, int[] iArr2) {
        return aa4.e(iArr, iArr2);
    }

    /* JADX INFO: renamed from: forEach-impl, reason: not valid java name */
    public static final void m2789forEachimpl(int[] iArr, int i, boolean z, dm3<? super Integer, ? super Integer, ? super Integer, j59> dm3Var) {
        if (i < 0) {
            return;
        }
        if (!z) {
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * 3;
                dm3Var.invoke(Integer.valueOf(iArr[i3]), Integer.valueOf(iArr[i3 + 1]), Integer.valueOf(iArr[i3 + 2]));
            }
            return;
        }
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            }
            int i4 = i * 3;
            dm3Var.invoke(Integer.valueOf(iArr[i4]), Integer.valueOf(iArr[i4 + 1]), Integer.valueOf(iArr[i4 + 2]));
        }
    }

    /* JADX INFO: renamed from: forEach-impl$default, reason: not valid java name */
    public static /* synthetic */ void m2790forEachimpl$default(int[] iArr, int i, boolean z, dm3 dm3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if (i < 0) {
            return;
        }
        if (!z) {
            for (int i3 = 0; i3 < i; i3++) {
                int i4 = i3 * 3;
                dm3Var.invoke(Integer.valueOf(iArr[i4]), Integer.valueOf(iArr[i4 + 1]), Integer.valueOf(iArr[i4 + 2]));
            }
            return;
        }
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            }
            int i5 = i * 3;
            dm3Var.invoke(Integer.valueOf(iArr[i5]), Integer.valueOf(iArr[i5 + 1]), Integer.valueOf(iArr[i5 + 2]));
        }
    }

    /* JADX INFO: renamed from: getSize-impl, reason: not valid java name */
    public static final int m2791getSizeimpl(int[] iArr) {
        return iArr.length / 3;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2792hashCodeimpl(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final void m2793setimpl(int[] iArr, int i, int i2, int i3, int i4) {
        int i5 = i * 3;
        iArr[i5] = i2;
        iArr[i5 + 1] = i3;
        iArr[i5 + 2] = i4;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2794toStringimpl(int[] iArr) {
        return "OpArray(values=" + Arrays.toString(iArr) + ')';
    }

    public boolean equals(Object obj) {
        return m2787equalsimpl(this.values, obj);
    }

    public int hashCode() {
        return m2792hashCodeimpl(this.values);
    }

    public String toString() {
        return m2794toStringimpl(this.values);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int[] m2795unboximpl() {
        return this.values;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int[] m2785constructorimpl(int[] iArr) {
        return iArr;
    }
}
