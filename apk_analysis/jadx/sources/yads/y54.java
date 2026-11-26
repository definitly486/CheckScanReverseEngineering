package yads;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class y54 {
    public final l34 a;

    public y54(l34 l34Var) {
        this.a = l34Var;
    }

    public final void a(Context context, x54 x54Var, o24 o24Var, Map map) {
        MediatedAdapterInfo mediatedAdapterInfoB;
        if (o24Var != null) {
            map.putAll(g34.a(o24Var));
        }
        this.a.a(context, e75.ADAPTER_BIDDER_TOKEN_REQUEST, x54Var, (o24Var == null || (mediatedAdapterInfoB = o24Var.b()) == null) ? null : mediatedAdapterInfoB.getNetworkName(), map);
    }
}
