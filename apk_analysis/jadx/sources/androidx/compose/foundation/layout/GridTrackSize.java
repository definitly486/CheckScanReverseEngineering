package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import defpackage.jh2;
import defpackage.w7;

/* JADX INFO: loaded from: classes.dex */
public final class GridTrackSize implements GridTrackSpec {
    private static final long Auto;
    public static final Companion Companion;
    private static final long MaxContent;
    private static final long MinContent;
    public static final int TypeAuto = 6;
    public static final int TypeFixed = 1;
    public static final int TypeFlex = 3;
    public static final int TypeMaxContent = 5;
    public static final int TypeMinContent = 4;
    public static final int TypeMinMax = 7;
    public static final int TypePercentage = 2;
    private final long encodedValue;

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        MinContent = companion.m1973packALYS8Xw(4, 0.0f);
        MaxContent = companion.m1973packALYS8Xw(5, 0.0f);
        Auto = companion.m1973packALYS8Xw(6, 0.0f);
    }

    private /* synthetic */ GridTrackSize(long j) {
        this.encodedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ GridTrackSize m1961boximpl(long j) {
        return new GridTrackSize(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1962constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1963equalsimpl(long j, Object obj) {
        return (obj instanceof GridTrackSize) && j == ((GridTrackSize) obj).m1971unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1964equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getMaxValue-impl$foundation_layout, reason: not valid java name */
    public static final float m1965getMaxValueimpl$foundation_layout(long j) {
        return Float.intBitsToFloat(((int) (j & 1073741823)) << 2);
    }

    /* JADX INFO: renamed from: getMinValue-impl$foundation_layout, reason: not valid java name */
    public static final float m1966getMinValueimpl$foundation_layout(long j) {
        return Float.intBitsToFloat(((int) ((j >>> 30) & 1073741823)) << 2);
    }

    /* JADX INFO: renamed from: getType-impl$foundation_layout, reason: not valid java name */
    public static final int m1967getTypeimpl$foundation_layout(long j) {
        return (int) (j >>> 60);
    }

    /* JADX INFO: renamed from: getValue-impl$foundation_layout, reason: not valid java name */
    public static final float m1968getValueimpl$foundation_layout(long j) {
        return Float.intBitsToFloat((int) j);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1969hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1970toStringimpl(long j) {
        switch (m1967getTypeimpl$foundation_layout(j)) {
            case 1:
                return "Fixed(" + m1968getValueimpl$foundation_layout(j) + "dp)";
            case 2:
                return "Percentage(" + m1968getValueimpl$foundation_layout(j) + ')';
            case 3:
                return "Flex(" + m1968getValueimpl$foundation_layout(j) + "fr)";
            case 4:
                return "MinContent";
            case 5:
                return "MaxContent";
            case 6:
                return "Auto";
            case 7:
                return "MinMax(" + m1966getMinValueimpl$foundation_layout(j) + "dp, " + m1965getMaxValueimpl$foundation_layout(j) + "fr)";
            default:
                return "Unknown";
        }
    }

    public boolean equals(Object obj) {
        return m1963equalsimpl(this.encodedValue, obj);
    }

    public int hashCode() {
        return m1969hashCodeimpl(this.encodedValue);
    }

    public String toString() {
        return m1970toStringimpl(this.encodedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1971unboximpl() {
        return this.encodedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: pack-ALYS8Xw, reason: not valid java name */
        public final long m1973packALYS8Xw(int i, float f) {
            return GridTrackSize.m1962constructorimpl(((((long) i) & 15) << 60) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }

        /* JADX INFO: renamed from: packMinMax-ALYS8Xw, reason: not valid java name */
        private final long m1974packMinMaxALYS8Xw(float f, float f2) {
            if (f < 0.0f || f2 < 0.0f) {
                fg.c("minmax values must be non-negative");
                return 0L;
            }
            return GridTrackSize.m1962constructorimpl(((((long) (Float.floatToRawIntBits(f) >>> 2)) & 1073741823) << 30) | 8070450532247928832L | (1073741823 & ((long) (Float.floatToRawIntBits(f2) >>> 2))));
        }

        /* JADX INFO: renamed from: Fixed-psSkOvk, reason: not valid java name */
        public final long m1975FixedpsSkOvk(float f) {
            if (!Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM()) && f >= 0.0f) {
                return m1973packALYS8Xw(1, f);
            }
            w7.g(Dp.m9053toStringimpl(f), "Fixed size must be non-negative and specified (was ", 41);
            return 0L;
        }

        /* JADX INFO: renamed from: Flex-KGB9zo8, reason: not valid java name */
        public final long m1976FlexKGB9zo8(float f) {
            if (f >= 0.0f) {
                return m1973packALYS8Xw(3, f);
            }
            fg.c("Flex weight must be non-negative");
            return 0L;
        }

        /* JADX INFO: renamed from: MinMax-1z8F7YY, reason: not valid java name */
        public final long m1977MinMax1z8F7YY(float f, float f2) {
            if (f < 0.0f) {
                fg.c("MinMax minimum size cannot be negative");
                return 0L;
            }
            if (f2 >= 0.0f) {
                return m1974packMinMaxALYS8Xw(f, f2);
            }
            fg.c("MinMax max weight cannot be negative");
            return 0L;
        }

        /* JADX INFO: renamed from: Percentage-9Tp3RV8, reason: not valid java name */
        public final long m1978Percentage9Tp3RV8(float f) {
            if (f >= 0.0f) {
                return m1973packALYS8Xw(2, f);
            }
            fg.c("Percentage cannot be negative");
            return 0L;
        }

        /* JADX INFO: renamed from: getAuto-eyNpfc4, reason: not valid java name */
        public final long m1979getAutoeyNpfc4() {
            return GridTrackSize.Auto;
        }

        /* JADX INFO: renamed from: getMaxContent-eyNpfc4, reason: not valid java name */
        public final long m1980getMaxContenteyNpfc4() {
            return GridTrackSize.MaxContent;
        }

        /* JADX INFO: renamed from: getMinContent-eyNpfc4, reason: not valid java name */
        public final long m1981getMinContenteyNpfc4() {
            return GridTrackSize.MinContent;
        }

        private Companion() {
        }
    }
}
