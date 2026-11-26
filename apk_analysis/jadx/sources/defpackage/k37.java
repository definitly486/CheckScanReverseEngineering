package defpackage;

import android.net.Uri;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.remoteconfig.internal.Personalization;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class k37 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        String str = "";
        for (String str2 : u96.i("t", CmcdData.STREAMING_FORMAT_SS, "fn", "i", Personalization.ANALYTICS_ORIGIN_PERSONALIZATION, "n")) {
            String queryParameter = uri.getQueryParameter(str2);
            if (queryParameter == null) {
                return null;
            }
            str = ((Object) str) + str2 + "=" + queryParameter + "&";
        }
        int length = str.length() - 1;
        if (length < 0) {
            length = 0;
        }
        return new Deeplink.t(ua8.l0(length, str));
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "request";
    }
}
