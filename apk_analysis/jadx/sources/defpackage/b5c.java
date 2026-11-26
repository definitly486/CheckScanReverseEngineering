package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.internal.measurement.zzmk;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b5c implements ks {
    public static final /* synthetic */ b5c a = new b5c();

    @Override // defpackage.ks
    public final /* synthetic */ ListenableFuture apply(Object obj) {
        ApiException apiException = (ApiException) obj;
        throw new zzmk(apiException.getStatusCode(), apiException.getMessage(), apiException);
    }
}
