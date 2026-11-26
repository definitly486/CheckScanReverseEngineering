package yads;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class d5 {
    public final f5 a;
    public final e5 b;

    public d5() {
        f5 f5Var;
        f5 f5Var2 = f5.d;
        if (f5Var2 == null) {
            synchronized (f5.c) {
                f5Var = f5.d;
                if (f5Var == null) {
                    f5Var = new f5();
                    f5.d = f5Var;
                }
            }
            f5Var2 = f5Var;
        }
        e5 e5Var = new e5();
        this.a = f5Var2;
        this.b = e5Var;
    }

    public final String a(Context context, List list) {
        int i;
        zg5 zg5Var;
        this.b.getClass();
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
        if (fe5VarA == null || (i = fe5VarA.a) == 0) {
            i = 5;
        }
        int size = list.size();
        if (i > size) {
            i = size;
        }
        return defpackage.qn1.a0(list.subList(list.size() - i, list.size()), StringUtils.COMMA, null, null, 0, null, 62);
    }

    public final String b(Context context) {
        List listT0;
        f5 f5Var = this.a;
        f5Var.getClass();
        synchronized (f5.c) {
            listT0 = defpackage.qn1.t0(f5Var.a);
        }
        return a(context, listT0);
    }

    public final String a(Context context) {
        List listT0;
        f5 f5Var = this.a;
        f5Var.getClass();
        synchronized (f5.c) {
            listT0 = defpackage.qn1.t0(f5Var.b);
        }
        return a(context, listT0);
    }
}
