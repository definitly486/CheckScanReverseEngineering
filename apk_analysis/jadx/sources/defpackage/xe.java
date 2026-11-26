package defpackage;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.carousel.CarouselKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.c32;
import yads.cn1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xe implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xe(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableKt.AlwaysDrag$lambda$0((PointerType) obj));
            case 1:
                return CarouselKt.Carousel_cJHQLPU$lambda$16$lambda$15((SemanticsPropertyReceiver) obj);
            case 2:
                return SelectionMagnifierKt.UnspecifiedSafeOffsetVectorConverter$lambda$0((Offset) obj);
            case 3:
                return TimePickerKt.VerticalTimePicker$lambda$9$lambda$8((SemanticsPropertyReceiver) obj);
            case 4:
                return UseCaseUtil.getVideoStabilization$lambda$0((UseCase) obj);
            default:
                return Boolean.valueOf(c32.b((cn1) obj));
        }
    }
}
