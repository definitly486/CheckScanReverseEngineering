package androidx.compose.runtime.tooling;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeStackTraceMode {
    private static boolean isMinified;
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m5645constructorimpl(0);
    private static final int GroupKeys = m5645constructorimpl(1);
    private static final int SourceInformation = m5645constructorimpl(2);

    private /* synthetic */ ComposeStackTraceMode(int i) {
        this.value = i;
    }

    public static final /* synthetic */ boolean access$isMinified$cp() {
        return true;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ComposeStackTraceMode m5644boximpl(int i) {
        return new ComposeStackTraceMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m5645constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5646equalsimpl(int i, Object obj) {
        return (obj instanceof ComposeStackTraceMode) && i == ((ComposeStackTraceMode) obj).m5650unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5647equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5648hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5649toStringimpl(int i) {
        return qz0.d("ComposeStackTraceMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m5646equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5648hashCodeimpl(this.value);
    }

    public String toString() {
        return m5649toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m5650unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAuto-MD5MrJc, reason: not valid java name */
        public final int m5651getAutoMD5MrJc() {
            return ComposeStackTraceMode.access$isMinified$cp() ? m5652getGroupKeysMD5MrJc() : m5653getNoneMD5MrJc();
        }

        /* JADX INFO: renamed from: getGroupKeys-MD5MrJc, reason: not valid java name */
        public final int m5652getGroupKeysMD5MrJc() {
            return ComposeStackTraceMode.GroupKeys;
        }

        /* JADX INFO: renamed from: getNone-MD5MrJc, reason: not valid java name */
        public final int m5653getNoneMD5MrJc() {
            return ComposeStackTraceMode.None;
        }

        /* JADX INFO: renamed from: getSourceInformation-MD5MrJc, reason: not valid java name */
        public final int m5654getSourceInformationMD5MrJc() {
            return ComposeStackTraceMode.SourceInformation;
        }

        private Companion() {
        }
    }
}
