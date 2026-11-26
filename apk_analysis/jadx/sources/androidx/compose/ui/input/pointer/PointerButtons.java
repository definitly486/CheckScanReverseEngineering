package androidx.compose.ui.input.pointer;

import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerButtons {
    private final int packedValue;

    private /* synthetic */ PointerButtons(int i) {
        this.packedValue = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PointerButtons m7492boximpl(int i) {
        return new PointerButtons(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7493constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7494equalsimpl(int i, Object obj) {
        return (obj instanceof PointerButtons) && i == ((PointerButtons) obj).m7498unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7495equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7496hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7497toStringimpl(int i) {
        return qz0.d("PointerButtons(packedValue=", i, ')');
    }

    public boolean equals(Object obj) {
        return m7494equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m7496hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m7497toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7498unboximpl() {
        return this.packedValue;
    }
}
