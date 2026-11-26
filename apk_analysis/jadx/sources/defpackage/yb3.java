package defpackage;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yb3 implements ComponentFactory {
    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        return FirebaseSessionsRegistrar.getComponents$lambda$0(componentContainer);
    }
}
