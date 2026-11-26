package defpackage;

import android.os.Looper;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* JADX INFO: loaded from: classes4.dex */
public final class eka<R extends Result> extends BasePendingResult<R> {
    public final Result p;

    public eka(Result result) {
        super(Looper.getMainLooper());
        this.p = result;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        int statusCode = status.getStatusCode();
        R r = (R) this.p;
        if (statusCode == r.getStatus().getStatusCode()) {
            return r;
        }
        n1.e("Creating failed results is not supported");
        return null;
    }
}
