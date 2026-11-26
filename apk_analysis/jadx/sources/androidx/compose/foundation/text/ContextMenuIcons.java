package androidx.compose.foundation.text;

import android.R;
import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuIcons {
    public static final Companion Companion = new Companion(null);
    private final int value;

    private /* synthetic */ ContextMenuIcons(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ContextMenuIcons m2467boximpl(int i) {
        return new ContextMenuIcons(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m2468constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2469equalsimpl(int i, Object obj) {
        return (obj instanceof ContextMenuIcons) && i == ((ContextMenuIcons) obj).m2473unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2470equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2471hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2472toStringimpl(int i) {
        return qz0.d("ContextMenuIcons(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2469equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m2471hashCodeimpl(this.value);
    }

    public String toString() {
        return m2472toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2473unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getActionModeCopyDrawable-3I4p1mQ, reason: not valid java name */
        public final int m2474getActionModeCopyDrawable3I4p1mQ() {
            return ContextMenuIcons.m2468constructorimpl(R.attr.actionModeCopyDrawable);
        }

        /* JADX INFO: renamed from: getActionModeCutDrawable-3I4p1mQ, reason: not valid java name */
        public final int m2475getActionModeCutDrawable3I4p1mQ() {
            return ContextMenuIcons.m2468constructorimpl(R.attr.actionModeCutDrawable);
        }

        /* JADX INFO: renamed from: getActionModePasteDrawable-3I4p1mQ, reason: not valid java name */
        public final int m2476getActionModePasteDrawable3I4p1mQ() {
            return ContextMenuIcons.m2468constructorimpl(R.attr.actionModePasteDrawable);
        }

        /* JADX INFO: renamed from: getActionModeSelectAllDrawable-3I4p1mQ, reason: not valid java name */
        public final int m2477getActionModeSelectAllDrawable3I4p1mQ() {
            return ContextMenuIcons.m2468constructorimpl(R.attr.actionModeSelectAllDrawable);
        }

        /* JADX INFO: renamed from: getID_NULL-3I4p1mQ, reason: not valid java name */
        public final int m2478getID_NULL3I4p1mQ() {
            return ContextMenuIcons.m2468constructorimpl(0);
        }

        private Companion() {
        }
    }
}
