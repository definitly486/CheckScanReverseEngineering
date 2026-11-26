package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class pj0 extends zn5 {
    @Override // defpackage.zn5
    public final zn5 c() {
        return (pj0) this.a;
    }

    @Override // defpackage.zn5
    public final void d(zn5 zn5Var) {
        if (zn5Var instanceof pj0) {
            this.a = zn5Var;
        } else {
            fg.c("Parent of block must also be block (can not be inline)");
        }
    }
}
