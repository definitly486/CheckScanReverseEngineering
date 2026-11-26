package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbh;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class jbc implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Bundle d;
    public final /* synthetic */ kbc e;

    public jbc(kbc kbcVar, String str, String str2, Bundle bundle) {
        this.b = str;
        this.c = str2;
        this.d = bundle;
        this.e = kbcVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzpg zzpgVar = this.e.b;
        zzpgVar.c((zzbh) Preconditions.checkNotNull(zzpgVar.zzt().D(this.c, this.d, TtmlNode.TEXT_EMPHASIS_AUTO, zzpgVar.zzba().currentTimeMillis(), zzpgVar.zzd().zzp(null, zzfy.zzbe) ? zzpgVar.zzba().elapsedRealtime() : 0L, false)), this.b);
    }
}
