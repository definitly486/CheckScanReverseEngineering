package androidx.compose.ui.layout;

/* JADX INFO: loaded from: classes2.dex */
public interface GraphicLayerInfo {

    public static final class DefaultImpls {
        @Deprecated
        public static long getOwnerViewId(GraphicLayerInfo graphicLayerInfo) {
            return GraphicLayerInfo.super.getOwnerViewId();
        }
    }

    long getLayerId();

    default long getOwnerViewId() {
        return 0L;
    }
}
