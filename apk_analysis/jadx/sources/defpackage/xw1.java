package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;

/* JADX INFO: loaded from: classes3.dex */
public final class xw1 implements ww1 {
    public final ConnectivityManager b;

    public xw1(ConnectivityManager connectivityManager) {
        this.b = connectivityManager;
    }

    @Override // defpackage.ww1
    public final boolean a() {
        ConnectivityManager connectivityManager = this.b;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        return networkCapabilities != null && networkCapabilities.hasCapability(12);
    }
}
