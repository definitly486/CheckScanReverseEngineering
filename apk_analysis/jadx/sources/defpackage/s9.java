package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class s9 extends gh4 implements nl3<px5, r31> {
    @Override // defpackage.nl3
    public final r31 invoke(px5 px5Var) {
        px5 px5Var2 = px5Var;
        px5Var2.getClass();
        String strC = px5Var2.c();
        if (strC == null) {
            strC = "";
        }
        String strA = px5Var2.a();
        if (strA == null) {
            strA = "";
        }
        String strB = px5Var2.b();
        return new r31(strC, strA, strB != null ? strB : "");
    }
}
