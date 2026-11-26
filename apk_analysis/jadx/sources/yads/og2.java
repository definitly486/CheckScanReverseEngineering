package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class og2 {
    public final nh2 a;

    public og2(nh2 nh2Var) {
        this.a = nh2Var;
    }

    public static ng2 a(p41 p41Var, String str, fs2 fs2Var) {
        p41 p41VarA;
        ng2 ng2VarA;
        if (p41Var instanceof ng2) {
            ng2 ng2Var = (ng2) p41Var;
            if (defpackage.aa4.e(ng2Var.t, str)) {
                return ng2Var;
            }
            return null;
        }
        if (p41Var instanceof og1) {
            og1 og1Var = (og1) p41Var;
            for (cn1 cn1Var : f71.a(og1Var.u, og1Var.s, fs2Var)) {
                ng2 ng2VarA2 = a(cn1Var.a.a(), str, cn1Var.b);
                if (ng2VarA2 != null) {
                    return ng2VarA2;
                }
            }
            return null;
        }
        if (p41Var instanceof j81) {
            j81 j81Var = (j81) p41Var;
            for (cn1 cn1Var2 : f71.a(j81Var.B, j81Var.z, fs2Var)) {
                ng2 ng2VarA3 = a(cn1Var2.a.a(), str, cn1Var2.b);
                if (ng2VarA3 != null) {
                    return ng2VarA3;
                }
            }
            return null;
        }
        if (p41Var instanceof oh1) {
            Iterator it = f71.a((oh1) p41Var).iterator();
            while (it.hasNext()) {
                ng2 ng2VarA4 = a(((br0) it.next()).a(), str, fs2Var);
                if (ng2VarA4 != null) {
                    return ng2VarA4;
                }
            }
            return null;
        }
        if (p41Var instanceof ur1) {
            ur1 ur1Var = (ur1) p41Var;
            for (cn1 cn1Var3 : f71.a(ur1Var.t, ur1Var.r, fs2Var)) {
                ng2 ng2VarA5 = a(cn1Var3.a.a(), str, cn1Var3.b);
                if (ng2VarA5 != null) {
                    return ng2VarA5;
                }
            }
            return null;
        }
        if (p41Var instanceof y52) {
            Iterator it2 = ((y52) p41Var).q.iterator();
            while (it2.hasNext()) {
                ng2 ng2VarA6 = a(((t52) it2.next()).a.a(), str, fs2Var);
                if (ng2VarA6 != null) {
                    return ng2VarA6;
                }
            }
            return null;
        }
        if (p41Var instanceof ka1) {
            List list = ((ka1) p41Var).q;
            if (list != null) {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    ng2 ng2VarA7 = a(((br0) it3.next()).a(), str, fs2Var);
                    if (ng2VarA7 != null) {
                        return ng2VarA7;
                    }
                }
            }
            return null;
        }
        if (p41Var instanceof z22) {
            Iterator it4 = ((z22) p41Var).I.iterator();
            while (it4.hasNext()) {
                br0 br0Var = ((y22) it4.next()).c;
                if (br0Var != null && (p41VarA = br0Var.a()) != null && (ng2VarA = a(p41VarA, str, fs2Var)) != null) {
                    return ng2VarA;
                }
            }
        }
        return null;
    }

    public final boolean a(vq0 vq0Var, String str, String str2, fs2 fs2Var) {
        ng2 ng2VarA;
        db1 db1VarQ = vq0Var.q();
        if (db1VarQ == null) {
            return false;
        }
        Iterator it = db1VarQ.c.iterator();
        do {
            if (!it.hasNext()) {
                ng2VarA = null;
                break;
            }
            ng2VarA = a(((cb1) it.next()).a.a(), str, fs2Var);
        } while (ng2VarA == null);
        if (ng2VarA == null) {
            return false;
        }
        Set setEntrySet = this.a.a.entrySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setEntrySet) {
            Map.Entry entry = (Map.Entry) obj;
            if (defpackage.aa4.e(entry.getValue(), ng2VarA) || defpackage.aa4.e(((ng2) entry.getValue()).t, ng2VarA.t)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((mh2) ((Map.Entry) it2.next()).getKey()).j();
        }
        if (((kv1) defpackage.qn1.V(arrayList2)) == null) {
            return false;
        }
        return defpackage.aa4.e(str2, TtmlNode.START) || defpackage.aa4.e(str2, "pause");
    }
}
