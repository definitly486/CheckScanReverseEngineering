package defpackage;

import androidx.compose.animation.BoundsTransform;
import androidx.compose.animation.SharedTransitionDefaults;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bu7 implements BoundsTransform {
    @Override // androidx.compose.animation.BoundsTransform
    public final FiniteAnimationSpec createAnimationSpec(Rect rect, Rect rect2) {
        return SharedTransitionDefaults.BoundsTransform$lambda$0(rect, rect2);
    }
}
