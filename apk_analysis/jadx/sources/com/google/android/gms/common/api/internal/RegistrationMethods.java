package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.jka;

/* JADX INFO: loaded from: classes4.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {
    public final RegisterListenerMethod<A, L> register;
    public final UnregisterListenerMethod zaa;
    public final Runnable zab;

    public static class Builder<A extends Api.AnyClient, L> {
        public RemoteCall a;
        public RemoteCall b;
        public ListenerHolder d;
        public Feature[] e;
        public int g;
        public Runnable c = jka.c;
        public boolean f = true;

        public RegistrationMethods<A, L> build() {
            Preconditions.checkArgument(this.a != null, "Must set register function");
            Preconditions.checkArgument(this.b != null, "Must set unregister function");
            Preconditions.checkArgument(this.d != null, "Must set holder");
            return new RegistrationMethods<>(new c(this, this.d, this.e, this.f, this.g), new d(this, (ListenerHolder.ListenerKey) Preconditions.checkNotNull(this.d.getListenerKey(), "Key must not be null")), this.c);
        }

        public Builder<A, L> onConnectionSuspended(Runnable runnable) {
            this.c = runnable;
            return this;
        }

        public Builder<A, L> register(RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.a = remoteCall;
            return this;
        }

        public Builder<A, L> setAutoResolveMissingFeatures(boolean z) {
            this.f = z;
            return this;
        }

        public Builder<A, L> setFeatures(Feature... featureArr) {
            this.e = featureArr;
            return this;
        }

        public Builder<A, L> setMethodKey(int i) {
            this.g = i;
            return this;
        }

        public Builder<A, L> unregister(RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.b = remoteCall;
            return this;
        }

        public Builder<A, L> withHolder(ListenerHolder<L> listenerHolder) {
            this.d = listenerHolder;
            return this;
        }
    }

    public /* synthetic */ RegistrationMethods(c cVar, d dVar, Runnable runnable) {
        this.register = cVar;
        this.zaa = dVar;
        this.zab = runnable;
    }

    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        Builder<A, L> builder = new Builder<>();
        builder.c = jka.c;
        builder.f = true;
        return builder;
    }
}
