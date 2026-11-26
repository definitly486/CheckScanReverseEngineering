package yads;

import android.content.Context;
import android.util.Log;
import java.io.File;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f85 {
    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    public static final e85 a(Context context, int i) {
        long j;
        zg5 zg5Var;
        oa4 oa4Var = d35.a;
        boolean z = li6.a;
        li6.a = Log.isLoggable("Yandex Mobile Ads", 2);
        li6.a = false;
        bc5 bc5Var = new bc5();
        context.getApplicationContext();
        Context applicationContext = context.getApplicationContext();
        SSLSocketFactory sSLSocketFactoryA = bc5Var.a(applicationContext);
        in4.a(applicationContext);
        ss ssVar = new ss(new ua3(new i94(sSLSocketFactoryA)));
        File fileA = pp0.a(context, "mobileads-volley-cache");
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA != null) {
            j = fe5VarA.d;
            if (j == 0) {
                j = 52428800;
            }
        } else {
            j = 52428800;
        }
        e85 e85Var = new e85(new op0(fileA, (int) x74.a(context, 10485760L, j)), ssVar, i);
        e85Var.a(new t75());
        return e85Var;
    }
}
