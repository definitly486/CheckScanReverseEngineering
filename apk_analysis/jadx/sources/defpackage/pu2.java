package defpackage;

import android.net.Uri;
import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.warefly.checkscan.core.analytics.dynamicLinks.exception.NoUriFoundException;
import io.appmetrica.analytics.AppMetrica;

/* JADX INFO: loaded from: classes.dex */
public final class pu2 extends gh4 implements nl3<PendingDynamicLinkData, j59> {
    public final /* synthetic */ b08<Uri> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pu2(b08<Uri> b08Var) {
        super(1);
        this.f = b08Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(PendingDynamicLinkData pendingDynamicLinkData) {
        Uri link;
        PendingDynamicLinkData pendingDynamicLinkData2 = pendingDynamicLinkData;
        j59 j59Var = null;
        AppMetrica.reportEvent("DynamicLinks", na8.i("\n                        {\n                            \"Firebase\": {\n                                \"pendingDynamicLink\": \"" + (pendingDynamicLinkData2 != null ? pendingDynamicLinkData2.getLink() : null) + "\"\n                            }\n                        }\n                    "));
        b08<Uri> b08Var = this.f;
        if (pendingDynamicLinkData2 != null && (link = pendingDynamicLinkData2.getLink()) != null) {
            b08Var.onSuccess(link);
            j59Var = j59.a;
        }
        if (j59Var == null) {
            b08Var.onError(new NoUriFoundException());
        }
        return j59.a;
    }
}
