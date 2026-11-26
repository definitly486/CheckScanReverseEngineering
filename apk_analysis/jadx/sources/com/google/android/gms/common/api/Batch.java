package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class Batch extends BasePendingResult<BatchResult> {
    public int p;
    public boolean q;
    public boolean r;
    public final PendingResult[] s;
    public final Object t;

    public static final class Builder {
        public final ArrayList a = new ArrayList();
        public final GoogleApiClient b;

        public Builder(GoogleApiClient googleApiClient) {
            this.b = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            ArrayList arrayList = this.a;
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(arrayList.size());
            arrayList.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.a, this.b);
        }
    }

    public /* synthetic */ Batch(ArrayList arrayList, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.t = new Object();
        int size = arrayList.size();
        this.p = size;
        PendingResult[] pendingResultArr = new PendingResult[size];
        this.s = pendingResultArr;
        if (arrayList.isEmpty()) {
            setResult(new BatchResult(Status.RESULT_SUCCESS, pendingResultArr));
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            PendingResult pendingResult = (PendingResult) arrayList.get(i);
            this.s[i] = pendingResult;
            pendingResult.addStatusListener(new a(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        int i = 0;
        while (true) {
            PendingResult[] pendingResultArr = this.s;
            if (i >= pendingResultArr.length) {
                return;
            }
            pendingResultArr[i].cancel();
            i++;
        }
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.s);
    }
}
