package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class du1 {
    public static final du1 a = new du1();

    public static br0 a(br0 br0Var, String str, fs2 fs2Var) {
        if (br0Var instanceof gq0) {
            gq0 gq0Var = (gq0) br0Var;
            if (!defpackage.aa4.e(a(gq0Var.a), str)) {
                br0Var = null;
            }
            gq0 gq0Var2 = (gq0) br0Var;
            return gq0Var2 != null ? gq0Var2 : a(gq0Var.a.I, str, fs2Var, new defpackage.ft3(2));
        }
        if (br0Var instanceof iq0) {
            return a(((iq0) br0Var).a.q, str, fs2Var, new defpackage.gt3(4));
        }
        if (br0Var instanceof up0) {
            j81 j81Var = ((up0) br0Var).a;
            return a(str, f71.a(j81Var.B, j81Var.z, fs2Var));
        }
        if (br0Var instanceof yp0) {
            Iterable iterable = ((yp0) br0Var).a.y;
            if (iterable == null) {
                iterable = defpackage.kx2.b;
            }
            return a(iterable, str, fs2Var);
        }
        if (br0Var instanceof wp0) {
            og1 og1Var = ((wp0) br0Var).a;
            return a(str, f71.a(og1Var.u, og1Var.s, fs2Var));
        }
        if (br0Var instanceof cq0) {
            ur1 ur1Var = ((cq0) br0Var).a;
            return a(str, f71.a(ur1Var.t, ur1Var.r, fs2Var));
        }
        if (br0Var instanceof vp0) {
            List list = ((vp0) br0Var).a.q;
            if (list != null) {
                return a(list, str, fs2Var);
            }
        } else if (!(br0Var instanceof jq0) && !(br0Var instanceof zp0) && !(br0Var instanceof fq0) && !(br0Var instanceof bq0) && !(br0Var instanceof xp0) && !(br0Var instanceof aq0) && !(br0Var instanceof eq0) && !(br0Var instanceof dq0) && !(br0Var instanceof kq0) && !(br0Var instanceof hq0)) {
            defpackage.me0.e();
            return null;
        }
        return null;
    }

    public static ArrayList b(List list) {
        return a(list, new defpackage.p12(6), new defpackage.et3(3));
    }

    public static final gs2 b(cn1 cn1Var) {
        return w56.a(cn1Var.b);
    }

    public static final br0 a(cn1 cn1Var) {
        return cn1Var.a;
    }

    public static k32 a(View view, n32 n32Var) throws qq5 {
        boolean zE;
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof k32) {
            k32 k32Var = (k32) view;
            n32 n32VarJ = k32Var.j();
            if (n32Var.d) {
                zE = defpackage.aa4.e(n32VarJ != null ? n32VarJ.b() : null, n32Var.b());
            } else {
                zE = defpackage.aa4.e(n32VarJ != null ? (String) n32VarJ.d().e.getValue() : null, (String) n32Var.d().e.getValue());
            }
            if (zE) {
                return k32Var;
            }
        }
        Iterator<View> it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
        k32 k32Var2 = null;
        while (it.hasNext()) {
            k32 k32VarA = a(it.next(), n32Var);
            if (k32VarA != null) {
                if (String.valueOf(k32Var2 != null ? k32Var2.j() : null).equals(String.valueOf(k32VarA.j()))) {
                    throw new qq5("Error resolving state for '" + n32Var + "'. Found multiple elements that respond to path '" + k32VarA.j() + "'!");
                }
                k32Var2 = k32VarA;
            }
        }
        return k32Var2;
    }

    public static final br0 a(br0 br0Var) {
        return br0Var;
    }

    public static final br0 a(y22 y22Var) {
        return y22Var.c;
    }

    public static final br0 a(t52 t52Var) {
        return t52Var.a;
    }

    public static /* synthetic */ br0 a(Iterable iterable, String str, fs2 fs2Var) {
        return a(iterable, str, fs2Var, new defpackage.sf(3));
    }

    public static final br0 a(Object obj) {
        return (br0) obj;
    }

    public static br0 a(Iterable iterable, String str, fs2 fs2Var, nl3 nl3Var) {
        br0 br0VarA;
        Iterator it = iterable.iterator();
        do {
            br0VarA = null;
            if (!it.hasNext()) {
                break;
            }
            br0 br0Var = (br0) nl3Var.invoke(it.next());
            if (br0Var != null) {
                br0VarA = a(br0Var, str, fs2Var);
            }
        } while (br0VarA == null);
        return br0VarA;
    }

    public static br0 a(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            cn1 cn1Var = (cn1) it.next();
            br0 br0VarA = a(cn1Var.a, str, cn1Var.b);
            if (br0VarA != null) {
                return br0VarA;
            }
        }
        return null;
    }

    public static String a(z22 z22Var) {
        String str = z22Var.p;
        if (str != null) {
            return str;
        }
        String str2 = z22Var.x;
        return str2 == null ? "" : str2;
    }

    public final ArrayList a(List list) {
        return a(this, list, new defpackage.pf(7));
    }

    public static /* synthetic */ ArrayList a(du1 du1Var, List list, nl3 nl3Var) {
        cu1 cu1Var = cu1.b;
        du1Var.getClass();
        return a(list, nl3Var, cu1Var);
    }

    public static ArrayList a(List list, nl3 nl3Var, nl3 nl3Var2) {
        String strA;
        String strA2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            p41 p41VarA = ((br0) nl3Var.invoke(it.next())).a();
            if (p41VarA instanceof z22) {
                strA2 = a((z22) p41VarA);
            } else {
                strA2 = p41VarA.a();
            }
            if (strA2 != null) {
                Integer num = (Integer) linkedHashMap.get(strA2);
                linkedHashMap.put(strA2, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
            }
        }
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i >= 0) {
                p41 p41VarA2 = ((br0) nl3Var.invoke(obj)).a();
                if (p41VarA2 instanceof z22) {
                    strA = a((z22) p41VarA2);
                } else {
                    strA = p41VarA2.a();
                }
                if (strA != null) {
                    Integer num2 = (Integer) linkedHashMap.get(strA);
                    if ((num2 != null ? num2.intValue() : 0) > 1) {
                        strA = strA + "#" + i;
                    }
                } else {
                    gs2 gs2Var = (gs2) nl3Var2.invoke(obj);
                    String strB = gs2Var != null ? gs2Var.b() : null;
                    strA = strB == null ? bz.b(i) : strB;
                }
                arrayList.add(strA);
                i = i2;
            } else {
                u96.o();
                throw null;
            }
        }
        return arrayList;
    }
}
