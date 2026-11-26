package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import androidx.core.net.ConnectivityManagerCompat;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkStateTrackerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("NetworkStateTracker");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }

    public static final ConstraintTracker<NetworkState> NetworkStateTracker(Context context, TaskExecutor taskExecutor) {
        context.getClass();
        taskExecutor.getClass();
        return new NetworkStateTrackerPre28(context, taskExecutor);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    /* JADX WARN: Code duplicated, block: B:17:0x002c  */
    public static final NetworkState getActiveNetworkState(ConnectivityManager connectivityManager, boolean z) {
        boolean z2;
        SecurityException securityException;
        boolean z3;
        connectivityManager.getClass();
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z4 = false;
            if (activeNetworkInfo == null) {
                z3 = true;
                boolean zIsActiveNetworkValidated = isActiveNetworkValidated(connectivityManager);
                boolean zIsActiveNetworkMetered = ConnectivityManagerCompat.isActiveNetworkMetered(connectivityManager);
                if (activeNetworkInfo != null) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                z2 = z;
                return new NetworkState(z4, zIsActiveNetworkValidated, zIsActiveNetworkMetered, z3, z2);
            }
            try {
                if (activeNetworkInfo.isConnected()) {
                    z4 = true;
                    z3 = true;
                } else {
                    z3 = true;
                }
                boolean zIsActiveNetworkValidated2 = isActiveNetworkValidated(connectivityManager);
                boolean zIsActiveNetworkMetered2 = ConnectivityManagerCompat.isActiveNetworkMetered(connectivityManager);
                if (activeNetworkInfo != null || activeNetworkInfo.isRoaming()) {
                    z3 = false;
                }
                z2 = z;
                try {
                    return new NetworkState(z4, zIsActiveNetworkValidated2, zIsActiveNetworkMetered2, z3, z2);
                } catch (SecurityException e) {
                    e = e;
                    securityException = e;
                    Logger.get().error(TAG, "Unable to get active network state", securityException);
                    return new NetworkState(false, false, false, true, z2);
                }
            } catch (SecurityException e2) {
                securityException = e2;
                z2 = z;
            }
        } catch (SecurityException e3) {
            e = e3;
            z2 = z;
        }
        Logger.get().error(TAG, "Unable to get active network state", securityException);
        return new NetworkState(false, false, false, true, z2);
    }

    public static final boolean isActiveNetworkValidated(ConnectivityManager connectivityManager) {
        connectivityManager.getClass();
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null) {
                return networkCapabilities.hasCapability(16);
            }
            return false;
        } catch (SecurityException e) {
            Logger.get().error(TAG, "Unable to validate active network", e);
            return false;
        }
    }
}
