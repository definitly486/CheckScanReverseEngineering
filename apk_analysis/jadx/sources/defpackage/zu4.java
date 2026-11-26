package defpackage;

import com.google.android.gms.auth.api.phone.IncomingCallRetrieverRequest;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.p001authapiphone.zzag;
import com.google.android.gms.internal.p001authapiphone.zzh;
import com.google.android.gms.internal.p001authapiphone.zzp;
import com.google.android.gms.internal.p001authapiphone.zzr;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zu4 implements RemoteCall {
    public final Object b;

    public /* synthetic */ zu4(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        zzag zzagVar = (zzag) obj;
        Logger logger = zzr.a;
        zzagVar.getClass();
        taskCompletionSource.getClass();
        ((zzh) zzagVar.getService()).zzc(new zzp(taskCompletionSource), (IncomingCallRetrieverRequest) this.b);
    }
}
