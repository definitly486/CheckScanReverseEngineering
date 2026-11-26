package androidx.compose.runtime;

import defpackage.j59;
import defpackage.ll3;
import defpackage.no7;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotFlowManager {
    public static final int $stable = 8;
    private SnapshotFlowManagerImpl managerImpl = new SingleSubscriptionSnapshotFlowManager();

    public final void dispose() {
        SnapshotFlowManagerImpl snapshotFlowManagerImpl = this.managerImpl;
        if (!(snapshotFlowManagerImpl != null)) {
            PreconditionsKt.throwIllegalStateException("Called dispose on a manager that has been disposed of");
        }
        snapshotFlowManagerImpl.dispose$runtime();
        this.managerImpl = null;
    }

    public final void reportSnapshotFlowCancellation$runtime(no7<? super j59> no7Var) {
        SnapshotFlowManagerImpl snapshotFlowManagerImpl = this.managerImpl;
        if (snapshotFlowManagerImpl != null) {
            snapshotFlowManagerImpl.reportSnapshotFlowCancellation$runtime(no7Var);
        }
    }

    public final <T> T runAndWatch$runtime(no7<? super j59> no7Var, ll3<? extends T> ll3Var) {
        SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager;
        no7<j59> subscribedChannel;
        if (!(this.managerImpl != null)) {
            PreconditionsKt.throwIllegalStateException("Called runAndWatch on a manager that has been disposed of");
        }
        SnapshotFlowManagerImpl snapshotFlowManagerImpl = this.managerImpl;
        if ((snapshotFlowManagerImpl instanceof SingleSubscriptionSnapshotFlowManager) && (subscribedChannel = (singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) snapshotFlowManagerImpl).getSubscribedChannel()) != null && !subscribedChannel.equals(no7Var)) {
            this.managerImpl = singleSubscriptionSnapshotFlowManager.promote();
        }
        SnapshotFlowManagerImpl snapshotFlowManagerImpl2 = this.managerImpl;
        snapshotFlowManagerImpl2.getClass();
        return (T) snapshotFlowManagerImpl2.runAndWatch$runtime(no7Var, ll3Var);
    }
}
