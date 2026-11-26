package androidx.camera.camera2.pipe;

import defpackage.jh;

/* JADX INFO: loaded from: classes.dex */
public final class StreamId {
    private final int value;

    private /* synthetic */ StreamId(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StreamId m723boximpl(int i) {
        return new StreamId(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m724constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m725equalsimpl(int i, Object obj) {
        return (obj instanceof StreamId) && i == ((StreamId) obj).m729unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m726equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m727hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m728toStringimpl(int i) {
        return jh.b(i, "Stream-");
    }

    public boolean equals(Object obj) {
        return m725equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m727hashCodeimpl(this.value);
    }

    public String toString() {
        return m728toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m729unboximpl() {
        return this.value;
    }
}
