package yads;

import android.content.Context;
import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sl0 {
    public final t5 a;
    public final al4 b;
    public final zl4 c;
    public final Object d;

    public sl0(Context context, t5 t5Var) {
        al4 al4Var = new al4(context);
        zl4 zl4Var = new zl4();
        this.a = t5Var;
        this.b = al4Var;
        this.c = zl4Var;
        this.d = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ee4 ee4Var, hl4 hl4Var, jd0 jd0Var) {
        synchronized (this.d) {
            List<defpackage.b36> listA = this.c.a(ee4Var.a);
            if (listA.isEmpty()) {
                hl4Var.a();
                return;
            }
            rl0 rl0Var = new rl0(this.a, listA.size(), hl4Var, jd0Var);
            this.a.a(s5.VIDEO_CACHING, null);
            for (defpackage.b36 b36Var : listA) {
                this.b.a((String) b36Var.b, rl0Var, (String) b36Var.c);
            }
            j59 j59Var = j59.a;
        }
    }

    public final void a(String str) {
        qk2 qk2Var;
        synchronized (this.d) {
            try {
                al4 al4Var = this.b;
                if (al4Var.c.containsKey(str) && (qk2Var = (qk2) al4Var.b.getValue()) != null) {
                    qk2Var.c++;
                    qk2Var.a.obtainMessage(3, 1, 0, str).sendToTarget();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
