package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class aj4 {
    public final nj4 a;
    public final i3 b;
    public final jf6 c;
    public final xb4 d;
    public final hi0<List<wk4>> e = hi0.i(kx2.b);
    public final hi0<String> f = hi0.i(new String());

    public static final class a {
        public final List<wk4> a;
        public final boolean b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(List<? extends wk4> list, boolean z) {
            this.a = list;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b == aVar.b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "LandingContent(viewModel=" + this.a + ", hasDecorationLine=" + this.b + ")";
        }
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[qv6.values().length];
            try {
                iArr[qv6.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[qv6.TEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[qv6.PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[qv6.DATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public aj4(nj4 nj4Var, i3 i3Var, jf6 jf6Var, xb4 xb4Var) {
        this.a = nj4Var;
        this.b = i3Var;
        this.c = jf6Var;
        this.d = xb4Var;
    }

    public static int c(qv6 qv6Var) {
        int i = b.a[qv6Var.ordinal()];
        if (i == 1) {
            return 208;
        }
        int i2 = 3;
        if (i != 3) {
            i2 = 4;
            if (i != 4) {
                return 1;
            }
        }
        return i2;
    }

    public final void a(String str) {
        int i;
        ti4 ti4Var;
        str.getClass();
        List<wk4> listJ = this.e.j();
        if (listJ == null) {
            listJ = kx2.b;
        }
        ArrayList arrayList = new ArrayList(listJ);
        Iterator it = arrayList.iterator();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = -1;
            if (!it.hasNext()) {
                i3 = -1;
                break;
            } else if (aa4.e(((wk4) it.next()).id(), str)) {
                break;
            } else {
                i3++;
            }
        }
        if (u96.f(arrayList).c(i3) && !(arrayList.get(i3) instanceof ti4)) {
            pz3 pz3VarD = (wk4) arrayList.get(i3);
            if (pz3VarD instanceof hi4) {
                hi4 hi4Var = (hi4) pz3VarD;
                pz3VarD = hi4.l(hi4Var, !hi4Var.d, 23);
            } else if (pz3VarD instanceof mh4) {
                mh4 mh4Var = (mh4) pz3VarD;
                pz3VarD = mh4.d(mh4Var, !mh4Var.d, 23);
            }
            arrayList.set(i3, pz3VarD);
            b(arrayList);
            return;
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            wk4 wk4Var = (wk4) it2.next();
            if (wk4Var instanceof ti4) {
                ti4 ti4Var2 = (ti4) wk4Var;
                if (!aa4.e(ti4Var2.a.a, str)) {
                    wi4 wi4Var = ti4Var2.b;
                    if (aa4.e(wi4Var != null ? wi4Var.a : null, str)) {
                    }
                }
                i = i2;
                break;
            }
            i2++;
        }
        if (u96.f(arrayList).c(i)) {
            Object obj = arrayList.get(i);
            obj.getClass();
            ti4 ti4Var3 = (ti4) obj;
            wi4 wi4Var2 = ti4Var3.b;
            wi4 wi4Var3 = ti4Var3.a;
            if (aa4.e(wi4Var3.a, str)) {
                ti4Var = new ti4(wi4.m(wi4Var3, !wi4Var3.d, 23), wi4Var2);
            } else {
                wi4 wi4VarM = wi4Var2 != null ? wi4.m(wi4Var2, !wi4Var2.d, 23) : null;
                wi4Var3.getClass();
                ti4Var = new ti4(wi4Var3, wi4VarM);
            }
            arrayList.set(i, ti4Var);
            b(arrayList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x026f  */
    /* JADX WARN: Code duplicated, block: B:123:0x0279  */
    /* JADX WARN: Code duplicated, block: B:126:0x0286  */
    /* JADX WARN: Code duplicated, block: B:129:0x028d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0297  */
    /* JADX WARN: Code duplicated, block: B:193:0x0215 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:203:0x01f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:205:0x01e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x0214 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:? A[LOOP:16: B:94:0x0204->B:208:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0286 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x02a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:? A[LOOP:20: B:121:0x0273->B:221:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x02a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:? A[LOOP:21: B:130:0x0291->B:224:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:93:0x0200  */
    /* JADX WARN: Code duplicated, block: B:96:0x020a  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void b(ArrayList arrayList) {
        boolean z;
        int i;
        Iterator it;
        Iterator it2;
        ArrayList arrayList2;
        Iterator it3;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof rk4) {
                arrayList3.add(obj);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayList3) {
            if (((rk4) obj2).c) {
                arrayList4.add(obj2);
            }
        }
        ArrayList arrayList5 = new ArrayList(kn1.q(arrayList4, 10));
        Iterator it4 = arrayList4.iterator();
        while (it4.hasNext()) {
            arrayList5.add(((rk4) it4.next()).b);
        }
        ArrayList<ti4> arrayList6 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (obj3 instanceof ti4) {
                arrayList6.add(obj3);
            }
        }
        ArrayList arrayList7 = new ArrayList(kn1.q(arrayList6, 10));
        for (ti4 ti4Var : arrayList6) {
            arrayList7.add(u96.i(ti4Var.a, ti4Var.b));
        }
        ArrayList arrayListR = qn1.R(kn1.r(arrayList7));
        ArrayList arrayList8 = new ArrayList();
        for (Object obj4 : arrayList) {
            if (obj4 instanceof hi4) {
                arrayList8.add(obj4);
            }
        }
        ArrayList arrayList9 = new ArrayList();
        for (Object obj5 : arrayList) {
            if (obj5 instanceof mh4) {
                arrayList9.add(obj5);
            }
        }
        ArrayList arrayList10 = new ArrayList();
        for (Object obj6 : arrayList9) {
            if (((mh4) obj6).b) {
                arrayList10.add(obj6);
            }
        }
        ArrayList arrayList11 = new ArrayList(kn1.q(arrayList10, 10));
        Iterator it5 = arrayList10.iterator();
        while (it5.hasNext()) {
            arrayList11.add(Boolean.valueOf(((mh4) it5.next()).d));
        }
        ArrayList arrayList12 = new ArrayList();
        for (Object obj7 : arrayList) {
            if (obj7 instanceof ik4) {
                arrayList12.add(obj7);
            }
        }
        ArrayList arrayList13 = new ArrayList();
        for (Object obj8 : arrayList12) {
            if (((ik4) obj8).b) {
                arrayList13.add(obj8);
            }
        }
        ArrayList arrayList14 = new ArrayList(kn1.q(arrayList13, 10));
        Iterator it6 = arrayList13.iterator();
        while (true) {
            z = true;
            if (!it6.hasNext()) {
                break;
            } else {
                arrayList14.add(Boolean.valueOf(!ta8.M(((ik4) it6.next()).d)));
            }
        }
        ArrayList arrayList15 = new ArrayList(kn1.q(arrayList5, 10));
        Iterator it7 = arrayList5.iterator();
        while (true) {
            i = 0;
            z = false;
            boolean z2 = false;
            if (!it7.hasNext()) {
                break;
            }
            String str = (String) it7.next();
            ArrayList arrayList16 = new ArrayList();
            for (Object obj9 : arrayListR) {
                if (aa4.e(((wi4) obj9).c, str)) {
                    arrayList16.add(obj9);
                }
            }
            if (!arrayList16.isEmpty()) {
                Iterator it8 = arrayList16.iterator();
                while (true) {
                    if (!it8.hasNext()) {
                        arrayList2 = new ArrayList();
                        for (Object obj10 : arrayList8) {
                            if (aa4.e(((hi4) obj10).a, str)) {
                                arrayList2.add(obj10);
                            }
                        }
                        if (arrayList2.isEmpty()) {
                            it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                                if (((hi4) it3.next()).d) {
                                }
                            }
                        }
                    } else if (((wi4) it8.next()).d) {
                    }
                    z2 = true;
                    break;
                    break;
                }
            }
            arrayList2 = new ArrayList();
            while (r10.hasNext()) {
                if (aa4.e(((hi4) obj10).a, str)) {
                    arrayList2.add(obj10);
                }
            }
            if (arrayList2.isEmpty()) {
                it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    if (((hi4) it3.next()).d) {
                        z2 = true;
                        break;
                    }
                }
            }
            arrayList15.add(Boolean.valueOf(z2));
        }
        ArrayList arrayList17 = new ArrayList();
        for (Object obj11 : arrayList) {
            if (obj11 instanceof qj4) {
                arrayList17.add(obj11);
            }
        }
        ArrayList arrayList18 = new ArrayList(arrayList);
        if (!arrayList17.isEmpty()) {
            qj4 qj4Var = (qj4) qn1.T(arrayList17);
            if (!arrayList11.isEmpty()) {
                Iterator it9 = arrayList11.iterator();
                while (true) {
                    if (it9.hasNext()) {
                        if (!((Boolean) it9.next()).booleanValue()) {
                        }
                    } else if (arrayList14.isEmpty()) {
                        it2 = arrayList14.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (!((Boolean) it2.next()).booleanValue()) {
                                }
                            } else if (!arrayList15.isEmpty()) {
                                it = arrayList15.iterator();
                                while (it.hasNext()) {
                                    if (!((Boolean) it.next()).booleanValue()) {
                                    }
                                }
                            }
                        }
                    } else if (!arrayList15.isEmpty()) {
                        it = arrayList15.iterator();
                        while (it.hasNext()) {
                            if (!((Boolean) it.next()).booleanValue()) {
                            }
                        }
                    }
                    z = false;
                    break;
                }
            }
            if (arrayList14.isEmpty()) {
                it2 = arrayList14.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (!((Boolean) it2.next()).booleanValue()) {
                        }
                    } else if (!arrayList15.isEmpty()) {
                        it = arrayList15.iterator();
                        while (it.hasNext()) {
                            if (!((Boolean) it.next()).booleanValue()) {
                            }
                        }
                    }
                    z = false;
                    break;
                }
            }
            if (!arrayList15.isEmpty()) {
                it = arrayList15.iterator();
                while (it.hasNext()) {
                    if (!((Boolean) it.next()).booleanValue()) {
                        z = false;
                        break;
                    }
                }
            }
            qj4 qj4VarL = qj4.l(qj4Var, z);
            Iterator it10 = arrayList18.iterator();
            while (true) {
                if (!it10.hasNext()) {
                    i = -1;
                    break;
                } else if (aa4.e(((wk4) it10.next()).id(), qj4VarL.e)) {
                    break;
                } else {
                    i++;
                }
            }
            arrayList18.remove(i);
            arrayList18.add(i, qj4VarL);
        }
        this.e.onNext(arrayList18);
    }
}
