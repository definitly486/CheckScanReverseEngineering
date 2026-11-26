package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.remoteconfig.internal.Personalization;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class ma3 implements la3 {
    /* JADX WARN: Code duplicated, block: B:10:0x0053  */
    @Override // defpackage.nl3
    public final Boolean invoke(String str) {
        boolean z;
        String str2 = str;
        str2.getClass();
        if (!ra8.C(str2, "checkscan://", false) && !ra8.C(str2, "https://deeplink.scan.com.ru", false) && !ra8.C(str2, "https://checkscan.page.link", false)) {
            wu6.a.getClass();
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            z = wu6.c(lowerCase).keySet().containsAll(u96.i("t", CmcdData.STREAMING_FORMAT_SS, "fn", "i", Personalization.ANALYTICS_ORIGIN_PERSONALIZATION, "n"));
        }
        return Boolean.valueOf(z);
    }
}
