package yads;

import android.content.Context;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ml6 implements v75 {
    public final pl6 a;
    public final nl6 b;

    public ml6(Context context, t96 t96Var, pl6 pl6Var) {
        nl6 nl6Var = new nl6(context, t96Var);
        this.a = pl6Var;
        this.b = nl6Var;
    }

    @Override // yads.v75
    public final void a(z96 z96Var) {
        this.a.a(z96Var);
    }

    @Override // yads.v75
    public final void onSuccess(Object obj) {
        Iterable iterable;
        List listO0 = ((v76) obj).a.b;
        nl6 nl6Var = this.b;
        rl6 rl6Var = nl6Var.a.a.m;
        if (rl6Var != null) {
            if (!rl6Var.b) {
                nl6Var.b.getClass();
                listO0 = lc6.a(listO0).a;
            }
            if (!rl6Var.a) {
                listO0 = defpackage.qn1.o0(listO0, 1);
            }
            il6 il6Var = nl6Var.c;
            il6Var.getClass();
            int i = 10;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(listO0, 10));
            Iterator it = listO0.iterator();
            while (it.hasNext()) {
                t96 t96Var = (t96) it.next();
                ArrayList arrayList2 = il6Var.b.a.b;
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    defpackage.nn1.s(((p90) it2.next()).d, arrayList3);
                }
                ArrayList arrayList4 = t96Var.b;
                ArrayList arrayList5 = new ArrayList(defpackage.kn1.q(arrayList4, i));
                Iterator it3 = arrayList4.iterator();
                while (true) {
                    boolean zHasNext = it3.hasNext();
                    iterable = defpackage.kx2.b;
                    if (!zHasNext) {
                        break;
                    }
                    p90 p90Var = (p90) it3.next();
                    ArrayList arrayList6 = p90Var.c;
                    ArrayList arrayList7 = new ArrayList(defpackage.kn1.q(arrayList6, i));
                    Iterator it4 = arrayList6.iterator();
                    while (it4.hasNext()) {
                        arrayList7.add(((cb3) it4.next()).a);
                    }
                    Set setX0 = defpackage.qn1.x0(arrayList7);
                    ArrayList arrayList8 = new ArrayList();
                    Iterator it5 = arrayList2.iterator();
                    while (it5.hasNext()) {
                        defpackage.nn1.s(((p90) it5.next()).c, arrayList8);
                    }
                    ArrayList arrayList9 = new ArrayList();
                    for (Object obj2 : arrayList8) {
                        if (setX0.add(((cb3) obj2).a)) {
                            arrayList9.add(obj2);
                        }
                    }
                    ArrayList arrayList10 = p90Var.d;
                    ArrayList arrayListH0 = defpackage.qn1.h0(p90Var.b, p90Var.a);
                    ArrayList arrayList11 = new ArrayList();
                    ArrayList arrayList12 = new ArrayList();
                    Iterator it6 = it;
                    ArrayList arrayList13 = new ArrayList();
                    String str = p90Var.h;
                    arrayList11.addAll(arrayListH0);
                    Iterable iterable2 = p90Var.c;
                    if (iterable2 == null) {
                        iterable2 = iterable;
                    }
                    arrayList12.addAll(iterable2);
                    arrayList13.addAll(arrayList3);
                    String str2 = p90Var.f;
                    dm5 dm5Var = p90Var.g;
                    int i2 = p90Var.i;
                    arrayList12.addAll(arrayList9);
                    if (arrayList10 != null) {
                        iterable = arrayList10;
                    }
                    arrayList13.addAll(iterable);
                    String str3 = p90Var.j;
                    ArrayList arrayList14 = new ArrayList();
                    for (Object obj3 : arrayList11) {
                        ArrayList arrayList15 = arrayList13;
                        int i3 = i2;
                        if (obj3 instanceof zz3) {
                            arrayList14.add(obj3);
                        }
                        arrayList13 = arrayList15;
                        i2 = i3;
                    }
                    ArrayList arrayList16 = arrayList13;
                    int i4 = i2;
                    ArrayList arrayList17 = new ArrayList();
                    for (Object obj4 : arrayList11) {
                        if (obj4 instanceof nn3) {
                            arrayList17.add(obj4);
                        }
                    }
                    arrayList5.add(new p90(arrayList14, arrayList17, arrayList12, arrayList16, null, str2, dm5Var, str, i4, str3));
                    it = it6;
                    i = 10;
                }
                Iterator it7 = it;
                hl6 hl6Var = il6Var.c;
                t96 t96Var2 = il6Var.a;
                hl6Var.getClass();
                ba6 ba6Var = t96Var.d;
                ba6 ba6Var2 = t96Var2.d;
                ba6 ba6Var3 = new ba6(defpackage.qn1.h0(ba6Var2.a, ba6Var.a), defpackage.qn1.h0(ba6Var2.b, ba6Var.b));
                jl6 jl6Var = il6Var.d;
                t96 t96Var3 = il6Var.a;
                jl6Var.getClass();
                List listI = u96.i(t96Var, t96Var3);
                ArrayList arrayList18 = new ArrayList();
                Iterator it8 = listI.iterator();
                while (it8.hasNext()) {
                    jh6 jh6Var = ((t96) it8.next()).j;
                    Iterable iterable3 = jh6Var != null ? jh6Var.a : null;
                    if (iterable3 == null) {
                        iterable3 = iterable;
                    }
                    defpackage.nn1.s(iterable3, arrayList18);
                }
                jh6 jh6Var2 = new jh6(arrayList18);
                LinkedHashMap linkedHashMap = t96Var.c;
                t96 t96Var4 = il6Var.a;
                LinkedHashMap linkedHashMap2 = t96Var4.c;
                ArrayList arrayListH1 = defpackage.qn1.h0(t96Var4.n, t96Var.n);
                s96 s96Var = new s96(il6Var.e, t96Var.a);
                s96Var.k = t96Var.l;
                s96Var.l.addAll(arrayList5);
                s96 s96VarA = s96Var.a(linkedHashMap);
                s96VarA.d = t96Var.e;
                s96VarA.e = t96Var.f;
                s96VarA.f = t96Var.g;
                s96VarA.g = t96Var.h;
                s96VarA.h = t96Var.i;
                s96VarA.o = ba6Var3;
                s96VarA.i = jh6Var2;
                s96VarA.c = t96Var.m;
                s96 s96VarA2 = s96VarA.a(linkedHashMap2);
                s96VarA2.m.addAll(arrayListH1);
                arrayList.add(s96VarA2.a());
                it = it7;
                i = 10;
            }
            listO0 = arrayList;
        }
        this.a.onSuccess(listO0);
    }
}
