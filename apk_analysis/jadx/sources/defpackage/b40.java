package defpackage;

import android.graphics.Color;
import androidx.media3.muxer.WebmConstants;
import com.warefly.checkscan.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class b40 {
    public final n60 a;
    public final s47 b;
    public final zl2 c;
    public final kz1 d;
    public final List<pz3> e;
    public final z68 f;
    public final z68 g;
    public final z68 h;

    @bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$1", f = "BalanceInteractor.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<j59, e02<? super j59>, Object> {
        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return b40.this.new a(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
            return ((a) create(j59Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            b40 b40Var = b40.this;
            b40Var.f.setValue(b40Var.e);
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$2", f = "BalanceInteractor.kt", l = {126}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<Long, e02<? super j59>, Object> {
        public int l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return b40.this.new b(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(Long l, e02<? super j59> e02Var) {
            return ((b) create(Long.valueOf(l.longValue()), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            if (i == 0) {
                r57.b(obj);
                this.l = 1;
                if (b40.d(2, b40.this, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public static final /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[n10.values().length];
            try {
                iArr[n10.TRANSFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[n10.CASHBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[n10.BANNERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[n10.API_BANK_ALFA_LOADER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[n10.API_BANK_ALFA_VERIFICATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[n10.API_BANK_ALFA_MANAGEMENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[n10.OPERATION_HISTORY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[n10.API_BANK_ALFA_ALFA_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[n10.PROMOTIONS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[n10.TERM_BANNERS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[n10.TRANSFER_SHOWCASE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[n10.MINI_LOGO_BANNERS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[n10.HIDABLE_BANNERS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[n10.BANNERS_V2.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            a = iArr;
        }
    }

    public static final class d {
        public static final d c = new d(new String(), kx2.b);
        public final String a;
        public final List<hk9> b;

        /* JADX WARN: Multi-variable type inference failed */
        public d(String str, List<? extends hk9> list) {
            this.a = str;
            this.b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a.equals(dVar.a) && this.b.equals(dVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "WithdrawalMethodsScreen(toolbarTitle=" + this.a + ", methods=" + this.b + ")";
        }
    }

    @bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor", f = "BalanceInteractor.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_DURATION, 158, 164, WebmConstants.MkvEbmlElement.PREV_SIZE}, m = "fetchBalanceBlocks")
    public static final class e extends f02 {
        public boolean l;
        public boolean m;
        public Collection n;
        public Object o;
        public /* synthetic */ Object p;
        public int r;

        public e(e02<? super e> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.p = obj;
            this.r |= Integer.MIN_VALUE;
            return b40.this.c(false, false, this);
        }
    }

    public static final class f extends b0 implements s22 {
        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
        }
    }

    public b40(n60 n60Var, s47 s47Var, zl2 zl2Var, jf6 jf6Var, r22 r22Var) {
        this.a = n60Var;
        this.b = s47Var;
        this.c = zl2Var;
        kz1 kz1VarA = z22.a(r22Var.plus(rm9.b()).plus(new f(s22.a.b)));
        this.d = kz1VarA;
        List<pz3> listI = u96.i(new d50(), new g50(), new a50(), new j50());
        this.e = listI;
        this.f = px.a(listI);
        this.g = px.a(d.c);
        this.h = px.a(kx2.b);
        px.h(new df3(n60Var.c(), new a(null)), kz1VarA);
        px.h(new df3(jf6Var.h0(), new b(null)), kz1VarA);
    }

    public static /* synthetic */ Object d(int i, b40 b40Var, e02 e02Var) {
        return b40Var.c((i & 1) == 0, (i & 2) == 0, e02Var);
    }

    public static int r(String str) {
        String strA = zn1.a(str);
        if (strA == null) {
            strA = "#000000";
        }
        return Color.parseColor(strA);
    }

    public static z30 s(i10 i10Var) {
        String strB = i10Var.b();
        String strA = i10Var.a();
        if (strA == null) {
            strA = "";
        }
        String strC = i10Var.c();
        if (strC == null) {
            strC = "";
        }
        String strD = i10Var.d();
        return new z30(strB, strA, strC, strD != null ? strD : "");
    }

    public static ArrayList t(e10 e10Var) {
        pz3 c20Var;
        ArrayList arrayList = new ArrayList();
        if (e10Var.a() != null || e10Var.b() != null) {
            String strD = e10Var.d();
            String str = strD == null ? "" : strD;
            String strC = e10Var.c();
            String str2 = strC == null ? "" : strC;
            e10.a aVarA = e10Var.a();
            String strB = aVarA != null ? aVarA.b() : null;
            String str3 = strB == null ? "" : strB;
            e10.a aVarA2 = e10Var.a();
            o10 o10VarY = o10.e.a;
            o10 o10VarY2 = aVarA2 != null ? y(aVarA2) : o10VarY;
            e10.a aVarB = e10Var.b();
            if (aVarB != null) {
                o10VarY = y(aVarB);
            }
            o10 o10Var = o10VarY;
            e10.a aVarB2 = e10Var.b();
            String strB2 = aVarB2 != null ? aVarB2.b() : null;
            c20Var = new c20(str, str2, str3, strB2 == null ? "" : strB2, o10VarY2, o10Var);
        } else if (e10Var.e() != null) {
            String strD2 = e10Var.d();
            c20Var = new f20(strD2 != null ? strD2 : "", e10Var.e().a());
        } else {
            String strD3 = e10Var.d();
            if (strD3 == null) {
                strD3 = "";
            }
            String strC2 = e10Var.c();
            c20Var = new z10(strD3, strC2 != null ? strC2 : "");
        }
        arrayList.add(c20Var);
        return arrayList;
    }

    public static ArrayList u(k10 k10Var) {
        p70 aVar;
        ArrayList arrayList = new ArrayList();
        if (k10Var.f() != null) {
            arrayList.add(new o70(k10Var.f().b(), new p70.a(k10Var.f().c()), k10Var.f().a()));
        } else {
            if (k10Var.e() != null) {
                arrayList.add(new u70(k10Var.e().c(), k10Var.e().b(), k10Var.e().a(), p70.b.a));
            }
            Iterable iterableC = k10Var.c();
            List<k10.b> list = kx2.b;
            if (iterableC == null) {
                iterableC = list;
            }
            Iterable<k10.c> iterable = iterableC;
            ArrayList arrayList2 = new ArrayList(kn1.q(iterable, 10));
            for (k10.c cVar : iterable) {
                arrayList2.add(new u70(cVar.c(), cVar.b(), cVar.a(), new p70.a(cVar.d())));
            }
            arrayList.addAll(arrayList2);
            Iterable iterableA = k10Var.a();
            if (iterableA == null) {
                iterableA = list;
            }
            Iterable<k10.a> iterable2 = iterableA;
            ArrayList arrayList3 = new ArrayList(kn1.q(iterable2, 10));
            for (k10.a aVar2 : iterable2) {
                String strE = aVar2.e();
                String strD = aVar2.d();
                String strB = aVar2.b();
                if (aVar2.c() == k10.a.EnumC0216a.TRANSFERABLE) {
                    Long lA = aVar2.a();
                    aVar = new p70.c(lA != null ? lA.longValue() : Long.MIN_VALUE);
                } else {
                    String strF = aVar2.f();
                    if (strF == null) {
                        strF = "";
                    }
                    aVar = new p70.a(strF);
                }
                arrayList3.add(new u70(strE, strD, strB, aVar));
            }
            arrayList.addAll(arrayList3);
            Iterable iterableD = k10Var.d();
            if (iterableD == null) {
                iterableD = list;
            }
            Iterable<k10.d> iterable3 = iterableD;
            ArrayList arrayList4 = new ArrayList(kn1.q(iterable3, 10));
            for (k10.d dVar : iterable3) {
                arrayList4.add(new k20(dVar.a(), dVar.c(), dVar.b(), dVar.d()));
            }
            arrayList.addAll(arrayList4);
            List<k10.b> listB = k10Var.b();
            if (listB != null) {
                list = listB;
            }
            List<k10.b> list2 = list;
            ArrayList arrayList5 = new ArrayList(kn1.q(list2, 10));
            for (k10.b bVar : list2) {
                arrayList5.add(new x50(bVar.a(), bVar.b()));
            }
            arrayList.addAll(arrayList5);
        }
        arrayList.add(new t20());
        return arrayList;
    }

    public static List w(d10 d10Var) {
        Object z10Var;
        if (d10Var.a() != null) {
            String strC = d10Var.c();
            String strB = d10Var.b();
            z10Var = new c20(strC, strB == null ? "" : strB, d10Var.a().a(), new String(), o10.b.a, o10.e.a);
        } else {
            String strC2 = d10Var.c();
            String strB2 = d10Var.b();
            z10Var = new z10(strC2, strB2 != null ? strB2 : "");
        }
        return u96.h(z10Var);
    }

    public static List x(g10 g10Var) {
        String strC = g10Var.c().c();
        String strB = g10Var.c().b();
        String strA = g10Var.c().a();
        if (strA == null) {
            strA = "";
        }
        g10.a aVarA = g10Var.a();
        l30.a aVar = aVarA != null ? new l30.a(aVarA.c(), aVarA.d(), r(aVarA.e()), r(aVarA.a())) : null;
        g10.b bVarB = g10Var.b();
        String strA2 = bVarB != null ? bVarB.a() : null;
        if (strA2 == null) {
            strA2 = "";
        }
        return u96.h(new l30(strC, strB, strA, aVar, strA2, g10Var.a() != null ? new w00(g10Var.a().b().b(), g10Var.a().b().a()) : null));
    }

    public static o10 y(e10.a aVar) {
        String strC;
        String strC2 = aVar.c();
        if ((strC2 != null && !ta8.M(strC2)) || aVar.a() == null) {
            return (aVar.a() != null || (strC = aVar.c()) == null || ta8.M(strC)) ? o10.e.a : new o10.d(aVar.c());
        }
        Character chJ0 = ua8.j0(aVar.a().a());
        String strA = (chJ0 != null && chJ0.charValue() == '/') ? ra8.A(aVar.a().a(), "/", "") : aVar.a().a();
        u37 u37VarD = aVar.a().d();
        String strC3 = aVar.a().c();
        return new o10.a(strA, u37VarD, strC3 != null ? strC3 : "", aVar.a().b());
    }

    public static ArrayList z(j26 j26Var) {
        pz3 b60Var;
        ArrayList arrayList;
        List listA = j26Var.a();
        ArrayList arrayList2 = new ArrayList(kn1.q(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList2.add(((fz5) it.next()).b());
        }
        ArrayList<ry5> arrayListR = kn1.r(arrayList2);
        ArrayList arrayList3 = new ArrayList(kn1.q(arrayListR, 10));
        for (ry5 ry5Var : arrayListR) {
            List<cz5> listF = ry5Var.f();
            if (listF == null || !(!listF.isEmpty())) {
                long jC = ry5Var.c();
                String strH = ry5Var.h();
                String strG = ry5Var.g();
                String strI = ry5Var.i();
                i88 i88VarD = ry5Var.d();
                String strC = i88VarD != null ? i88VarD.c() : null;
                String str = strC == null ? "" : strC;
                String strB = ry5Var.b();
                i88 i88VarD2 = ry5Var.d();
                b60Var = new b60(jC, strH, strG, strI, str, strB, r(i88VarD2 != null ? i88VarD2.a() : null));
            } else {
                long jC2 = ry5Var.c();
                String strH2 = ry5Var.h();
                String strI2 = ry5Var.i();
                i88 i88VarD3 = ry5Var.d();
                String strC2 = i88VarD3 != null ? i88VarD3.c() : null;
                String str2 = strC2 == null ? "" : strC2;
                String strB2 = ry5Var.b();
                i88 i88VarD4 = ry5Var.d();
                int iR = r(i88VarD4 != null ? i88VarD4.a() : null);
                List<cz5> listF2 = ry5Var.f();
                if (listF2 != null) {
                    List<cz5> list = listF2;
                    ArrayList arrayList4 = new ArrayList(kn1.q(list, 10));
                    for (cz5 cz5Var : list) {
                        long jC3 = cz5Var.c();
                        String strG2 = cz5Var.g();
                        String strF = cz5Var.f();
                        String strH3 = cz5Var.h();
                        i88 i88VarD5 = cz5Var.d();
                        String strC3 = i88VarD5 != null ? i88VarD5.c() : null;
                        String str3 = strC3 == null ? "" : strC3;
                        String strB3 = cz5Var.b();
                        i88 i88VarD6 = cz5Var.d();
                        arrayList4.add(new b60(jC3, strG2, strF, strH3, str3, strB3, r(i88VarD6 != null ? i88VarD6.a() : null)));
                    }
                    arrayList = arrayList4;
                } else {
                    arrayList = null;
                }
                b60Var = new f30(jC2, strB2, strH2, strI2, arrayList, str2, iR);
            }
            arrayList3.add(b60Var);
        }
        return arrayList3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object A(f02 f02Var) throws Throwable {
        x40 x40Var;
        int i;
        ArrayList arrayList;
        int i2;
        if (f02Var instanceof x40) {
            x40Var = (x40) f02Var;
            int i3 = x40Var.p;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                x40Var.p = i3 - Integer.MIN_VALUE;
            } else {
                x40Var = new x40(this, f02Var);
            }
        } else {
            x40Var = new x40(this, f02Var);
        }
        Object obj = x40Var.n;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i4 = x40Var.p;
        Object obj3 = null;
        z68 z68Var = this.f;
        if (i4 == 0) {
            r57.b(obj);
            ArrayList arrayListV0 = qn1.v0((Collection) z68Var.getValue());
            for (Object obj4 : arrayListV0) {
                if (obj4 instanceof l30) {
                    obj3 = obj4;
                    break;
                }
            }
            if (obj3 != null) {
                Iterator it = arrayListV0.iterator();
                int i5 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    if (aa4.e(((pz3) it.next()).id(), (byte) 127)) {
                        i = i5;
                        break;
                    }
                    i5++;
                }
                x40Var.l = arrayListV0;
                x40Var.m = i;
                x40Var.p = 1;
                Object objB = b(false, x40Var);
                if (objB == obj2) {
                    return obj2;
                }
                arrayList = arrayListV0;
                obj = objB;
                i2 = i;
            }
            return j59.a;
        }
        if (i4 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i2 = x40Var.m;
        arrayList = x40Var.l;
        r57.b(obj);
        List list = (List) obj;
        if (!list.isEmpty()) {
            arrayList.set(i2, qn1.T(list));
        }
        z68Var.setValue(arrayList);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(boolean z, f02 f02Var) throws Throwable {
        e40 e40Var;
        kx2 kx2Var;
        Object aVar;
        if (f02Var instanceof e40) {
            e40Var = (e40) f02Var;
            int i = e40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                e40Var.o = i - Integer.MIN_VALUE;
            } else {
                e40Var = new e40(this, f02Var);
            }
        } else {
            e40Var = new e40(this, f02Var);
        }
        Object obj = e40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = e40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                e40Var.l = kx2Var2;
                e40Var.o = 1;
                Object objO = n60Var.o(z, e40Var);
                if (objO == a32Var) {
                    return a32Var;
                }
                obj = objO;
                kx2Var = kx2Var2;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = e40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) obj).b;
        t.getClass();
        aVar = w((d10) t);
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object b(boolean z, f02 f02Var) throws Throwable {
        f40 f40Var;
        kx2 kx2Var;
        Object aVar;
        if (f02Var instanceof f40) {
            f40Var = (f40) f02Var;
            int i = f40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                f40Var.o = i - Integer.MIN_VALUE;
            } else {
                f40Var = new f40(this, f02Var);
            }
        } else {
            f40Var = new f40(this, f02Var);
        }
        Object obj = f40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = f40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                f40Var.l = kx2Var2;
                f40Var.o = 1;
                Object objS = n60Var.s(z, f40Var);
                if (objS == a32Var) {
                    return a32Var;
                }
                obj = objS;
                kx2Var = kx2Var2;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = f40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) obj).b;
        t.getClass();
        aVar = x((g10) t);
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x010c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0118  */
    /* JADX WARN: Code duplicated, block: B:68:0x0124  */
    /* JADX WARN: Code duplicated, block: B:71:0x013e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0142  */
    /* JADX WARN: Code duplicated, block: B:74:0x0147  */
    /* JADX WARN: Code duplicated, block: B:75:0x014c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0151  */
    /* JADX WARN: Code duplicated, block: B:77:0x0156  */
    /* JADX WARN: Code duplicated, block: B:78:0x015b  */
    /* JADX WARN: Code duplicated, block: B:79:0x0160  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x0165  */
    /* JADX WARN: Code duplicated, block: B:81:0x016a  */
    /* JADX WARN: Code duplicated, block: B:82:0x016f  */
    /* JADX WARN: Code duplicated, block: B:83:0x0174  */
    /* JADX WARN: Code duplicated, block: B:84:0x017e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0183  */
    /* JADX WARN: Code duplicated, block: B:86:0x0188  */
    /* JADX WARN: Code duplicated, block: B:89:0x0190  */
    /* JADX WARN: Code duplicated, block: B:93:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:94:0x01a7  */
    /* JADX WARN: Path cross not found for [B:10:0x0029, B:24:0x006e], limit reached: 108 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0190 -> B:90:0x0197). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x019e -> B:92:0x01a0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object c(boolean r16, boolean r17, defpackage.e02<? super defpackage.j59> r18) {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b40.c(boolean, boolean, e02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.ArrayList] */
    public final Object e(boolean z, f02 f02Var) throws Throwable {
        g40 g40Var;
        kx2 kx2Var;
        ?? aVar;
        if (f02Var instanceof g40) {
            g40Var = (g40) f02Var;
            int i = g40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                g40Var.o = i - Integer.MIN_VALUE;
            } else {
                g40Var = new g40(this, f02Var);
            }
        } else {
            g40Var = new g40(this, f02Var);
        }
        Object obj = g40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = g40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                g40Var.l = kx2Var2;
                g40Var.o = 1;
                Object objM = n60Var.m(z, g40Var);
                if (objM == a32Var) {
                    return a32Var;
                }
                obj = objM;
                kx2Var = kx2Var2;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = g40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        Object obj2 = ((a57) obj).b;
        obj2.getClass();
        List<ic0> list = (List) obj2;
        aVar = new ArrayList(kn1.q(list, 10));
        for (ic0 ic0Var : list) {
            String strA = ic0Var.a();
            String strB = ic0Var.b();
            if (strB == null) {
                strB = "";
            }
            aVar.add(new v30(strA, strB));
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.Object] */
    public final Object f(f02 f02Var) throws Throwable {
        i40 i40Var;
        Throwable th;
        kx2 kx2Var;
        ?? aVar;
        if (f02Var instanceof i40) {
            i40Var = (i40) f02Var;
            int i = i40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                i40Var.o = i - Integer.MIN_VALUE;
            } else {
                i40Var = new i40(this, f02Var);
            }
        } else {
            i40Var = new i40(this, f02Var);
        }
        Object obj = i40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = i40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                i40Var.l = kx2Var2;
                i40Var.o = 1;
                Object objQ = n60Var.q(i40Var);
                if (objQ == a32Var) {
                    return a32Var;
                }
                obj = objQ;
                kx2Var = kx2Var2;
            } catch (Throwable th2) {
                th = th2;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = i40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th3) {
                th = th3;
                aVar = new k57.a(th);
            }
        }
        Object obj2 = ((a57) obj).b;
        obj2.getClass();
        List<q30> list = (List) obj2;
        aVar = new ArrayList(kn1.q(list, 10));
        for (q30 q30Var : list) {
            aVar.add(new r30(q30Var.a(), q30Var.b(), q30Var.c()));
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object g(boolean z, f02 f02Var) throws Throwable {
        j40 j40Var;
        kx2 kx2Var;
        Object aVar;
        if (f02Var instanceof j40) {
            j40Var = (j40) f02Var;
            int i = j40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                j40Var.o = i - Integer.MIN_VALUE;
            } else {
                j40Var = new j40(this, f02Var);
            }
        } else {
            j40Var = new j40(this, f02Var);
        }
        Object obj = j40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = j40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                j40Var.l = kx2Var2;
                j40Var.o = 1;
                Object objX = n60Var.x(z, j40Var);
                if (objX == a32Var) {
                    return a32Var;
                }
                obj = objX;
                kx2Var = kx2Var2;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = j40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) obj).b;
        t.getClass();
        long jA = ((f10) t).a();
        s47 s47Var = this.b;
        aVar = u96.h(new t10(jA, s47Var.getString(R.string.balance_management_block_title), s47Var.getString(R.string.balance_management_block_description)));
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    public final Object h(f02 f02Var) throws Throwable {
        k40 k40Var;
        Throwable th;
        kx2 kx2Var;
        ?? aVar;
        if (f02Var instanceof k40) {
            k40Var = (k40) f02Var;
            int i = k40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                k40Var.o = i - Integer.MIN_VALUE;
            } else {
                k40Var = new k40(this, f02Var);
            }
        } else {
            k40Var = new k40(this, f02Var);
        }
        Object obj = k40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = k40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                k40Var.l = kx2Var2;
                k40Var.o = 1;
                Object objD = n60Var.d(k40Var);
                if (objD == a32Var) {
                    return a32Var;
                }
                obj = objD;
                kx2Var = kx2Var2;
            } catch (Throwable th2) {
                th = th2;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = k40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th3) {
                th = th3;
                aVar = new k57.a(th);
            }
        }
        Object obj2 = ((a57) obj).b;
        obj2.getClass();
        List list = (List) obj2;
        aVar = new ArrayList(kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            aVar.add(((q50) it.next()).a());
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object i(String str, boolean z, f02 f02Var) throws Throwable {
        l40 l40Var;
        kx2 kx2Var;
        Object objC;
        kx2 kx2Var2;
        Throwable th;
        Object aVar;
        if (f02Var instanceof l40) {
            l40Var = (l40) f02Var;
            int i = l40Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                l40Var.p = i - Integer.MIN_VALUE;
            } else {
                l40Var = new l40(this, f02Var);
            }
        } else {
            l40Var = new l40(this, f02Var);
        }
        Object obj = l40Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = l40Var.p;
        if (i2 == 0) {
            r57.b(obj);
            kx2Var = kx2.b;
            try {
                n60 n60Var = this.a;
                l40Var.l = str;
                l40Var.m = kx2Var;
                l40Var.p = 1;
                objC = n60Var.C(z, l40Var);
                if (objC == a32Var) {
                    return a32Var;
                }
            } catch (Throwable th2) {
                th = th2;
                kx2Var2 = kx2Var;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var2 = l40Var.m;
            String str2 = l40Var.l;
            try {
                r57.b(obj);
                kx2Var = kx2Var2;
                str = str2;
                objC = obj;
            } catch (Throwable th3) {
                th = th3;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) objC).b;
        t.getClass();
        ArrayList arrayList = new ArrayList(z((j26) t));
        arrayList.add(0, new j70(str, this.b.getString(R.string.balance_all_operations)));
        arrayList.add(new t20());
        aVar = arrayList;
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList] */
    public final Object j(boolean z, f02 f02Var) throws Throwable {
        m40 m40Var;
        kx2 kx2Var;
        ?? aVar;
        c06 c06VarD;
        if (f02Var instanceof m40) {
            m40Var = (m40) f02Var;
            int i = m40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                m40Var.o = i - Integer.MIN_VALUE;
            } else {
                m40Var = new m40(this, f02Var);
            }
        } else {
            m40Var = new m40(this, f02Var);
        }
        Object obj = m40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = m40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                m40Var.l = kx2Var2;
                m40Var.o = 1;
                Object objE = n60Var.e(z, m40Var);
                if (objE == a32Var) {
                    return a32Var;
                }
                kx2Var = kx2Var2;
                obj = objE;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = m40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        List<h10> list = (List) obj;
        aVar = new ArrayList(kn1.q(list, 10));
        for (h10 h10Var : list) {
            int iA = h10Var.a();
            String strG = h10Var.g();
            String strH = h10Var.h();
            List<String> listF = h10Var.f();
            String strA = h10Var.c().a();
            h10.a aVarE = h10Var.e();
            String strA2 = aVarE != null ? aVarE.a() : null;
            String strB = h10Var.b();
            c06 c06VarD2 = h10Var.d();
            aVar.add(new b70(iA, strG, strH, listF, strA, strA2, strB, (!(c06VarD2 != null ? aa4.e(c06VarD2.c(), Boolean.TRUE) : false) || (c06VarD = h10Var.d()) == null) ? null : c06VarD.f()));
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object k(String str, boolean z, f02 f02Var) throws Throwable {
        n40 n40Var;
        kx2 kx2Var;
        Object objW;
        kx2 kx2Var2;
        Throwable th;
        Object aVar;
        if (f02Var instanceof n40) {
            n40Var = (n40) f02Var;
            int i = n40Var.q;
            if ((i & Integer.MIN_VALUE) != 0) {
                n40Var.q = i - Integer.MIN_VALUE;
            } else {
                n40Var = new n40(this, f02Var);
            }
        } else {
            n40Var = new n40(this, f02Var);
        }
        Object obj = n40Var.o;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = n40Var.q;
        if (i2 == 0) {
            r57.b(obj);
            kx2Var = kx2.b;
            try {
                n60 n60Var = this.a;
                m60 m60Var = new m60(0, 4);
                n40Var.l = str;
                n40Var.m = kx2Var;
                n40Var.n = z;
                n40Var.q = 1;
                objW = n60Var.w(m60Var, z, n40Var);
                if (objW == a32Var) {
                    return a32Var;
                }
            } catch (Throwable th2) {
                th = th2;
                kx2Var2 = kx2Var;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = n40Var.n;
            kx2Var2 = n40Var.m;
            String str2 = n40Var.l;
            try {
                r57.b(obj);
                kx2Var = kx2Var2;
                str = str2;
                objW = obj;
            } catch (Throwable th3) {
                th = th3;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) objW).b;
        t.getClass();
        ArrayList arrayListK = u96.k(new e70(str));
        arrayListK.addAll(v((j26) t, z));
        aVar = arrayListK;
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    public final Object l(f02 f02Var) throws Throwable {
        o40 o40Var;
        Throwable th;
        kx2 kx2Var;
        ?? aVar;
        if (f02Var instanceof o40) {
            o40Var = (o40) f02Var;
            int i = o40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                o40Var.o = i - Integer.MIN_VALUE;
            } else {
                o40Var = new o40(this, f02Var);
            }
        } else {
            o40Var = new o40(this, f02Var);
        }
        Object obj = o40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = o40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                o40Var.l = kx2Var2;
                o40Var.o = 1;
                Object objB = n60Var.B(o40Var);
                if (objB == a32Var) {
                    return a32Var;
                }
                obj = objB;
                kx2Var = kx2Var2;
            } catch (Throwable th2) {
                th = th2;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = o40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th3) {
                th = th3;
                aVar = new k57.a(th);
            }
        }
        Object obj2 = ((a57) obj).b;
        obj2.getClass();
        List list = (List) obj2;
        aVar = new ArrayList(kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            aVar.add(((c10) it.next()).a());
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object m(long j, String str, boolean z, f02 f02Var) throws Throwable {
        p40 p40Var;
        kx2 kx2Var;
        Object aVar;
        if (f02Var instanceof p40) {
            p40Var = (p40) f02Var;
            int i = p40Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                p40Var.p = i - Integer.MIN_VALUE;
            } else {
                p40Var = new p40(this, f02Var);
            }
        } else {
            p40Var = new p40(this, f02Var);
        }
        Object obj = p40Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = p40Var.p;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                p40Var.l = str;
                p40Var.m = kx2Var2;
                p40Var.p = 1;
                Object objA = n60Var.A(z, p40Var);
                if (objA == a32Var) {
                    return a32Var;
                }
                obj = objA;
                kx2Var = kx2Var2;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = p40Var.m;
            str = p40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) obj).b;
        t.getClass();
        ArrayList arrayListK = u96.k(new e70(str));
        arrayListK.addAll(u((k10) t));
        aVar = arrayListK;
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object n(boolean z, f02 f02Var) throws Throwable {
        r40 r40Var;
        kx2 kx2Var;
        Object aVar;
        if (f02Var instanceof r40) {
            r40Var = (r40) f02Var;
            int i = r40Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                r40Var.o = i - Integer.MIN_VALUE;
            } else {
                r40Var = new r40(this, f02Var);
            }
        } else {
            r40Var = new r40(this, f02Var);
        }
        Object obj = r40Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = r40Var.o;
        if (i2 == 0) {
            r57.b(obj);
            kx2 kx2Var2 = kx2.b;
            try {
                n60 n60Var = this.a;
                r40Var.l = kx2Var2;
                r40Var.o = 1;
                Object objN = n60Var.n(z, r40Var);
                if (objN == a32Var) {
                    return a32Var;
                }
                obj = objN;
                kx2Var = kx2Var2;
            } catch (Throwable th) {
                th = th;
                kx2Var = kx2Var2;
                aVar = new k57.a(th);
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var = r40Var.l;
            try {
                r57.b(obj);
            } catch (Throwable th2) {
                th = th2;
                aVar = new k57.a(th);
            }
        }
        T t = ((a57) obj).b;
        t.getClass();
        aVar = t((e10) t);
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object o(String str, f02 f02Var) throws Throwable {
        s40 s40Var;
        kx2 kx2Var;
        Object objV;
        kx2 kx2Var2;
        Throwable th;
        Object aVar;
        Object value;
        String strA;
        ArrayList arrayListB;
        if (f02Var instanceof s40) {
            s40Var = (s40) f02Var;
            int i = s40Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                s40Var.p = i - Integer.MIN_VALUE;
            } else {
                s40Var = new s40(this, f02Var);
            }
        } else {
            s40Var = new s40(this, f02Var);
        }
        Object obj = s40Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = s40Var.p;
        if (i2 == 0) {
            r57.b(obj);
            kx2Var = kx2.b;
            try {
                n60 n60Var = this.a;
                s40Var.l = str;
                s40Var.m = kx2Var;
                s40Var.p = 1;
                objV = n60Var.v(s40Var);
                if (objV == a32Var) {
                    return a32Var;
                }
            } catch (Throwable th2) {
                th = th2;
                kx2Var2 = kx2Var;
                aVar = new k57.a(th);
                kx2Var = kx2Var2;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            kx2Var2 = s40Var.m;
            String str2 = s40Var.l;
            try {
                r57.b(obj);
                kx2Var = kx2Var2;
                str = str2;
                objV = obj;
            } catch (Throwable th3) {
                th = th3;
                aVar = new k57.a(th);
                kx2Var = kx2Var2;
            }
        }
        T t = ((a57) objV).b;
        t.getClass();
        k70 k70Var = (k70) t;
        z68 z68Var = this.g;
        do {
            value = z68Var.getValue();
            strA = k70Var.a().a();
            arrayListB = k70Var.b();
            ((d) value).getClass();
            strA.getClass();
        } while (!z68Var.a(value, new d(strA, arrayListB)));
        aVar = u96.h(k70Var.c(str));
        Throwable thA = k57.a(aVar);
        if (thA == null || !(thA instanceof CancellationException)) {
            return aVar instanceof k57.a ? kx2Var : aVar;
        }
        throw thA;
    }

    public final boolean p() {
        Iterable iterable = (Iterable) this.f.getValue();
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (((pz3) it.next()) instanceof v70) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object q(int i, f02 f02Var) {
        u40 u40Var;
        z68 z68Var;
        Object value;
        ArrayList arrayList;
        if (f02Var instanceof u40) {
            u40Var = (u40) f02Var;
            int i2 = u40Var.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                u40Var.n = i2 - Integer.MIN_VALUE;
            } else {
                u40Var = new u40(this, f02Var);
            }
        } else {
            u40Var = new u40(this, f02Var);
        }
        Object obj = u40Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = u40Var.n;
        try {
            if (i3 == 0) {
                r57.b(obj);
                do {
                    z68Var = this.f;
                    value = z68Var.getValue();
                    arrayList = new ArrayList();
                    for (Object obj2 : (List) value) {
                        if (!(((pz3) obj2) instanceof b70)) {
                            arrayList.add(obj2);
                        }
                    }
                } while (!z68Var.a(value, arrayList));
                n60 n60Var = this.a;
                u40Var.n = 1;
                if (n60Var.j(i, u40Var) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i3 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
        return j59.a;
    }

    public final ArrayList v(j26 j26Var, boolean z) {
        List listA = j26Var.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(s((i10) it.next()));
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (aa4.e(j26Var.b(), Boolean.FALSE)) {
            arrayList2.add(new p20(R.drawable.ic_arrow_down, this.b.getString(R.string.balance_expand_on), false));
            av0.c(this.d, null, null, new v40(j26Var.d(), this, z, null), 3);
        }
        arrayList2.add(new t20());
        return arrayList2;
    }
}
