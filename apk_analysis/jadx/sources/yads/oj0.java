package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class oj0 {
    public final mm[] a;
    public final lk5 b;
    public final po5 c;

    public oj0(mm... mmVarArr) {
        lk5 lk5Var = new lk5();
        po5 po5Var = new po5();
        mm[] mmVarArr2 = new mm[mmVarArr.length + 2];
        this.a = mmVarArr2;
        System.arraycopy(mmVarArr, 0, mmVarArr2, 0, mmVarArr.length);
        this.b = lk5Var;
        this.c = po5Var;
        mmVarArr2[mmVarArr.length] = lk5Var;
        mmVarArr2[mmVarArr.length + 1] = po5Var;
    }
}
