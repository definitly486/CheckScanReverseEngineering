package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class wa0 implements ua0 {
    public final da0 a;

    public wa0(da0 da0Var) {
        this.a = da0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ua0
    public final Object a(int i, f02 f02Var) {
        va0 va0Var;
        if (f02Var instanceof va0) {
            va0Var = (va0) f02Var;
            int i2 = va0Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                va0Var.n = i2 - Integer.MIN_VALUE;
            } else {
                va0Var = new va0(this, f02Var);
            }
        } else {
            va0Var = new va0(this, f02Var);
        }
        Object objB = va0Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = va0Var.n;
        mb0 mb0Var = null;
        if (i3 == 0) {
            r57.b(objB);
            va0Var.n = 1;
            objB = this.a.b(i, va0Var);
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
        }
        xa0 xa0Var = (xa0) objB;
        xa0Var.getClass();
        na0.b bVar = new na0.b(xa0Var.d().d(), xa0Var.d().c(), xa0Var.d().b(), xa0Var.d().a());
        String strC = xa0Var.e().c();
        List<xa0.a> listA = xa0Var.e().a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator<T> it = listA.iterator();
        int i4 = 0;
        while (true) {
            String str = "";
            if (!it.hasNext()) {
                fb0 fb0Var = new fb0(strC, xa0Var.e().b(), arrayList);
                String strB = xa0Var.a().b();
                List<xa0.a> listA2 = xa0Var.a().a();
                ArrayList arrayList2 = new ArrayList(kn1.q(listA2, 10));
                for (xa0.a aVar : listA2) {
                    String strC2 = aVar.c();
                    String strB2 = aVar.b();
                    if (strB2 == null) {
                        strB2 = "";
                    }
                    String strA = aVar.a();
                    if (strA == null) {
                        strA = "";
                    }
                    arrayList2.add(new ga0(strC2, strB2, strA));
                }
                ka0 ka0Var = new ka0(strB, arrayList2);
                if (xa0Var.c() != null) {
                    String strB3 = xa0Var.c().b();
                    List<xa0.e> listA3 = xa0Var.c().a();
                    ArrayList arrayList3 = new ArrayList(kn1.q(listA3, 10));
                    for (xa0.e eVar : listA3) {
                        arrayList3.add(new ib0(eVar.b(), eVar.a()));
                    }
                    mb0Var = new mb0(strB3, arrayList3);
                }
                return new na0(bVar, yr.G(new pz3[]{fb0Var, ka0Var, mb0Var}), new na0.a(xa0Var.b().a(), xa0Var.b().b()));
            }
            Object next = it.next();
            int i5 = i4 + 1;
            if (i4 < 0) {
                u96.o();
                throw null;
            }
            xa0.a aVar2 = (xa0.a) next;
            String strC3 = aVar2.c();
            String strB4 = aVar2.b();
            if (strB4 == null) {
                strB4 = "";
            }
            String strA2 = aVar2.a();
            if (strA2 != null) {
                str = strA2;
            }
            arrayList.add(new bb0(strC3, strB4, str));
            i4 = i5;
        }
    }
}
