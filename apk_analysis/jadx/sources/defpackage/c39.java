package defpackage;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.datatransport.TransportRegistrar;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c39 implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return TransportRegistrar.lambda$getComponents$2(componentContainer);
    }
}
