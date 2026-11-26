package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.NetworkApi24;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.j59;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkStateTrackerPre28 extends ConstraintTracker<NetworkState> {
    private final ConnectivityManager connectivityManager;
    private volatile boolean isBlocked;
    private final Object lock;
    private final NetworkStateTrackerPre28$networkCallback$1 networkCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28$networkCallback$1] */
    public NetworkStateTrackerPre28(Context context, TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        context.getClass();
        taskExecutor.getClass();
        Object systemService = getAppContext().getSystemService("connectivity");
        systemService.getClass();
        this.connectivityManager = (ConnectivityManager) systemService;
        this.lock = new Object();
        this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28$networkCallback$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onBlockedStatusChanged(Network network, boolean z) {
                network.getClass();
                if (network.equals(this.this$0.connectivityManager.getActiveNetwork())) {
                    Logger.get().debug(NetworkStateTrackerKt.TAG, "Network blocked status changed: " + z);
                    NetworkState state = this.this$0.getState();
                    Object obj = this.this$0.lock;
                    NetworkStateTrackerPre28 networkStateTrackerPre28 = this.this$0;
                    synchronized (obj) {
                        if (networkStateTrackerPre28.isBlocked == z) {
                            return;
                        }
                        networkStateTrackerPre28.isBlocked = z;
                        j59 j59Var = j59.a;
                        this.this$0.setState(NetworkState.copy$default(state, false, false, false, false, z, 15, null));
                    }
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                network.getClass();
                networkCapabilities.getClass();
                Logger.get().debug(NetworkStateTrackerKt.TAG, "Network capabilities changed: " + networkCapabilities);
                NetworkStateTrackerPre28 networkStateTrackerPre28 = this.this$0;
                networkStateTrackerPre28.setState(NetworkStateTrackerKt.getActiveNetworkState(networkStateTrackerPre28.connectivityManager, this.this$0.isBlocked));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                network.getClass();
                Logger.get().debug(NetworkStateTrackerKt.TAG, "Network connection lost");
                this.this$0.setState(new NetworkState(false, false, false, false, false));
            }
        };
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public NetworkState readSystemState() {
        return NetworkStateTrackerKt.getActiveNetworkState(this.connectivityManager, this.isBlocked);
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void startTracking() {
        try {
            Logger.get().debug(NetworkStateTrackerKt.TAG, "Registering network callback");
            NetworkApi24.registerDefaultNetworkCallbackCompat(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e2);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void stopTracking() {
        try {
            Logger.get().debug(NetworkStateTrackerKt.TAG, "Unregistering network callback");
            this.connectivityManager.unregisterNetworkCallback(this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            Logger.get().error(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e2);
        }
    }
}
