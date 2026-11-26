package defpackage;

import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rt4 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ rt4(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws NoSuchMethodException {
        boolean zIsMethodIsDraggingToFullscreenAllowedValid$lambda$49;
        switch (this.b) {
            case 0:
                return LocalOnBackPressedDispatcherOwner.LocalOnBackPressedDispatcherOwner$lambda$0();
            case 1:
                zIsMethodIsDraggingToFullscreenAllowedValid$lambda$49 = SafeActivityEmbeddingComponentProvider.isMethodIsDraggingToFullscreenAllowedValid$lambda$49();
                break;
            default:
                zIsMethodIsDraggingToFullscreenAllowedValid$lambda$49 = TopAppBarDefaults.enterAlwaysScrollBehavior$lambda$5$lambda$4();
                break;
        }
        return Boolean.valueOf(zIsMethodIsDraggingToFullscreenAllowedValid$lambda$49);
    }
}
