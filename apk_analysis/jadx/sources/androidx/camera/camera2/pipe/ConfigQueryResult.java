package androidx.camera.camera2.pipe;

import com.google.firebase.inappmessaging.display.internal.injection.keys.LayoutConfigKey;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigQueryResult {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int UNKNOWN = m402constructorimpl(0);
    private static final int SUPPORTED = m402constructorimpl(1);
    private static final int UNSUPPORTED = m402constructorimpl(2);

    private /* synthetic */ ConfigQueryResult(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ConfigQueryResult m401boximpl(int i) {
        return new ConfigQueryResult(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m402constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m403equalsimpl(int i, Object obj) {
        return (obj instanceof ConfigQueryResult) && i == ((ConfigQueryResult) obj).m407unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m404equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m405hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m406toStringimpl(int i) {
        if (m404equalsimpl0(i, SUPPORTED)) {
            return "SUPPORTED";
        }
        return m404equalsimpl0(i, UNSUPPORTED) ? LayoutConfigKey.UNSUPPORTED : "UNKNOWN";
    }

    public boolean equals(Object obj) {
        return m403equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m405hashCodeimpl(this.value);
    }

    public String toString() {
        return m406toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m407unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getSUPPORTED-Xp6DSB4, reason: not valid java name */
        public final int m408getSUPPORTEDXp6DSB4() {
            return ConfigQueryResult.SUPPORTED;
        }

        /* JADX INFO: renamed from: getUNKNOWN-Xp6DSB4, reason: not valid java name */
        public final int m409getUNKNOWNXp6DSB4() {
            return ConfigQueryResult.UNKNOWN;
        }

        /* JADX INFO: renamed from: getUNSUPPORTED-Xp6DSB4, reason: not valid java name */
        public final int m410getUNSUPPORTEDXp6DSB4() {
            return ConfigQueryResult.UNSUPPORTED;
        }

        private Companion() {
        }
    }
}
