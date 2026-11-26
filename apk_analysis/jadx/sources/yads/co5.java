package yads;

import defpackage.j59;
import defpackage.ll3;
import defpackage.r57;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class co5 {
    public final fe5 a;
    public final ll3 b;
    public boolean c;
    public final defpackage.yg5 d = new defpackage.ch5();

    public co5(fe5 fe5Var, ll3 ll3Var) {
        this.a = fe5Var;
        this.b = ll3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(defpackage.f02 f02Var) {
        bo5 bo5Var;
        defpackage.yg5 yg5Var;
        Object next;
        if (f02Var instanceof bo5) {
            bo5Var = (bo5) f02Var;
            int i = bo5Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                bo5Var.e = i - Integer.MIN_VALUE;
            } else {
                bo5Var = new bo5(this, f02Var);
            }
        } else {
            bo5Var = new bo5(this, f02Var);
        }
        Object obj = bo5Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = bo5Var.e;
        if (i2 == 0) {
            r57.b(obj);
            if (this.c) {
                return j59.a;
            }
            defpackage.yg5 yg5Var2 = this.d;
            bo5Var.b = yg5Var2;
            bo5Var.e = 1;
            if (yg5Var2.lock(null, bo5Var) == a32Var) {
                return a32Var;
            }
            yg5Var = yg5Var2;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = bo5Var.b;
            r57.b(obj);
        }
        try {
            if (this.c) {
                j59 j59Var = j59.a;
                yg5Var.unlock(null);
                return j59Var;
            }
            this.c = true;
            j59 j59Var2 = j59.a;
            yg5Var.unlock(null);
            List<qz4> list = this.a.Q0;
            if (list != null) {
                if (list.isEmpty()) {
                    list = null;
                }
                if (list != null) {
                    n13 n13Var = (n13) this.b.invoke();
                    for (qz4 qz4Var : list) {
                        f13 f13Var = g13.c;
                        String str = qz4Var.b.b;
                        f13Var.getClass();
                        Iterator<E> it = g13.h.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!defpackage.aa4.e(((g13) next).b, str));
                        g13 g13Var = (g13) next;
                        if (g13Var != null) {
                            try {
                                n8 n8Var = new n8(qz4Var.a, null, null, null, null, null, null, null, null, null, false, null, null);
                                ar arVar = (ar) n13Var.b.get(g13Var);
                                if (arVar != null) {
                                    defpackage.y22 y22Var = n13Var.a;
                                    defpackage.oi2 oi2Var = defpackage.qo2.a;
                                    defpackage.av0.c(y22Var, defpackage.uy4.a, null, new m13(n13Var, n8Var, g13Var, arVar, null), 2);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                    return j59.a;
                }
            }
            return j59Var2;
        } catch (Throwable th) {
            yg5Var.unlock(null);
            throw th;
        }
    }
}
