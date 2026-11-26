package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e50 implements wx3 {
    public final vx3 a = new vx3();
    public final wx3[] b;

    public e50(wx3... wx3VarArr) {
        this.b = wx3VarArr;
    }

    @Override // yads.wx3
    public final vx3 a(int i, int i2) {
        wx3[] wx3VarArr = this.b;
        int length = wx3VarArr.length;
        int i3 = 0;
        while (i3 < length) {
            vx3 vx3VarA = wx3VarArr[i3].a(i, i2);
            int i4 = vx3VarA.a;
            i3++;
            i2 = vx3VarA.b;
            i = i4;
        }
        vx3 vx3Var = this.a;
        vx3Var.a = i;
        vx3Var.b = i2;
        return vx3Var;
    }
}
