package defpackage;

import android.graphics.Color;
import android.os.SystemClock;
import com.warefly.checkscan.R;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;
import com.warefly.checkscan.tasks.presentation.adResult.DailyBonusPoints;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskNoAttempts;
import com.warefly.checkscan.tasks.presentation.dailyTask.model.DailyTaskResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class tp8 implements ap8 {
    public final vo8 a;
    public final kr6 b;

    public tp8(vo8 vo8Var, kr6 kr6Var) {
        this.a = vo8Var;
        this.b = kr6Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // defpackage.ap8
    public final Object a(int i, f02 f02Var) {
        kp8 kp8Var;
        List listI;
        if (f02Var instanceof kp8) {
            kp8Var = (kp8) f02Var;
            int i2 = kp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                kp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                kp8Var = new kp8(this, f02Var);
            }
        } else {
            kp8Var = new kp8(this, f02Var);
        }
        Object objJ = kp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = kp8Var.n;
        Object obj = null;
        if (i3 == 0) {
            r57.b(objJ);
            kp8Var.n = 1;
            objJ = this.a.j(i, kp8Var);
            if (objJ == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objJ);
        }
        tm8 tm8Var = (tm8) objJ;
        tm8Var.getClass();
        String strC = tm8Var.c();
        l82.a aVar = new l82.a(tm8Var.d().b(), tm8Var.d().a());
        tm8.c cVarB = tm8Var.b();
        DailyTaskNoAttempts dailyTaskNoAttempts = cVarB != null ? new DailyTaskNoAttempts(cVarB.b(), cVarB.d(), cVarB.c(), cVarB.a()) : null;
        String strE = tm8Var.e();
        List listJ = u96.j(strE != null ? new b82(strE) : null);
        List<tm8.b> listA = tm8Var.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        for (tm8.b bVar : listA) {
            bVar.getClass();
            int i4 = wn8.a.b[bVar.b().ordinal()];
            if (i4 == 1) {
                listI = u96.i(Integer.valueOf(Color.parseColor("#00AA63")), Integer.valueOf(Color.parseColor("#FFFFFF")), Integer.valueOf(Color.parseColor("#E6FBEB")), Integer.valueOf(R.drawable.green_hexagon), Integer.valueOf(Color.parseColor("#00AA63")));
            } else if (i4 == 2) {
                listI = u96.i(Integer.valueOf(Color.parseColor("#3085FF")), Integer.valueOf(Color.parseColor("#FFFFFF")), Integer.valueOf(Color.parseColor("#EBF3FF")), Integer.valueOf(R.drawable.blue_hexagon), Integer.valueOf(Color.parseColor("#3085FF")));
            } else if (i4 == 3) {
                listI = u96.i(Integer.valueOf(Color.parseColor("#CCCED3")), Integer.valueOf(Color.parseColor("#FFFFFF")), Integer.valueOf(Color.parseColor("#F8F8F8")), Integer.valueOf(R.drawable.gray_hexagon), Integer.valueOf(Color.parseColor("#E6E8EE")));
            } else {
                if (i4 != 4) {
                    Object obj2 = obj;
                    me0.e();
                    return obj2;
                }
                listI = u96.i(Integer.valueOf(Color.parseColor("#EBA500")), Integer.valueOf(Color.parseColor("#FFFFFF")), Integer.valueOf(Color.parseColor("#FFF9EB")), Integer.valueOf(R.drawable.yellow_hexagon), Integer.valueOf(Color.parseColor("#EBA500")));
            }
            arrayList.add(new m82(bVar.a(), bVar.c(), ((Number) listI.get(0)).intValue(), ((Number) listI.get(1)).intValue(), ((Number) listI.get(2)).intValue(), ((Number) listI.get(3)).intValue(), ((Number) listI.get(4)).intValue()));
            obj = obj;
        }
        return new l82(strC, aVar, dailyTaskNoAttempts, qn1.h0(arrayList, listJ));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object b(int i, f02 f02Var) {
        lp8 lp8Var;
        if (f02Var instanceof lp8) {
            lp8Var = (lp8) f02Var;
            int i2 = lp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                lp8Var = new lp8(this, f02Var);
            }
        } else {
            lp8Var = new lp8(this, f02Var);
        }
        Object objK = lp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = lp8Var.n;
        if (i3 == 0) {
            r57.b(objK);
            lp8Var.n = 1;
            objK = this.a.k(i, lp8Var);
            if (objK == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objK);
        }
        kn8 kn8Var = (kn8) objK;
        kn8Var.getClass();
        String strE = kn8Var.e();
        List<fo8> listF = kn8Var.f();
        ArrayList arrayList = new ArrayList();
        for (fo8 fo8Var : listF) {
            fo8.a aVarO = fo8Var.o();
            int i4 = aVarO == null ? -1 : wn8.a.a[aVarO.ordinal()];
            fm8 fm8VarA = (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 6) ? wn8.a(fo8Var) : null;
            if (fm8VarA != null) {
                arrayList.add(fm8VarA);
            }
        }
        return new jn8(strE, arrayList, kn8Var.c(), kn8Var.d(), kn8Var.a(), kn8Var.b());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object c(int i, f02 f02Var) {
        cp8 cp8Var;
        if (f02Var instanceof cp8) {
            cp8Var = (cp8) f02Var;
            int i2 = cp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                cp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                cp8Var = new cp8(this, f02Var);
            }
        } else {
            cp8Var = new cp8(this, f02Var);
        }
        Object objA = cp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = cp8Var.n;
        DailyTaskResult dailyTaskResult = null;
        if (i3 == 0) {
            r57.b(objA);
            cp8Var.n = 1;
            objA = this.a.a(i, cp8Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        go8 go8Var = (go8) objA;
        go8Var.getClass();
        boolean zD = go8Var.d();
        go8.b bVarA = go8Var.a();
        if (bVarA != null) {
            String strE = bVarA.e();
            String strD = bVarA.d();
            String strA = bVarA.a();
            go8.a aVarB = bVarA.b();
            aVarB.getClass();
            DailyTaskResult.Button button = new DailyTaskResult.Button(aVarB.a(), aVarB.b());
            go8.a aVarC = bVarA.c();
            dailyTaskResult = new DailyTaskResult(strE, strD, strA, button, aVarC != null ? new DailyTaskResult.Button(aVarC.a(), aVarC.b()) : null);
        }
        return new s72(zD, dailyTaskResult);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v6, types: [kx2] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.util.ArrayList] */
    @Override // defpackage.ap8
    public final Object d(int i, f02 f02Var) {
        rp8 rp8Var;
        ?? arrayList;
        if (f02Var instanceof rp8) {
            rp8Var = (rp8) f02Var;
            int i2 = rp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                rp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                rp8Var = new rp8(this, f02Var);
            }
        } else {
            rp8Var = new rp8(this, f02Var);
        }
        Object objP = rp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = rp8Var.n;
        if (i3 == 0) {
            r57.b(objP);
            rp8Var.n = 1;
            objP = this.a.p(i, rp8Var);
            if (objP == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objP);
        }
        jo8 jo8Var = (jo8) objP;
        jo8Var.getClass();
        int iG = jo8Var.g();
        String strH = jo8Var.h();
        String strL = jo8Var.l();
        String strK = jo8Var.k();
        List<String> listC = jo8Var.c();
        ArrayList arrayList2 = new ArrayList(kn1.q(listC, 10));
        int i4 = 0;
        for (Object obj : listC) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                u96.o();
                throw null;
            }
            arrayList2.add(new wm8((String) obj, i4 == 0 ? jo8Var.a() : null));
            i4 = i5;
        }
        List listH = u96.h(new cn8(jo8Var.k(), null, false, false));
        List<fn8> listE = jo8Var.e();
        if (listE != null) {
            List<fn8> list = listE;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (fn8 fn8Var : list) {
                arrayList.add(new cn8(fn8Var.b(), fn8Var.a(), true, false));
            }
        } else {
            arrayList = 0;
        }
        if (arrayList == 0) {
            arrayList = kx2.b;
        }
        ArrayList arrayListH0 = qn1.h0(u96.h(new gn8(qn1.h0((Iterable) arrayList, listH), false)), arrayList2);
        um8.a aVar = new um8.a(jo8Var.b().c(), jo8Var.b().a(), jo8Var.b().b());
        um8.b bVar = new um8.b(jo8Var.d().c(), jo8Var.d().a(), jo8Var.d().b());
        c06 c06VarI = jo8Var.i();
        b06 b06VarF = c06VarI != null ? c06VarI.f() : null;
        jl3 jl3VarF = jo8Var.f();
        return new um8(iG, strH, arrayListH0, strL, strK, aVar, bVar, b06VarF, jl3VarF != null ? jl3VarF.a() : null, aa4.e(jo8Var.j(), Boolean.TRUE));
    }

    @Override // defpackage.ap8
    public final Object e(o63 o63Var) {
        return this.a.r(o63Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object f(j8 j8Var, f02 f02Var) {
        sp8 sp8Var;
        if (f02Var instanceof sp8) {
            sp8Var = (sp8) f02Var;
            int i = sp8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                sp8Var.n = i - Integer.MIN_VALUE;
            } else {
                sp8Var = new sp8(this, f02Var);
            }
        } else {
            sp8Var = new sp8(this, f02Var);
        }
        Object objO = sp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = sp8Var.n;
        if (i2 == 0) {
            r57.b(objO);
            sp8Var.n = 1;
            objO = this.a.o(j8Var, sp8Var);
            if (objO == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objO);
        }
        ol8.b bVarA = ((ol8) objO).a();
        if (bVarA == null) {
            return null;
        }
        String strB = bVarA.b();
        String strE = bVarA.e();
        String strD = bVarA.d();
        List<String> listA = bVarA.a();
        String str = listA != null ? (String) qn1.V(listA) : null;
        if (str == null) {
            str = "";
        }
        return new DailyBonusPoints(strB, strE, strD, str, bVarA.c().a());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object g(int i, f02 f02Var) {
        gp8 gp8Var;
        if (f02Var instanceof gp8) {
            gp8Var = (gp8) f02Var;
            int i2 = gp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                gp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                gp8Var = new gp8(this, f02Var);
            }
        } else {
            gp8Var = new gp8(this, f02Var);
        }
        Object objN = gp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = gp8Var.n;
        if (i3 == 0) {
            r57.b(objN);
            gp8Var.n = 1;
            objN = this.a.n(i, gp8Var);
            if (objN == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objN);
        }
        hm8 hm8Var = (hm8) objN;
        hm8Var.getClass();
        List listH = u96.h(new ib1(hm8Var.k(), hm8Var.h()));
        List<String> listD = hm8Var.d();
        ArrayList arrayList = new ArrayList(kn1.q(listD, 10));
        int i4 = 0;
        for (Object obj : listD) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                u96.o();
                throw null;
            }
            arrayList.add(new wm8((String) obj, i4 == 0 ? hm8Var.a() : null));
            i4 = i5;
        }
        ArrayList arrayListH0 = qn1.h0(u96.h(new db1(hm8Var.j())), qn1.h0(arrayList, listH));
        List<hm8.b> listC = hm8Var.c();
        ArrayList arrayList2 = new ArrayList(kn1.q(listC, 10));
        int i6 = 0;
        for (Object obj2 : listC) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                u96.o();
                throw null;
            }
            arrayList2.add(new gc1(i6, ((hm8.b) obj2).a(), i6 == 0, hm8Var.f() || hm8Var.e().a(), (hm8Var.f() || hm8Var.e().a()) ? false : true));
            i6 = i7;
        }
        ArrayList arrayListH1 = qn1.h0(u96.i(new xa1(xa1.a.Activate, hm8Var.b().b(), false, false, hm8Var.b().a()), new xa1(xa1.a.Reward, hm8Var.e().b(), hm8Var.e().a(), false, false)), qn1.h0(arrayList2, arrayListH0));
        jl3 jl3VarG = hm8Var.g();
        ArrayList arrayListH2 = qn1.h0(u96.j(jl3VarG != null ? jl3VarG.a() : null), arrayListH1);
        c06 c06VarI = hm8Var.i();
        return new jb1(arrayListH2, c06VarI != null ? c06VarI.f() : null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object h(int i, int i2, f02 f02Var) {
        hp8 hp8Var;
        if (f02Var instanceof hp8) {
            hp8Var = (hp8) f02Var;
            int i3 = hp8Var.n;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                hp8Var.n = i3 - Integer.MIN_VALUE;
            } else {
                hp8Var = new hp8(this, f02Var);
            }
        } else {
            hp8Var = new hp8(this, f02Var);
        }
        Object objL = hp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = hp8Var.n;
        if (i4 == 0) {
            r57.b(objL);
            hp8Var.n = 1;
            objL = this.a.l(i, i2, hp8Var);
            if (objL == a32Var) {
                return a32Var;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objL);
        }
        return ((km8) objL).a();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:41:0x0095  */
    /* JADX WARN: Code duplicated, block: B:47:0x009f  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c8 A[LOOP:0: B:51:0x00c2->B:53:0x00c8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:63:0x011c  */
    /* JADX WARN: Code duplicated, block: B:65:0x0124  */
    /* JADX WARN: Code duplicated, block: B:67:0x012a  */
    /* JADX WARN: Code duplicated, block: B:68:0x012f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0157  */
    /* JADX WARN: Code duplicated, block: B:77:0x016c A[LOOP:2: B:75:0x0166->B:77:0x016c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x0183  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x0186  */
    /* JADX WARN: Code duplicated, block: B:83:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:84:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:95:0x013a A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v8, types: [kx2] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.util.ArrayList] */
    @Override // defpackage.ap8
    public final Object i(int i, f02 f02Var) throws Throwable {
        op8 op8Var;
        bo8 bo8Var;
        jq6 jq6Var;
        jq6 jq6Var2;
        bo8 bo8Var2;
        Object objA;
        Object aVar;
        Throwable thA;
        mq6 mq6Var;
        dr6 dr6Var;
        c06 c06VarH;
        b06 b06VarF;
        ArrayList arrayList;
        int i2;
        List<fn8> listE;
        ?? arrayList2;
        jl3 jl3VarF;
        b bVarA;
        int i3;
        String strA;
        ArrayList arrayList3;
        Iterator it;
        if (f02Var instanceof op8) {
            op8Var = (op8) f02Var;
            int i4 = op8Var.p;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                op8Var.p = i4 - Integer.MIN_VALUE;
            } else {
                op8Var = new op8(this, f02Var);
            }
        } else {
            op8Var = new op8(this, f02Var);
        }
        Object objD = op8Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i5 = op8Var.p;
        kr6 kr6Var = this.b;
        if (i5 == 0) {
            r57.b(objD);
            op8Var.p = 1;
            objD = this.a.d(i, op8Var);
            if (objD != a32Var) {
            }
            return a32Var;
        }
        if (i5 == 1) {
            r57.b(objD);
        } else {
            if (i5 != 2) {
                if (i5 != 3) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                jq6Var2 = op8Var.m;
                bo8Var2 = op8Var.l;
                try {
                    r57.b(objD);
                    aVar = (mq6) objD;
                } catch (Throwable th) {
                    th = th;
                    aVar = new k57.a(th);
                }
                thA = k57.a(aVar);
                if (thA == null && (thA instanceof CancellationException)) {
                    throw thA;
                }
                if (aVar instanceof k57.a) {
                    aVar = null;
                }
                mq6Var = (mq6) aVar;
                sq6 sq6Var = new sq6(null);
                if (mq6Var != null) {
                    String strB = mq6Var.b();
                    List<String> listA = mq6Var.a();
                    arrayList3 = new ArrayList(kn1.q(listA, 10));
                    it = listA.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(new lq6((String) it.next()));
                    }
                    dr6Var = new dr6(strB, arrayList3);
                } else {
                    dr6Var = null;
                }
                int i6 = bo8Var2.i();
                c06VarH = bo8Var2.h();
                if (c06VarH != null) {
                    b06VarF = c06VarH.f();
                } else {
                    b06VarF = null;
                }
                List listH = u96.h(new zq6(bo8Var2.k(), bo8Var2.g()));
                List<String> listC = bo8Var2.c();
                arrayList = new ArrayList(kn1.q(listC, 10));
                i2 = 0;
                for (Object obj : listC) {
                    i3 = i2 + 1;
                    if (i2 < 0) {
                        u96.o();
                        throw null;
                    }
                    String str = (String) obj;
                    if (i2 == 0) {
                        strA = bo8Var2.a();
                    } else {
                        strA = null;
                    }
                    arrayList.add(new wq6(str, strA));
                    i2 = i3;
                }
                ArrayList arrayListH0 = qn1.h0(arrayList, listH);
                List listH2 = u96.h(new cn8(bo8Var2.j(), null, false, false));
                listE = bo8Var2.e();
                if (listE != null) {
                    List<fn8> list = listE;
                    arrayList2 = new ArrayList(kn1.q(list, 10));
                    for (fn8 fn8Var : list) {
                        arrayList2.add(new cn8(fn8Var.b(), fn8Var.a(), true, false));
                    }
                } else {
                    arrayList2 = 0;
                }
                if (arrayList2 == 0) {
                    arrayList2 = kx2.b;
                }
                ArrayList arrayListH1 = qn1.h0(u96.h(new gn8(qn1.h0((Iterable) arrayList2, listH2), false)), arrayListH0);
                jl3VarF = bo8Var2.f();
                if (jl3VarF != null) {
                    bVarA = jl3VarF.a();
                } else {
                    bVarA = null;
                }
                ArrayList arrayListH2 = qn1.h0(yr.G(new pz3[]{dr6Var, sq6Var}), qn1.h0(u96.j(bVarA), arrayListH1));
                jq6.c cVarA = jq6Var2.a();
                return new tq6(i6, qn1.h0(u96.i(new qq6(qq6.a.Activate, bo8Var2.i(), cVarA != null ? cVarA.a() : null, bo8Var2.b().b(), bo8Var2.b().a(), false), new qq6(qq6.a.Reward, bo8Var2.i(), null, bo8Var2.d().b(), bo8Var2.d().a(), false)), arrayListH2), b06VarF);
            }
            bo8 bo8Var3 = op8Var.l;
            r57.b(objD);
            bo8Var = bo8Var3;
            jq6Var = (jq6) objD;
            try {
                int i7 = bo8Var.i();
                op8Var.l = bo8Var;
                op8Var.m = jq6Var;
                op8Var.p = 3;
                objA = kr6Var.a(i7, op8Var);
                if (objA != a32Var) {
                    jq6Var2 = jq6Var;
                    bo8Var2 = bo8Var;
                    objD = objA;
                    aVar = (mq6) objD;
                    thA = k57.a(aVar);
                    if (thA == null) {
                    }
                    if (aVar instanceof k57.a) {
                        aVar = null;
                    }
                    mq6Var = (mq6) aVar;
                    sq6 sq6Var2 = new sq6(null);
                    if (mq6Var != null) {
                        String strB2 = mq6Var.b();
                        List<String> listA2 = mq6Var.a();
                        arrayList3 = new ArrayList(kn1.q(listA2, 10));
                        it = listA2.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(new lq6((String) it.next()));
                        }
                        dr6Var = new dr6(strB2, arrayList3);
                    } else {
                        dr6Var = null;
                    }
                    int i8 = bo8Var2.i();
                    c06VarH = bo8Var2.h();
                    if (c06VarH != null) {
                        b06VarF = c06VarH.f();
                    } else {
                        b06VarF = null;
                    }
                    List listH3 = u96.h(new zq6(bo8Var2.k(), bo8Var2.g()));
                    List<String> listC2 = bo8Var2.c();
                    arrayList = new ArrayList(kn1.q(listC2, 10));
                    i2 = 0;
                    while (r11.hasNext()) {
                        i3 = i2 + 1;
                        if (i2 < 0) {
                            u96.o();
                            throw null;
                        }
                        String str2 = (String) obj;
                        if (i2 == 0) {
                            strA = bo8Var2.a();
                        } else {
                            strA = null;
                        }
                        arrayList.add(new wq6(str2, strA));
                        i2 = i3;
                    }
                    ArrayList arrayListH3 = qn1.h0(arrayList, listH3);
                    List listH4 = u96.h(new cn8(bo8Var2.j(), null, false, false));
                    listE = bo8Var2.e();
                    if (listE != null) {
                        List<fn8> list2 = listE;
                        arrayList2 = new ArrayList(kn1.q(list2, 10));
                        while (r4.hasNext()) {
                            arrayList2.add(new cn8(fn8Var.b(), fn8Var.a(), true, false));
                        }
                    } else {
                        arrayList2 = 0;
                    }
                    if (arrayList2 == 0) {
                        arrayList2 = kx2.b;
                    }
                    ArrayList arrayListH4 = qn1.h0(u96.h(new gn8(qn1.h0((Iterable) arrayList2, listH4), false)), arrayListH3);
                    jl3VarF = bo8Var2.f();
                    if (jl3VarF != null) {
                        bVarA = jl3VarF.a();
                    } else {
                        bVarA = null;
                    }
                    ArrayList arrayListH5 = qn1.h0(yr.G(new pz3[]{dr6Var, sq6Var2}), qn1.h0(u96.j(bVarA), arrayListH4));
                    jq6.c cVarA2 = jq6Var2.a();
                    if (cVarA2 != null) {
                    }
                    return new tq6(i8, qn1.h0(u96.i(new qq6(qq6.a.Activate, bo8Var2.i(), cVarA2 != null ? cVarA2.a() : null, bo8Var2.b().b(), bo8Var2.b().a(), false), new qq6(qq6.a.Reward, bo8Var2.i(), null, bo8Var2.d().b(), bo8Var2.d().a(), false)), arrayListH5), b06VarF);
                }
                return a32Var;
            } catch (Throwable th2) {
                th = th2;
                jq6Var2 = jq6Var;
                bo8Var2 = bo8Var;
                aVar = new k57.a(th);
            }
        }
        bo8 bo8Var4 = (bo8) objD;
        int i9 = bo8Var4.i();
        op8Var.l = bo8Var4;
        op8Var.p = 2;
        Object objB = kr6Var.b(i9, op8Var);
        if (objB != a32Var) {
            bo8Var = bo8Var4;
            objD = objB;
            jq6Var = (jq6) objD;
            int i10 = bo8Var.i();
            op8Var.l = bo8Var;
            op8Var.m = jq6Var;
            op8Var.p = 3;
            objA = kr6Var.a(i10, op8Var);
            if (objA != a32Var) {
                jq6Var2 = jq6Var;
                bo8Var2 = bo8Var;
                objD = objA;
                aVar = (mq6) objD;
                thA = k57.a(aVar);
                if (thA == null) {
                }
                if (aVar instanceof k57.a) {
                    aVar = null;
                }
                mq6Var = (mq6) aVar;
                sq6 sq6Var3 = new sq6(null);
                if (mq6Var != null) {
                    String strB3 = mq6Var.b();
                    List<String> listA3 = mq6Var.a();
                    arrayList3 = new ArrayList(kn1.q(listA3, 10));
                    it = listA3.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(new lq6((String) it.next()));
                    }
                    dr6Var = new dr6(strB3, arrayList3);
                } else {
                    dr6Var = null;
                }
                int i11 = bo8Var2.i();
                c06VarH = bo8Var2.h();
                if (c06VarH != null) {
                    b06VarF = c06VarH.f();
                } else {
                    b06VarF = null;
                }
                List listH5 = u96.h(new zq6(bo8Var2.k(), bo8Var2.g()));
                List<String> listC3 = bo8Var2.c();
                arrayList = new ArrayList(kn1.q(listC3, 10));
                i2 = 0;
                while (r11.hasNext()) {
                    i3 = i2 + 1;
                    if (i2 < 0) {
                        u96.o();
                        throw null;
                    }
                    String str3 = (String) obj;
                    if (i2 == 0) {
                        strA = bo8Var2.a();
                    } else {
                        strA = null;
                    }
                    arrayList.add(new wq6(str3, strA));
                    i2 = i3;
                }
                ArrayList arrayListH6 = qn1.h0(arrayList, listH5);
                List listH6 = u96.h(new cn8(bo8Var2.j(), null, false, false));
                listE = bo8Var2.e();
                if (listE != null) {
                    List<fn8> list3 = listE;
                    arrayList2 = new ArrayList(kn1.q(list3, 10));
                    while (r4.hasNext()) {
                        arrayList2.add(new cn8(fn8Var.b(), fn8Var.a(), true, false));
                    }
                } else {
                    arrayList2 = 0;
                }
                if (arrayList2 == 0) {
                    arrayList2 = kx2.b;
                }
                ArrayList arrayListH7 = qn1.h0(u96.h(new gn8(qn1.h0((Iterable) arrayList2, listH6), false)), arrayListH6);
                jl3VarF = bo8Var2.f();
                if (jl3VarF != null) {
                    bVarA = jl3VarF.a();
                } else {
                    bVarA = null;
                }
                ArrayList arrayListH8 = qn1.h0(yr.G(new pz3[]{dr6Var, sq6Var3}), qn1.h0(u96.j(bVarA), arrayListH7));
                jq6.c cVarA3 = jq6Var2.a();
                if (cVarA3 != null) {
                }
                return new tq6(i11, qn1.h0(u96.i(new qq6(qq6.a.Activate, bo8Var2.i(), cVarA3 != null ? cVarA3.a() : null, bo8Var2.b().b(), bo8Var2.b().a(), false), new qq6(qq6.a.Reward, bo8Var2.i(), null, bo8Var2.d().b(), bo8Var2.d().a(), false)), arrayListH8), b06VarF);
            }
        }
        return a32Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object j(int i, f02 f02Var) {
        ep8 ep8Var;
        if (f02Var instanceof ep8) {
            ep8Var = (ep8) f02Var;
            int i2 = ep8Var.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ep8Var.o = i2 - Integer.MIN_VALUE;
            } else {
                ep8Var = new ep8(this, f02Var);
            }
        } else {
            ep8Var = new ep8(this, f02Var);
        }
        Object objA = ep8Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = ep8Var.o;
        if (i3 == 0) {
            r57.b(objA);
            ep8Var.l = i;
            ep8Var.o = 1;
            objA = this.a.a(i, ep8Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = ep8Var.l;
            r57.b(objA);
        }
        return wn8.b((go8) objA, i);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // defpackage.ap8
    public final Object k(boolean z, f02 f02Var) {
        mp8 mp8Var;
        zl8 zl8Var;
        nm8 nm8Var;
        ro8 ro8Var;
        zo8 zo8Var;
        fo0.a aVar;
        fo0.b bVar;
        String str;
        fo0.c cVar;
        String str2;
        rh9.a aVar2;
        rh9.b bVar2;
        fo0.c cVar2;
        if (f02Var instanceof mp8) {
            mp8Var = (mp8) f02Var;
            int i = mp8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                mp8Var.n = i - Integer.MIN_VALUE;
            } else {
                mp8Var = new mp8(this, f02Var);
            }
        } else {
            mp8Var = new mp8(this, f02Var);
        }
        Object objF = mp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = mp8Var.n;
        so8 ir0Var = null;
        if (i2 == 0) {
            r57.b(objF);
            mp8Var.n = 1;
            objF = this.a.f(z, mp8Var);
            if (objF == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objF);
        }
        zo8 zo8Var2 = (zo8) objF;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zo8.c cVarD = zo8Var2.d();
        int i3 = 28;
        if (cVarD != null) {
            pw7 pw7Var = new pw7(28, cVarD.a(), null, Integer.valueOf(cVarD.b()));
            int iB = cVarD.b();
            String strC = cVarD.c();
            String strE = cVarD.e();
            c06 c06VarD = cVarD.d();
            zl8Var = new zl8(iB, strC, strE, c06VarD != null ? c06VarD.f() : null, pw7Var);
        } else {
            zl8Var = null;
        }
        fo8 fo8VarC = zo8Var2.c();
        if (fo8VarC != null) {
            pw7 pw7Var2 = new pw7(24, fo8VarC.e(), fo8VarC.b(), Integer.valueOf(fo8VarC.i()));
            int i4 = fo8VarC.i();
            String strJ = fo8VarC.j();
            if (strJ == null) {
                strJ = "";
            }
            String strN = fo8VarC.n();
            if (strN == null) {
                strN = "";
            }
            nm8Var = new nm8(i4, strJ, strN, fo8VarC.f(), fo8VarC.h(), pw7Var2);
        } else {
            nm8Var = null;
        }
        ro8 ro8Var2 = new ro8(zo8Var2.g());
        zo8.g gVarI = zo8Var2.i();
        if (gVarI == null) {
            ro8Var = ro8Var2;
            zo8Var = zo8Var2;
        } else if (gVarI.a().size() == 1) {
            zo8.d dVar = (zo8.d) qn1.T(gVarI.a());
            pw7 pw7Var3 = new pw7(28, dVar.a(), null, Integer.valueOf(dVar.c()));
            int iC = dVar.c();
            String strG = dVar.g();
            String strD = dVar.d();
            if (dVar.b() != null) {
                String strC2 = dVar.b().c();
                String strD2 = dVar.b().d();
                str2 = null;
                String strA = dVar.b().a();
                Long lB = dVar.b().b();
                aVar2 = new rh9.a(strC2, strD2, strA, lB != null ? Long.valueOf(lB.longValue() + jElapsedRealtime) : null);
            } else {
                str2 = null;
                aVar2 = null;
            }
            zo8.f fVarE = dVar.e();
            String strA2 = fVarE != null ? fVarE.a() : str2;
            int i5 = wn8.a.c[dVar.f().ordinal()];
            if (i5 == 1) {
                bVar2 = rh9.b.AVAILABLE;
            } else {
                if (i5 != 2) {
                    me0.e();
                    return str2;
                }
                bVar2 = rh9.b.COMPLETED;
            }
            rh9.b bVar3 = bVar2;
            int i6 = wn8.a.d[dVar.h().ordinal()];
            if (i6 == 1) {
                cVar2 = fo0.c.AD;
            } else {
                if (i6 != 2) {
                    me0.e();
                    return str2;
                }
                cVar2 = fo0.c.DAILY;
            }
            ro8Var = ro8Var2;
            zo8Var = zo8Var2;
            ir0Var = new rh9(iC, strG, strD, aVar2, strA2, bVar3, cVar2, pw7Var3);
        } else {
            String str3 = null;
            List<zo8.d> listA = gVarI.a();
            ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
            for (zo8.d dVar2 : listA) {
                pw7 pw7Var4 = new pw7(i3, dVar2.a(), str3, Integer.valueOf(dVar2.c()));
                int iC2 = dVar2.c();
                String strG2 = dVar2.g();
                String strD3 = dVar2.d();
                if (dVar2.b() != null) {
                    String strC3 = dVar2.b().c();
                    String strD4 = dVar2.b().d();
                    String strA3 = dVar2.b().a();
                    Long lB2 = dVar2.b().b();
                    aVar = new fo0.a(strC3, strD4, strA3, lB2 != null ? Long.valueOf(lB2.longValue() + jElapsedRealtime) : null);
                } else {
                    ro8Var2 = ro8Var2;
                    aVar = null;
                }
                int i7 = wn8.a.c[dVar2.f().ordinal()];
                if (i7 == 1) {
                    bVar = fo0.b.AVAILABLE;
                } else {
                    if (i7 != 2) {
                        me0.e();
                        return null;
                    }
                    bVar = fo0.b.COMPLETED;
                }
                fo0.b bVar4 = bVar;
                int i8 = wn8.a.d[dVar2.h().ordinal()];
                if (i8 == 1) {
                    str = null;
                    cVar = fo0.c.AD;
                } else {
                    if (i8 != 2) {
                        me0.e();
                        return null;
                    }
                    cVar = fo0.c.DAILY;
                    str = null;
                }
                arrayList.add(new fo0(iC2, strG2, strD3, aVar, bVar4, cVar, pw7Var4));
                str3 = str;
                ro8Var2 = ro8Var2;
                zo8Var2 = zo8Var2;
                i3 = 28;
            }
            ro8Var = ro8Var2;
            zo8Var = zo8Var2;
            ir0Var = new ir0(arrayList);
        }
        ArrayList arrayListG = yr.G(new so8[]{zl8Var, nm8Var, ro8Var, ir0Var});
        List<fo8> listE = zo8Var.e();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = listE.iterator();
        while (it.hasNext()) {
            fm8 fm8VarA = wn8.a((fo8) it.next());
            if (fm8VarA != null) {
                arrayList2.add(fm8VarA);
            }
        }
        return new yo8(zo8Var.f(), zo8Var.h(), zo8Var.a(), zo8Var.b(), qn1.h0(arrayList2, arrayListG));
    }

    @Override // defpackage.ap8
    public final Object l(int i, int i2, sn8 sn8Var) {
        return this.a.g(i, i2, sn8Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object m(int i, f02 f02Var) {
        np8 np8Var;
        if (f02Var instanceof np8) {
            np8Var = (np8) f02Var;
            int i2 = np8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                np8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                np8Var = new np8(this, f02Var);
            }
        } else {
            np8Var = new np8(this, f02Var);
        }
        Object objC = np8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = np8Var.n;
        if (i3 == 0) {
            r57.b(objC);
            np8Var.n = 1;
            objC = this.b.c(i, np8Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        jq6.a aVarB = ((jq6) objC).b();
        if (aVarB != null) {
            return aVarB.a();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Serializable n(f02 f02Var) {
        jp8 jp8Var;
        if (f02Var instanceof jp8) {
            jp8Var = (jp8) f02Var;
            int i = jp8Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                jp8Var.n = i - Integer.MIN_VALUE;
            } else {
                jp8Var = new jp8(this, f02Var);
            }
        } else {
            jp8Var = new jp8(this, f02Var);
        }
        Object objI = jp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = jp8Var.n;
        if (i2 == 0) {
            r57.b(objI);
            jp8Var.n = 1;
            objI = this.a.i(jp8Var);
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
        ArrayList arrayList = new ArrayList();
        for (Object obj : (Iterable) objI) {
            if (((fo8) obj).f()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            fm8 fm8VarA = wn8.a((fo8) it.next());
            if (fm8VarA != null) {
                arrayList2.add(fm8VarA);
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object o(int i, int i2, f02 f02Var) {
        dp8 dp8Var;
        if (f02Var instanceof dp8) {
            dp8Var = (dp8) f02Var;
            int i3 = dp8Var.o;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                dp8Var.o = i3 - Integer.MIN_VALUE;
            } else {
                dp8Var = new dp8(this, f02Var);
            }
        } else {
            dp8Var = new dp8(this, f02Var);
        }
        Object objM = dp8Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = dp8Var.o;
        if (i4 == 0) {
            r57.b(objM);
            dp8Var.l = i;
            dp8Var.o = 1;
            objM = this.a.m(i, i2, dp8Var);
            if (objM == a32Var) {
                return a32Var;
            }
        } else {
            if (i4 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = dp8Var.l;
            r57.b(objM);
        }
        return wn8.b((go8) objM, i);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object p(int i, f02 f02Var) {
        pp8 pp8Var;
        if (f02Var instanceof pp8) {
            pp8Var = (pp8) f02Var;
            int i2 = pp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                pp8Var = new pp8(this, f02Var);
            }
        } else {
            pp8Var = new pp8(this, f02Var);
        }
        Object objE = pp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = pp8Var.n;
        if (i3 == 0) {
            r57.b(objE);
            pp8Var.n = 1;
            objE = this.a.e(i, pp8Var);
            if (objE == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objE);
        }
        return ((lo8) objE).a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object q(int i, f02 f02Var) {
        bp8 bp8Var;
        if (f02Var instanceof bp8) {
            bp8Var = (bp8) f02Var;
            int i2 = bp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                bp8Var = new bp8(this, f02Var);
            }
        } else {
            bp8Var = new bp8(this, f02Var);
        }
        Object objH = bp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = bp8Var.n;
        if (i3 == 0) {
            r57.b(objH);
            bp8Var.n = 1;
            objH = this.a.h(i, bp8Var);
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
        return ((nq6) objH).a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // defpackage.ap8
    public final Object r(int i, f02 f02Var) {
        ip8 ip8Var;
        pz3 mb1Var;
        Boolean boolB;
        Boolean boolA;
        Boolean boolB2;
        Boolean boolA2;
        if (f02Var instanceof ip8) {
            ip8Var = (ip8) f02Var;
            int i2 = ip8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                ip8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                ip8Var = new ip8(this, f02Var);
            }
        } else {
            ip8Var = new ip8(this, f02Var);
        }
        Object objC = ip8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = ip8Var.n;
        if (i3 == 0) {
            r57.b(objC);
            ip8Var.n = 1;
            objC = this.a.c(i, ip8Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        jm8 jm8Var = (jm8) objC;
        jm8Var.getClass();
        List listH = u96.h(new dc1(jm8Var.i(), jm8Var.e()));
        List<String> listB = jm8Var.b();
        ArrayList arrayList = new ArrayList(kn1.q(listB, 10));
        int i4 = 0;
        for (Object obj : listB) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                u96.o();
                throw null;
            }
            arrayList.add(new wm8((String) obj, i4 == 0 ? jm8Var.a() : null));
            i4 = i5;
        }
        ArrayList arrayListH0 = qn1.h0(arrayList, listH);
        String strH = jm8Var.h();
        ArrayList arrayListH1 = qn1.h0(u96.j(strH != null ? new yb1(strH) : null), arrayListH0);
        List<jm8.b> listG = jm8Var.g();
        ArrayList arrayList2 = new ArrayList(kn1.q(listG, 10));
        for (jm8.b bVar : listG) {
            if (bVar.b() != null) {
                String strF = bVar.f();
                jm8.b.a aVarA = bVar.a();
                String strC = aVarA != null ? aVarA.c() : null;
                String str = strC == null ? "" : strC;
                jm8.b.a aVarA2 = bVar.a();
                boolean zBooleanValue = (aVarA2 == null || (boolA2 = aVarA2.a()) == null) ? false : boolA2.booleanValue();
                jm8.b.a aVarA3 = bVar.a();
                sb1.a aVar = new sb1.a(str, bVar.a() != null, zBooleanValue, false, (aVarA3 == null || (boolB2 = aVarA3.b()) == null) ? false : boolB2.booleanValue());
                int iC = bVar.c();
                List<jm8.b.C0214b> listB2 = bVar.b();
                ArrayList arrayList3 = new ArrayList(kn1.q(listB2, 10));
                int i6 = 0;
                for (Object obj2 : listB2) {
                    int i7 = i6 + 1;
                    if (i6 < 0) {
                        u96.o();
                        throw null;
                    }
                    arrayList3.add(new fc1(i6, ((jm8.b.C0214b) obj2).a(), i6 == 0, bVar.e() == jm8.b.c.COMPLETED || bVar.e() == jm8.b.c.PENDING, bVar.e() == jm8.b.c.INITIAL));
                    i6 = i7;
                }
                mb1Var = new sb1(strF, iC, arrayList3, bVar.e() == jm8.b.c.COMPLETED, aVar, bVar.d());
            } else {
                String strF2 = bVar.f();
                jm8.b.a aVarA4 = bVar.a();
                String strC2 = aVarA4 != null ? aVarA4.c() : null;
                if (strC2 == null) {
                    strC2 = "";
                }
                jm8.b.a aVarA5 = bVar.a();
                boolean zBooleanValue2 = (aVarA5 == null || (boolA = aVarA5.a()) == null) ? false : boolA.booleanValue();
                jm8.b.a aVarA6 = bVar.a();
                mb1Var = new mb1(strF2, new mb1.a(strC2, zBooleanValue2, false, (aVarA6 == null || (boolB = aVarA6.b()) == null) ? false : boolB.booleanValue(), bVar.a() != null), bVar.c(), bVar.e() == jm8.b.c.COMPLETED);
            }
            arrayList2.add(mb1Var);
        }
        ArrayList arrayListH2 = qn1.h0(u96.h(new pb1(jm8Var.c().b(), jm8Var.c().a(), false, false)), qn1.h0(arrayList2, arrayListH1));
        jl3 jl3VarD = jm8Var.d();
        ArrayList arrayListH3 = qn1.h0(u96.j(jl3VarD != null ? jl3VarD.a() : null), arrayListH2);
        c06 c06VarF = jm8Var.f();
        return new ec1(arrayListH3, c06VarF != null ? c06VarF.f() : null);
    }

    @Override // defpackage.ap8
    public final Object s(int i, int i2, tn8 tn8Var) {
        return this.a.g(i, i2, tn8Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.ap8
    public final Object t(int i, f02 f02Var) {
        fp8 fp8Var;
        if (f02Var instanceof fp8) {
            fp8Var = (fp8) f02Var;
            int i2 = fp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                fp8Var = new fp8(this, f02Var);
            }
        } else {
            fp8Var = new fp8(this, f02Var);
        }
        Object objB = fp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = fp8Var.n;
        if (i3 == 0) {
            r57.b(objB);
            fp8Var.n = 1;
            objB = this.a.b(i, fp8Var);
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
        return ((ml8) objB).a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v9, types: [kx2] */
    @Override // defpackage.ap8
    public final Object u(int i, f02 f02Var) {
        qp8 qp8Var;
        ?? arrayList;
        if (f02Var instanceof qp8) {
            qp8Var = (qp8) f02Var;
            int i2 = qp8Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                qp8Var.n = i2 - Integer.MIN_VALUE;
            } else {
                qp8Var = new qp8(this, f02Var);
            }
        } else {
            qp8Var = new qp8(this, f02Var);
        }
        Object objQ = qp8Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = qp8Var.n;
        if (i3 == 0) {
            r57.b(objQ);
            qp8Var.n = 1;
            objQ = this.a.q(i, qp8Var);
            if (objQ == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objQ);
        }
        mo8 mo8Var = (mo8) objQ;
        mo8Var.getClass();
        List listH = u96.h(new wf5(mo8Var.k(), mo8Var.f()));
        List listH2 = u96.h(new cn8(mo8Var.j(), null, false, true));
        List<fn8> listD = mo8Var.d();
        if (listD != null) {
            List<fn8> list = listD;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (fn8 fn8Var : list) {
                arrayList.add(new cn8(fn8Var.b(), fn8Var.a(), true, true));
            }
        } else {
            arrayList = 0;
        }
        if (arrayList == 0) {
            arrayList = kx2.b;
        }
        ArrayList arrayListH0 = qn1.h0(u96.h(new gn8(qn1.h0((Iterable) arrayList, listH2), true)), listH);
        List<String> listB = mo8Var.b();
        ArrayList arrayList2 = new ArrayList(kn1.q(listB, 10));
        int i4 = 0;
        for (Object obj : listB) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                u96.o();
                throw null;
            }
            arrayList2.add(new wm8((String) obj, i4 == 0 ? mo8Var.a() : null));
            i4 = i5;
        }
        ArrayList arrayListH1 = qn1.h0(arrayList2, arrayListH0);
        jl3 jl3VarE = mo8Var.e();
        ArrayList arrayListH2 = qn1.h0(u96.j(jl3VarE != null ? jl3VarE.a() : null), arrayListH1);
        String strI = mo8Var.i();
        ArrayList arrayListH3 = qn1.h0(u96.j(strI != null ? new sf5(strI) : null), arrayListH2);
        List<mo8.b> listH3 = mo8Var.h();
        ArrayList arrayList3 = new ArrayList(kn1.q(listH3, 10));
        for (mo8.b bVar : listH3) {
            bVar.getClass();
            arrayList3.add(new bg5(bVar.c(), bVar.d(), bVar.b(), bVar.a() != null ? new bg5.a(bVar.a().c(), bVar.a().b(), bVar.a().a(), false) : null));
        }
        ArrayList arrayListH4 = qn1.h0(arrayList3, arrayListH3);
        mo8.a aVarC = mo8Var.c();
        aVarC.getClass();
        ArrayList arrayListH5 = qn1.h0(u96.h(new pf5(aVarC.c(), aVarC.a(), aVarC.b(), false)), arrayListH4);
        c06 c06VarG = mo8Var.g();
        return new xf5(arrayListH5, c06VarG != null ? c06VarG.f() : null);
    }
}
