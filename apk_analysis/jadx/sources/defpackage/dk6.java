package defpackage;

import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dk6 implements uj6 {
    public final qt0 a;
    public final jf6 b;

    public dk6(qt0 qt0Var, jf6 jf6Var) {
        this.a = qt0Var;
        this.b = jf6Var;
    }

    public static final void i(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        arrayList2.add(new lk6(qn1.t0(arrayList)));
        arrayList.clear();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uj6
    public final Serializable a(int i, int i2, int i3, f02 f02Var) {
        zj6 zj6Var;
        if (f02Var instanceof zj6) {
            zj6Var = (zj6) f02Var;
            int i4 = zj6Var.n;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                zj6Var.n = i4 - Integer.MIN_VALUE;
            } else {
                zj6Var = new zj6(this, f02Var);
            }
        } else {
            zj6Var = new zj6(this, f02Var);
        }
        Object objE = zj6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i5 = zj6Var.n;
        if (i5 == 0) {
            r57.b(objE);
            zj6Var.n = 1;
            objE = this.a.e(i, i2, i3, zj6Var);
            if (objE == a32Var) {
                return a32Var;
            }
        } else {
            if (i5 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objE);
        }
        return dj6.d(((j26) objE).a());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uj6
    public final Serializable b(int i, int i2, int i3, f02 f02Var) {
        wj6 wj6Var;
        if (f02Var instanceof wj6) {
            wj6Var = (wj6) f02Var;
            int i4 = wj6Var.n;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                wj6Var.n = i4 - Integer.MIN_VALUE;
            } else {
                wj6Var = new wj6(this, f02Var);
            }
        } else {
            wj6Var = new wj6(this, f02Var);
        }
        Object objF = wj6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i5 = wj6Var.n;
        if (i5 == 0) {
            r57.b(objF);
            wj6Var.n = 1;
            objF = this.a.f(i, i2, i3, wj6Var);
            if (objF == a32Var) {
                return a32Var;
            }
        } else {
            if (i5 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objF);
        }
        List listA = ((j26) objF).a();
        ArrayList arrayList = new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            sj6 sj6VarA = ((qj6) it.next()).a();
            ti6 ti6VarB = sj6VarA != null ? dj6.b(sj6VarA) : null;
            if (ti6VarB != null) {
                arrayList.add(ti6VarB);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r2 == r4) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        if (r2 == r4) goto L24;
     */
    @Override // defpackage.uj6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(int r30, boolean r31, defpackage.f02 r32) {
        /*
            Method dump skipped, instruction units count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dk6.c(int, boolean, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uj6
    public final Serializable d(int i, int i2, f02 f02Var) {
        bk6 bk6Var;
        if (f02Var instanceof bk6) {
            bk6Var = (bk6) f02Var;
            int i3 = bk6Var.n;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                bk6Var.n = i3 - Integer.MIN_VALUE;
            } else {
                bk6Var = new bk6(this, f02Var);
            }
        } else {
            bk6Var = new bk6(this, f02Var);
        }
        Object objD = bk6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = bk6Var.n;
        if (i4 == 0) {
            r57.b(objD);
            bk6Var.n = 1;
            objD = this.a.d(i, i2, bk6Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        return dj6.d(((j26) objD).a());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uj6
    public final Serializable e(int i, int i2, f02 f02Var) {
        yj6 yj6Var;
        if (f02Var instanceof yj6) {
            yj6Var = (yj6) f02Var;
            int i3 = yj6Var.n;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                yj6Var.n = i3 - Integer.MIN_VALUE;
            } else {
                yj6Var = new yj6(this, f02Var);
            }
        } else {
            yj6Var = new yj6(this, f02Var);
        }
        Object objA = yj6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = yj6Var.n;
        if (i4 == 0) {
            r57.b(objA);
            yj6Var.n = 1;
            objA = this.a.a(i, i2, yj6Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        List listA = ((j26) objA).a();
        ArrayList arrayList = new ArrayList();
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            sj6 sj6VarA = ((qj6) it.next()).a();
            ti6 ti6VarB = sj6VarA != null ? dj6.b(sj6VarA) : null;
            if (ti6VarB != null) {
                arrayList.add(ti6VarB);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uj6
    public final Serializable f(f02 f02Var) {
        ak6 ak6Var;
        if (f02Var instanceof ak6) {
            ak6Var = (ak6) f02Var;
            int i = ak6Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                ak6Var.n = i - Integer.MIN_VALUE;
            } else {
                ak6Var = new ak6(this, f02Var);
            }
        } else {
            ak6Var = new ak6(this, f02Var);
        }
        Object objC = ak6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ak6Var.n;
        if (i2 == 0) {
            r57.b(objC);
            ak6Var.n = 1;
            objC = this.a.c(ak6Var);
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
        return dj6.c((List) objC);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.uj6
    public final Serializable g(f02 f02Var) {
        xj6 xj6Var;
        if (f02Var instanceof xj6) {
            xj6Var = (xj6) f02Var;
            int i = xj6Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                xj6Var.n = i - Integer.MIN_VALUE;
            } else {
                xj6Var = new xj6(this, f02Var);
            }
        } else {
            xj6Var = new xj6(this, f02Var);
        }
        Object objI = xj6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = xj6Var.n;
        if (i2 == 0) {
            r57.b(objI);
            xj6Var.n = 1;
            objI = this.a.i(xj6Var);
            if (objI == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objI);
        }
        return dj6.c((List) objI);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // defpackage.uj6
    public final Object h(int i, f02 f02Var) {
        vj6 vj6Var;
        Object next;
        Iterator it;
        String str;
        boolean z;
        pz3 bVar;
        if (f02Var instanceof vj6) {
            vj6Var = (vj6) f02Var;
            int i2 = vj6Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                vj6Var.n = i2 - Integer.MIN_VALUE;
            } else {
                vj6Var = new vj6(this, f02Var);
            }
        } else {
            vj6Var = new vj6(this, f02Var);
        }
        Object objH = vj6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = vj6Var.n;
        boolean z2 = true;
        if (i3 == 0) {
            r57.b(objH);
            vj6Var.n = 1;
            objH = this.a.h(i, vj6Var);
            if (objH == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objH);
        }
        List list = (List) objH;
        Iterator it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!(((zh6) next) instanceof st5));
        st5 st5Var = next instanceof st5 ? (st5) next : null;
        st5.a aVarA = st5Var != null ? st5Var.a() : null;
        String strA = aVarA != null ? aVarA.a() : null;
        String str2 = "";
        if (strA == null) {
            strA = "";
        }
        String strB = aVarA != null ? aVarA.b() : null;
        if (strB == null) {
            strB = "";
        }
        ArrayList arrayListH0 = qn1.h0(u96.h(new kk6(strB)), u96.j(!this.b.G0() ? new cn() : null));
        ArrayList arrayList = new ArrayList();
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            zh6 zh6Var = (zh6) it3.next();
            if (zh6Var instanceof j61) {
                j61 j61Var = (j61) zh6Var;
                bVar = new eh6(j61Var.a().c(), j61Var.a().d(), j61Var.a().b(), j61Var.a().a());
                it = it3;
                str = str2;
                z = z2;
            } else if (zh6Var instanceof dy4) {
                dy4 dy4Var = (dy4) zh6Var;
                String strC = dy4Var.a().c();
                String strB2 = dy4Var.a().b();
                if (strB2 == null) {
                    strB2 = str2;
                }
                List<dy4.a.C0182a> listA = dy4Var.a().a();
                int iD = dy4Var.a().d();
                List<dy4.a.C0182a> list2 = listA;
                ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
                boolean z3 = z2;
                for (dy4.a.C0182a c0182a : list2) {
                    int iB = (iD / c0182a.b()) * 100;
                    int i4 = z3 ? iB : 0;
                    Iterator it4 = it3;
                    String str3 = str2;
                    fh6 fh6Var = new fh6(c0182a.a() + " ₽", kv2.b(c0182a.b(), "за ", " ₽"), i4);
                    z3 = iB >= 100;
                    arrayList2.add(fh6Var);
                    it3 = it4;
                    str2 = str3;
                }
                it = it3;
                str = str2;
                bVar = new ih6(strC, strB2, arrayList2);
                z = true;
            } else {
                it = it3;
                str = str2;
                if (zh6Var instanceof z95) {
                    z95 z95Var = (z95) zh6Var;
                    String strB3 = z95Var.a().b();
                    List<z95.a.C0372a> listA2 = z95Var.a().a();
                    ArrayList arrayList3 = new ArrayList(kn1.q(listA2, 10));
                    for (z95.a.C0372a c0372a : listA2) {
                        arrayList3.add(new ji6(c0372a.a(), c0372a.c(), c0372a.b()));
                    }
                    z = true;
                    bVar = new ni6(strB3, true, arrayList3);
                } else {
                    z = true;
                    if (zh6Var instanceof rt5) {
                        rt5 rt5Var = (rt5) zh6Var;
                        String strB4 = rt5Var.a().b();
                        List<rt5.a.C0325a> listA3 = rt5Var.a().a();
                        ArrayList arrayList4 = new ArrayList(kn1.q(listA3, 10));
                        Iterator<T> it5 = listA3.iterator();
                        while (it5.hasNext()) {
                            arrayList4.add(new ai6(((rt5.a.C0325a) it5.next()).a()));
                        }
                        bVar = new bi6(strB4, arrayList4);
                    } else if (zh6Var instanceof eq8) {
                        eq8 eq8Var = (eq8) zh6Var;
                        bVar = new qi6(eq8Var.a().b(), eq8Var.a().a());
                    } else if (zh6Var instanceof ch6) {
                        ch6 ch6Var = (ch6) zh6Var;
                        String strB5 = ch6Var.a().b();
                        List<String> listA4 = ch6Var.a().a();
                        ArrayList arrayList5 = new ArrayList(kn1.q(listA4, 10));
                        Iterator<T> it6 = listA4.iterator();
                        while (it6.hasNext()) {
                            arrayList5.add(new b.a((String) it6.next()));
                        }
                        bVar = new b(strB5, arrayList5);
                    } else {
                        bVar = null;
                    }
                }
            }
            if (bVar != null) {
                arrayList.add(bVar);
            }
            it3 = it;
            z2 = z;
            str2 = str;
        }
        return new oh6(strA, qn1.h0(arrayList, arrayListH0));
    }
}
