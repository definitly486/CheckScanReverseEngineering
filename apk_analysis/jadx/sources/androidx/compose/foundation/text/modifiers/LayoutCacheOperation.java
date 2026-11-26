package androidx.compose.foundation.text.modifiers;

import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutCacheOperation {
    private final long flag;
    public static final Companion Companion = new Companion(null);
    private static final long MarkDirtyStyle = m2906constructorimpl(0);
    private static final long MarkDirtyDensity = m2906constructorimpl(1);
    private static final long MarkDirtyNode = m2906constructorimpl(2);
    private static final long LayoutWithConstraints = m2906constructorimpl(3);

    private /* synthetic */ LayoutCacheOperation(long j) {
        this.flag = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ LayoutCacheOperation m2905boximpl(long j) {
        return new LayoutCacheOperation(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static long m2906constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2907equalsimpl(long j, Object obj) {
        return (obj instanceof LayoutCacheOperation) && j == ((LayoutCacheOperation) obj).m2911unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2908equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2909hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2910toStringimpl(long j) {
        return rg.g("LayoutCacheOperation(flag=", j, ')');
    }

    public boolean equals(Object obj) {
        return m2907equalsimpl(this.flag, obj);
    }

    public final long getFlag() {
        return this.flag;
    }

    public int hashCode() {
        return m2909hashCodeimpl(this.flag);
    }

    public String toString() {
        return m2910toStringimpl(this.flag);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2911unboximpl() {
        return this.flag;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getLayoutWithConstraints-DEKiAbY, reason: not valid java name */
        public final long m2912getLayoutWithConstraintsDEKiAbY() {
            return LayoutCacheOperation.LayoutWithConstraints;
        }

        /* JADX INFO: renamed from: getMarkDirtyDensity-DEKiAbY, reason: not valid java name */
        public final long m2913getMarkDirtyDensityDEKiAbY() {
            return LayoutCacheOperation.MarkDirtyDensity;
        }

        /* JADX INFO: renamed from: getMarkDirtyNode-DEKiAbY, reason: not valid java name */
        public final long m2914getMarkDirtyNodeDEKiAbY() {
            return LayoutCacheOperation.MarkDirtyNode;
        }

        /* JADX INFO: renamed from: getMarkDirtyStyle-DEKiAbY, reason: not valid java name */
        public final long m2915getMarkDirtyStyleDEKiAbY() {
            return LayoutCacheOperation.MarkDirtyStyle;
        }

        private Companion() {
        }
    }
}
