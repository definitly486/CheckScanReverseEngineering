package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.internal.measurement.zzrn;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzx;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class sxb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sxb(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                zzx zzxVar = ((zzlj) obj).q;
                zzic zzicVar = zzxVar.a;
                zzicVar.zzaX().zzg();
                if (zzxVar.c()) {
                    if (zzxVar.b()) {
                        zzicVar.zzd().w.zzb(null);
                        Bundle bundle = new Bundle();
                        bundle.putString("source", "(not set)");
                        bundle.putString("medium", "(not set)");
                        bundle.putString("_cis", "intent");
                        bundle.putLong("_cc", 1L);
                        zzicVar.zzj().b(TtmlNode.TEXT_EMPHASIS_AUTO, "_cmpx", bundle);
                    } else {
                        String strZza = zzicVar.zzd().w.zza();
                        if (TextUtils.isEmpty(strZza)) {
                            zzicVar.zzaW().zzc().zza("Cache still valid but referrer not found");
                        } else {
                            long jZza = zzicVar.zzd().x.zza() / 3600000;
                            Uri uri = Uri.parse(strZza);
                            Bundle bundle2 = new Bundle();
                            Pair pair = new Pair(uri.getPath(), bundle2);
                            for (String str : uri.getQueryParameterNames()) {
                                bundle2.putString(str, uri.getQueryParameter(str));
                            }
                            ((Bundle) pair.second).putLong("_cc", (jZza - 1) * 3600000);
                            Object obj2 = pair.first;
                            zzicVar.zzj().b(obj2 == null ? "app" : (String) obj2, "_cmp", (Bundle) pair.second);
                        }
                        zzicVar.zzd().w.zzb(null);
                    }
                    zzicVar.zzd().x.zzb(0L);
                    break;
                }
                break;
            default:
                try {
                    en3.V((ListenableFuture) obj);
                } catch (ExecutionException e) {
                    zzrn.zzb().post(new koa(e, 1));
                }
                break;
        }
    }
}
