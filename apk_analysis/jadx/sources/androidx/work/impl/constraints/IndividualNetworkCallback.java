package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n07;
import defpackage.nl3;
import defpackage.ra8;

/* JADX INFO: loaded from: classes3.dex */
final class IndividualNetworkCallback extends ConnectivityManager.NetworkCallback {
    public static final Companion Companion = new Companion(null);
    private final nl3<ConstraintsState, j59> onConstraintState;

    /* JADX WARN: Multi-variable type inference failed */
    private IndividualNetworkCallback(nl3<? super ConstraintsState, j59> nl3Var) {
        this.onConstraintState = nl3Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        network.getClass();
        networkCapabilities.getClass();
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        this.onConstraintState.invoke(ConstraintsState.ConstraintsMet.INSTANCE);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        network.getClass();
        Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController onLost callback");
        this.onConstraintState.invoke(new ConstraintsState.ConstraintsNotMet(7));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 addCallback$lambda$0(n07 n07Var, ConnectivityManager connectivityManager, IndividualNetworkCallback individualNetworkCallback) {
            if (n07Var.b) {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController unregister callback");
                connectivityManager.unregisterNetworkCallback(individualNetworkCallback);
            }
            return j59.a;
        }

        public final ll3<j59> addCallback(final ConnectivityManager connectivityManager, NetworkRequest networkRequest, nl3<? super ConstraintsState, j59> nl3Var) {
            connectivityManager.getClass();
            networkRequest.getClass();
            nl3Var.getClass();
            final IndividualNetworkCallback individualNetworkCallback = new IndividualNetworkCallback(nl3Var, null);
            final n07 n07Var = new n07();
            try {
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController register callback");
                connectivityManager.registerNetworkCallback(networkRequest, individualNetworkCallback);
                n07Var.b = true;
            } catch (RuntimeException e) {
                if (!ra8.u(e.getClass().getName(), "TooManyRequestsException", false)) {
                    throw e;
                }
                Logger.get().debug(WorkConstraintsTrackerKt.TAG, "NetworkRequestConstraintController couldn't register callback", e);
                nl3Var.invoke(new ConstraintsState.ConstraintsNotMet(7));
            }
            return new ll3() { // from class: androidx.work.impl.constraints.a
                @Override // defpackage.ll3
                public final Object invoke() {
                    return IndividualNetworkCallback.Companion.addCallback$lambda$0(n07Var, connectivityManager, individualNetworkCallback);
                }
            };
        }

        private Companion() {
        }
    }

    public /* synthetic */ IndividualNetworkCallback(nl3 nl3Var, jh2 jh2Var) {
        this(nl3Var);
    }
}
