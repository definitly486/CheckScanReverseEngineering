package defpackage;

import androidx.compose.animation.core.AnimationKt;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import yads.g12;
import yads.tx1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mm implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ mm(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AnimationKt.createAnimation$lambda$1((AnimationVector) obj);
            case 1:
                return FloatingActionButtonKt.FloatingActionButton_lF_WlFE$lambda$3$lambda$2((SemanticsPropertyReceiver) obj);
            case 2:
                return NavControllerImpl.popBackStackInternal$lambda$4((NavBackStackEntry) obj);
            case 3:
                KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpec.KeyframesSpecConfig) obj;
                keyframesSpecConfig.getClass();
                keyframesSpecConfig.setDurationMillis(2000);
                keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(1.0f), 0), EasingKt.getLinearOutSlowInEasing());
                keyframesSpecConfig.using(keyframesSpecConfig.at(Float.valueOf(0.5f), 1000), hp5.a);
                return j59.a;
            case 4:
                return g12.a((String) obj);
            default:
                return tx1.a((String) obj);
        }
    }
}
