package defpackage;

import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.kk6;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dr2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dr2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return ForgetfulRetainedValuesStore.INSTANCE;
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassEmbeddedActivityWindowInfoValid$lambda$44());
            default:
                return kk6.a();
        }
    }
}
