package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class r89 {
    public final Context a;
    public final e00 b;
    public final f13 c;
    public final pk9 d;
    public final Executor e;
    public final eh8 f;
    public final hm1 g;
    public final hm1 h;
    public final vl1 i;

    public r89(Context context, e00 e00Var, f13 f13Var, pk9 pk9Var, Executor executor, eh8 eh8Var, hm1 hm1Var, hm1 hm1Var2, vl1 vl1Var) {
        this.a = context;
        this.b = e00Var;
        this.c = f13Var;
        this.d = pk9Var;
        this.e = executor;
        this.f = eh8Var;
        this.g = hm1Var;
        this.h = hm1Var2;
        this.i = vl1Var;
    }

    public final void a(hz hzVar, int i) {
        my myVarB;
        r29 r29Var = this.b.get(hzVar.a);
        new my(f00.a.OK, 0L);
        final long j = 0;
        while (true) {
            m89 m89Var = new m89(this, hzVar);
            eh8 eh8Var = this.f;
            if (!((Boolean) eh8Var.a(m89Var)).booleanValue()) {
                final r89 r89Var = this;
                final hz hzVar2 = hzVar;
                eh8Var.a(new eh8.a() { // from class: p89
                    @Override // eh8.a
                    public final Object execute() {
                        r89 r89Var2 = this.b;
                        r89Var2.c.B(r89Var2.g.getTime() + j, hzVar2);
                        return null;
                    }
                });
                return;
            }
            final Iterable iterable = (Iterable) eh8Var.a(new b21(this, hzVar));
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (r29Var == null) {
                hv4.a(hzVar, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                myVarB = new my(f00.a.FATAL_ERROR, -1L);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((u46) it.next()).a());
                }
                if (hzVar.c() != null) {
                    vl1 vl1Var = this.i;
                    Objects.requireNonNull(vl1Var);
                    zl1 zl1Var = (zl1) eh8Var.a(new m71(vl1Var));
                    sy.a aVar = new sy.a();
                    aVar.f = new HashMap();
                    aVar.d = Long.valueOf(this.g.getTime());
                    aVar.e = Long.valueOf(this.h.getTime());
                    aVar.a = "GDT_CLIENT_METRICS";
                    iy2 iy2Var = new iy2("proto");
                    zl1Var.getClass();
                    aVar.c = new sx2(iy2Var, ls6.a.encode(zl1Var));
                    arrayList.add(r29Var.a(aVar.b()));
                }
                myVarB = r29Var.b(new ly(arrayList, hzVar.b));
            }
            f00.a aVar2 = myVarB.a;
            if (aVar2 == f00.a.TRANSIENT_ERROR) {
                final r89 r89Var2 = this;
                final hz hzVar3 = hzVar;
                eh8Var.a(new eh8.a() { // from class: o89
                    @Override // eh8.a
                    public final Object execute() {
                        r89 r89Var3 = this.b;
                        f13 f13Var = r89Var3.c;
                        f13Var.a0(iterable);
                        f13Var.B(r89Var3.g.getTime() + j, hzVar3);
                        return null;
                    }
                });
                r89Var2.d.b(hzVar3, i + 1, true);
                return;
            }
            r89 r89Var3 = this;
            hz hzVar4 = hzVar;
            eh8Var.a(new bz4(iterable, r89Var3));
            if (aVar2 == f00.a.OK) {
                long jMax = Math.max(j, myVarB.b);
                if (hzVar4.c() != null) {
                    eh8Var.a(new ve1(r89Var3));
                }
                j = jMax;
            } else if (aVar2 == f00.a.INVALID_PAYLOAD) {
                HashMap map = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String strK = ((u46) it2.next()).a().k();
                    if (map.containsKey(strK)) {
                        map.put(strK, Integer.valueOf(((Integer) map.get(strK)).intValue() + 1));
                    } else {
                        map.put(strK, 1);
                    }
                }
                eh8Var.a(new mh5(r89Var3, map));
            }
            this = r89Var3;
            hzVar = hzVar4;
        }
    }
}
