package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class cj4 extends gh4 implements nl3<jj4, wr5<? extends aj4.a>> {
    public final /* synthetic */ aj4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cj4(aj4 aj4Var) {
        super(1);
        this.f = aj4Var;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x032d  */
    /* JADX WARN: Code duplicated, block: B:175:0x0330 A[SYNTHETIC] */
    @Override // defpackage.nl3
    public final wr5<? extends aj4.a> invoke(jj4 jj4Var) {
        Object obj;
        int iNextIndex;
        int i;
        wk4 qj4Var;
        wk4 ik4Var;
        String strF;
        String str;
        wk4 ik4Var2;
        jj4 jj4Var2 = jj4Var;
        jj4Var2.getClass();
        ArrayList arrayList = new ArrayList();
        aj4 aj4Var = this.f;
        aj4Var.f.onNext(jj4Var2.c());
        c06 c06VarD = jj4Var2.d();
        if (c06VarD != null ? aa4.e(c06VarD.c(), Boolean.TRUE) : false) {
            arrayList.add(new ij4(jj4Var2.d().f()));
        }
        arrayList.add(new nk4(jj4Var2.j()));
        List<String> listI = jj4Var2.i();
        ArrayList arrayList2 = new ArrayList(kn1.q(listI, 10));
        Iterator<T> it = listI.iterator();
        while (it.hasNext()) {
            arrayList2.add(new yj4((String) it.next()));
        }
        arrayList.addAll(arrayList2);
        boolean z = jj4Var2.g() != null;
        jj4.d dVarG = jj4Var2.g();
        if (dVarG != null) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add(new vi4());
            List<jj4.c> listF = jj4Var2.f();
            ArrayList<jj4.c> arrayList4 = new ArrayList();
            for (Object obj2 : listF) {
                if (((jj4.c) obj2).e() == qv6.MULTI_CHOICE_IMAGE) {
                    arrayList4.add(obj2);
                }
            }
            ArrayList arrayList5 = new ArrayList();
            for (jj4.c cVar : arrayList4) {
                List<jj4.b> listB = cVar.b();
                if (listB != null && !listB.isEmpty()) {
                    arrayList5.add(new rk4(cVar.d(), cVar.a(), cVar.c()));
                    List<jj4.b> listB2 = cVar.b();
                    ArrayList arrayList6 = new ArrayList(kn1.q(listB2, 10));
                    for (jj4.b bVar : listB2) {
                        String strA = cVar.a();
                        String strA2 = bVar.a();
                        arrayList6.add(new wi4(bVar.b(), false, strA2 == null ? "" : strA2, strA, true));
                    }
                    ArrayList<List> arrayListL = qn1.L(2, arrayList6);
                    ArrayList arrayList7 = new ArrayList(kn1.q(arrayListL, 10));
                    for (List list : arrayListL) {
                        arrayList7.add(new ti4((wi4) qn1.T(list), (wi4) qn1.c0(list)));
                    }
                    arrayList5.addAll(arrayList7);
                }
            }
            arrayList3.addAll(arrayList5);
            List<jj4.c> listF2 = jj4Var2.f();
            ArrayList<jj4.c> arrayList8 = new ArrayList();
            for (Object obj3 : listF2) {
                if (((jj4.c) obj3).e() == qv6.MULTI_CHOICE_TEXT) {
                    arrayList8.add(obj3);
                }
            }
            ArrayList arrayList9 = new ArrayList();
            for (jj4.c cVar2 : arrayList8) {
                List<jj4.b> listB3 = cVar2.b();
                if (listB3 != null && !listB3.isEmpty()) {
                    arrayList9.add(new rk4(cVar2.d(), cVar2.a(), cVar2.c()));
                    List<jj4.b> listB4 = cVar2.b();
                    ArrayList arrayList10 = new ArrayList(kn1.q(listB4, 10));
                    Iterator<T> it2 = listB4.iterator();
                    while (it2.hasNext()) {
                        arrayList10.add(new hi4(cVar2.a(), false, cVar2.d(), ((jj4.b) it2.next()).b(), true));
                    }
                    arrayList9.addAll(arrayList10);
                }
            }
            arrayList3.addAll(arrayList9);
            String strY = ra8.y(jj4Var2.e(), "\u2028", "\n");
            rk4 rk4Var = !ta8.M(strY) ? new rk4(strY, new String(), false) : null;
            if (rk4Var != null) {
                arrayList3.add(rk4Var);
            }
            List<jj4.c> listF3 = jj4Var2.f();
            ArrayList arrayList11 = new ArrayList();
            for (jj4.c cVar3 : listF3) {
                i3 i3Var = aj4Var.b;
                jf6 jf6Var = aj4Var.c;
                int i2 = aj4.b.a[cVar3.e().ordinal()];
                if (i2 != 1) {
                    if (i2 == 2) {
                        String strA3 = cVar3.a();
                        boolean zC = cVar3.c();
                        String strD = cVar3.d();
                        String strF2 = cVar3.f();
                        ik4Var2 = new ik4(strA3, zC, strD, strF2 == null ? "" : strF2, aj4.c(cVar3.e()), false, cVar3.e());
                    } else if (i2 == 3) {
                        boolean zD = i3Var.d(jf6Var.U0());
                        ik4Var = new ik4(cVar3.a(), cVar3.c(), cVar3.d(), zD ? jf6Var.U0() : new String(), aj4.c(cVar3.e()), zD, cVar3.e());
                    } else if (i2 != 4) {
                        ik4Var2 = null;
                    } else {
                        String strA4 = cVar3.a();
                        boolean zC2 = cVar3.c();
                        String strD2 = cVar3.d();
                        String strF3 = cVar3.f();
                        ik4Var = new vk4(strA4, zC2, strD2, strF3 == null ? "" : strF3, false, 5);
                    }
                    if (ik4Var2 != null) {
                        arrayList11.add(ik4Var2);
                    }
                } else {
                    boolean zC3 = i3Var.c(jf6Var.c0());
                    String strA5 = cVar3.a();
                    boolean zC4 = cVar3.c();
                    String strD3 = cVar3.d();
                    if (zC3) {
                        strF = jf6Var.c0();
                    } else {
                        strF = cVar3.f();
                        if (strF == null) {
                            str = "";
                        }
                        ik4Var = new ik4(strA5, zC4, strD3, str, aj4.c(cVar3.e()), false, cVar3.e());
                    }
                    str = strF;
                    ik4Var = new ik4(strA5, zC4, strD3, str, aj4.c(cVar3.e()), false, cVar3.e());
                }
                ik4Var2 = ik4Var;
                if (ik4Var2 != null) {
                    arrayList11.add(ik4Var2);
                }
            }
            ArrayList arrayList12 = new ArrayList(arrayList11);
            ListIterator listIterator = arrayList12.listIterator(arrayList12.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    iNextIndex = -1;
                    break;
                }
                if (((yi4) listIterator.previous()) instanceof ik4) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            }
            if (iNextIndex != -1) {
                Object obj4 = arrayList12.get(iNextIndex);
                obj4.getClass();
                i = 0;
                arrayList12.set(iNextIndex, ik4.d((ik4) obj4, null, false, 255));
            } else {
                i = 0;
            }
            arrayList3.addAll(arrayList12);
            List<jj4.a> listA = jj4Var2.a();
            ArrayList arrayList13 = new ArrayList(kn1.q(listA, 10));
            for (jj4.a aVar : listA) {
                arrayList13.add(new mh4(aVar.a(), aVar.b(), aVar.c(), aVar.d(), true));
            }
            arrayList3.addAll(arrayList13);
            int iB = jj4Var2.b();
            boolean z2 = qn1.b0(arrayList3) instanceof vi4;
            if (dVarG.c() != null) {
                qj4Var = new ej4(dVarG.c(), dVarG.b(), z2 ? i : 32);
            } else {
                qj4Var = new qj4(dVarG.b(), iB, z2 ? i : 32, !dVarG.a());
            }
            arrayList3.add(qj4Var);
            arrayList3.add(new th4());
            obj = arrayList3;
        } else {
            obj = kx2.b;
        }
        arrayList.addAll((Collection) obj);
        hi0<List<wk4>> hi0Var = aj4Var.e;
        if (jj4Var2.h()) {
            hi0Var.onNext(arrayList);
        } else {
            aj4Var.b(arrayList);
        }
        return new pr5(hi0Var, new fl0(new bj4(z), 1));
    }
}
