package defpackage;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcs;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzjk;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;

/* JADX INFO: loaded from: classes4.dex */
public final class n8b implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ n8b(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj2;
        this.d = obj;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0068  */
    /* JADX WARN: Code duplicated, block: B:36:0x0074 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() {
        Long lValueOf;
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ndb ndbVar = (ndb) obj;
                lgc lgcVar = ndbVar.d;
                try {
                    Task task = (Task) ndbVar.c.then((Task) obj2);
                    if (task != null) {
                        bec becVar = TaskExecutors.a;
                        task.addOnSuccessListener(becVar, ndbVar);
                        task.addOnFailureListener(becVar, ndbVar);
                        task.addOnCanceledListener(becVar, ndbVar);
                    } else {
                        ndbVar.onFailure(new NullPointerException("Continuation returned null"));
                    }
                    break;
                } catch (RuntimeExecutionException e) {
                    if (e.getCause() instanceof Exception) {
                        lgcVar.c((Exception) e.getCause());
                        return;
                    } else {
                        lgcVar.c(e);
                        return;
                    }
                } catch (Exception e2) {
                    lgcVar.c(e2);
                    return;
                }
                break;
            default:
                zzcs zzcsVar = (zzcs) obj2;
                zzic zzicVar = ((zzlj) obj).a;
                zzic zzicVar2 = zzicVar.zzh().a;
                if (zzicVar2.zzd().g().zzo(zzjk.ANALYTICS_STORAGE)) {
                    if (!zzicVar2.zzd().i(zzicVar2.zzba().currentTimeMillis()) && zzicVar2.zzd().q.zza() != 0) {
                        lValueOf = Long.valueOf(zzicVar2.zzd().q.zza());
                    }
                    if (lValueOf == null) {
                        zzicVar.zzk().zzap(zzcsVar, lValueOf.longValue());
                    } else {
                        try {
                            zzcsVar.zzb(null);
                        } catch (RemoteException e3) {
                            zzicVar.zzaW().zzb().zzb("getSessionId failed with exception", e3);
                        }
                    }
                } else {
                    zzicVar2.zzaW().zzh().zza("Analytics storage consent denied; will not get session id");
                }
                lValueOf = null;
                if (lValueOf == null) {
                    zzcsVar.zzb(null);
                } else {
                    zzicVar.zzk().zzap(zzcsVar, lValueOf.longValue());
                }
                break;
        }
    }
}
