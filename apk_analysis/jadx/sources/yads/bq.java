package yads;

import android.content.Context;
import androidx.work.WorkRequest;
import defpackage.r57;
import defpackage.zya;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bq {
    public final Context a;
    public final fw3 b;
    public final aw3 c;
    public final uz4 d;
    public final cl0 e;
    public final defpackage.y22 f;
    public final CopyOnWriteArrayList g = new CopyOnWriteArrayList();

    public bq(Context context, fw3 fw3Var, aw3 aw3Var, uz4 uz4Var, cl0 cl0Var, defpackage.y22 y22Var) {
        this.a = context;
        this.b = fw3Var;
        this.c = aw3Var;
        this.d = uz4Var;
        this.e = cl0Var;
        this.f = y22Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(bq bqVar, n8 n8Var, Object obj, defpackage.f02 f02Var) {
        aq aqVar;
        bqVar.getClass();
        if (f02Var instanceof aq) {
            aqVar = (aq) f02Var;
            int i = aqVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                aqVar.e = i - Integer.MIN_VALUE;
            } else {
                aqVar = new aq(bqVar, f02Var);
            }
        } else {
            aqVar = new aq(bqVar, f02Var);
        }
        Object objA = aqVar.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = aqVar.e;
        if (i2 == 0) {
            r57.b(objA);
            cl0 cl0Var = bqVar.e;
            aqVar.b = obj;
            aqVar.e = 1;
            objA = cl0Var.a(n8Var, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, aqVar);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj = aqVar.b;
            r57.b(objA);
        }
        if (objA == null) {
            return Boolean.FALSE;
        }
        bqVar.a(objA, obj);
        return Boolean.TRUE;
    }

    public abstract Object a(n8 n8Var);

    public abstract Object a(yp ypVar);

    public abstract Object a(zp zpVar);

    public abstract void a(Object obj, Object obj2);

    public abstract void a(n8 n8Var, Object obj, String str);

    public abstract Object b(Object obj);

    public abstract void c(Object obj);

    public abstract void d(Object obj);

    public final void a(Object obj) {
        c(obj);
        this.g.remove(obj);
    }

    public final void a(n8 n8Var, Object obj) {
        this.b.a();
        defpackage.y22 y22Var = this.f;
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.av0.c(y22Var, defpackage.uy4.a.k0(), null, new xp(this, n8Var, obj, null), 2);
    }

    public final void a() {
        this.b.a();
        this.c.a();
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d(it.next());
        }
        this.g.clear();
    }

    public final Object a(n8 n8Var, defpackage.e02 e02Var) throws Throwable {
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(e02Var));
        c31Var.u();
        a(n8Var, a(new yp(c31Var)));
        Object objS = c31Var.s();
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
