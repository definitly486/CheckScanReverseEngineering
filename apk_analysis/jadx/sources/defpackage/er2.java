package defpackage;

import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.kz4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class er2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ er2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return NavBackStackEntryImpl.navResultSavedStateFactory_delegate$lambda$10();
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassParentContainerInfoValid$lambda$55());
            default:
                return kz4.Companion.serializer();
        }
    }
}
