package defpackage;

import android.os.Bundle;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.internal.common.zzd;
import com.google.android.gms.internal.measurement.zzahh;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes4.dex */
public final class pc6 implements ic6, SuccessContinuation, rxa, zzd {
    public static final /* synthetic */ pc6 b = new pc6();
    public static final /* synthetic */ pc6 c = new pc6();

    @Override // defpackage.ic6
    public void a(String str) {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i = Rpc.h;
        return (bundle == null || !bundle.containsKey("google.messenger")) ? Tasks.forResult(bundle) : Tasks.forResult(null);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        return new Boolean(zzahh.zzb());
    }
}
