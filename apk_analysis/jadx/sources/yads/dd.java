package yads;

import android.view.View;
import androidx.collection.ArrayMap;
import defpackage.j59;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
public final class dd implements qg6 {
    public final zt4 a;
    public final dg6 b;
    public final ArrayMap c = new ArrayMap();

    public dd(zt4 zt4Var, dg6 dg6Var) {
        this.a = zt4Var;
        this.b = dg6Var;
    }

    @Override // yads.qg6
    public final void a(String str, gg6 gg6Var, int i) {
        synchronized (this.c) {
            if (this.c.containsKey(str)) {
                return;
            }
            this.c.put(str, new cd(str, this.a, gg6Var, this.b, i));
            j59 j59Var = j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.qg6
    public final View a(String str) {
        cd cdVar;
        synchronized (this.c) {
            V v = this.c.get(str);
            if (v != 0) {
                cdVar = (cd) v;
            } else {
                throw new NoSuchElementException("Factory is not registered");
            }
        }
        View viewA = cdVar.a();
        viewA.getClass();
        return viewA;
    }
}
