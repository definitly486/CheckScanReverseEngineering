package defpackage;

import androidx.compose.animation.BoundsTransform;
import androidx.compose.animation.SharedBoundsNode;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ws7 implements BoundsTransform {
    @Override // androidx.compose.animation.BoundsTransform
    public final FiniteAnimationSpec createAnimationSpec(Rect rect, Rect rect2) {
        return SharedBoundsNode.approachPlaceMatchInTransition$lambda$1(rect, rect2);
    }
}
