package defpackage;

import androidx.compose.runtime.retain.ManagedRetainedValuesStoreKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gg0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oz4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ oz4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return ManagedRetainedValuesStoreKt.retainManagedRetainedValuesStore$lambda$0$0();
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitTypeValid$lambda$23());
            default:
                return gg0.c();
        }
    }
}
