package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public class BaseImplementation {

    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {
        public final Api.AnyClientKey<A> p;
        public final Api<?> q;

        public ApiMethodImpl(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, "GoogleApiClient must not be null"));
            Preconditions.checkNotNull(api, "Api must not be null");
            this.p = api.zac();
            this.q = api;
        }

        public abstract void c(A a);

        public final Api<?> getApi() {
            return this.q;
        }

        public final Api.AnyClientKey<A> getClientKey() {
            return this.p;
        }

        public final void run(A a) throws DeadObjectException {
            try {
                c(a);
            } catch (DeadObjectException e) {
                setFailedResult(new Status(8, e.getLocalizedMessage(), (PendingIntent) null));
                throw e;
            } catch (RemoteException e2) {
                setFailedResult(new Status(8, e2.getLocalizedMessage(), (PendingIntent) null));
            }
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        public final void setFailedResult(Status status) {
            Preconditions.checkArgument(!status.isSuccess(), "Failed result must not be success");
            setResult((Result) createFailedResult(status));
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        public /* bridge */ /* synthetic */ void setResult(Object obj) {
            setResult((Result) obj);
        }
    }

    public interface ResultHolder<R> {
        void setFailedResult(Status status);

        void setResult(R r);
    }
}
