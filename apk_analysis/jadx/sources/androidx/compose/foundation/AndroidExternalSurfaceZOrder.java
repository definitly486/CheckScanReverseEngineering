package androidx.compose.foundation;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidExternalSurfaceZOrder {
    private final int zOrder;
    public static final Companion Companion = new Companion(null);
    private static final int Behind = m1274constructorimpl(0);
    private static final int MediaOverlay = m1274constructorimpl(1);
    private static final int OnTop = m1274constructorimpl(2);

    private /* synthetic */ AndroidExternalSurfaceZOrder(int i) {
        this.zOrder = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AndroidExternalSurfaceZOrder m1273boximpl(int i) {
        return new AndroidExternalSurfaceZOrder(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m1274constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1275equalsimpl(int i, Object obj) {
        return (obj instanceof AndroidExternalSurfaceZOrder) && i == ((AndroidExternalSurfaceZOrder) obj).m1279unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1276equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1277hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1278toStringimpl(int i) {
        return qz0.d("AndroidExternalSurfaceZOrder(zOrder=", i, ')');
    }

    public boolean equals(Object obj) {
        return m1275equalsimpl(this.zOrder, obj);
    }

    public final int getZOrder() {
        return this.zOrder;
    }

    public int hashCode() {
        return m1277hashCodeimpl(this.zOrder);
    }

    public String toString() {
        return m1278toStringimpl(this.zOrder);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1279unboximpl() {
        return this.zOrder;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getBehind-B_4ceCc, reason: not valid java name */
        public final int m1280getBehindB_4ceCc() {
            return AndroidExternalSurfaceZOrder.Behind;
        }

        /* JADX INFO: renamed from: getMediaOverlay-B_4ceCc, reason: not valid java name */
        public final int m1281getMediaOverlayB_4ceCc() {
            return AndroidExternalSurfaceZOrder.MediaOverlay;
        }

        /* JADX INFO: renamed from: getOnTop-B_4ceCc, reason: not valid java name */
        public final int m1282getOnTopB_4ceCc() {
            return AndroidExternalSurfaceZOrder.OnTop;
        }

        private Companion() {
        }
    }
}
