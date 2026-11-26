package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vr1 extends defpackage.u0 {
    public final /* synthetic */ wr1 b;

    public vr1(wr1 wr1Var) {
        this.b = wr1Var;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof cn1) {
            return super.contains((cn1) obj);
        }
        return false;
    }

    @Override // defpackage.u0, java.util.List
    public final Object get(int i) {
        wr1 wr1Var = this.b;
        return !wr1Var.r ? (cn1) wr1Var.d().get(i) : (cn1) wr1Var.d().get(this.b.e(i));
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.b.d().size() + (this.b.r ? 4 : 0);
    }

    @Override // defpackage.u0, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof cn1) {
            return super.indexOf((cn1) obj);
        }
        return -1;
    }

    @Override // defpackage.u0, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof cn1) {
            return super.lastIndexOf((cn1) obj);
        }
        return -1;
    }
}
