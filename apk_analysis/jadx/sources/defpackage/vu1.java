package defpackage;

import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.material3.DateInputKt;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.core.backported.fixes.KnownIssue;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vu1 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ vu1(od6 od6Var) {
        this.b = 4;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return ComputedProvidableCompositionLocal._init_$lambda$0();
            case 1:
                return DateInputKt.DateInputTextField_xJ3Ic0Y$lambda$5$lambda$4();
            case 2:
                return Boolean.valueOf(KnownIssue._init_$lambda$0());
            case 3:
                return j59.a;
            case 4:
                return Executors.newSingleThreadScheduledExecutor(new ce6("PostHogReplayThread"));
            case 5:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetAnimationParamsValid$lambda$48());
            default:
                return SelectionContainerKt.SelectionContainer$lambda$5$0();
        }
    }

    public /* synthetic */ vu1(int i) {
        this.b = i;
    }
}
