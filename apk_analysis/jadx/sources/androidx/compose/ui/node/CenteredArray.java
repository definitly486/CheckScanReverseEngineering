package androidx.compose.ui.node;

import defpackage.aa4;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class CenteredArray {
    private final int[] data;

    private /* synthetic */ CenteredArray(int[] iArr) {
        this.data = iArr;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CenteredArray m7857boximpl(int[] iArr) {
        return new CenteredArray(iArr);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int[] m7858constructorimpl(int[] iArr) {
        return iArr;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7859equalsimpl(int[] iArr, Object obj) {
        return (obj instanceof CenteredArray) && aa4.e(iArr, ((CenteredArray) obj).m7866unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7860equalsimpl0(int[] iArr, int[] iArr2) {
        return aa4.e(iArr, iArr2);
    }

    /* JADX INFO: renamed from: get-impl, reason: not valid java name */
    public static final int m7861getimpl(int[] iArr, int i) {
        return iArr[i + m7862getMidimpl(iArr)];
    }

    /* JADX INFO: renamed from: getMid-impl, reason: not valid java name */
    private static final int m7862getMidimpl(int[] iArr) {
        return iArr.length / 2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7863hashCodeimpl(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final void m7864setimpl(int[] iArr, int i, int i2) {
        iArr[i + m7862getMidimpl(iArr)] = i2;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7865toStringimpl(int[] iArr) {
        return "CenteredArray(data=" + Arrays.toString(iArr) + ')';
    }

    public boolean equals(Object obj) {
        return m7859equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m7863hashCodeimpl(this.data);
    }

    public String toString() {
        return m7865toStringimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int[] m7866unboximpl() {
        return this.data;
    }
}
