package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {
    private final Feature[] zaa;
    private final boolean zab;
    private final int zac;

    public static class Builder<A extends Api.AnyClient, ResultT> {
        public RemoteCall a;
        public Feature[] d;
        public boolean b = false;
        public boolean c = false;
        public int e = 0;

        public TaskApiCall<A, ResultT> build() {
            boolean z = true;
            Preconditions.checkArgument(this.a != null, "execute parameter required");
            if (!this.c) {
                Feature[] featureArr = this.d;
                if (featureArr == null || (featureArr.length) == 0) {
                    z = false;
                    break;
                }
                for (Feature feature : featureArr) {
                    if (!feature.getIsFullyRolledOut()) {
                        z = false;
                        break;
                    }
                }
                this.b = z;
            }
            return new e(this, this.d, this.b, this.e);
        }

        @Deprecated
        public Builder<A, ResultT> execute(final BiConsumer<A, TaskCompletionSource<ResultT>> biConsumer) {
            this.a = new RemoteCall() { // from class: mka
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final /* synthetic */ void accept(Object obj, Object obj2) {
                    biConsumer.accept((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        public Builder<A, ResultT> run(RemoteCall<A, TaskCompletionSource<ResultT>> remoteCall) {
            this.a = remoteCall;
            return this;
        }

        public Builder<A, ResultT> setAutoResolveMissingFeatures(boolean z) {
            this.c = true;
            this.b = z;
            return this;
        }

        public Builder<A, ResultT> setFeatures(Feature... featureArr) {
            this.d = featureArr;
            return this;
        }

        public Builder<A, ResultT> setMethodKey(int i) {
            this.e = i;
            return this;
        }
    }

    public TaskApiCall(Feature[] featureArr, boolean z, int i) {
        this.zaa = featureArr;
        boolean z2 = false;
        if (featureArr != null && z) {
            z2 = true;
        }
        this.zab = z2;
        this.zac = i;
    }

    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> builder() {
        Builder<A, ResultT> builder = new Builder<>();
        builder.b = false;
        builder.c = false;
        builder.e = 0;
        return builder;
    }

    public abstract void doExecute(A a, TaskCompletionSource<ResultT> taskCompletionSource);

    public boolean shouldAutoResolveMissingFeatures() {
        return this.zab;
    }

    public final Feature[] zaa() {
        return this.zaa;
    }

    public final int zab() {
        return this.zac;
    }

    @Deprecated
    public TaskApiCall() {
        this.zaa = null;
        this.zab = false;
        this.zac = 0;
    }
}
