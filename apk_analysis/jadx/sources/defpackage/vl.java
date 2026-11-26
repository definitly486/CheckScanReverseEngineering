package defpackage;

import androidx.compose.animation.AnimateBoundsModifierKt;
import androidx.compose.animation.BoundsTransform;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vl implements BoundsTransform {
    @Override // androidx.compose.animation.BoundsTransform
    public final FiniteAnimationSpec createAnimationSpec(Rect rect, Rect rect2) {
        return AnimateBoundsModifierKt.DefaultBoundsTransform$lambda$0(rect, rect2);
    }
}
