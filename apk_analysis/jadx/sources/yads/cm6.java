package yads;

import android.content.Context;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cm6 {
    public static final e85 a(Context context, int i) {
        bc5 bc5Var = new bc5();
        context.getApplicationContext();
        Context applicationContext = context.getApplicationContext();
        SSLSocketFactory sSLSocketFactoryA = bc5Var.a(applicationContext);
        in4.a(applicationContext);
        e85 e85Var = new e85(new co4(), new ss(new ua3(new i94(sSLSocketFactoryA))), i);
        e85Var.a();
        return e85Var;
    }
}
