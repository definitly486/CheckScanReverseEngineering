package defpackage;

import androidx.camera.camera2.impl.ZoomControl;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerState;
import androidx.compose.ui.unit.Density;
import androidx.navigation.NavDeepLink;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import yads.l51;
import yads.za2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class aw4 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ aw4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return LongPressTextDragObserverKt.detectDragGesturesWithObserver$lambda$2((TextDragObserver) obj);
            case 1:
                return MouseWheelScrollingLogic.sumOrNull$lambda$0((x81) obj);
            case 2:
                return ((NavDeepLink) obj).parseQuery();
            case 3:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isMethodWindowLayoutInfoListenerJavaConsumerValid$lambda$2((SafeWindowLayoutComponentProvider) obj));
            case 4:
                return Float.valueOf(SwipeToDismissBoxState._init_$lambda$2((Density) obj));
            case 5:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.onKeyEvent_ZmokQxo$lambda$0((TextFieldDecoratorModifierNode) obj));
            case 6:
                return TimePickerKt.TimeInputImpl$lambda$17$lambda$16((TimePickerState) obj);
            case 7:
                return ZoomControl.defaultZoomState_delegate$lambda$0((ZoomControl) obj);
            case 8:
                return l51.a((l51) obj);
            default:
                return za2.c((za2) obj);
        }
    }
}
