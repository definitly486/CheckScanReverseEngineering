package defpackage;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: loaded from: classes4.dex */
public final class uka<R extends Result> extends BasePendingResult<R> {
    public final Result p;

    public uka(Result result, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.p = result;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        return (R) this.p;
    }
}
