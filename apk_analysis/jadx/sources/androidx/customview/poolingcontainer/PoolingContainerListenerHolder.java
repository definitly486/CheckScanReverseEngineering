package androidx.customview.poolingcontainer;

import defpackage.u96;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
final class PoolingContainerListenerHolder {
    private final ArrayList<PoolingContainerListener> listeners = new ArrayList<>();

    public final void addListener(PoolingContainerListener poolingContainerListener) {
        poolingContainerListener.getClass();
        this.listeners.add(poolingContainerListener);
    }

    public final void onRelease() {
        for (int iG = u96.g(this.listeners); -1 < iG; iG--) {
            this.listeners.get(iG).onRelease();
        }
    }

    public final void removeListener(PoolingContainerListener poolingContainerListener) {
        poolingContainerListener.getClass();
        this.listeners.remove(poolingContainerListener);
    }
}
