package io.grpc;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class ManagedChannelRegistry {
    public static final Logger c = Logger.getLogger(ManagedChannelRegistry.class.getName());
    public static ManagedChannelRegistry d;
    public final LinkedHashSet<ManagedChannelProvider> a = new LinkedHashSet<>();
    public List<ManagedChannelProvider> b = Collections.EMPTY_LIST;

    public static final class ProviderNotFoundException extends RuntimeException {
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements p.b<ManagedChannelProvider> {
        @Override // io.grpc.p.b
        public final boolean a(ManagedChannelProvider managedChannelProvider) {
            managedChannelProvider.getClass();
            return true;
        }

        @Override // io.grpc.p.b
        public final int b(ManagedChannelProvider managedChannelProvider) {
            return managedChannelProvider.b();
        }
    }
}
