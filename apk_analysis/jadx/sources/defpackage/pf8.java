package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class pf8 implements lf8 {
    public final md8 a;
    public List<ff8> b = kx2.b;

    public pf8(md8 md8Var) {
        this.a = md8Var;
    }

    @Override // defpackage.lf8
    public final List<ff8> a() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0143  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:83:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.lf8
    public final Serializable b(f02 f02Var) {
        mf8 mf8Var;
        Iterator it;
        Object bVar;
        if (f02Var instanceof mf8) {
            mf8Var = (mf8) f02Var;
            int i = mf8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                mf8Var.n = i - Integer.MIN_VALUE;
            } else {
                mf8Var = new mf8(this, f02Var);
            }
        } else {
            mf8Var = new mf8(this, f02Var);
        }
        Object objA = mf8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = mf8Var.n;
        String str = null;
        if (i2 == 0) {
            r57.b(objA);
            mf8Var.n = 1;
            objA = this.a.a(mf8Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        Iterable iterable = (Iterable) objA;
        int i3 = 10;
        ArrayList arrayList = new ArrayList(kn1.q(iterable, 10));
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            le8 le8Var = (le8) it2.next();
            le8Var.getClass();
            int iA = le8Var.a();
            String strC = le8Var.c();
            List<ke8> listB = le8Var.b();
            ArrayList arrayList2 = new ArrayList(kn1.q(listB, i3));
            Iterator it3 = listB.iterator();
            while (it3.hasNext()) {
                ke8 ke8Var = (ke8) it3.next();
                ke8Var.getClass();
                int iC = ke8Var.c();
                String strE = ke8Var.e();
                String strD = ke8Var.d();
                List<ie8> listB2 = ke8Var.b();
                kx2 kx2Var = kx2.b;
                if (listB2 == null) {
                    listB2 = kx2Var;
                }
                List<ie8> list = listB2;
                String str2 = str;
                ArrayList arrayList3 = new ArrayList(kn1.q(list, i3));
                Iterator it4 = list.iterator();
                while (it4.hasNext()) {
                    ie8 ie8Var = (ie8) it4.next();
                    ie8Var.getClass();
                    int iC2 = ie8Var.c();
                    String strD2 = ie8Var.d();
                    List<fe8> listA = ie8Var.a();
                    if (listA == null) {
                        listA = kx2Var;
                    }
                    Iterator it5 = it2;
                    ArrayList arrayList4 = new ArrayList();
                    for (fe8 fe8Var : listA) {
                        fe8Var.getClass();
                        String strB = fe8Var.b();
                        if (strB != null) {
                            String str3 = !ta8.M(strB) ? strB : str2;
                            if (str3 != null) {
                                ge8 ge8VarA = fe8Var.a();
                                it = it4;
                                int i4 = ge8VarA == null ? -1 : je8.a[ge8VarA.ordinal()];
                                if (i4 != -1) {
                                    if (i4 == 1) {
                                        bVar = new nd8.b(str3);
                                    } else {
                                        if (i4 != 2) {
                                            me0.e();
                                            return str2;
                                        }
                                        bVar = new nd8.a(str3);
                                    }
                                }
                                if (bVar != null) {
                                    arrayList4.add(bVar);
                                }
                                it3 = it3;
                                it4 = it;
                                ke8Var = ke8Var;
                            }
                            bVar = str2;
                            if (bVar != null) {
                                arrayList4.add(bVar);
                            }
                            it3 = it3;
                            it4 = it;
                            ke8Var = ke8Var;
                        } else {
                            it3 = it3;
                        }
                        it = it4;
                        ke8Var = ke8Var;
                        bVar = str2;
                        if (bVar != null) {
                            arrayList4.add(bVar);
                        }
                        it3 = it3;
                        it4 = it;
                        ke8Var = ke8Var;
                    }
                    Iterator it6 = it3;
                    Iterator it7 = it4;
                    ke8 ke8Var2 = ke8Var;
                    he8 he8VarB = ie8Var.b();
                    arrayList3.add(new wd8(iC2, strD2, arrayList4, he8VarB != null ? new od8(he8VarB.a(), he8VarB.b()) : str2));
                    it2 = it5;
                    it3 = it6;
                    it4 = it7;
                    ke8Var = ke8Var2;
                }
                Iterator it8 = it2;
                Iterator it9 = it3;
                he8 he8VarA = ke8Var.a();
                arrayList2.add(new ff8(iC, strE, strD, arrayList3, he8VarA != null ? new od8(he8VarA.a(), he8VarA.b()) : str2));
                str = str2;
                it2 = it8;
                it3 = it9;
                i3 = 10;
            }
            arrayList.add(new wf8(iA, strC, arrayList2));
            it2 = it2;
            i3 = 10;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.lf8
    public final Object c(String str, String str2, String str3, f02 f02Var) {
        of8 of8Var;
        if (f02Var instanceof of8) {
            of8Var = (of8) f02Var;
            int i = of8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                of8Var.n = i - Integer.MIN_VALUE;
            } else {
                of8Var = new of8(this, f02Var);
            }
        } else {
            of8Var = new of8(this, f02Var);
        }
        Object objC = of8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = of8Var.n;
        if (i2 == 0) {
            r57.b(objC);
            ue8 ue8Var = new ue8(str, str2, str3);
            of8Var.n = 1;
            objC = this.a.c(ue8Var, of8Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        xe8 xe8Var = (xe8) objC;
        xe8Var.getClass();
        return new we8(xe8Var.b(), xe8Var.d(), xe8Var.c(), xe8Var.a(), xe8Var.e());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.lf8
    public final Object d(f02 f02Var) {
        nf8 nf8Var;
        if (f02Var instanceof nf8) {
            nf8Var = (nf8) f02Var;
            int i = nf8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                nf8Var.n = i - Integer.MIN_VALUE;
            } else {
                nf8Var = new nf8(this, f02Var);
            }
        } else {
            nf8Var = new nf8(this, f02Var);
        }
        Object objB = nf8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = nf8Var.n;
        if (i2 == 0) {
            r57.b(objB);
            nf8Var.n = 1;
            objB = this.a.b(nf8Var);
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
        }
        ve8 ve8Var = (ve8) objB;
        ve8Var.getClass();
        String strB = ve8Var.b();
        String strC = ve8Var.c();
        me8 me8VarD = ve8Var.a().d();
        ni3.a aVar = new ni3.a(me8VarD.a(), me8VarD.b());
        me8 me8VarC = ve8Var.a().c();
        ni3.a aVar2 = new ni3.a(me8VarC.a(), me8VarC.b());
        me8 me8VarB = ve8Var.a().b();
        return new ni3(strB, strC, aVar, aVar2, new ni3.a(me8VarB.a(), me8VarB.b()), ve8Var.a().a());
    }

    @Override // defpackage.lf8
    public final void e(ArrayList arrayList) {
        this.b = arrayList;
    }
}
