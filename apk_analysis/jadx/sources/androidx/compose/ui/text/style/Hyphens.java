package androidx.compose.ui.text.style;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class Hyphens {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m8806constructorimpl(1);
    private static final int Auto = m8806constructorimpl(2);
    private static final int Unspecified = m8806constructorimpl(0);

    private /* synthetic */ Hyphens(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Hyphens m8805boximpl(int i) {
        return new Hyphens(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8806constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8807equalsimpl(int i, Object obj) {
        return (obj instanceof Hyphens) && i == ((Hyphens) obj).m8811unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8808equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8809hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8810toStringimpl(int i) {
        if (m8808equalsimpl0(i, None)) {
            return "Hyphens.None";
        }
        if (m8808equalsimpl0(i, Auto)) {
            return "Hyphens.Auto";
        }
        return m8808equalsimpl0(i, Unspecified) ? "Hyphens.Unspecified" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8807equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m8809hashCodeimpl(this.value);
    }

    public String toString() {
        return m8810toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8811unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAuto-vmbZdU8, reason: not valid java name */
        public final int m8812getAutovmbZdU8() {
            return Hyphens.Auto;
        }

        /* JADX INFO: renamed from: getNone-vmbZdU8, reason: not valid java name */
        public final int m8813getNonevmbZdU8() {
            return Hyphens.None;
        }

        /* JADX INFO: renamed from: getUnspecified-vmbZdU8, reason: not valid java name */
        public final int m8814getUnspecifiedvmbZdU8() {
            return Hyphens.Unspecified;
        }

        /* JADX INFO: renamed from: valueOf-kPa1_AA, reason: not valid java name */
        public final int m8815valueOfkPa1_AA(int i) {
            boolean z = false;
            if (i >= 0 && i < 3) {
                z = true;
            }
            if (!z) {
                InlineClassHelperKt.throwIllegalArgumentException("The given value=" + i + " is not recognized by Hyphens.");
            }
            return Hyphens.m8806constructorimpl(i);
        }

        private Companion() {
        }
    }
}
