package androidx.compose.material3;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ExposedDropdownMenuAnchorType {
    private final String name;
    public static final Companion Companion = new Companion(null);
    private static final String PrimaryNotEditable = m3428constructorimpl("PrimaryNotEditable");
    private static final String PrimaryEditable = m3428constructorimpl("PrimaryEditable");
    private static final String SecondaryEditable = m3428constructorimpl("SecondaryEditable");

    private /* synthetic */ ExposedDropdownMenuAnchorType(String str) {
        this.name = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ExposedDropdownMenuAnchorType m3427boximpl(String str) {
        return new ExposedDropdownMenuAnchorType(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static String m3428constructorimpl(String str) {
        return str;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3429equalsimpl(String str, Object obj) {
        return (obj instanceof ExposedDropdownMenuAnchorType) && aa4.e(str, ((ExposedDropdownMenuAnchorType) obj).m3433unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3430equalsimpl0(String str, String str2) {
        return aa4.e(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3431hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3432toStringimpl(String str) {
        return str;
    }

    public boolean equals(Object obj) {
        return m3429equalsimpl(this.name, obj);
    }

    public int hashCode() {
        return m3431hashCodeimpl(this.name);
    }

    public String toString() {
        return m3432toStringimpl(this.name);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m3433unboximpl() {
        return this.name;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getPrimaryEditable-oYjWRB4, reason: not valid java name */
        public final String m3434getPrimaryEditableoYjWRB4() {
            return ExposedDropdownMenuAnchorType.PrimaryEditable;
        }

        /* JADX INFO: renamed from: getPrimaryNotEditable-oYjWRB4, reason: not valid java name */
        public final String m3435getPrimaryNotEditableoYjWRB4() {
            return ExposedDropdownMenuAnchorType.PrimaryNotEditable;
        }

        /* JADX INFO: renamed from: getSecondaryEditable-oYjWRB4, reason: not valid java name */
        public final String m3436getSecondaryEditableoYjWRB4() {
            return ExposedDropdownMenuAnchorType.SecondaryEditable;
        }

        private Companion() {
        }
    }
}
