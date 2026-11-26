package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpp;
import com.google.android.gms.measurement.internal.zzx;
import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes4.dex */
public final class y0c implements Runnable {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ a1c f;

    public y0c(a1c a1cVar, boolean z, Uri uri, String str, String str2) {
        this.b = z;
        this.c = uri;
        this.d = str;
        this.e = str2;
        this.f = a1cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundleL;
        Bundle bundleL2;
        zzlj zzljVar = this.f.b;
        zzljVar.zzg();
        zzx zzxVar = zzljVar.q;
        String str = this.e;
        Uri uri = this.c;
        try {
            zzic zzicVar = zzljVar.a;
            zzpp zzppVarZzk = zzicVar.zzk();
            if (TextUtils.isEmpty(str)) {
                bundleL = null;
            } else if (str.contains("gclid") || str.contains("gbraid") || str.contains("utm_campaign") || str.contains("utm_source") || str.contains("utm_medium") || str.contains("utm_id") || str.contains("dclid") || str.contains("srsltid") || str.contains("sfmc_id")) {
                bundleL = zzppVarZzk.L(Uri.parse("https://google.com/search?".concat(str)));
                if (bundleL != null) {
                    bundleL.putString("_cis", "referrer");
                }
            } else {
                zzppVarZzk.a.zzaW().zzj().zza("Activity created with data 'referrer' without required params");
                bundleL = null;
            }
            boolean z = this.b;
            String str2 = this.d;
            if (!z || (bundleL2 = zzicVar.zzk().L(uri)) == null) {
                zzicVar = zzicVar;
            } else {
                bundleL2.putString("_cis", "intent");
                if (!bundleL2.containsKey("gclid") && bundleL != null && bundleL.containsKey("gclid")) {
                    bundleL2.putString("_cer", "gclid=" + bundleL.getString("gclid"));
                }
                zzljVar.b(str2, "_cmp", bundleL2);
                zzxVar.a(bundleL2, str2);
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            zzicVar.zzaW().zzj().zzb("Activity created with referrer", str);
            if (zzicVar.zzc().zzp(null, zzfy.zzaG)) {
                if (bundleL != null) {
                    zzljVar.b(str2, "_cmp", bundleL);
                    zzxVar.a(bundleL, str2);
                } else {
                    zzicVar.zzaW().zzj().zzb("Referrer does not contain valid parameters", str);
                }
                zzljVar.zzJ(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", null, true);
                return;
            }
            if (!str.contains("gclid") || (!str.contains("utm_campaign") && !str.contains("utm_source") && !str.contains("utm_medium") && !str.contains(DynamicLink.GoogleAnalyticsParameters.KEY_UTM_TERM) && !str.contains(DynamicLink.GoogleAnalyticsParameters.KEY_UTM_CONTENT))) {
                zzicVar.zzaW().zzj().zza("Activity created with data 'referrer' without required params");
            } else {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                zzljVar.zzJ(TtmlNode.TEXT_EMPHASIS_AUTO, "_ldl", str, true);
            }
        } catch (RuntimeException e) {
            zzljVar.a.zzaW().zzb().zzb("Throwable caught in handleReferrerForOnActivityCreated", e);
        }
    }
}
