package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureKt;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class am4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ am4(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$7((LazyGridMeasuredLineProvider) obj3, (LazyGridMeasuredItemProvider) obj2, ((Integer) obj).intValue());
            case 1:
                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$23$lambda$22((SheetState) obj3, (Animatable) obj2, (GraphicsLayerScope) obj);
            case 2:
                return TextFieldSelectionManager_androidKt.textFieldMagnifier$lambda$0$4$0((Density) obj3, (MutableState) obj2, (ll3) obj);
            default:
                return TransitionKt.createDeferredAnimation$lambda$1$0((Transition) obj3, (Transition.DeferredAnimation) obj2, (DisposableEffectScope) obj);
        }
    }
}
