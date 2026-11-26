package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzpg;

/* JADX INFO: loaded from: classes4.dex */
public final class mmb extends BroadcastReceiver {
    public final zzpg a;
    public boolean b;
    public boolean c;

    public mmb(zzpg zzpgVar) {
        Preconditions.checkNotNull(zzpgVar);
        this.a = zzpgVar;
    }

    public final void a() {
        zzpg zzpgVar = this.a;
        zzpgVar.Z();
        zzpgVar.zzaX().zzg();
        zzpgVar.zzaX().zzg();
        if (this.b) {
            zzpgVar.zzaW().zzk().zza("Unregistering connectivity change receiver");
            this.b = false;
            this.c = false;
            try {
                zzpgVar.zzaZ().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                zzpgVar.zzaW().zzb().zzb("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzpg zzpgVar = this.a;
        zzpgVar.Z();
        String action = intent.getAction();
        zzpgVar.zzaW().zzk().zzb("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            zzpgVar.zzaW().zze().zzb("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean zZzb = zzpgVar.zzi().zzb();
        if (this.c != zZzb) {
            this.c = zZzb;
            zzpgVar.zzaX().zzj(new imb(this, zZzb));
        }
    }
}
