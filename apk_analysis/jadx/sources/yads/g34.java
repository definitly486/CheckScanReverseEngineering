package yads;

import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class g34 {
    public static Map a(o24 o24Var) {
        MediatedAdapterInfo mediatedAdapterInfoB = o24Var.b();
        String adapterVersion = mediatedAdapterInfoB.getAdapterVersion();
        if (adapterVersion == null) {
            adapterVersion = "null";
        }
        defpackage.b36 b36Var = new defpackage.b36("mediation_adapter_version", adapterVersion);
        String networkName = mediatedAdapterInfoB.getNetworkName();
        if (networkName == null) {
            networkName = "null";
        }
        defpackage.b36 b36Var2 = new defpackage.b36("mediation_network_name", networkName);
        String networkSdkVersion = mediatedAdapterInfoB.getNetworkSdkVersion();
        return defpackage.n05.e(b36Var, b36Var2, new defpackage.b36("mediation_network_sdk_version", networkSdkVersion != null ? networkSdkVersion : "null"));
    }
}
