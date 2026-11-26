package yads;

import android.content.Context;
import com.monetization.ads.mediation.base.initialize.MediatedAdapterInitializer;

/* JADX INFO: loaded from: classes6.dex */
public final class h34 {
    public final r44 a;

    public h34(r44 r44Var) {
        this.a = r44Var;
    }

    public final MediatedAdapterInitializer a(Context context, x54 x54Var, bf5 bf5Var) {
        n70 n70VarA = this.a.a(x54Var);
        if (n70VarA == null) {
            return null;
        }
        Object objA = new e34(new l34(new e4(n70VarA), bf5Var, null)).a(context, x54Var, com.monetization.ads.mediation.base.a.class);
        if (objA instanceof MediatedAdapterInitializer) {
            return (MediatedAdapterInitializer) objA;
        }
        return null;
    }
}
