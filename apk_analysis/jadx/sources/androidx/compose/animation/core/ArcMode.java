package androidx.compose.animation.core;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class ArcMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int ArcAbove = m1204constructorimpl(5);
    private static final int ArcBelow = m1204constructorimpl(4);
    private static final int ArcLinear = m1204constructorimpl(0);

    private /* synthetic */ ArcMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ArcMode m1203boximpl(int i) {
        return new ArcMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1204constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1205equalsimpl(int i, Object obj) {
        return (obj instanceof ArcMode) && i == ((ArcMode) obj).m1209unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1206equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1207hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1208toStringimpl(int i) {
        return qz0.d("ArcMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m1205equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1207hashCodeimpl(this.value);
    }

    public String toString() {
        return m1208toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1209unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getArcAbove--9T-Mq4, reason: not valid java name */
        public final int m1210getArcAbove9TMq4() {
            return ArcMode.ArcAbove;
        }

        /* JADX INFO: renamed from: getArcBelow--9T-Mq4, reason: not valid java name */
        public final int m1211getArcBelow9TMq4() {
            return ArcMode.ArcBelow;
        }

        /* JADX INFO: renamed from: getArcLinear--9T-Mq4, reason: not valid java name */
        public final int m1212getArcLinear9TMq4() {
            return ArcMode.ArcLinear;
        }

        private Companion() {
        }
    }
}
