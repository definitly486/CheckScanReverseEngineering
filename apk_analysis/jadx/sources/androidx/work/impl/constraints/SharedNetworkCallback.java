package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import defpackage.aa4;
import defpackage.b36;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {
    private static NetworkCapabilities cachedCapabilities;
    private static boolean capabilitiesInitialized;
    private static Boolean isBlocked;
    public static final SharedNetworkCallback INSTANCE = new SharedNetworkCallback();
    private static final Object requestsLock = new Object();
    private static final Map<nl3<ConstraintsState, j59>, NetworkRequest> requests = new LinkedHashMap();

    private SharedNetworkCallback() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addCallback$lambda$9(nl3 nl3Var, ConnectivityManager connectivityManager) {
        synchronized (requestsLock) {
            Map<nl3<ConstraintsState, j59>, NetworkRequest> map = requests;
            map.remove(nl3Var);
            if (map.isEmpty()) {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister shared callback");
                connectivityManager.unregisterNetworkCallback(INSTANCE);
                isBlocked = null;
                cachedCapabilities = null;
                capabilitiesInitialized = false;
            }
        }
        return j59.a;
    }

    private final boolean areNetworkConstraintsSatisfied(NetworkRequest networkRequest, NetworkCapabilities networkCapabilities) {
        Boolean bool = isBlocked;
        bool.getClass();
        return !bool.booleanValue() && networkRequest.canBeSatisfiedBy(networkCapabilities);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void dispatchOnConstraintState() {
        ArrayList<b36> arrayList = new ArrayList();
        synchronized (requestsLock) {
            try {
                if (capabilitiesInitialized && isBlocked != null) {
                    Iterator<T> it = requests.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        arrayList.add(new b36((nl3) entry.getKey(), INSTANCE.areNetworkConstraintsSatisfied((NetworkRequest) entry.getValue(), cachedCapabilities) ? ConstraintsState.ConstraintsMet.INSTANCE : new ConstraintsState.ConstraintsNotMet(7)));
                    }
                    j59 j59Var = j59.a;
                    for (b36 b36Var : arrayList) {
                        ((nl3) b36Var.b).invoke((ConstraintsState) b36Var.c);
                    }
                    return;
                }
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "Not dispatching constraint state yet: isBlocked=" + isBlocked + ", capabilitiesInitialized=" + capabilitiesInitialized);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ll3<j59> addCallback(final ConnectivityManager connectivityManager, NetworkRequest networkRequest, final nl3<? super ConstraintsState, j59> nl3Var) {
        connectivityManager.getClass();
        networkRequest.getClass();
        nl3Var.getClass();
        synchronized (requestsLock) {
            try {
                Map<nl3<ConstraintsState, j59>, NetworkRequest> map = requests;
                boolean zIsEmpty = map.isEmpty();
                map.put(nl3Var, networkRequest);
                if (zIsEmpty) {
                    Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register shared callback");
                    connectivityManager.registerDefaultNetworkCallback(INSTANCE);
                } else if (capabilitiesInitialized && isBlocked != null) {
                    Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController send initial capabilities");
                    nl3Var.invoke(INSTANCE.areNetworkConstraintsSatisfied(networkRequest, cachedCapabilities) ? ConstraintsState.ConstraintsMet.INSTANCE : new ConstraintsState.ConstraintsNotMet(7));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new ll3() { // from class: androidx.work.impl.constraints.d
            @Override // defpackage.ll3
            public final Object invoke() {
                return SharedNetworkCallback.addCallback$lambda$9(nl3Var, connectivityManager);
            }
        };
    }

    public final NetworkCapabilities getCachedCapabilities() {
        return cachedCapabilities;
    }

    public final boolean getCapabilitiesInitialized() {
        return capabilitiesInitialized;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onBlockedStatusChanged(Network network, boolean z) {
        network.getClass();
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onBlockedStatusChanged callback " + z);
        synchronized (requestsLock) {
            if (aa4.e(isBlocked, Boolean.valueOf(z))) {
                return;
            }
            isBlocked = Boolean.valueOf(z);
            j59 j59Var = j59.a;
            dispatchOnConstraintState();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        network.getClass();
        networkCapabilities.getClass();
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (requestsLock) {
            cachedCapabilities = networkCapabilities;
            capabilitiesInitialized = true;
            j59 j59Var = j59.a;
        }
        dispatchOnConstraintState();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        network.getClass();
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
        synchronized (requestsLock) {
            try {
                cachedCapabilities = null;
                Iterator<T> it = requests.keySet().iterator();
                while (it.hasNext()) {
                    ((nl3) it.next()).invoke(new ConstraintsState.ConstraintsNotMet(7));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setCachedCapabilities(NetworkCapabilities networkCapabilities) {
        cachedCapabilities = networkCapabilities;
    }

    public final void setCapabilitiesInitialized(boolean z) {
        capabilitiesInitialized = z;
    }
}
