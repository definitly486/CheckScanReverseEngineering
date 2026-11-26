package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class j90 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        if (uri.getQueryParameter(TtmlNode.ATTR_ID) != null) {
            return new Deeplink.Desktop.Balance(false);
        }
        return null;
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "bankcard-status";
    }
}
