package androidx.compose.foundation.layout;

/* JADX INFO: loaded from: classes.dex */
public final class Fr {
    private final float value;

    private /* synthetic */ Fr(float f) {
        this.value = f;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Fr m1912boximpl(float f) {
        return new Fr(f);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static float m1913constructorimpl(float f) {
        return f;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1914equalsimpl(float f, Object obj) {
        return (obj instanceof Fr) && Float.compare(f, ((Fr) obj).m1918unboximpl()) == 0;
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1915equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1916hashCodeimpl(float f) {
        return Float.hashCode(f);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1917toStringimpl(float f) {
        return f + ".fr";
    }

    public boolean equals(Object obj) {
        return m1914equalsimpl(this.value, obj);
    }

    public final float getValue() {
        return this.value;
    }

    public int hashCode() {
        return m1916hashCodeimpl(this.value);
    }

    public String toString() {
        return m1917toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float m1918unboximpl() {
        return this.value;
    }
}
