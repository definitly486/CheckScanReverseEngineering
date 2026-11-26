package defpackage;

import com.google.firebase.inject.Provider;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yo3 implements Provider {
    public final /* synthetic */ int a;

    public /* synthetic */ yo3(int i) {
        this.a = i;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        switch (this.a) {
            case 0:
                return Executors.newSingleThreadScheduledExecutor();
            default:
                return RemoteConfigComponent.lambda$getFetchHandler$0();
        }
    }
}
