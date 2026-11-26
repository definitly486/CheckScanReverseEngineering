package yads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class kg4 implements ce3 {
    public final /* synthetic */ lg4 a;

    public kg4(lg4 lg4Var) {
        this.a = lg4Var;
    }

    @Override // yads.ce3
    public final void a(Map map) {
        this.a.b.b.putAll(map);
        this.a.c.a();
        Iterator it = this.a.g.iterator();
        while (it.hasNext()) {
            ((qn6) ((j80) it.next())).a();
        }
    }
}
