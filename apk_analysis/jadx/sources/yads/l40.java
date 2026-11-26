package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class l40 extends a0 {
    public final Object b;
    public int c;
    public final /* synthetic */ n40 d;

    public l40(n40 n40Var, int i) {
        this.d = n40Var;
        this.b = n40Var.a(i);
        this.c = i;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        Map mapA = this.d.a();
        if (mapA != null) {
            return mapA.get(this.b);
        }
        int i = this.c;
        if (i == -1 || i >= this.d.size() || !ep4.a(this.b, this.d.a(this.c))) {
            this.c = this.d.a(this.b);
        }
        int i2 = this.c;
        if (i2 == -1) {
            return null;
        }
        return this.d.b(i2);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map mapA = this.d.a();
        if (mapA != null) {
            return mapA.put(this.b, obj);
        }
        int i = this.c;
        if (i == -1 || i >= this.d.size() || !ep4.a(this.b, this.d.a(this.c))) {
            this.c = this.d.a(this.b);
        }
        int i2 = this.c;
        n40 n40Var = this.d;
        if (i2 == -1) {
            n40Var.put(this.b, obj);
            return null;
        }
        Object objB = n40Var.b(i2);
        this.d.a(this.c, obj);
        return objB;
    }
}
