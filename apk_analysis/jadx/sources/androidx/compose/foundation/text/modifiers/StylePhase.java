package androidx.compose.foundation.text.modifiers;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class StylePhase {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Layout = m2946constructorimpl(1);
    private static final int Draw = m2946constructorimpl(2);
    private static final int All = m2946constructorimpl(-1);

    private /* synthetic */ StylePhase(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StylePhase m2945boximpl(int i) {
        return new StylePhase(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m2946constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2947equalsimpl(int i, Object obj) {
        return (obj instanceof StylePhase) && i == ((StylePhase) obj).m2951unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2948equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2949hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2950toStringimpl(int i) {
        return qz0.d("StylePhase(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m2947equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2949hashCodeimpl(this.value);
    }

    public String toString() {
        return m2950toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2951unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAll-oWBPZag, reason: not valid java name */
        public final int m2952getAlloWBPZag() {
            return StylePhase.All;
        }

        /* JADX INFO: renamed from: getDraw-oWBPZag, reason: not valid java name */
        public final int m2953getDrawoWBPZag() {
            return StylePhase.Draw;
        }

        /* JADX INFO: renamed from: getLayout-oWBPZag, reason: not valid java name */
        public final int m2954getLayoutoWBPZag() {
            return StylePhase.Layout;
        }

        private Companion() {
        }
    }
}
