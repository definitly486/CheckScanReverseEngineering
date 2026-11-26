package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class rj6 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        Integer numO = queryParameter != null ? qa8.o(10, queryParameter) : null;
        if (numO != null) {
            return new Deeplink.p(numO.intValue());
        }
        return null;
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "goods-offer-detail";
    }
}
