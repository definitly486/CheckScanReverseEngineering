package defpackage;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.dynamiclinks.internal.FirebaseDynamicLinkRegistrar;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ya3 implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return FirebaseDynamicLinkRegistrar.lambda$getComponents$0(componentContainer);
    }
}
