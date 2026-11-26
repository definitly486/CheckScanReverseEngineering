package defpackage;

import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class wl0 {
    public final tn0 a;
    public final jf6 b;
    public final n53 c;
    public final bo0 d;
    public final fh8 e;
    public final int f;
    public final z68 g;
    public final gy6 h;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ak0.a.values().length];
            try {
                iArr[ak0.a.BUTTONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ak0.a.BANNERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ak0.a.CATEGORIES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ak0.a.GROUPED_ONLINE_SHOPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ak0.a.ONLINE_SHOPS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ak0.a.FAVORITE_ONLINE_SHOPS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ak0.a.CHECKSCAN_PRO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ak0.a.BANNER_HIDABLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ak0.a.EARNING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ak0.a.CHECKSCAN_PROMOCODE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ak0.a.OFFLINE_ONLINE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements ll3<List<? extends pz3>> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final List<? extends pz3> invoke() {
            return u96.i(i71.a, jw0.a, u58.a, new wf6(), is3.a);
        }
    }

    public wl0(tn0 tn0Var, jf6 jf6Var, n53 n53Var, bo0 bo0Var) {
        this.a = tn0Var;
        this.b = jf6Var;
        this.c = n53Var;
        this.d = bo0Var;
        fh8 fh8VarB = nm4.b(b.f);
        this.e = fh8VarB;
        this.f = jf6Var.O0();
        z68 z68VarA = px.a((List) fh8VarB.getValue());
        this.g = z68VarA;
        this.h = bf3.b(z68VarA);
    }

    public static t88 m(u88 u88Var) {
        String strC = u88Var.a().c();
        String strB = u88Var.a().b();
        String strC2 = u88Var.b().c();
        u88.a aVarA = u88Var.a().a();
        return new t88(strC, strB, strC2, new t88.a(u88Var.b().e(), u88Var.b().g(), u88Var.b().h(), u88Var.b().b(), u88Var.b().d(), u88Var.b().f(), u88Var.b().a()), aVarA != null ? new t88.b(aVarA.a(), aVarA.b()) : null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ArrayList arrayList, f02 f02Var) throws Throwable {
        cm0 cm0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof cm0) {
            cm0Var = (cm0) f02Var;
            int i = cm0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                cm0Var.o = i - Integer.MIN_VALUE;
            } else {
                cm0Var = new cm0(this, f02Var);
            }
        } else {
            cm0Var = new cm0(this, f02Var);
        }
        Object objI = cm0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = cm0Var.o;
        try {
            if (i2 == 0) {
                r57.b(objI);
                tn0 tn0Var = this.a;
                int i3 = this.f;
                cm0Var.l = arrayList;
                cm0Var.o = 1;
                objI = tn0Var.i(i3, cm0Var);
                if (objI == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList = cm0Var.l;
                r57.b(objI);
            }
            List list = (List) objI;
            if (list.isEmpty()) {
                aVar = null;
            } else {
                List<aw0> list2 = list;
                ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
                for (aw0 aw0Var : list2) {
                    aw0Var.getClass();
                    String strC = aw0Var.c();
                    String strB = aw0Var.b();
                    String strA = aw0Var.a();
                    if (strA == null) {
                        strA = "";
                    }
                    arrayList2.add(new pv0(strC, strB, strA));
                }
                aVar = new kw0(arrayList2);
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        kw0 kw0Var = (kw0) (aVar instanceof k57.a ? null : aVar);
        if (kw0Var != null) {
            arrayList.add(kw0Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                }
                if (((pz3) it.next()) instanceof jw0) {
                    break;
                }
                i4++;
            }
            if (u96.f(arrayListV0).c(i4)) {
                arrayListV0.remove(i4);
                arrayListV0.addAll(i4, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ArrayList arrayList, ArrayList arrayList2, f02 f02Var) throws Throwable {
        dm0 dm0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof dm0) {
            dm0Var = (dm0) f02Var;
            int i = dm0Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                dm0Var.p = i - Integer.MIN_VALUE;
            } else {
                dm0Var = new dm0(this, f02Var);
            }
        } else {
            dm0Var = new dm0(this, f02Var);
        }
        Object objN = dm0Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = dm0Var.p;
        try {
            if (i2 == 0) {
                r57.b(objN);
                tn0 tn0Var = this.a;
                int i3 = this.f;
                dm0Var.l = arrayList;
                dm0Var.m = arrayList2;
                dm0Var.p = 1;
                objN = tn0Var.n(i3, 10, dm0Var);
                if (objN == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList2 = dm0Var.m;
                arrayList = dm0Var.l;
                r57.b(objN);
            }
            Iterable<q81> iterable = (Iterable) objN;
            ArrayList arrayList3 = new ArrayList(kn1.q(iterable, 10));
            for (q81 q81Var : iterable) {
                q81Var.getClass();
                int iA = q81Var.a();
                String strD = q81Var.d();
                String strB = q81Var.b();
                if (strB == null) {
                    strB = "";
                }
                arrayList3.add(new l81(iA, strD, strB, q81Var.c()));
            }
            aVar = new o71(arrayList3);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        o71 o71Var = (o71) (aVar instanceof k57.a ? null : aVar);
        if (o71Var != null) {
            if (!o71Var.a.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
            arrayList.add(o71Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                }
                if (((pz3) it.next()) instanceof i71) {
                    break;
                }
                i4++;
            }
            if (u96.f(arrayListV0).c(i4)) {
                arrayListV0.remove(i4);
                arrayListV0.addAll(i4, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ArrayList arrayList, f02 f02Var) throws Throwable {
        em0 em0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof em0) {
            em0Var = (em0) f02Var;
            int i = em0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                em0Var.o = i - Integer.MIN_VALUE;
            } else {
                em0Var = new em0(this, f02Var);
            }
        } else {
            em0Var = new em0(this, f02Var);
        }
        Object objJ = em0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = em0Var.o;
        try {
            if (i2 == 0) {
                r57.b(objJ);
                tn0 tn0Var = this.a;
                em0Var.l = arrayList;
                em0Var.o = 1;
                objJ = tn0Var.j(em0Var);
                if (objJ == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList = em0Var.l;
                r57.b(objJ);
            }
            zp6 zp6Var = (zp6) objJ;
            if (zp6Var.a()) {
                aVar = null;
            } else {
                String strD = zp6Var.d();
                String strB = zp6Var.b();
                String strC = zp6Var.c();
                String strE = zp6Var.e();
                if (strE == null) {
                    strE = "";
                }
                aVar = new jr0(strD, strB, strC, strE);
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        jr0 jr0Var = (jr0) (aVar instanceof k57.a ? null : aVar);
        if (jr0Var != null) {
            arrayList.add(jr0Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i3 = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof jr0) || (pz3Var instanceof yp6)) {
                    break;
                }
                i3++;
            }
            if (u96.f(arrayListV0).c(i3)) {
                arrayListV0.remove(i3);
                arrayListV0.addAll(i3, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ArrayList arrayList, f02 f02Var) throws Throwable {
        fm0 fm0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof fm0) {
            fm0Var = (fm0) f02Var;
            int i = fm0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                fm0Var.o = i - Integer.MIN_VALUE;
            } else {
                fm0Var = new fm0(this, f02Var);
            }
        } else {
            fm0Var = new fm0(this, f02Var);
        }
        Object objK = fm0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = fm0Var.o;
        try {
            if (i2 == 0) {
                r57.b(objK);
                tn0 tn0Var = this.a;
                fm0Var.l = arrayList;
                fm0Var.o = 1;
                objK = tn0Var.k(fm0Var);
                if (objK == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList = fm0Var.l;
                r57.b(objK);
            }
            aVar = m((u88) objK);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        t88 t88Var = (t88) (aVar instanceof k57.a ? null : aVar);
        if (t88Var != null) {
            arrayList.add(t88Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i3 = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof bv2) || (pz3Var instanceof t88)) {
                    break;
                }
                i3++;
            }
            if (u96.f(arrayListV0).c(i3)) {
                arrayListV0.remove(i3);
                arrayListV0.addAll(i3, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v8 */
    public final Object e(ArrayList arrayList, ArrayList arrayList2, f02 f02Var) throws Throwable {
        hm0 hm0Var;
        ?? aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof hm0) {
            hm0Var = (hm0) f02Var;
            int i = hm0Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                hm0Var.p = i - Integer.MIN_VALUE;
            } else {
                hm0Var = new hm0(this, f02Var);
            }
        } else {
            hm0Var = new hm0(this, f02Var);
        }
        Object objD = hm0Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = hm0Var.p;
        try {
            if (i2 == 0) {
                r57.b(objD);
                tn0 tn0Var = this.a;
                int i3 = this.f;
                hm0Var.l = arrayList;
                hm0Var.m = arrayList2;
                hm0Var.p = 1;
                objD = tn0Var.d(i3, hm0Var);
                if (objD == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList2 = hm0Var.m;
                arrayList = hm0Var.l;
                r57.b(objD);
            }
            List list = (List) objD;
            aVar = new ArrayList(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                aVar.add(d57.c((xf6) it.next(), ImageView.ScaleType.FIT_CENTER));
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        List list2 = (List) (aVar instanceof k57.a ? 0 : aVar);
        if (list2 != null) {
            List list3 = list2;
            if (!list3.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
            arrayList.addAll(list3);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it2 = arrayListV0.iterator();
            int i4 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i4 = -1;
                    break;
                }
                if (((pz3) it2.next()) instanceof wf6) {
                    break;
                }
                i4++;
            }
            if (u96.f(arrayListV0).c(i4)) {
                arrayListV0.remove(i4);
                arrayListV0.addAll(i4, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    /* JADX WARN: Code duplicated, block: B:24:0x008d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x008e  */
    /* JADX WARN: Code duplicated, block: B:29:0x00ca A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:12:0x0038, B:26:0x0098, B:27:0x00c4, B:29:0x00ca), top: B:80:0x0038 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:48:0x011a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0124  */
    /* JADX WARN: Code duplicated, block: B:57:0x012a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x008e -> B:26:0x0098). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0107 -> B:45:0x010e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object f(java.util.ArrayList r21, java.util.List r22, java.util.ArrayList r23, defpackage.f02 r24) {
        /*
            Method dump skipped, instruction units count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wl0.f(java.util.ArrayList, java.util.List, java.util.ArrayList, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(ArrayList arrayList, boolean z, f02 f02Var) throws Throwable {
        jm0 jm0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof jm0) {
            jm0Var = (jm0) f02Var;
            int i = jm0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                jm0Var.o = i - Integer.MIN_VALUE;
            } else {
                jm0Var = new jm0(this, f02Var);
            }
        } else {
            jm0Var = new jm0(this, f02Var);
        }
        Object objE = jm0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = jm0Var.o;
        try {
            if (i2 == 0) {
                r57.b(objE);
                tn0 tn0Var = this.a;
                jm0Var.l = arrayList;
                jm0Var.o = 1;
                objE = tn0Var.e(z, jm0Var);
                if (objE == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList = jm0Var.l;
                r57.b(objE);
            }
            aVar = l((co0) objE);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        to0 to0Var = (to0) (aVar instanceof k57.a ? null : aVar);
        if (to0Var != null) {
            arrayList.add(to0Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i3 = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof xv3) || (pz3Var instanceof to0)) {
                    break;
                }
                i3++;
            }
            if (u96.f(arrayListV0).c(i3)) {
                arrayListV0.remove(i3);
                arrayListV0.addAll(i3, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(ArrayList arrayList, ArrayList arrayList2, boolean z, f02 f02Var) throws Throwable {
        mm0 mm0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof mm0) {
            mm0Var = (mm0) f02Var;
            int i = mm0Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                mm0Var.p = i - Integer.MIN_VALUE;
            } else {
                mm0Var = new mm0(this, f02Var);
            }
        } else {
            mm0Var = new mm0(this, f02Var);
        }
        Object objO = mm0Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = mm0Var.p;
        try {
            if (i2 == 0) {
                r57.b(objO);
                tn0 tn0Var = this.a;
                int i3 = this.f;
                gc0 gc0Var = gc0.PROMO;
                mm0Var.l = arrayList;
                mm0Var.m = arrayList2;
                mm0Var.p = 1;
                objO = tn0Var.o(i3, gc0Var, z, mm0Var);
                if (objO == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList2 = mm0Var.m;
                arrayList = mm0Var.l;
                r57.b(objO);
            }
            List<kc0> list = (List) objO;
            ArrayList arrayList3 = new ArrayList(kn1.q(list, 10));
            for (kc0 kc0Var : list) {
                kc0Var.getClass();
                int iA = kc0Var.a();
                String strE = kc0Var.e();
                if (strE == null) {
                    strE = "";
                }
                String str = strE;
                String strB = kc0Var.b();
                String strD = kc0Var.d();
                c06 c06VarC = kc0Var.c();
                arrayList3.add(new o58(iA, c06VarC != null ? aa4.e(c06VarC.c(), Boolean.TRUE) : false ? kc0Var.c().f() : null, strB, str, strD));
            }
            aVar = new v58(arrayList3);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        v58 v58Var = (v58) (aVar instanceof k57.a ? null : aVar);
        if (v58Var != null) {
            if (!v58Var.a.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
            arrayList.add(v58Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                }
                if (((pz3) it.next()) instanceof u58) {
                    break;
                }
                i4++;
            }
            if (u96.f(arrayListV0).c(i4)) {
                arrayListV0.remove(i4);
                arrayListV0.addAll(i4, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(ArrayList arrayList, f02 f02Var) {
        nm0 nm0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof nm0) {
            nm0Var = (nm0) f02Var;
            int i = nm0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                nm0Var.o = i - Integer.MIN_VALUE;
            } else {
                nm0Var = new nm0(this, f02Var);
            }
        } else {
            nm0Var = new nm0(this, f02Var);
        }
        Object objC = nm0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = nm0Var.o;
        try {
            if (i2 == 0) {
                r57.b(objC);
                tn0 tn0Var = this.a;
                nm0Var.l = arrayList;
                nm0Var.o = 1;
                objC = tn0Var.c(nm0Var);
                if (objC == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList = nm0Var.l;
                r57.b(objC);
            }
            fc8.a aVarA = ((fc8) objC).a();
            aVar = aVarA != null ? aVarA.a() : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        d7 d7Var = (d7) (aVar instanceof k57.a ? null : aVar);
        if (d7Var != null) {
            arrayList.add(d7Var);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it = arrayListV0.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i3 = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof rc8) || (pz3Var instanceof d7)) {
                    break;
                }
                i3++;
            }
            if (u96.f(arrayListV0).c(i3)) {
                arrayListV0.remove(i3);
                arrayListV0.addAll(i3, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(ArrayList arrayList, int i, ArrayList arrayList2, f02 f02Var) throws Throwable {
        om0 om0Var;
        Object aVar;
        z68 z68Var;
        Object value;
        ArrayList arrayListV0;
        if (f02Var instanceof om0) {
            om0Var = (om0) f02Var;
            int i2 = om0Var.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                om0Var.p = i2 - Integer.MIN_VALUE;
            } else {
                om0Var = new om0(this, f02Var);
            }
        } else {
            om0Var = new om0(this, f02Var);
        }
        Object objH = om0Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = om0Var.p;
        try {
            if (i3 == 0) {
                r57.b(objH);
                tn0 tn0Var = this.a;
                int i4 = this.f;
                om0Var.l = arrayList;
                om0Var.m = arrayList2;
                om0Var.p = 1;
                objH = tn0Var.h(i, i4, om0Var);
                if (objH == a32Var) {
                    return a32Var;
                }
            } else {
                if (i3 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                arrayList2 = om0Var.m;
                arrayList = om0Var.l;
                r57.b(objH);
            }
            List list = (List) objH;
            ArrayList arrayList3 = new ArrayList(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList3.add(d57.c((xf6) it.next(), ImageView.ScaleType.CENTER));
            }
            aVar = qn1.o0(arrayList3, 6);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        List list2 = (List) (aVar instanceof k57.a ? null : aVar);
        if (list2 != null) {
            List list3 = list2;
            if (!list3.isEmpty()) {
                arrayList.addAll(arrayList2);
            }
            arrayList.addAll(list3);
        }
        do {
            z68Var = this.g;
            value = z68Var.getValue();
            arrayListV0 = qn1.v0((List) value);
            Iterator it2 = arrayListV0.iterator();
            int i5 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i5 = -1;
                    break;
                }
                if (((pz3) it2.next()) instanceof wf6) {
                    break;
                }
                i5++;
            }
            if (u96.f(arrayListV0).c(i5)) {
                arrayListV0.remove(i5);
                arrayListV0.addAll(i5, arrayList);
            } else {
                arrayListV0.addAll(arrayList);
            }
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    public final df3 k(boolean z) {
        return new df3(new ce3(this.a.g(this.f), new xm0(this, null)), new ym0(this, z, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final to0 l(co0 co0Var) {
        b06 b06VarF;
        co0Var.getClass();
        Object objF = null;
        if (!this.b.S()) {
            int iC = co0Var.c();
            String strD = co0Var.d();
            String strH = co0Var.h();
            String strG = co0Var.g();
            if (co0Var.f() != null && aa4.e(co0Var.f().c(), Boolean.TRUE)) {
                objF = co0Var.f().f();
            }
            b06 b06Var = objF;
            String strB = co0Var.b();
            return new to0(new no0.a(strD, iC, strH, strB == null ? "" : strB, null, co0Var.a(), strG, b06Var, false));
        }
        int iC2 = co0Var.c();
        String strD2 = co0Var.d();
        String strH2 = co0Var.h();
        if (co0Var.f() != null) {
            b06VarF = aa4.e(co0Var.f().c(), Boolean.TRUE) ? co0Var.f().f() : null;
        } else {
            b06VarF = null;
        }
        co0.a aVarE = co0Var.e();
        String strB2 = aVarE != null ? aVarE.b() : null;
        String str = strB2 == null ? "" : strB2;
        co0.a aVarE2 = co0Var.e();
        String strA = aVarE2 != null ? aVarE2.a() : null;
        co0.a aVarE3 = co0Var.e();
        return new to0(new no0.a(strD2, iC2, strH2, str, aVarE3 != null ? aVarE3.c() : null, strA, null, b06VarF, true));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v3, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v3 */
    public final Object n(f02 f02Var) throws Throwable {
        nn0 nn0Var;
        int i;
        ?? aVar;
        Object value;
        ArrayList arrayList;
        if (f02Var instanceof nn0) {
            nn0Var = (nn0) f02Var;
            int i2 = nn0Var.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nn0Var.o = i2 - Integer.MIN_VALUE;
            } else {
                nn0Var = new nn0(this, f02Var);
            }
        } else {
            nn0Var = new nn0(this, f02Var);
        }
        Object objD = nn0Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = nn0Var.o;
        z68 z68Var = this.g;
        if (i3 == 0) {
            r57.b(objD);
            Iterator it = ((List) z68Var.getValue()).iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof g63) || (pz3Var instanceof sv7)) {
                    break;
                }
                i4++;
            }
            if (i4 != -1) {
                try {
                    tn0 tn0Var = this.a;
                    int i5 = this.f;
                    nn0Var.l = i4;
                    nn0Var.o = 1;
                    objD = tn0Var.d(i5, nn0Var);
                    if (objD == a32Var) {
                        return a32Var;
                    }
                    i = i4;
                } catch (Throwable th) {
                    th = th;
                    i = i4;
                    aVar = new k57.a(th);
                }
            }
            return j59.a;
        }
        if (i3 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = nn0Var.l;
        try {
            r57.b(objD);
        } catch (Throwable th2) {
            th = th2;
            aVar = new k57.a(th);
        }
        List list = (List) objD;
        aVar = new ArrayList(kn1.q(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            aVar.add(d57.c((xf6) it2.next(), ImageView.ScaleType.FIT_CENTER));
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (thA instanceof CancellationException)) {
            throw thA;
        }
        List list2 = (List) (aVar instanceof k57.a ? 0 : aVar);
        if (list2 != null) {
            do {
                value = z68Var.getValue();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : (List) value) {
                    pz3 pz3Var2 = (pz3) obj;
                    if (!(pz3Var2 instanceof g63) && !(pz3Var2 instanceof sv7)) {
                        arrayList2.add(obj);
                    }
                }
                arrayList = new ArrayList(arrayList2);
                arrayList.addAll(i, list2);
            } while (!z68Var.a(value, arrayList));
        }
        return j59.a;
    }
}
