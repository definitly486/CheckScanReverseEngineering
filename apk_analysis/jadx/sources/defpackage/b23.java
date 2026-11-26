package defpackage;

import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b23 implements Provider {
    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        return ExecutorsRegistrar.lambda$static$2();
    }
}
