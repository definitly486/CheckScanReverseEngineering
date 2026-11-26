package yads;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ed6 {
    public static volatile qk2 a;
    public static final Object b = new Object();

    public static qk2 a(Context context) {
        zq2 zq2Var;
        Context applicationContext = context.getApplicationContext();
        dq5 dq5Var = new dq5(applicationContext);
        zq2 zq2Var2 = zq2.d;
        if (zq2Var2 == null) {
            synchronized (zq2.c) {
                zq2Var = zq2.d;
                if (zq2Var == null) {
                    zq2Var = new zq2();
                    zq2.d = zq2Var;
                }
            }
            zq2Var2 = zq2Var;
        }
        yv yvVarA = zq2Var2.a(applicationContext);
        kk0 kk0Var = new kk0(applicationContext, new cf5(new ku5().a(), new bc5().a(applicationContext)));
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(4);
        ok0 ok0Var = new ok0(dq5Var);
        bw bwVar = new bw();
        bwVar.a = yvVarA;
        bwVar.c = kk0Var;
        return new qk2(applicationContext, ok0Var, new pk0(bwVar, executorServiceNewFixedThreadPool));
    }

    public static qk2 b(Context context) {
        qk2 qk2VarA;
        qk2 qk2Var = a;
        if (qk2Var != null) {
            return qk2Var;
        }
        synchronized (b) {
            qk2 qk2Var2 = a;
            if (qk2Var2 != null) {
                return qk2Var2;
            }
            try {
                qk2VarA = a(context);
                a = qk2VarA;
            } catch (Throwable th) {
                th.toString();
                qk2VarA = null;
            }
            return qk2VarA;
        }
    }
}
