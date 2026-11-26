package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class j19 implements he2 {
    public final jf6 a;

    public j19(jf6 jf6Var) {
        this.a = jf6Var;
    }

    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Integer numO;
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        if (queryParameter == null || (numO = qa8.o(10, queryParameter)) == null) {
            return null;
        }
        int iIntValue = numO.intValue();
        String queryParameter2 = uri.getQueryParameter("onboardingKey");
        boolean z = Boolean.parseBoolean(uri.getQueryParameter("passAnon"));
        String queryParameter3 = uri.getQueryParameter("taskId");
        Integer numO2 = queryParameter3 != null ? qa8.o(10, queryParameter3) : null;
        String queryParameter4 = uri.getQueryParameter("source");
        String queryParameter5 = uri.getQueryParameter("source_task_id");
        return (z || this.a.G0()) ? new Deeplink.CashBackFlow.TransferShowcasePromos(iIntValue, queryParameter2, numO2, queryParameter4, queryParameter5 != null ? qa8.o(10, queryParameter5) : null) : new Deeplink.w(null, uri.toString(), null, 5);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "transfer-showcase-promo";
    }
}
