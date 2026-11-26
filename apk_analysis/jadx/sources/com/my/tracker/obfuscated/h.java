package com.my.tracker.obfuscated;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class h {
    private final AtomicReference a = new AtomicReference();
    protected boolean b = false;

    public static final class a {
        public static final boolean a;

        static {
            boolean z = false;
            try {
                if (AppSet.class.equals(AppSet.class) && AppSetIdClient.class.equals(AppSetIdClient.class) && AppSetIdInfo.class.equals(AppSetIdInfo.class)) {
                    z = true;
                }
            } catch (Throwable th) {
                b3.a("AppSetIdProvider: error occurred while working with App Set library classes", th);
            }
            a = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, t1 t1Var, String str, AppSetIdInfo appSetIdInfo) {
        int scope = appSetIdInfo.getScope();
        if (scope != i) {
            t1Var.a(scope);
        }
        String id = appSetIdInfo.getId();
        if (!id.equals(str)) {
            t1Var.f(id);
            b3.a("AppSetIdProvider: new id value has been received: ".concat(id));
        }
        if (TextUtils.isEmpty(id) || scope == -1) {
            this.a.set(null);
        } else {
            this.a.set(new g(id, scope));
        }
        synchronized (this.a) {
            this.a.notify();
        }
    }

    private void b(Context context) {
        final t1 t1VarA = t1.a(context);
        final String strD = t1VarA.d();
        final int iE = t1VarA.e();
        if (!TextUtils.isEmpty(strD)) {
            this.a.set(new g(strD, iE));
        }
        if (!a.a) {
            b3.a("AppSetIdProvider: app set library is not available");
            return;
        }
        try {
            AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(m.c, new OnSuccessListener() { // from class: kw9
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    this.b.a(iE, t1VarA, strD, (AppSetIdInfo) obj);
                }
            });
        } catch (Throwable th) {
            b3.a("AppSetIdProvider: error occurred while trying to access app set id info", th);
        }
        a();
    }

    public g a(Context context) {
        if (!this.b) {
            b(context);
            this.b = true;
        }
        return (g) this.a.get();
    }

    private void a() {
        try {
            g gVar = (g) this.a.get();
            if (gVar != null) {
                b3.a("AppSetIdProvider: app set id has been collected, value: " + gVar.a);
            } else {
                synchronized (this.a) {
                    this.a.wait(300L);
                }
                b3.a("AppSetIdProvider: timeout for collecting id has exceeded");
            }
        } catch (Throwable th) {
            b3.a("AppSetIdProvider: attempt to block thread retrieving app set id finished unsuccessfully", th);
        }
    }
}
