package yads;

import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public final class l54 {
    public final k96 a;

    public l54(k96 k96Var) {
        this.a = k96Var;
    }

    public final boolean a(String str, String str2) {
        if (str2 == null || ta8.M(str2)) {
            return true;
        }
        this.a.getClass();
        j96 j96VarA = k96.a(str);
        if (j96VarA == null) {
            return true;
        }
        this.a.getClass();
        j96 j96VarA2 = k96.a(str2);
        return j96VarA2 == null || j96VarA.compareTo(j96VarA2) >= 0;
    }
}
