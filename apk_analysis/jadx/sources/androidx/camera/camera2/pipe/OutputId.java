package androidx.camera.camera2.pipe;

import defpackage.jh;

/* JADX INFO: loaded from: classes.dex */
public final class OutputId {
    private final int value;

    private /* synthetic */ OutputId(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OutputId m503boximpl(int i) {
        return new OutputId(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m504constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m505equalsimpl(int i, Object obj) {
        return (obj instanceof OutputId) && i == ((OutputId) obj).m509unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m506equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m507hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m508toStringimpl(int i) {
        return jh.b(i, "Output-");
    }

    public boolean equals(Object obj) {
        return m505equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m507hashCodeimpl(this.value);
    }

    public String toString() {
        return m508toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m509unboximpl() {
        return this.value;
    }
}
