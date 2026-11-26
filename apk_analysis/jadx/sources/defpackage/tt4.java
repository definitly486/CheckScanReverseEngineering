package defpackage;

import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tt4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ tt4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner$lambda$3$lambda$2();
            case 1:
                return NavBackStackEntryImpl.defaultFactory_delegate$lambda$0();
            default:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitPlaceholderRuleBuilderLevel2Valid$lambda$25());
        }
    }
}
