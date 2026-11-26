package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import com.google.android.gms.common.moduleinstall.internal.zaf;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.common.moduleinstall.internal.zaz;
import com.google.android.gms.internal.measurement.zzao;
import com.google.android.gms.internal.measurement.zzg;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.internal.measurement.zzme;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yla implements RemoteCall, twa, Continuation {
    public final Object b;
    public final Object c;

    public /* synthetic */ yla(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.twa
    public zzg a(zzao zzaoVar) {
        zzg zzgVarZzc = ((zzg) this.b).zzc();
        zzgVarZzc.zzg((String) this.c, zzaoVar);
        return zzgVarZzc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zaf) ((zaz) obj).getService()).zaf(new mla((zay) this.b, (TaskCompletionSource) obj2), (ApiFeatureRequest) this.c, null);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        boolean z = task.getException() instanceof UnsupportedApiCallException;
        zzme zzmeVar = (zzme) this.c;
        zzkk zzkkVar = (zzkk) this.b;
        if (z) {
            return zzkkVar.zzc(zzmeVar.zza());
        }
        if (task.getException() instanceof ApiException) {
            ApiException apiException = (ApiException) task.getException();
            apiException.getClass();
            if (apiException.getStatusCode() == 29514) {
                return zzkkVar.zzc(zzmeVar.zza());
            }
        }
        return task;
    }
}
