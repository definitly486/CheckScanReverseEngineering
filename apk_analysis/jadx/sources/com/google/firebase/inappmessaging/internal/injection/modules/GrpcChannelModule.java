package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import defpackage.jv5;
import defpackage.kz4;
import defpackage.lz4;
import defpackage.y81;
import io.grpc.ManagedChannelProvider;
import io.grpc.ManagedChannelRegistry;
import io.grpc.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
@Module
public class GrpcChannelModule {
    @Provides
    public y81 providesGrpcChannel(String str) {
        ManagedChannelRegistry managedChannelRegistry;
        List<ManagedChannelProvider> list;
        Logger logger = ManagedChannelRegistry.c;
        synchronized (ManagedChannelRegistry.class) {
            try {
                if (ManagedChannelRegistry.d == null) {
                    try {
                        List<ManagedChannelProvider> listA = p.a(ManagedChannelProvider.class, Arrays.asList(new jv5()).iterator(), new kz4(), new ManagedChannelRegistry.a());
                        ManagedChannelRegistry.d = new ManagedChannelRegistry();
                        for (ManagedChannelProvider managedChannelProvider : listA) {
                            ManagedChannelRegistry.c.fine("Service loader found " + managedChannelProvider);
                            ManagedChannelRegistry managedChannelRegistry2 = ManagedChannelRegistry.d;
                            synchronized (managedChannelRegistry2) {
                                managedChannelProvider.getClass();
                                managedChannelRegistry2.a.add(managedChannelProvider);
                            }
                        }
                        ManagedChannelRegistry managedChannelRegistry3 = ManagedChannelRegistry.d;
                        synchronized (managedChannelRegistry3) {
                            ArrayList arrayList = new ArrayList(managedChannelRegistry3.a);
                            Collections.sort(arrayList, Collections.reverseOrder(new lz4()));
                            managedChannelRegistry3.b = Collections.unmodifiableList(arrayList);
                        }
                    } catch (Throwable th) {
                        throw new ServiceConfigurationError(th.getMessage(), th);
                    }
                }
                managedChannelRegistry = ManagedChannelRegistry.d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (managedChannelRegistry) {
            list = managedChannelRegistry.b;
        }
        ManagedChannelProvider managedChannelProvider2 = list.isEmpty() ? null : list.get(0);
        if (managedChannelProvider2 != null) {
            return managedChannelProvider2.a(str).a.a();
        }
        throw new ManagedChannelProvider.ProviderNotFoundException("No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact");
    }

    @Provides
    public String providesServiceHost() {
        return "firebaseinappmessaging.googleapis.com";
    }
}
