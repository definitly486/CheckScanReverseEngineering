package yads;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ek {
    public final List a;
    public final a4 b;
    public final dh4 c;
    public final l65 d;
    public final we3 e;
    public final ot3 f;
    public final LinkedHashMap g;

    public ek(List list, a4 a4Var, dh4 dh4Var, l65 l65Var, we3 we3Var, ot3 ot3Var) {
        this.a = list;
        this.b = a4Var;
        this.c = dh4Var;
        this.d = l65Var;
        this.e = we3Var;
        this.f = ot3Var;
        int iB = defpackage.m05.b(defpackage.kn1.q(list, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB < 16 ? 16 : iB);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ak akVar = (ak) it.next();
            String str = akVar.a;
            ot3 ot3Var2 = akVar.d;
            if (ot3Var2 == null) {
                ot3Var2 = this.f;
            }
            linkedHashMap.put(str, new kf4(akVar, this.b, this.c, this.d, ot3Var2, this.e));
        }
        this.g = linkedHashMap;
    }
}
