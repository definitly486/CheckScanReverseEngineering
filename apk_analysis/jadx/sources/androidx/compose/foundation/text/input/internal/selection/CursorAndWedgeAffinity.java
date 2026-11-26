package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.text.input.internal.WedgeAffinity;
import androidx.media3.muxer.MuxerUtil;
import defpackage.me0;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class CursorAndWedgeAffinity {
    private final long value;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WedgeAffinity.values().length];
            try {
                iArr[WedgeAffinity.Start.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WedgeAffinity.End.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private /* synthetic */ CursorAndWedgeAffinity(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CursorAndWedgeAffinity m2845boximpl(long j) {
        return new CursorAndWedgeAffinity(j);
    }

    /* JADX INFO: renamed from: component1-impl, reason: not valid java name */
    public static final int m2846component1impl(long j) {
        return m2853getCursorimpl(j);
    }

    /* JADX INFO: renamed from: component2-impl, reason: not valid java name */
    public static final WedgeAffinity m2847component2impl(long j) {
        return m2854getWedgeAffinityimpl(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2849constructorimpl(int i, WedgeAffinity wedgeAffinity) {
        int i2 = -1;
        int i3 = wedgeAffinity == null ? -1 : WhenMappings.$EnumSwitchMapping$0[wedgeAffinity.ordinal()];
        if (i3 != -1) {
            i2 = 1;
            if (i3 == 1) {
                i2 = 0;
            } else if (i3 != 2) {
                me0.e();
                return 0L;
            }
        }
        return m2850constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2851equalsimpl(long j, Object obj) {
        return (obj instanceof CursorAndWedgeAffinity) && j == ((CursorAndWedgeAffinity) obj).m2857unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2852equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getCursor-impl, reason: not valid java name */
    public static final int m2853getCursorimpl(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: renamed from: getWedgeAffinity-impl, reason: not valid java name */
    public static final WedgeAffinity m2854getWedgeAffinityimpl(long j) {
        int i = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (i < 0) {
            return null;
        }
        return i == 0 ? WedgeAffinity.Start : WedgeAffinity.End;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2855hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2856toStringimpl(long j) {
        return rg.g("CursorAndWedgeAffinity(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m2851equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2855hashCodeimpl(this.value);
    }

    public String toString() {
        return m2856toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2857unboximpl() {
        return this.value;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2848constructorimpl(int i) {
        return m2850constructorimpl((((long) i) << 32) | MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2850constructorimpl(long j) {
        return j;
    }
}
