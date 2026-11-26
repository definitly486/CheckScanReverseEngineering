package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzao;
import com.google.android.gms.internal.location.zzf;
import com.google.android.gms.internal.location.zzu;
import com.google.android.gms.location.SleepSegmentRequest;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class lm1 implements RemoteCall {
    public final Object b;
    public final Object c;
    public final Object d;

    public /* synthetic */ lm1(Object obj, Object obj2, Object obj3) {
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzu) ((zzf) obj).getService()).zzm((PendingIntent) this.c, (SleepSegmentRequest) this.d, new vsa((zzao) this.b, (TaskCompletionSource) obj2));
    }
}
