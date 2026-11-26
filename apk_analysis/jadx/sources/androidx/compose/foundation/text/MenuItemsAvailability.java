package androidx.compose.foundation.text;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class MenuItemsAvailability {
    private static final int AUTO_FILL = 16;
    private static final int COPY = 1;
    private static final int CUT = 4;
    private static final int NONE = 0;
    private static final int PASTE = 2;
    private static final int SELECT_ALL = 8;
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int None = m2571constructorimpl(0);

    private /* synthetic */ MenuItemsAvailability(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ MenuItemsAvailability m2570boximpl(int i) {
        return new MenuItemsAvailability(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m2572constructorimpl(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return m2571constructorimpl((z ? 1 : 0) | (z2 ? 2 : 0) | (z3 ? 4 : 0) | (z4 ? 8 : 0) | (z5 ? 16 : 0));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2573equalsimpl(int i, Object obj) {
        return (obj instanceof MenuItemsAvailability) && i == ((MenuItemsAvailability) obj).m2582unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2574equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: getCanAutofill-impl, reason: not valid java name */
    public static final boolean m2575getCanAutofillimpl(int i) {
        return (i & 16) == 16;
    }

    /* JADX INFO: renamed from: getCanCopy-impl, reason: not valid java name */
    public static final boolean m2576getCanCopyimpl(int i) {
        return (i & 1) == 1;
    }

    /* JADX INFO: renamed from: getCanCut-impl, reason: not valid java name */
    public static final boolean m2577getCanCutimpl(int i) {
        return (i & 4) == 4;
    }

    /* JADX INFO: renamed from: getCanPaste-impl, reason: not valid java name */
    public static final boolean m2578getCanPasteimpl(int i) {
        return (i & 2) == 2;
    }

    /* JADX INFO: renamed from: getCanSelectAll-impl, reason: not valid java name */
    public static final boolean m2579getCanSelectAllimpl(int i) {
        return (i & 8) == 8;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2580hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2581toStringimpl(int i) {
        return qz0.d("MenuItemsAvailability(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2573equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m2580hashCodeimpl(this.value);
    }

    public String toString() {
        return m2581toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2582unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getNone-JKCFgKw, reason: not valid java name */
        public final int m2583getNoneJKCFgKw() {
            return MenuItemsAvailability.None;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m2571constructorimpl(int i) {
        return i;
    }
}
