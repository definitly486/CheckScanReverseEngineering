package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class pg5 implements p03 {
    public final bf5 a;
    public final Context b;

    public pg5(Context context, bf5 bf5Var) {
        this.a = bf5Var;
        this.b = w60.a(context);
    }

    @Override // yads.p03
    public final o03 a(ip3 ip3Var, dp dpVar) {
        return new sg5(this.b, ip3Var, dpVar, this.a);
    }

    @Override // yads.p03
    public final o03 a(dh dhVar, dp dpVar) {
        return new sg5(this.b, dhVar, dpVar, this.a);
    }

    @Override // yads.p03
    public final o03 a(ea5 ea5Var, dp dpVar) {
        return new vg5(this.b, ea5Var, dpVar, this.a);
    }
}
