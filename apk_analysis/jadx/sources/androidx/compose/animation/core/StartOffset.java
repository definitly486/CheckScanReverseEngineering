package androidx.compose.animation.core;

import defpackage.jh2;
import defpackage.me0;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class StartOffset {
    private final long value;

    private /* synthetic */ StartOffset(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StartOffset m1228boximpl(long j) {
        return new StartOffset(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1229constructorimpl(int i, int i2) {
        return m1230constructorimpl(i * i2);
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ long m1231constructorimpl$default(int i, int i2, int i3, jh2 jh2Var) {
        if ((i3 & 2) != 0) {
            i2 = StartOffsetType.Companion.m1246getDelayEo1U57Q();
        }
        return m1229constructorimpl(i, i2);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1232equalsimpl(long j, Object obj) {
        return (obj instanceof StartOffset) && j == ((StartOffset) obj).m1238unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1233equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getOffsetMillis-impl, reason: not valid java name */
    public static final int m1234getOffsetMillisimpl(long j) {
        return Math.abs((int) j);
    }

    /* JADX INFO: renamed from: getOffsetType-Eo1U57Q, reason: not valid java name */
    public static final int m1235getOffsetTypeEo1U57Q(long j) {
        boolean z = j > 0;
        if (z) {
            return StartOffsetType.Companion.m1247getFastForwardEo1U57Q();
        }
        if (!z) {
            return StartOffsetType.Companion.m1246getDelayEo1U57Q();
        }
        me0.e();
        return 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1236hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1237toStringimpl(long j) {
        return rg.g("StartOffset(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m1232equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1236hashCodeimpl(this.value);
    }

    public String toString() {
        return m1237toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1238unboximpl() {
        return this.value;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static long m1230constructorimpl(long j) {
        return j;
    }
}
