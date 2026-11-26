package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
public final class c05 {
    public boolean a;
    public int b = -1;
    public int c = -1;
    public d05.o d;
    public d05.o e;
    public n03<Object> f;

    public final <K, V> ConcurrentMap<K, V> a() {
        if (!this.a) {
            int i = this.b;
            if (i == -1) {
                i = 16;
            }
            int i2 = this.c;
            if (i2 == -1) {
                i2 = 4;
            }
            return new ConcurrentHashMap(i, 0.75f, i2);
        }
        d05.a aVar = d05.k;
        d05.o oVar = this.d;
        d05.o oVar2 = d05.o.STRONG;
        if (((d05.o) od5.a(oVar, oVar2)) == oVar2 && ((d05.o) od5.a(this.e, oVar2)) == oVar2) {
            return new d05(this, d05.p.a.a);
        }
        if (((d05.o) od5.a(this.d, oVar2)) == oVar2 && ((d05.o) od5.a(this.e, oVar2)) == d05.o.WEAK) {
            return new d05(this, d05.r.a.a);
        }
        d05.o oVar3 = (d05.o) od5.a(this.d, oVar2);
        d05.o oVar4 = d05.o.WEAK;
        if (oVar3 == oVar4 && ((d05.o) od5.a(this.e, oVar2)) == oVar2) {
            return new d05(this, d05.v.a.a);
        }
        if (((d05.o) od5.a(this.d, oVar2)) == oVar4 && ((d05.o) od5.a(this.e, oVar2)) == oVar4) {
            return new d05(this, d05.x.a.a);
        }
        xp.g();
        return null;
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        int i = this.b;
        if (i != -1) {
            aVarB.a(i, "initialCapacity");
        }
        int i2 = this.c;
        if (i2 != -1) {
            aVarB.a(i2, "concurrencyLevel");
        }
        d05.o oVar = this.d;
        if (oVar != null) {
            aVarB.d(go2.i(oVar.toString()), "keyStrength");
        }
        d05.o oVar2 = this.e;
        if (oVar2 != null) {
            aVarB.d(go2.i(oVar2.toString()), "valueStrength");
        }
        if (this.f != null) {
            od5.a.b bVar = new od5.a.b();
            aVarB.c.c = bVar;
            aVarB.c = bVar;
            bVar.b = "keyEquivalence";
        }
        return aVarB.toString();
    }
}
