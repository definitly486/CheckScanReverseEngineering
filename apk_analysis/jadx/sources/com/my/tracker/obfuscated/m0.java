package com.my.tracker.obfuscated;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.c21;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 {
    protected l0 a;
    boolean b = false;

    public interface c {
        void a();

        void a(String str);
    }

    public l0 a(Context context) {
        if (this.b) {
            return this.a;
        }
        t1 t1VarA = t1.a(context);
        String strI = t1VarA.i();
        if (!TextUtils.isEmpty(strI)) {
            b3.a("FirebaseAppInstanceIdProvider: retrieved cached firebase app instance id " + strI);
        }
        if (b.a) {
            b.a(context, new a(t1VarA));
            this.b = true;
            return this.a;
        }
        b3.a("FirebaseAppInstanceIdProvider: firebase analytics is not available, use cached value '" + strI + "'");
        l0 l0Var = new l0(strI);
        this.a = l0Var;
        return l0Var;
    }

    public static final class b {
        public static final boolean a;

        static {
            boolean zEquals;
            try {
                zEquals = FirebaseAnalytics.class.equals(FirebaseAnalytics.class);
            } catch (Throwable th) {
                b3.a("FirebaseHelper: error occurred while working with FirebaseAnalytics", th);
                zEquals = false;
            }
            a = zEquals;
        }

        public static void a(Context context, c cVar) {
            try {
                b3.a("FirebaseHelper: retrieving firebase app instance id");
                FirebaseAnalytics.getInstance(context).getAppInstanceId().addOnCompleteListener(m.b, new c21(cVar, 6));
            } catch (Throwable th) {
                b3.a("FirebaseHelper: retrieving firebase app instance id error", th);
                cVar.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(c cVar, Task task) {
            if (task.isComplete() && task.isSuccessful()) {
                cVar.a((String) task.getResult());
            } else {
                cVar.a();
            }
        }
    }

    public class a implements c {
        final /* synthetic */ t1 a;

        public a(t1 t1Var) {
            this.a = t1Var;
        }

        @Override // com.my.tracker.obfuscated.m0.c
        public void a(String str) {
            m0.this.a = new l0(str);
            this.a.j(str);
            b3.a("FirebaseAppInstanceIdProvider: retrieved firebase app instance id %" + m0.this.a.a);
        }

        @Override // com.my.tracker.obfuscated.m0.c
        public void a() {
            b3.a("FirebaseAppInstanceIdProvider: retrieving firebase app instance id finished unsuccessfully");
        }
    }
}
