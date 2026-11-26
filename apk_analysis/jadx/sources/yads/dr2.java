package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dr2 {
    public final f06 a;
    public final int[] b;

    public dr2(int i, f06 f06Var, int[] iArr) {
        if (iArr.length == 0) {
            sv3.b("ETSDefinition", sv3.a("Empty tracks are not allowed", new IllegalArgumentException()));
        }
        this.a = f06Var;
        this.b = iArr;
    }
}
