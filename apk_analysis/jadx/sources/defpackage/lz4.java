package defpackage;

import io.grpc.ManagedChannelProvider;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public final class lz4 implements Comparator<ManagedChannelProvider> {
    @Override // java.util.Comparator
    public final int compare(ManagedChannelProvider managedChannelProvider, ManagedChannelProvider managedChannelProvider2) {
        return managedChannelProvider.b() - managedChannelProvider2.b();
    }
}
