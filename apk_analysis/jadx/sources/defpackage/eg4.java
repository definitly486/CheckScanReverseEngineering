package defpackage;

import androidx.core.backported.fixes.KnownIssues;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import java.util.UUID;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eg4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ eg4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws NoSuchMethodException {
        boolean zKI_398591036$lambda$0;
        switch (this.b) {
            case 0:
                zKI_398591036$lambda$0 = KnownIssues.KI_398591036$lambda$0();
                break;
            case 1:
                return UUID.randomUUID();
            case 2:
                zKI_398591036$lambda$0 = SafeActivityEmbeddingComponentProvider.isMethodGetSplitAttributesValid$lambda$16();
                break;
            default:
                return nq0.f();
        }
        return Boolean.valueOf(zKI_398591036$lambda$0);
    }
}
