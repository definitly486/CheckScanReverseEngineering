package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridItemProviderKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.compose.material3.ModalWideNavigationRailOverrideScope;
import androidx.compose.runtime.State;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.CancelWorkRunnable;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x21 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x21(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CancelWorkRunnable.forId$lambda$1((WorkManagerImpl) obj2, (UUID) obj);
            case 1:
                return DefaultModalWideNavigationRailOverride.ModalWideNavigationRail$lambda$18$lambda$17((y22) obj2, (ModalWideNavigationRailOverrideScope) obj);
            default:
                return LazyGridItemProviderKt.rememberLazyGridItemProviderLambda$lambda$0$1((State) obj2, (LazyGridState) obj);
        }
    }
}
