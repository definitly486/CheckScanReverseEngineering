package yads;

import com.yandex.mobile.ads.common.AdRequest;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class im6 {
    public final n8 a(AdRequest adRequest) {
        zg5 zg5Var;
        String adUnitId = adRequest.getAdUnitId();
        adRequest.getTargeting();
        adRequest.getTargeting();
        adRequest.getTargeting();
        adRequest.getTargeting();
        adRequest.getTargeting();
        Map<String, String> parameters = adRequest.getParameters() != null ? adRequest.getParameters() : null;
        String biddingData = adRequest.getBiddingData() != null ? adRequest.getBiddingData() : null;
        i85 i85VarA = adRequest.getPreferredTheme() != null ? k85.a(adRequest.getPreferredTheme()) : null;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        zg5Var2.a();
        return new n8(adUnitId, null, null, null, null, null, parameters, biddingData, null, i85VarA, false, null, null);
    }
}
