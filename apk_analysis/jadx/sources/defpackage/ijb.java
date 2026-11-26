package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ijb implements Iterator {
    public int b = -1;
    public boolean c;
    public Iterator d;
    public final /* synthetic */ yjb e;

    public final Iterator a() {
        Iterator it = this.d;
        if (it != null) {
            return it;
        }
        Iterator it2 = this.e.d.entrySet().iterator();
        this.d = it2;
        return it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.b + 1;
        yjb yjbVar = this.e;
        return i < yjbVar.c || (!yjbVar.d.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.c = true;
        int i = this.b + 1;
        this.b = i;
        yjb yjbVar = this.e;
        return i < yjbVar.c ? (ajb) yjbVar.b[i] : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.c) {
            ah.f("remove() was called before next()");
            return;
        }
        this.c = false;
        int i = yjb.h;
        yjb yjbVar = this.e;
        yjbVar.j();
        int i2 = this.b;
        if (i2 >= yjbVar.c) {
            a().remove();
        } else {
            this.b = i2 - 1;
            yjbVar.g(i2);
        }
    }
}
