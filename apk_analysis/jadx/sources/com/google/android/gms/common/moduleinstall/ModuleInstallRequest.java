package com.google.android.gms.common.moduleinstall;

import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ModuleInstallRequest {
    public final List a;
    public final InstallStatusListener b;
    public final Executor c;

    public /* synthetic */ ModuleInstallRequest(ArrayList arrayList, InstallStatusListener installStatusListener, Executor executor) {
        Preconditions.checkNotNull(arrayList, "APIs must not be null.");
        Preconditions.checkArgument(!arrayList.isEmpty(), "APIs must not be empty.");
        if (executor != null) {
            Preconditions.checkNotNull(installStatusListener, "Listener must not be null when listener executor is set.");
        }
        this.a = arrayList;
        this.b = installStatusListener;
        this.c = executor;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public List<OptionalModuleApi> getApis() {
        return this.a;
    }

    public InstallStatusListener getListener() {
        return this.b;
    }

    public Executor getListenerExecutor() {
        return this.c;
    }

    public static class Builder {
        public final ArrayList a = new ArrayList();
        public InstallStatusListener b;
        public Executor c;

        public Builder addApi(OptionalModuleApi optionalModuleApi) {
            this.a.add(optionalModuleApi);
            return this;
        }

        public ModuleInstallRequest build() {
            return new ModuleInstallRequest(this.a, this.b, this.c);
        }

        public Builder setListener(InstallStatusListener installStatusListener) {
            return setListener(installStatusListener, null);
        }

        public Builder setListener(InstallStatusListener installStatusListener, Executor executor) {
            this.b = installStatusListener;
            this.c = executor;
            return this;
        }
    }
}
