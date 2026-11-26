package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.Annotation;
import yads.kz4;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class kk5 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ kk5(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassActivityStackTokenValid$lambda$36());
            default:
                return e.c("com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResultStatus", kz4.values(), new String[]{FirebaseAnalytics.Param.SUCCESS, "error"}, new Annotation[][]{null, null});
        }
    }
}
