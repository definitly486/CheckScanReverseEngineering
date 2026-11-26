package defpackage;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material3.carousel.CarouselKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.d82;
import yads.my1;
import yads.t52;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ye implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ye(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Float.valueOf(AnchoredDraggableKt.GetOrNan$lambda$0(((Integer) obj).intValue()));
            case 1:
                return CarouselKt.Carousel_cJHQLPU$lambda$18$lambda$17((SemanticsPropertyReceiver) obj);
            case 2:
                return SelectionMagnifierKt.UnspecifiedSafeOffsetVectorConverter$lambda$1((AnimationVector2D) obj);
            case 3:
                return d82.a((String) obj);
            default:
                return my1.a((t52) obj);
        }
    }
}
