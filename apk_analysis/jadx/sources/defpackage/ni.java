package defpackage;

import android.animation.Animator;
import android.view.TextureView;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.AndroidExternalSurface_androidKt;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.material3.ModalWideNavigationRailState;
import androidx.core.animation.AnimatorKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.internal.NavControllerImpl;
import yads.k35;
import yads.l12;
import yads.s11;
import yads.vh0;
import yads.wu1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ni implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ni(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$1$0((TextureView) obj);
            case 1:
                return AnimatorKt.addPauseListener$lambda$1((Animator) obj);
            case 2:
                return FragmentNavigator.attachClearViewModel$lambda$9$lambda$8((CreationExtras) obj);
            case 3:
                return LazyGridStateKt.EmptyLazyGridLayoutInfo$lambda$0(((Integer) obj).intValue());
            case 4:
                return Float.valueOf(ModalWideNavigationRailState.anchoredDraggableState$lambda$0(((Float) obj).floatValue()));
            case 5:
                return Integer.valueOf(NavControllerImpl.launchSingleTopInternal$lambda$47((NavDestination) obj));
            case 6:
                return SuspendAnimationKt.animateTo$lambda$0((AnimationScope) obj);
            case 7:
                return Boolean.valueOf(l12.a(obj));
            case 8:
                return Boolean.valueOf(s11.b(obj));
            case 9:
                return vh0.a((k35) obj);
            default:
                return Boolean.valueOf(wu1.a(obj));
        }
    }
}
