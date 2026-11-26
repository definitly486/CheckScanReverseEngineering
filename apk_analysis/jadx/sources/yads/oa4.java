package yads;

import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class oa4 {
    public static oa4 b;
    public static final Object c = new Object();
    public final defpackage.fr a = new defpackage.fr();

    public final void a(t94 t94Var, String str, String str2) {
        if (u94.a.a()) {
            na4 na4Var = new na4(System.currentTimeMillis(), t94Var.name(), str, str2);
            synchronized (c) {
                try {
                    if (this.a.size() > 5000) {
                        this.a.remove(0);
                    }
                    this.a.addLast(na4Var);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final List b() {
        List listT0;
        synchronized (c) {
            listT0 = defpackage.qn1.t0(this.a);
        }
        return listT0;
    }

    public final void a() {
        synchronized (c) {
            this.a.clear();
            j59 j59Var = j59.a;
        }
    }
}
