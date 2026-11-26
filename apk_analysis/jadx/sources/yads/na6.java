package yads;

import android.content.Context;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class na6 {
    public final jc6 a;
    public final u86 b;
    public final la6 c;

    public na6(Context context, ab6 ab6Var) {
        jc6 jc6Var = new jc6();
        u86 u86Var = new u86(context);
        la6 la6Var = new la6(ab6Var);
        this.a = jc6Var;
        this.b = u86Var;
        this.c = la6Var;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x0195  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [yads.ga] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r4v32 */
    public final ArrayList a(List list) {
        List listN0;
        int i;
        t86 t86Var;
        Object next;
        String str;
        Object next2;
        ?? r4;
        ?? gaVar;
        t86 t86Var2;
        JSONObject jSONObjectA;
        this.a.getClass();
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    listN0 = defpackage.qn1.t0(list);
                    break;
                }
                if (((t96) it.next()).k != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (((t96) obj).k != null) {
                            arrayList.add(obj);
                        }
                    }
                    listN0 = defpackage.qn1.n0(arrayList, new ic6());
                    break;
                }
            }
        } else {
            listN0 = defpackage.qn1.t0(list);
            break;
        }
        u86 u86Var = this.b;
        u86Var.getClass();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = listN0.iterator();
        while (true) {
            i = 0;
            boolean z = false;
            if (!it2.hasNext()) {
                break;
            }
            t96 t96Var = (t96) it2.next();
            p90 p90Var = (p90) defpackage.qn1.V(t96Var.b);
            if (p90Var == null) {
                t86Var = null;
            } else {
                if (p90Var.b.isEmpty()) {
                    fe5 fe5Var = u86Var.e;
                    if (fe5Var != null && fe5Var.E0 && t96Var.a) {
                        String str2 = t96Var.i;
                        if (str2 == null) {
                            str2 = "";
                        }
                        t86Var2 = new t86(t96Var, p90Var, new zz3(str2, null, null, null, null, null, 0, 0, 0, null), null, null, null, null);
                    } else {
                        zz3 zz3VarA = u86Var.a.a(p90Var.a);
                        if (zz3VarA != null) {
                            ba6 ba6Var = t96Var.d;
                            u86Var.b.getClass();
                            Iterator it3 = ba6Var.a.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it3.next();
                                qs2 qs2Var = (qs2) next;
                                if (defpackage.aa4.e(qs2Var.a, "social_ad_info") && qs2Var.b.length() > 0) {
                                    break;
                                }
                            }
                            qs2 qs2Var2 = (qs2) next;
                            String str3 = qs2Var2 != null ? qs2Var2.b : null;
                            mo5 mo5Var = str3 != null ? new mo5(str3) : null;
                            u86Var.c.getClass();
                            String strA = m5.a(ba6Var);
                            u86Var.c.getClass();
                            String strA2 = m5.a(ba6Var);
                            JSONObject jSONObjectA2 = strA2 != null ? zq3.a(strA2) : null;
                            u86Var.d.getClass();
                            Iterator it4 = ba6Var.a.iterator();
                            do {
                                if (!it4.hasNext()) {
                                    str = null;
                                    next2 = null;
                                    break;
                                }
                                next2 = it4.next();
                                str = null;
                            } while (!defpackage.aa4.e(((qs2) next2).a, "AdTune"));
                            qs2 qs2Var3 = (qs2) next2;
                            String str4 = qs2Var3 != null ? qs2Var3.b : str;
                            if (str4 != null) {
                                jSONObjectA = zq3.a(str4);
                            } else {
                                r4 = str;
                            }
                            if (r4 != 0) {
                                if (r4.optInt("show", 0) == 1) {
                                    r4 = jSONObjectA;
                                    z = true;
                                }
                                r4 = jSONObjectA;
                                gaVar = new ga(r4.optString("token"), r4.optString("advertiserInfo"), z);
                            } else {
                                r4 = jSONObjectA;
                                gaVar = str;
                            }
                            t86Var2 = new t86(t96Var, p90Var, zz3VarA, mo5Var, strA, jSONObjectA2, gaVar);
                        } else {
                            t86Var = null;
                        }
                    }
                } else {
                    t86Var2 = new t86(t96Var, p90Var, new zz3("", null, null, null, null, null, 0, 0, 0, null), null, null, null, null);
                }
                t86Var = t86Var2;
            }
            if (t86Var != null) {
                arrayList2.add(t86Var);
            }
        }
        int size = arrayList2.size();
        ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
        for (Object obj2 : arrayList2) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            t86 t86Var3 = (t86) obj2;
            la6 la6Var = this.c;
            la6Var.getClass();
            t96 t96Var2 = t86Var3.a;
            p90 p90Var2 = t86Var3.b;
            zz3 zz3Var = t86Var3.c;
            mo5 mo5Var2 = t86Var3.d;
            String str5 = t86Var3.e;
            JSONObject jSONObject = t86Var3.f;
            ib6 ib6Var = new ib6(size, i2);
            ga gaVar2 = t86Var3.g;
            arrayList3.add(new ja6(p90Var2, t96Var2, zz3Var, la6Var.a.a(t96Var2, p90Var2, zz3Var, ib6Var, str5, gaVar2 != null ? ha.a(gaVar2) : null, jSONObject), mo5Var2, String.valueOf(qb3.a.getAndIncrement()), gaVar2));
            i = i2;
        }
        return arrayList3;
    }
}
