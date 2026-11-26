package yads;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import yads.ea;

/* JADX INFO: loaded from: classes6.dex */
public final class ea {
    public static final ExecutorService d = Executors.newCachedThreadPool(new rd4(rd4.b));
    public final e4 a;
    public final bf5 b;
    public final Context c;

    public ea(Context context, e4 e4Var, bf5 bf5Var) {
        this.a = e4Var;
        this.b = bf5Var;
        this.c = context.getApplicationContext();
    }

    public final void a(final String str, i16 i16Var, final Map map, final h75 h75Var) {
        final cv4 cv4Var = new cv4(this.c, this.a, this.b, i16Var);
        if (str.length() > 0) {
            d.execute(new Runnable() { // from class: gu9
                @Override // java.lang.Runnable
                public final void run() {
                    ea.a(cv4Var, str, map, h75Var);
                }
            });
        }
    }

    public static /* synthetic */ void a(ea eaVar, String str, i16 i16Var, h75 h75Var, int i) {
        if ((i & 8) != 0) {
            h75Var = new h75((Map) null, 3);
        }
        eaVar.a(str, i16Var, defpackage.mx2.b, h75Var);
    }

    public static final void a(cv4 cv4Var, String str, Map map, h75 h75Var) {
        cv4Var.a(str, map, h75Var);
    }
}
