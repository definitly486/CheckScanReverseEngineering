package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class TouchBoundsExpansion {
    private static final long IS_LAYOUT_DIRECTION_AWARE = Long.MIN_VALUE;
    private static final int MASK = 32767;
    public static final int MAX_VALUE = 32767;
    private static final int SHIFT = 15;
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long None = TouchBoundsExpansionKt.TouchBoundsExpansion$default(0, 0, 0, 0, 14, null);

    private /* synthetic */ TouchBoundsExpansion(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TouchBoundsExpansion m8104boximpl(long j) {
        return new TouchBoundsExpansion(j);
    }

    /* JADX INFO: renamed from: computeLeft-impl$ui, reason: not valid java name */
    public static final int m8105computeLeftimpl$ui(long j, LayoutDirection layoutDirection) {
        return (!m8115isLayoutDirectionAwareimpl(j) || layoutDirection == LayoutDirection.Ltr) ? m8112getStartimpl(j) : m8111getEndimpl(j);
    }

    /* JADX INFO: renamed from: computeRight-impl$ui, reason: not valid java name */
    public static final int m8106computeRightimpl$ui(long j, LayoutDirection layoutDirection) {
        return (!m8115isLayoutDirectionAwareimpl(j) || layoutDirection == LayoutDirection.Ltr) ? m8111getEndimpl(j) : m8112getStartimpl(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m8107constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8108equalsimpl(long j, Object obj) {
        return (obj instanceof TouchBoundsExpansion) && j == ((TouchBoundsExpansion) obj).m8117unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8109equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getBottom-impl, reason: not valid java name */
    public static final int m8110getBottomimpl(long j) {
        return Companion.unpack(j, 3);
    }

    /* JADX INFO: renamed from: getEnd-impl, reason: not valid java name */
    public static final int m8111getEndimpl(long j) {
        return Companion.unpack(j, 2);
    }

    /* JADX INFO: renamed from: getStart-impl, reason: not valid java name */
    public static final int m8112getStartimpl(long j) {
        return Companion.unpack(j, 0);
    }

    /* JADX INFO: renamed from: getTop-impl, reason: not valid java name */
    public static final int m8113getTopimpl(long j) {
        return Companion.unpack(j, 1);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8114hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isLayoutDirectionAware-impl, reason: not valid java name */
    public static final boolean m8115isLayoutDirectionAwareimpl(long j) {
        return (j & Long.MIN_VALUE) != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8116toStringimpl(long j) {
        return rg.g("TouchBoundsExpansion(packedValue=", j, ')');
    }

    public boolean equals(Object obj) {
        return m8108equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m8114hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m8116toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m8117unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: Absolute-vsh68fg$default, reason: not valid java name */
        public static /* synthetic */ long m8118Absolutevsh68fg$default(Companion companion, int i, int i2, int i3, int i4, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i = 0;
            }
            if ((i5 & 2) != 0) {
                i2 = 0;
            }
            if ((i5 & 4) != 0) {
                i3 = 0;
            }
            if ((i5 & 8) != 0) {
                i4 = 0;
            }
            return companion.m8119Absolutevsh68fg(i, i2, i3, i4);
        }

        private final long trimAndShift(int i, int i2) {
            return ((long) (i & 32767)) << (i2 * 15);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int unpack(long j, int i) {
            return ((int) (j >> (i * 15))) & 32767;
        }

        /* JADX INFO: renamed from: Absolute-vsh68fg, reason: not valid java name */
        public final long m8119Absolutevsh68fg(int i, int i2, int i3, int i4) {
            if (!(i >= 0 && i < 32768)) {
                InlineClassHelperKt.throwIllegalArgumentException("Start must be in the range of 0 .. 32767");
            }
            if (!(i2 >= 0 && i2 < 32768)) {
                InlineClassHelperKt.throwIllegalArgumentException("Top must be in the range of 0 .. 32767");
            }
            if (!(i3 >= 0 && i3 < 32768)) {
                InlineClassHelperKt.throwIllegalArgumentException("End must be in the range of 0 .. 32767");
            }
            if (!(i4 >= 0 && i4 < 32768)) {
                InlineClassHelperKt.throwIllegalArgumentException("Bottom must be in the range of 0 .. 32767");
            }
            return TouchBoundsExpansion.m8107constructorimpl(pack$ui(i, i2, i3, i4, false));
        }

        /* JADX INFO: renamed from: getNone-RZrCHBk, reason: not valid java name */
        public final long m8120getNoneRZrCHBk() {
            return TouchBoundsExpansion.None;
        }

        public final long pack$ui(int i, int i2, int i3, int i4, boolean z) {
            return trimAndShift(i2, 1) | trimAndShift(i, 0) | trimAndShift(i3, 2) | trimAndShift(i4, 3) | (z ? Long.MIN_VALUE : 0L);
        }

        private Companion() {
        }
    }
}
