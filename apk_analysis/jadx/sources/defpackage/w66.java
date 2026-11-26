package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class w66 {
    public final f66 a;
    public final iw2 b;
    public final jf6 c;
    public final z68 d = px.a(null);
    public final z68 e = px.a(kx2.b);
    public final z68 f = px.a(Boolean.FALSE);

    public interface a {

        /* JADX INFO: renamed from: w66$a$a, reason: collision with other inner class name */
        public static final class C0347a implements a {
            public static final C0347a a = new C0347a();
        }

        public static final class b implements a {
            public final String a;

            public b(String str) {
                this.a = str;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && aa4.e(this.a, ((b) obj).a);
            }

            public final int hashCode() {
                String str = this.a;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            public final String toString() {
                return me0.c("ShowSuccess(snackbarText=", this.a, ")");
            }
        }

        public static final class c implements a {
            public final u66 a;

            public c(u66 u66Var) {
                this.a = u66Var;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof c) && this.a.equals(((c) obj).a);
            }

            public final int hashCode() {
                return this.a.hashCode();
            }

            public final String toString() {
                return "ShowSuccessFirstTime(personalDataSuccess=" + this.a + ")";
            }
        }

        public static final class d implements a {
            public static final d a = new d();
        }

        public static final class e implements a {
            public static final e a = new e();
        }
    }

    public static final class b extends gh4 implements nl3<pz3, Boolean> {
        public final /* synthetic */ List<w56> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(List<? extends w56> list) {
            super(1);
            this.f = list;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x003e  */
        @Override // defpackage.nl3
        public final Boolean invoke(pz3 pz3Var) {
            boolean z;
            pz3 pz3Var2 = pz3Var;
            pz3Var2.getClass();
            if (pz3Var2 instanceof w56) {
                List<w56> list = this.f;
                if ((list instanceof Collection) && list.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (aa4.e(((w56) it.next()).getKey(), ((w56) pz3Var2).getKey())) {
                            z = true;
                        }
                    }
                    z = false;
                }
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class c extends gh4 implements nl3<pz3, Boolean> {
        public final /* synthetic */ List<w56> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(List<? extends w56> list) {
            super(1);
            this.f = list;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x003e  */
        @Override // defpackage.nl3
        public final Boolean invoke(pz3 pz3Var) {
            boolean z;
            pz3 pz3Var2 = pz3Var;
            pz3Var2.getClass();
            if (pz3Var2 instanceof w56) {
                List<w56> list = this.f;
                if ((list instanceof Collection) && list.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        if (aa4.e(((w56) it.next()).getKey(), ((w56) pz3Var2).getKey())) {
                            z = true;
                        }
                    }
                    z = false;
                }
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    public w66(f66 f66Var, iw2 iw2Var, jf6 jf6Var) {
        this.a = f66Var;
        this.b = iw2Var;
        this.c = jf6Var;
    }

    public final void a() {
        boolean z;
        boolean z2;
        z68 z68Var;
        Object value;
        z68 z68Var2 = this.e;
        Iterable iterable = (Iterable) z68Var2.getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj instanceof f56) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((f56) it.next()).e);
        }
        ArrayList arrayListR = kn1.r(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayListR) {
            if (obj2 instanceof w56) {
                arrayList3.add(obj2);
            }
        }
        if (arrayList3.isEmpty()) {
            z = false;
            break;
        }
        Iterator it2 = arrayList3.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            w56 w56Var = (w56) it2.next();
            if (ta8.M(w56Var.getValue()) && !ta8.M(w56Var.i())) {
                z = true;
                break;
            }
        }
        if (arrayList3.isEmpty()) {
            z2 = false;
            break;
        }
        Iterator it3 = arrayList3.iterator();
        while (true) {
            if (it3.hasNext()) {
                if (((w56) it3.next()).j()) {
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        do {
            z68Var = this.f;
            value = z68Var.getValue();
            ((Boolean) value).getClass();
        } while (!z68Var.a(value, Boolean.valueOf((z || z2 || ((Collection) z68Var2.getValue()).isEmpty()) ? false : true)));
    }

    public final void b(s56.a aVar) {
        int i;
        int i2;
        s56.a aVar2 = aVar;
        String str = aVar2.b;
        String str2 = aVar2.a;
        String str3 = aVar2.c;
        List<w56> list = aVar2.f;
        while (true) {
            z68 z68Var = this.e;
            Object value = z68Var.getValue();
            List list2 = (List) value;
            ArrayList arrayListV0 = qn1.v0(list2);
            Iterator it = list2.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof f56) && aa4.e(((f56) pz3Var).d, str2)) {
                    i = i3;
                    break;
                }
                i3++;
            }
            Object obj = arrayListV0.get(i);
            obj.getClass();
            f56 f56Var = (f56) obj;
            List<pz3> list3 = f56Var.e;
            Iterator<pz3> it2 = list3.iterator();
            int i4 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i2 = -1;
                    break;
                }
                pz3 next = it2.next();
                if ((next instanceof s56) && aa4.e(((s56) next).f, str)) {
                    i2 = i4;
                    break;
                }
                i4++;
            }
            pz3 pz3Var2 = list3.get(i2);
            pz3Var2.getClass();
            s56 s56Var = (s56) pz3Var2;
            s56.a aVar3 = s56Var.c;
            List<w56> list4 = aVar3 != null ? aVar3.f : null;
            if (list4 == null) {
                list4 = kx2.b;
            }
            List<s56.a> list5 = s56Var.a;
            ArrayList arrayList = new ArrayList(kn1.q(list5, 10));
            Iterator it3 = list5.iterator();
            while (it3.hasNext()) {
                s56.a aVar4 = (s56.a) it3.next();
                Iterator it4 = it3;
                arrayList.add(aa4.e(aVar4.c, str3) ? s56.a.a(aVar4, true) : s56.a.a(aVar4, false));
                it3 = it4;
            }
            ArrayList arrayList2 = new ArrayList(list3);
            nn1.y(new b(list4), arrayList2);
            int i5 = i;
            String str4 = s56Var.b;
            String str5 = s56Var.d;
            int i6 = i2;
            Integer num = s56Var.e;
            String str6 = s56Var.f;
            boolean z = s56Var.g;
            boolean z2 = s56Var.h;
            String str7 = s56Var.j;
            boolean z3 = s56Var.k;
            str4.getClass();
            str6.getClass();
            str3.getClass();
            String str8 = str;
            String str9 = str2;
            List<w56> list6 = list;
            arrayList2.set(i6, new s56(arrayList, str4, aVar2, str5, num, str6, z, z2, str3, str7, z3));
            arrayList2.addAll(i6 + 1, list6);
            j59 j59Var = j59.a;
            arrayListV0.set(i5, f56.d(f56Var, arrayList2));
            if (z68Var.a(value, arrayListV0)) {
                return;
            }
            aVar2 = aVar;
            str2 = str9;
            list = list6;
            str = str8;
        }
    }

    public final void c(j56 j56Var) {
        int i;
        int i2;
        Object next;
        String str = j56Var.b;
        String str2 = j56Var.c;
        String str3 = j56Var.d;
        List<w56> list = j56Var.f;
        while (true) {
            z68 z68Var = this.e;
            Object value = z68Var.getValue();
            List list2 = (List) value;
            ArrayList arrayListV0 = qn1.v0(list2);
            Iterator it = list2.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                pz3 pz3Var = (pz3) it.next();
                if ((pz3Var instanceof f56) && aa4.e(((f56) pz3Var).d, str)) {
                    i = i3;
                    break;
                }
                i3++;
            }
            Object obj = arrayListV0.get(i);
            obj.getClass();
            f56 f56Var = (f56) obj;
            List<pz3> list3 = f56Var.e;
            Iterator<pz3> it2 = list3.iterator();
            int i4 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i2 = -1;
                    break;
                }
                pz3 next2 = it2.next();
                if ((next2 instanceof o66) && aa4.e(((o66) next2).d, str2)) {
                    i2 = i4;
                    break;
                }
                i4++;
            }
            pz3 pz3Var2 = list3.get(i2);
            pz3Var2.getClass();
            o66 o66Var = (o66) pz3Var2;
            List<j56> list4 = o66Var.b;
            Iterator<T> it3 = list4.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while (!((j56) next).e);
            j56 j56Var2 = (j56) next;
            List<w56> list5 = j56Var2 != null ? j56Var2.f : null;
            if (list5 == null) {
                list5 = kx2.b;
            }
            List<w56> list6 = list5;
            List<w56> list7 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list4, 10));
            Iterator it4 = list4.iterator();
            while (it4.hasNext()) {
                j56 j56Var3 = (j56) it4.next();
                Iterator it5 = it4;
                arrayList.add(aa4.e(j56Var3.d, str3) ? j56.d(j56Var3, true) : j56.d(j56Var3, false));
                it4 = it5;
            }
            ArrayList arrayList2 = new ArrayList(list3);
            nn1.y(new c(list6), arrayList2);
            String str4 = o66Var.a;
            String str5 = o66Var.c;
            int i5 = i2;
            String str6 = o66Var.d;
            String str7 = str;
            boolean z = o66Var.e;
            boolean z2 = o66Var.f;
            boolean z3 = o66Var.h;
            str4.getClass();
            str6.getClass();
            str3.getClass();
            int i6 = i;
            String str8 = str2;
            arrayList2.set(i5, new o66(str4, arrayList, str5, str6, z, z2, str3, z3));
            arrayList2.addAll(i5 + 1, list7);
            j59 j59Var = j59.a;
            arrayListV0.set(i6, f56.d(f56Var, arrayList2));
            if (z68Var.a(value, arrayListV0)) {
                return;
            }
            list = list7;
            str = str7;
            str2 = str8;
        }
    }

    public final void d(String str) {
        z68 z68Var;
        Object value;
        ArrayList arrayList;
        str.getClass();
        do {
            z68Var = this.e;
            value = z68Var.getValue();
            ArrayList<Object> arrayListV0 = qn1.v0((List) value);
            int i = 10;
            arrayList = new ArrayList(kn1.q(arrayListV0, 10));
            for (Object objD : arrayListV0) {
                if (objD instanceof f56) {
                    f56 f56Var = (f56) objD;
                    List<pz3> list = f56Var.e;
                    ArrayList arrayList2 = new ArrayList(kn1.q(list, i));
                    for (pz3 m56Var : list) {
                        if (m56Var instanceof m56) {
                            m56 m56Var2 = (m56) m56Var;
                            String str2 = m56Var2.a;
                            boolean z = m56Var2.b;
                            boolean z2 = m56Var2.c;
                            String str3 = m56Var2.d;
                            Integer num = m56Var2.e;
                            String str4 = m56Var2.g;
                            boolean z3 = m56Var2.h;
                            String str5 = m56Var2.i;
                            str2.getClass();
                            str3.getClass();
                            m56Var = new m56(str2, z, z2, str3, num, str, str4, z3, str5);
                        }
                        arrayList2.add(m56Var);
                    }
                    objD = f56.d(f56Var, arrayList2);
                }
                arrayList.add(objD);
                i = 10;
            }
        } while (!z68Var.a(value, arrayList));
        a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(boolean z, f02 f02Var) {
        z66 z66Var;
        ArrayList arrayListV0;
        ArrayList arrayList;
        int i;
        Object value;
        if (f02Var instanceof z66) {
            z66Var = (z66) f02Var;
            int i2 = z66Var.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                z66Var.p = i2 - Integer.MIN_VALUE;
            } else {
                z66Var = new z66(this, f02Var);
            }
        } else {
            z66Var = new z66(this, f02Var);
        }
        Object obj = z66Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = z66Var.p;
        z68 z68Var = this.e;
        if (i3 == 0) {
            r57.b(obj);
            if (!((Collection) z68Var.getValue()).isEmpty()) {
                arrayListV0 = qn1.v0((Collection) z68Var.getValue());
                Iterator it = arrayListV0.iterator();
                int i4 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i4 = -1;
                        break;
                    }
                    if (((pz3) it.next()) instanceof v56) {
                        break;
                    }
                    i4++;
                }
                if (i4 == -1) {
                    return j59.a;
                }
                Object obj2 = arrayListV0.get(i4);
                obj2.getClass();
                v56 v56Var = (v56) obj2;
                if (this.b.a(this.c.c0()) && v56Var.f == null) {
                    z66Var.l = arrayListV0;
                    z66Var.m = i4;
                    z66Var.p = 1;
                    Object objC = this.a.c(z, z66Var);
                    if (objC == a32Var) {
                        return a32Var;
                    }
                    arrayList = arrayListV0;
                    obj = objC;
                    i = i4;
                }
                do {
                    value = z68Var.getValue();
                } while (!z68Var.a(value, arrayListV0));
            }
            return j59.a;
        }
        if (i3 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i = z66Var.m;
        arrayList = z66Var.l;
        r57.b(obj);
        yk6.b bVarA = ((yk6) obj).a();
        if (bVarA != null) {
            arrayList.set(i, bVarA.a());
        }
        arrayListV0 = arrayList;
        do {
            value = z68Var.getValue();
        } while (!z68Var.a(value, arrayListV0));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0051 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0063  */
    /* JADX WARN: Code duplicated, block: B:22:0x0068  */
    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x0089  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:45:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:57:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004f -> B:18:0x0052). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:27:0x0079
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object f(boolean r11, defpackage.f02 r12) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w66.f(boolean, f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(int i, String str, f02 f02Var) {
        b76 b76Var;
        if (f02Var instanceof b76) {
            b76Var = (b76) f02Var;
            int i2 = b76Var.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                b76Var.o = i2 - Integer.MIN_VALUE;
            } else {
                b76Var = new b76(this, f02Var);
            }
        } else {
            b76Var = new b76(this, f02Var);
        }
        Object objA = b76Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = b76Var.o;
        if (i3 == 0) {
            r57.b(objA);
            b76Var.l = str;
            b76Var.o = 1;
            objA = this.a.a(i, str, b76Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = b76Var.l;
            r57.b(objA);
        }
        if (((a89) objA).a == a89.a.Success) {
            d(str);
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object h(boolean z, f02 f02Var) {
        c76 c76Var;
        z68 z68Var;
        Object value;
        ArrayList arrayList;
        if (f02Var instanceof c76) {
            c76Var = (c76) f02Var;
            int i = c76Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                c76Var.n = i - Integer.MIN_VALUE;
            } else {
                c76Var = new c76(this, f02Var);
            }
        } else {
            c76Var = new c76(this, f02Var);
        }
        Object obj = c76Var.l;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = c76Var.n;
        if (i2 == 0) {
            r57.b(obj);
            c76Var.n = 1;
            if (e(z, c76Var) == obj2) {
                return obj2;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        String strU0 = this.c.U0();
        do {
            z68Var = this.e;
            value = z68Var.getValue();
            ArrayList<Object> arrayListV0 = qn1.v0((List) value);
            arrayList = new ArrayList(kn1.q(arrayListV0, 10));
            for (Object objD : arrayListV0) {
                if (objD instanceof f56) {
                    f56 f56Var = (f56) objD;
                    List<pz3> list = f56Var.e;
                    ArrayList arrayList2 = new ArrayList(kn1.q(list, 10));
                    for (Object c66Var : list) {
                        if (c66Var instanceof c66) {
                            c66 c66Var2 = (c66) c66Var;
                            String str = c66Var2.a;
                            boolean z2 = c66Var2.b;
                            boolean z3 = c66Var2.c;
                            boolean z4 = c66Var2.e;
                            String str2 = c66Var2.f;
                            String str3 = c66Var2.g;
                            str.getClass();
                            str3.getClass();
                            c66Var = new c66(str, z2, z3, strU0, z4, str2, str3);
                        }
                        arrayList2.add(c66Var);
                    }
                    objD = f56.d(f56Var, arrayList2);
                }
                arrayList.add(objD);
            }
        } while (!z68Var.a(value, arrayList));
        a();
        return j59.a;
    }
}
