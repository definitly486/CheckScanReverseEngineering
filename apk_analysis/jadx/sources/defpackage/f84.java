package defpackage;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import yads.nq0;
import yads.wq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class f84 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ f84(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return IntegrationInspectorActivity.e((IntegrationInspectorActivity) obj);
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodRegisterActivityStackCallbackValid$lambda$30((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return SuspendAnimationKt.animate$lambda$4((AnimationState) obj);
            case 3:
                return nq0.P((nq0) obj);
            default:
                return wq0.a((wq0) obj);
        }
    }
}
