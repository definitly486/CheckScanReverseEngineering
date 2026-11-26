package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e25 {
    public static final float[] i = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] j = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    public static final float[] k = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public int a;
    public d25 b;
    public j73 c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;

    public static boolean a(b25 b25Var) {
        z15 z15Var = b25Var.a;
        z15 z15Var2 = b25Var.b;
        a25[] a25VarArr = z15Var.a;
        if (a25VarArr.length == 1 && a25VarArr[0].a == 0) {
            a25[] a25VarArr2 = z15Var2.a;
            if (a25VarArr2.length == 1 && a25VarArr2[0].a == 0) {
                return true;
            }
        }
        return false;
    }
}
