package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.service.zak;
import com.google.android.gms.common.internal.service.zat;
import com.google.android.gms.common.internal.service.zau;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class xa5 implements RemoteCall {
    public final Object b;

    public /* synthetic */ xa5(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api api = zat.a;
        ((zak) ((zau) obj).getService()).zae((TelemetryData) this.b);
        ((TaskCompletionSource) obj2).setResult(null);
    }
}
