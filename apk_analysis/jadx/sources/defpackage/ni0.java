package defpackage;

import com.android.billingclient.api.BillingResult;
import com.yandex.mobile.ads.common.InitializationListener;
import java.util.List;
import yads.e92;
import yads.gl1;
import yads.hs1;
import yads.l66;
import yads.st3;
import yads.vg2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ni0 implements InitializationListener, xl3, st3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ ni0(int i) {
        this.b = i;
    }

    public static BillingResult b(int i, String str) {
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.setResponseCode(i);
        builderNewBuilder.setDebugMessage(str);
        return builderNewBuilder.build();
    }

    public static String c(String str, String str2) {
        return str + str2;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 5:
                return gl1.g(l.longValue());
            case 6:
                return hs1.b(l.longValue());
            default:
                return vg2.a(l.longValue());
        }
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((i21) obj).getCampaignId();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return e92.a(list);
    }
}
