package defpackage;

import android.net.ConnectivityManager;
import android.net.Network;

/* JADX INFO: loaded from: classes4.dex */
public final class xa6 extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ ap1 a;

    public xa6(ap1 ap1Var) {
        this.a = ap1Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        network.getClass();
        this.a.invoke();
    }
}
