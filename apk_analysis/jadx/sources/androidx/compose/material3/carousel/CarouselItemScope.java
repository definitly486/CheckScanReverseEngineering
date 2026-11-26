package androidx.compose.material3.carousel;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.shape.GenericShape;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;

/* JADX INFO: loaded from: classes2.dex */
public interface CarouselItemScope {
    CarouselItemDrawInfo getCarouselItemDrawInfo();

    Modifier maskBorder(Modifier modifier, BorderStroke borderStroke, Shape shape, Composer composer, int i);

    Modifier maskClip(Modifier modifier, Shape shape, Composer composer, int i);

    GenericShape rememberMaskShape(Shape shape, Composer composer, int i);
}
