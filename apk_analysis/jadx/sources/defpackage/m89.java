package defpackage;

import com.my.target.g1;
import com.my.target.w;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class m89 implements eh8.a, gv9 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ m89(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.gv9
    public void b() {
        w wVar = (w) this.b;
        wv9 wv9Var = (wv9) this.c;
        g1.a aVar = wVar.j;
        if (aVar != null) {
            aVar.b(wv9Var);
        }
    }

    @Override // eh8.a
    public Object execute() {
        r89 r89Var = (r89) this.b;
        return Boolean.valueOf(r89Var.c.i0((hz) this.c));
    }
}
