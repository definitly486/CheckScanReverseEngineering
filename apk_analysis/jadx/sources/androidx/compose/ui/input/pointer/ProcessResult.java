package androidx.compose.ui.input.pointer;

import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class ProcessResult {
    private final int value;

    private /* synthetic */ ProcessResult(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ProcessResult m7653boximpl(int i) {
        return new ProcessResult(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m7654constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7655equalsimpl(int i, Object obj) {
        return (obj instanceof ProcessResult) && i == ((ProcessResult) obj).m7662unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7656equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: getAnyChangeConsumed-impl, reason: not valid java name */
    public static final boolean m7657getAnyChangeConsumedimpl(int i) {
        return (i & 4) != 0;
    }

    /* JADX INFO: renamed from: getAnyMovementConsumed-impl, reason: not valid java name */
    public static final boolean m7658getAnyMovementConsumedimpl(int i) {
        return (i & 2) != 0;
    }

    /* JADX INFO: renamed from: getDispatchedToAPointerInputModifier-impl, reason: not valid java name */
    public static final boolean m7659getDispatchedToAPointerInputModifierimpl(int i) {
        return (i & 1) != 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7660hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7661toStringimpl(int i) {
        return qz0.d("ProcessResult(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m7655equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m7660hashCodeimpl(this.value);
    }

    public String toString() {
        return m7661toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m7662unboximpl() {
        return this.value;
    }
}
