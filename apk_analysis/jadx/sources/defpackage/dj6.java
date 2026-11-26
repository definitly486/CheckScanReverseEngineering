package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dj6 {
    public static final List a(int i, ArrayList arrayList) {
        return arrayList.size() >= 7 ? qn1.i0(new pd5(i), arrayList) : arrayList;
    }

    public static final ti6 b(sj6 sj6Var) {
        sj6Var.getClass();
        int iC = sj6Var.c();
        String strB = sj6Var.b();
        sj6.a aVar = (sj6.a) qn1.V(sj6Var.a());
        String strB2 = aVar != null ? aVar.b() : null;
        if (strB2 == null) {
            strB2 = "";
        }
        String strA = null;
        String strD = sj6Var.d();
        sj6.a aVar2 = (sj6.a) qn1.V(sj6Var.a());
        if (aVar2 != null) {
            strA = aVar2.a();
        }
        return new ti6(iC, strB, strB2, strD, strA);
    }

    public static final ArrayList c(List list) {
        list.getClass();
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            wi6 wi6Var = (wi6) obj;
            arrayList.add(new oa3(wi6Var.a(), wi6Var.b(), i == 0));
            i = i2;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x01fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x000e A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static final ArrayList d(List list) {
        Object vp6Var;
        list.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ik6 ik6Var = (ik6) it.next();
            Object zn7Var = null;
            if (ik6Var instanceof fj6) {
                fj6 fj6Var = (fj6) ik6Var;
                if (fj6Var.a().b() == null) {
                    int iD = fj6Var.a().d();
                    fj6.b bVarF = fj6Var.a().f();
                    String strA = bVarF != null ? bVarF.a() : null;
                    String strH = fj6Var.a().h();
                    boolean z = !fj6Var.a().c();
                    List<sj6> listG = fj6Var.a().g();
                    ArrayList arrayList2 = new ArrayList(kn1.q(listG, 10));
                    Iterator<T> it2 = listG.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(b((sj6) it2.next()));
                    }
                    vp6Var = new zn7(a(fj6Var.a().d(), arrayList2), strH, iD, strA, z);
                } else {
                    int iD2 = fj6Var.a().d();
                    String strH2 = fj6Var.a().h();
                    String strE = fj6Var.a().e();
                    String strB = fj6Var.a().b();
                    String strA2 = fj6Var.a().a();
                    boolean z2 = !fj6Var.a().c();
                    List<sj6> listG2 = fj6Var.a().g();
                    ArrayList arrayList3 = new ArrayList(kn1.q(listG2, 10));
                    Iterator<T> it3 = listG2.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(b((sj6) it3.next()));
                    }
                    List listA = a(fj6Var.a().d(), arrayList3);
                    fj6.b bVarF2 = fj6Var.a().f();
                    vp6Var = new vp6(iD2, strB, strA2, strE, strH2, z2, listA, bVarF2 != null ? bVarF2.a() : null);
                }
            } else {
                if (ik6Var instanceof gj6) {
                    gj6 gj6Var = (gj6) ik6Var;
                    if (gj6Var.a().b() == null) {
                        int iD3 = gj6Var.a().d();
                        String strH3 = gj6Var.a().h();
                        boolean z3 = !gj6Var.a().c();
                        List<sj6> listG3 = gj6Var.a().g();
                        ArrayList arrayList4 = new ArrayList(kn1.q(listG3, 10));
                        Iterator<T> it4 = listG3.iterator();
                        while (it4.hasNext()) {
                            arrayList4.add(b((sj6) it4.next()));
                        }
                        zn7Var = new zn7(a(gj6Var.a().d(), arrayList4), strH3, iD3, null, z3);
                    } else {
                        int iD4 = gj6Var.a().d();
                        String strH4 = gj6Var.a().h();
                        String strE2 = gj6Var.a().e();
                        String strB2 = gj6Var.a().b();
                        String strA3 = gj6Var.a().a();
                        boolean z4 = !gj6Var.a().c();
                        List<sj6> listG4 = gj6Var.a().g();
                        ArrayList arrayList5 = new ArrayList(kn1.q(listG4, 10));
                        Iterator<T> it5 = listG4.iterator();
                        while (it5.hasNext()) {
                            arrayList5.add(b((sj6) it5.next()));
                        }
                        List listA2 = a(gj6Var.a().d(), arrayList5);
                        fj6.b bVarF3 = gj6Var.a().f();
                        vp6Var = new vp6(iD4, strB2, strA3, strE2, strH4, z4, listA2, bVarF3 != null ? bVarF3.a() : null);
                    }
                }
                if (zn7Var != null) {
                    arrayList.add(zn7Var);
                }
            }
            zn7Var = vp6Var;
            if (zn7Var != null) {
                arrayList.add(zn7Var);
            }
        }
        return arrayList;
    }
}
