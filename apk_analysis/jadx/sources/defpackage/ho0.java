package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class ho0 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        Long lQ;
        uri.getClass();
        String queryParameter = uri.getQueryParameter(TtmlNode.ATTR_ID);
        if (queryParameter == null || (lQ = qa8.q(queryParameter)) == null) {
            return null;
        }
        return new Deeplink.Catalog.BonusProgram(lQ.longValue());
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "bonus";
    }
}
