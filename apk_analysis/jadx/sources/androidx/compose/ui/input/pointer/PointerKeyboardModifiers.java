package androidx.compose.ui.input.pointer;

import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerKeyboardModifiers {
    private final int packedValue;

    private /* synthetic */ PointerKeyboardModifiers(int i) {
        this.packedValue = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PointerKeyboardModifiers m7632boximpl(int i) {
        return new PointerKeyboardModifiers(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7633constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7634equalsimpl(int i, Object obj) {
        return (obj instanceof PointerKeyboardModifiers) && i == ((PointerKeyboardModifiers) obj).m7638unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7635equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7636hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7637toStringimpl(int i) {
        return qz0.d("PointerKeyboardModifiers(packedValue=", i, ')');
    }

    public boolean equals(Object obj) {
        return m7634equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m7636hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m7637toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7638unboximpl() {
        return this.packedValue;
    }
}
