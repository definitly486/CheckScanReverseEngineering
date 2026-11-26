package defpackage;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzoc;

/* JADX INFO: loaded from: classes4.dex */
public final class f9c {
    public final /* synthetic */ zzoc a;

    public f9c(zzoc zzocVar) {
        this.a = zzocVar;
    }

    public final void a() {
        zzoc zzocVar = this.a;
        zzocVar.zzg();
        zzic zzicVar = zzocVar.a;
        if (zzicVar.zzd().i(zzicVar.zzba().currentTimeMillis())) {
            zzicVar.zzd().l.zzb(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                zzicVar.zzaW().zzk().zza("Detected application was in foreground");
                c(zzicVar.zzba().currentTimeMillis(), zzicVar.zzc().zzp(null, zzfy.zzbe) ? zzicVar.zzba().elapsedRealtime() : 0L);
            }
        }
    }

    public final void b(long j, long j2) {
        zzoc zzocVar = this.a;
        zzocVar.zzg();
        zzocVar.b();
        zzic zzicVar = zzocVar.a;
        if (zzicVar.zzd().i(j)) {
            zzicVar.zzd().l.zzb(true);
            zzicVar.zzv().c();
        }
        zzicVar.zzd().p.zzb(j);
        if (zzicVar.zzd().l.zza()) {
            c(j, j2);
        }
    }

    public final void c(long j, long j2) {
        zzoc zzocVar = this.a;
        zzocVar.zzg();
        zzic zzicVar = zzocVar.a;
        if (zzicVar.zzB()) {
            zzicVar.zzd().p.zzb(j);
            zzicVar.zzaW().zzk().zzb("Session started, time", Long.valueOf(zzicVar.zzba().elapsedRealtime()));
            long j3 = j / 1000;
            zzicVar.zzj().e(j, Long.valueOf(j3), TtmlNode.TEXT_EMPHASIS_AUTO, "_sid");
            zzicVar.zzd().q.zzb(j3);
            zzicVar.zzd().l.zzb(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j3);
            zzicVar.zzj().c(TtmlNode.TEXT_EMPHASIS_AUTO, "_s", bundle, j, j2);
            String strZza = zzicVar.zzd().v.zza();
            if (TextUtils.isEmpty(strZza)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strZza);
            zzicVar.zzj().c(TtmlNode.TEXT_EMPHASIS_AUTO, "_ssr", bundle2, j, j2);
        }
    }
}
