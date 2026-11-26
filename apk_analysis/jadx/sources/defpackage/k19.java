package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class k19 implements he2 {
    public final jf6 a;

    public k19(jf6 jf6Var) {
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
        return (Boolean.parseBoolean(uri.getQueryParameter("passAnon")) || this.a.G0()) ? new Deeplink.CashBackFlow.TransferShowcasePromocodes(numO.intValue()) : new Deeplink.w(null, uri.toString(), null, 5);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "transfer-promocodes";
    }
}
