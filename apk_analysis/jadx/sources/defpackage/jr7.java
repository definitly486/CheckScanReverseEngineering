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
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class jr7 implements RemoteCall, js {
    public final Object b;

    public jr7() {
        this.b = new ArrayList(9);
    }

    public void a(Object obj) {
        ArrayList arrayList = (ArrayList) this.b;
        if (obj != null) {
            arrayList.add(obj);
        } else {
            o2.d("Set contributions cannot be null");
        }
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api api = zzao.zzb;
        jua juaVar = new jua((TaskCompletionSource) obj2);
        Preconditions.checkNotNull(juaVar, "ResultHolder not provided.");
        ((zzu) ((zzf) obj).getService()).zzk((PendingIntent) this.b, new StatusCallback(juaVar));
    }

    @Override // defpackage.js
    public /* synthetic */ ListenableFuture call() {
        return (ListenableFuture) this.b;
    }

    public /* synthetic */ jr7(Object obj) {
        this.b = obj;
    }
}
