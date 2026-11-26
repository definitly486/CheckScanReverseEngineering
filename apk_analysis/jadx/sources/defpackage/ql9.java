package defpackage;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class ql9 {
    public static final b c = new b();
    public static ql9 d;
    public final d49 a;
    public final xa5 b;

    public static final class a {
    }

    public static final class b {
        public final ql9 a(Context context) {
            ql9 ql9Var;
            synchronized (this) {
                ql9Var = ql9.d;
                if (ql9Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    applicationContext.getClass();
                    ql9Var = new ql9(applicationContext);
                    ql9.d = ql9Var;
                }
            }
            return ql9Var;
        }
    }

    public ql9(Context context) {
        em9 em9Var = new em9();
        a aVar = new a();
        vl9 vl9Var = new vl9(context);
        th5 th5Var = new th5(new nz3(new h4a(context, "MetricsEvent.db", null, 2), aVar), new x65(3), new i13(1), aVar);
        d49 d49Var = new d49(th5Var, new oh8(th5Var, new n97(new xn9(vl9Var, new h()), new jx0(context), new kq5(new f8a(new l1(), new qu6(), aVar)), new ut9(context))));
        this.a = d49Var;
        this.b = new xa5(new x2a(d49Var, new nt(th5Var), new wb9(context, new s39(new m00(new fu9()))), em9Var, aVar));
    }
}
