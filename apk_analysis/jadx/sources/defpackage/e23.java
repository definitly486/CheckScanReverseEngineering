package defpackage;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.concurrent.ExecutorsRegistrar;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e23 implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return ExecutorsRegistrar.lambda$getComponents$5(componentContainer);
    }
}
