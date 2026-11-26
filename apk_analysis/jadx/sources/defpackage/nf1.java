package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class nf1 extends gh4 implements nl3<oc0, qq1> {
    public final /* synthetic */ kf1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nf1(kf1 kf1Var) {
        super(1);
        this.f = kf1Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(oc0 oc0Var) {
        final oc0 oc0Var2 = oc0Var;
        oc0Var2.getClass();
        final kf1 kf1Var = this.f;
        return new dq1(new Callable() { // from class: mf1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ArrayList arrayList;
                ArrayList arrayList2;
                oc0 oc0Var3 = oc0Var2;
                List<oc0.a> listA = oc0Var3.a();
                int i = 10;
                ArrayList arrayList3 = null;
                if (listA != null) {
                    List<oc0.a> list = listA;
                    arrayList = new ArrayList(kn1.q(list, 10));
                    for (oc0.a aVar : list) {
                        aVar.getClass();
                        oc0.a.C0308a c0308aA = aVar.a();
                        arrayList.add(new xb0(c0308aA != null ? new xb0.a(c0308aA.a(), c0308aA.b(), c0308aA.c()) : null, aVar.c(), aVar.d(), aVar.e()));
                    }
                } else {
                    arrayList = null;
                }
                kf1 kf1Var2 = kf1Var;
                kf1.b bVarV = kf1Var2.v();
                kf1.a aVarU = kf1Var2.u();
                List<oc0.a> listB = oc0Var3.b();
                if (listB != null) {
                    List<oc0.a> list2 = listB;
                    ArrayList arrayList4 = new ArrayList(kn1.q(list2, 10));
                    for (oc0.a aVar2 : list2) {
                        aVar2.getClass();
                        String strB = aVar2.b();
                        int iD = aVar2.d();
                        String strE = aVar2.e();
                        List<oc0.a.b> listF = aVar2.f();
                        if (listF != null) {
                            List<oc0.a.b> list3 = listF;
                            arrayList2 = new ArrayList(kn1.q(list3, i));
                            for (oc0.a.b bVar : list3) {
                                arrayList2.add(new z96.a(bVar.a(), bVar.b(), bVar.c()));
                            }
                        } else {
                            arrayList2 = null;
                        }
                        arrayList4.add(new z96(strB, iD, strE, arrayList2));
                        i = 10;
                    }
                    arrayList3 = new ArrayList();
                    for (Object obj : arrayList4) {
                        if (!bVarV.a().contains(Integer.valueOf(((z96) obj).b))) {
                            arrayList3.add(obj);
                        }
                    }
                }
                if (arrayList3 != null) {
                    bVarV.e(arrayList3);
                }
                if (arrayList != null) {
                    aVarU.d(arrayList);
                }
                jf6 jf6Var = kf1Var2.c;
                jf6Var.j1(ht3.c().j(aVarU));
                jf6Var.J0(ht3.c().j(bVarV));
                return j59.a;
            }
        });
    }
}
