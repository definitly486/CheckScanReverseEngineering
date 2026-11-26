package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzpl;
import com.google.android.gms.internal.measurement.zzpm;

/* JADX INFO: loaded from: classes4.dex */
public final class txb implements ListenerHolder.Notifier {
    public final /* synthetic */ byte[] a;

    public txb(jyb jybVar, byte[] bArr) {
        this.a = bArr;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        zzpm zzpmVar = (zzpm) obj;
        try {
            zzpmVar.zza(zzpl.zzb(this.a, zzadf.zza()));
        } catch (zzaeh e) {
            zzpmVar.zzb(e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
