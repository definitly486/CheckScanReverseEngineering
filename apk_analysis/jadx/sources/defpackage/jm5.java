package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jm5 extends qm3 implements nl3<Context, ww1> {
    public static final jm5 c = new jm5(1, yw1.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

    @Override // defpackage.nl3
    public final ww1 invoke(Context context) {
        Context applicationContext = context.getApplicationContext();
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(applicationContext, ConnectivityManager.class);
        if (connectivityManager != null && ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            try {
                return new xw1(connectivityManager);
            } catch (Exception unused) {
            }
        }
        return ww1.a;
    }
}
