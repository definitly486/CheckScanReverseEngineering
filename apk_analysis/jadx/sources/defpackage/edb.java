package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzfx;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzgb;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznl;
import com.google.android.gms.measurement.internal.zzr;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.mlkit.common.MlKitException;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class edb implements Runnable {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ edb(Callable callable, TaskCompletionSource taskCompletionSource) {
        this.c = callable;
        this.d = taskCompletionSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                try {
                    taskCompletionSource.setResult(((Callable) obj).call());
                } catch (MlKitException e) {
                    taskCompletionSource.setException(e);
                    return;
                } catch (Exception e2) {
                    taskCompletionSource.setException(new MlKitException("Internal error has occurred when executing ML Kit tasks", e2));
                    return;
                }
                break;
            default:
                zznl zznlVar = (zznl) obj2;
                zzgb zzgbVar = zznlVar.d;
                zzic zzicVar = zznlVar.a;
                if (zzgbVar == null) {
                    u4.e(zzicVar, "Discarding data. Failed to send app launch");
                } else {
                    try {
                        zzr zzrVar = (zzr) obj;
                        Preconditions.checkNotNull(zzrVar);
                        zzal zzalVarZzc = zzicVar.zzc();
                        zzfx zzfxVar = zzfy.zzaW;
                        if (zzalVarZzc.zzp(null, zzfxVar)) {
                            zznlVar.k(zzgbVar, null, zzrVar);
                        }
                        zzgbVar.zzg(zzrVar);
                        zzicVar.zzm().zzo();
                        zzicVar.zzc().zzp(null, zzfxVar);
                        zznlVar.k(zzgbVar, null, zzrVar);
                        zznlVar.g();
                    } catch (RemoteException e3) {
                        zzicVar.zzaW().zzb().zzb("Failed to send app launch to the service", e3);
                    }
                }
                break;
        }
    }

    public edb(zznl zznlVar, zzr zzrVar) {
        this.c = zzrVar;
        this.d = zznlVar;
    }
}
