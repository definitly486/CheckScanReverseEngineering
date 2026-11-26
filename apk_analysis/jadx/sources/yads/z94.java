package yads;

import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class z94 {
    public static z94 b;
    public static final Object c = new Object();
    public final defpackage.fr a = new defpackage.fr();

    public final void a() {
        synchronized (c) {
            this.a.clear();
            j59 j59Var = j59.a;
        }
    }

    public final List b() {
        List listT0;
        synchronized (c) {
            listT0 = defpackage.qn1.t0(this.a);
        }
        return listT0;
    }
}
