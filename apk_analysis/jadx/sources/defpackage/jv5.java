package defpackage;

import io.grpc.ManagedChannelProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class jv5 extends ManagedChannelProvider {
    @Override // io.grpc.ManagedChannelProvider
    public final hv5 a(String str) {
        return new hv5(str);
    }

    @Override // io.grpc.ManagedChannelProvider
    public final int b() {
        try {
            Class.forName("android.app.Application", false, jv5.class.getClassLoader());
            return 8;
        } catch (Exception unused) {
            return 3;
        }
    }
}
