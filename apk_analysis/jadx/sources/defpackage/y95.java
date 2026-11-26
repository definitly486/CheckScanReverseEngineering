package defpackage;

import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class y95 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Integer numO;
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        return new Deeplink.Desktop.Brandlink((queryParameter == null || (numO = qa8.o(10, queryParameter)) == null) ? 1 : numO.intValue(), uri.getQueryParameter("tab"), uri.getQueryParameter(TypedValues.AttributesType.S_TARGET), uri.getQueryParameter("campaignCode"), new String(), new String(), false, false);
    }

    @Override // defpackage.he2
    public final String b() {
        return "merchandise";
    }

    @Override // defpackage.he2
    public final String c() {
        return "brandlink";
    }
}
