package defpackage;

import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ar2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ar2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() throws NoSuchMethodException {
        boolean zIsActivityStackGetActivityStackTokenValid$lambda$29;
        switch (this.b) {
            case 0:
                return j59.a;
            case 1:
                return LocalNavigationEventDispatcherOwner.LocalNavigationEventDispatcherOwner$lambda$0();
            case 2:
                return MaterialThemeKt._localMotionScheme$lambda$5();
            case 3:
                zIsActivityStackGetActivityStackTokenValid$lambda$29 = SafeActivityEmbeddingComponentProvider.isActivityStackGetActivityStackTokenValid$lambda$29();
                break;
            default:
                zIsActivityStackGetActivityStackTokenValid$lambda$29 = TopAppBarDefaults.pinnedScrollBehavior$lambda$2$lambda$1();
                break;
        }
        return Boolean.valueOf(zIsActivityStackGetActivityStackTokenValid$lambda$29);
    }
}
