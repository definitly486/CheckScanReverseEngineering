package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xxb implements Runnable {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xxb(ibc ibcVar, IBinder iBinder) {
        this.c = ibcVar;
        this.d = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                IBinder iBinder = (IBinder) this.d;
                ibc ibcVar = (ibc) this.c;
                synchronized (ibcVar) {
                    if (iBinder == null) {
                        ibcVar.b("Null service connection");
                    } else {
                        try {
                            ibcVar.d = new hcc(iBinder);
                            ibcVar.b = 2;
                            ibcVar.g.b.execute(new f1c(ibcVar));
                        } catch (RemoteException e) {
                            ibcVar.b(e.getMessage());
                        }
                    }
                }
                return;
            default:
                zznl zznlVar = (zznl) this.d;
                zzic zzicVar = zznlVar.a;
                zzgb zzgbVar = zznlVar.d;
                if (zzgbVar == null) {
                    xp.h(zzicVar, "Failed to send app backgrounded");
                    return;
                }
                try {
                    zzr zzrVar = (zzr) this.c;
                    Preconditions.checkNotNull(zzrVar);
                    zzgbVar.zzA(zzrVar);
                    zznlVar.g();
                    return;
                } catch (RemoteException e2) {
                    zzicVar.zzaW().zzb().zzb("Failed to send app backgrounded to the service", e2);
                    return;
                }
        }
    }

    public xxb(zznl zznlVar, zzr zzrVar) {
        this.c = zzrVar;
        this.d = zznlVar;
    }
}
