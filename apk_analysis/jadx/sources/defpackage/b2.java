package defpackage;

import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.concurrent.ExecutorsRegistrar;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b2 implements ComponentFactory {
    public final /* synthetic */ int a;

    public /* synthetic */ b2(int i) {
        this.a = i;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        switch (this.a) {
            case 0:
                return AbtRegistrar.lambda$getComponents$0(componentContainer);
            default:
                return ExecutorsRegistrar.lambda$getComponents$6(componentContainer);
        }
    }
}
