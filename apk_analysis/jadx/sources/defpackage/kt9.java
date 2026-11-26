package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* JADX INFO: loaded from: classes4.dex */
public final class kt9 {
    public static Context b;
    public final Context a;

    public kt9(Context context) {
        this.a = context;
        b = context;
    }

    public static uy9 b() {
        uy9 uy9Var;
        Context context = b;
        if (context == null) {
            return null;
        }
        uy9 uy9Var2 = uy9.f;
        if (uy9Var2 != null) {
            return uy9Var2;
        }
        synchronized (uy9.class) {
            uy9Var = uy9.f;
            if (uy9Var == null) {
                try {
                    uy9Var = new uy9(uy9.a(context));
                    uy9.f = uy9Var;
                } catch (Exception e) {
                    y14.t("DiskCache: unable to create cache dir: " + e);
                    return null;
                }
            }
        }
        return uy9Var;
    }

    public final boolean a() {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.a.getSystemService("connectivity");
            Network activeNetwork = connectivityManager.getActiveNetwork();
            return (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(3))) ? false : true;
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("SdkAppContext: can't check network state "), th);
            return false;
        }
    }
}
