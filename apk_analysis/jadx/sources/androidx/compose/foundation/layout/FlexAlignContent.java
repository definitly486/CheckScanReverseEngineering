package androidx.compose.foundation.layout;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlexAlignContent {
    public static final Companion Companion = new Companion(null);
    private final int bits;

    private /* synthetic */ FlexAlignContent(int i) {
        this.bits = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexAlignContent m1778boximpl(int i) {
        return new FlexAlignContent(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1779constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1780equalsimpl(int i, Object obj) {
        return (obj instanceof FlexAlignContent) && i == ((FlexAlignContent) obj).m1784unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1781equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1782hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1783toStringimpl(int i) {
        if (i == 0) {
            return "Start";
        }
        if (i == 1) {
            return "End";
        }
        if (i == 2) {
            return "Center";
        }
        if (i == 3) {
            return "Stretch";
        }
        if (i != 4) {
            return i != 5 ? "INVALID" : "SpaceAround";
        }
        return "SpaceBetween";
    }

    public boolean equals(Object obj) {
        return m1780equalsimpl(this.bits, obj);
    }

    public int hashCode() {
        return m1782hashCodeimpl(this.bits);
    }

    public String toString() {
        return m1783toStringimpl(this.bits);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1784unboximpl() {
        return this.bits;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCenter-d9B3MrI, reason: not valid java name */
        public final int m1785getCenterd9B3MrI() {
            return FlexAlignContent.m1779constructorimpl(2);
        }

        /* JADX INFO: renamed from: getEnd-d9B3MrI, reason: not valid java name */
        public final int m1786getEndd9B3MrI() {
            return FlexAlignContent.m1779constructorimpl(1);
        }

        /* JADX INFO: renamed from: getSpaceAround-d9B3MrI, reason: not valid java name */
        public final int m1787getSpaceAroundd9B3MrI() {
            return FlexAlignContent.m1779constructorimpl(5);
        }

        /* JADX INFO: renamed from: getSpaceBetween-d9B3MrI, reason: not valid java name */
        public final int m1788getSpaceBetweend9B3MrI() {
            return FlexAlignContent.m1779constructorimpl(4);
        }

        /* JADX INFO: renamed from: getStart-d9B3MrI, reason: not valid java name */
        public final int m1789getStartd9B3MrI() {
            return FlexAlignContent.m1779constructorimpl(0);
        }

        /* JADX INFO: renamed from: getStretch-d9B3MrI, reason: not valid java name */
        public final int m1790getStretchd9B3MrI() {
            return FlexAlignContent.m1779constructorimpl(3);
        }

        private Companion() {
        }
    }
}
