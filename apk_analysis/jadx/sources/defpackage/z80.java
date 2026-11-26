package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class z80 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Long lQ;
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        return (queryParameter == null || (lQ = qa8.q(queryParameter)) == null) ? Deeplink.CashBackFlow.BankCards.c : new Deeplink.CashBackFlow.BankCardOptions(lQ.longValue());
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "bankcards";
    }
}
