package defpackage;

import android.os.Bundle;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzoc;
import com.google.android.gms.measurement.internal.zzpp;

/* JADX INFO: loaded from: classes4.dex */
public final class c9c {
    public long a;
    public long b;
    public final q8c c;
    public final /* synthetic */ zzoc d;

    public c9c(zzoc zzocVar) {
        this.d = zzocVar;
        zzic zzicVar = zzocVar.a;
        this.c = new q8c(this, zzicVar);
        long jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
        this.a = jElapsedRealtime;
        this.b = jElapsedRealtime;
    }

    public final boolean a(long j, boolean z, boolean z2) {
        zzoc zzocVar = this.d;
        zzocVar.zzg();
        zzocVar.a();
        zzic zzicVar = zzocVar.a;
        if (zzicVar.zzB()) {
            zzicVar.zzd().p.zzb(zzicVar.zzba().currentTimeMillis());
        }
        long j2 = j - this.a;
        if (!z && j2 < 1000) {
            zzicVar.zzaW().zzk().zzb("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        if (!z2) {
            j2 = j - this.b;
            this.b = j;
        }
        zzicVar.zzaW().zzk().zzb("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        zzpp.zzay(zzicVar.zzs().zzh(!zzicVar.zzc().zzv()), bundle, true);
        if (!z2) {
            zzicVar.zzj().b(TtmlNode.TEXT_EMPHASIS_AUTO, "_e", bundle);
        }
        this.a = j;
        q8c q8cVar = this.c;
        q8cVar.c();
        q8cVar.b(((Long) zzfy.zzap.zzb(null)).longValue());
        return true;
    }
}
