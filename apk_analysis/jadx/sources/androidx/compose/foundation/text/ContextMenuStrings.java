package androidx.compose.foundation.text;

import android.os.Build;
import androidx.compose.foundation.R;
import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuStrings {
    public static final Companion Companion = new Companion(null);
    private final int value;

    private /* synthetic */ ContextMenuStrings(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ContextMenuStrings m2479boximpl(int i) {
        return new ContextMenuStrings(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m2480constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2481equalsimpl(int i, Object obj) {
        return (obj instanceof ContextMenuStrings) && i == ((ContextMenuStrings) obj).m2485unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2482equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2483hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2484toStringimpl(int i) {
        return qz0.d("ContextMenuStrings(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2481equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m2483hashCodeimpl(this.value);
    }

    public String toString() {
        return m2484toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2485unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAutofill-9Hzcbyc, reason: not valid java name */
        public final int m2486getAutofill9Hzcbyc() {
            return ContextMenuStrings.m2480constructorimpl(Build.VERSION.SDK_INT <= 26 ? R.string.androidx_compose_foundation_autofill : android.R.string.autofill);
        }

        /* JADX INFO: renamed from: getCopy-9Hzcbyc, reason: not valid java name */
        public final int m2487getCopy9Hzcbyc() {
            return ContextMenuStrings.m2480constructorimpl(android.R.string.copy);
        }

        /* JADX INFO: renamed from: getCut-9Hzcbyc, reason: not valid java name */
        public final int m2488getCut9Hzcbyc() {
            return ContextMenuStrings.m2480constructorimpl(android.R.string.cut);
        }

        /* JADX INFO: renamed from: getPaste-9Hzcbyc, reason: not valid java name */
        public final int m2489getPaste9Hzcbyc() {
            return ContextMenuStrings.m2480constructorimpl(android.R.string.paste);
        }

        /* JADX INFO: renamed from: getSelectAll-9Hzcbyc, reason: not valid java name */
        public final int m2490getSelectAll9Hzcbyc() {
            return ContextMenuStrings.m2480constructorimpl(android.R.string.selectAll);
        }

        private Companion() {
        }
    }
}
