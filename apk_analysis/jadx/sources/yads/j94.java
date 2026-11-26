package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class j94 {
    public final Object a = new Object();
    public final ArrayList b = new ArrayList();

    public final void a(mg3 mg3Var) {
        synchronized (this.a) {
            this.b.add(mg3Var);
        }
    }
}
