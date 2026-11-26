package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class nd1 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Integer numO;
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        return (queryParameter == null || (numO = qa8.o(10, queryParameter)) == null) ? Deeplink.CashBackFlow.Operations.c : new Deeplink.CashBackFlow.ChequePage(numO.intValue());
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "receipts";
    }
}
