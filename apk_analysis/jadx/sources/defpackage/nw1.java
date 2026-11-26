package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusCallback;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzao;
import com.google.android.gms.internal.location.zzf;
import com.google.android.gms.internal.location.zzu;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class nw1 implements RemoteCall {
    public final Object b;

    public nw1() {
        TimeUnit.MINUTES.getClass();
        this.b = new py6(ho8.h);
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api api = zzao.zzb;
        jua juaVar = new jua((TaskCompletionSource) obj2);
        PendingIntent pendingIntent = (PendingIntent) this.b;
        Preconditions.checkNotNull(pendingIntent, "PendingIntent must be specified.");
        Preconditions.checkNotNull(juaVar, "ResultHolder not provided.");
        ((zzu) ((zzf) obj).getService()).zzn(pendingIntent, new StatusCallback(juaVar));
    }

    public /* synthetic */ nw1(PendingIntent pendingIntent) {
        this.b = pendingIntent;
    }
}
