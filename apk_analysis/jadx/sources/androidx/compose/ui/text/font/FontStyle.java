package androidx.compose.ui.text.font;

import defpackage.jh2;
import defpackage.u96;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontStyle {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Normal = m8601constructorimpl(0);
    private static final int Italic = m8601constructorimpl(1);

    @ul2
    private /* synthetic */ FontStyle(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FontStyle m8600boximpl(int i) {
        return new FontStyle(i);
    }

    @ul2
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m8601constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8602equalsimpl(int i, Object obj) {
        return (obj instanceof FontStyle) && i == ((FontStyle) obj).m8606unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8603equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8604hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8605toStringimpl(int i) {
        if (m8603equalsimpl0(i, Normal)) {
            return "Normal";
        }
        return m8603equalsimpl0(i, Italic) ? "Italic" : "Invalid";
    }

    public boolean equals(Object obj) {
        return m8602equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m8604hashCodeimpl(this.value);
    }

    public String toString() {
        return m8605toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m8606unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getItalic-_-LCdwA$annotations, reason: not valid java name */
        public static /* synthetic */ void m8607getItalic_LCdwA$annotations() {
        }

        /* JADX INFO: renamed from: getNormal-_-LCdwA$annotations, reason: not valid java name */
        public static /* synthetic */ void m8608getNormal_LCdwA$annotations() {
        }

        /* JADX INFO: renamed from: getItalic-_-LCdwA, reason: not valid java name */
        public final int m8609getItalic_LCdwA() {
            return FontStyle.Italic;
        }

        /* JADX INFO: renamed from: getNormal-_-LCdwA, reason: not valid java name */
        public final int m8610getNormal_LCdwA() {
            return FontStyle.Normal;
        }

        public final List<FontStyle> values() {
            return u96.i(FontStyle.m8600boximpl(m8610getNormal_LCdwA()), FontStyle.m8600boximpl(m8609getItalic_LCdwA()));
        }

        private Companion() {
        }
    }
}
