package androidx.camera.camera2.pipe;

import defpackage.jh;

/* JADX INFO: loaded from: classes.dex */
public final class InputStreamId {
    private final int value;

    private /* synthetic */ InputStreamId(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ InputStreamId m483boximpl(int i) {
        return new InputStreamId(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m484constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m485equalsimpl(int i, Object obj) {
        return (obj instanceof InputStreamId) && i == ((InputStreamId) obj).m489unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m486equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m487hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m488toStringimpl(int i) {
        return jh.b(i, "Input-");
    }

    public boolean equals(Object obj) {
        return m485equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m487hashCodeimpl(this.value);
    }

    public String toString() {
        return m488toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m489unboximpl() {
        return this.value;
    }
}
