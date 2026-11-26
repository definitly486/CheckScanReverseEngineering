package defpackage;

import androidx.core.backported.fixes.KnownIssues;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dg4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dg4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws NoSuchMethodException {
        boolean zKI_372917199$lambda$0;
        switch (this.b) {
            case 0:
                zKI_372917199$lambda$0 = KnownIssues.KI_372917199$lambda$0();
                break;
            default:
                zKI_372917199$lambda$0 = SafeActivityEmbeddingComponentProvider.isClassSplitPairRuleValid$lambda$9();
                break;
        }
        return Boolean.valueOf(zKI_372917199$lambda$0);
    }
}
