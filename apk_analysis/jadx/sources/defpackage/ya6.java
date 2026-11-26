package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes4.dex */
public final class ya6 implements lc6 {
    public final Context a;

    public ya6(Context context) {
        this.a = context;
    }

    @Override // defpackage.lc6
    public final void a(ap1 ap1Var) {
        ConnectivityManager connectivityManagerA;
        Context context = this.a;
        if (za6.c(context) && (connectivityManagerA = za6.a(context)) != null) {
            try {
                connectivityManagerA.registerDefaultNetworkCallback(new xa6(ap1Var));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // defpackage.lc6
    public final boolean isConnected() {
        Context context = this.a;
        ConnectivityManager connectivityManagerA = za6.a(context);
        if (connectivityManagerA == null || !za6.c(context)) {
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManagerA.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return activeNetworkInfo.isConnected();
    }
}
