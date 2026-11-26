package androidx.compose.foundation.text.selection;

import android.view.MotionEvent;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.core.view.InputDeviceCompat;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionGestures_androidKt {
    private static final SelectionAdjustment FirstLongPressSelectionAdjustment = SelectionAdjustment.Companion.getWord();

    public static final SelectionAdjustment getFirstLongPressSelectionAdjustment() {
        return FirstLongPressSelectionAdjustment;
    }

    public static final boolean isMouseOrTouchPad(PointerEvent pointerEvent) {
        MotionEvent motionEvent;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (!PointerType.m7642equalsimpl0(changes.get(i).m7572getTypeT8wyACA(), PointerType.Companion.m7647getMouseT8wyACA())) {
                MotionEvent motionEvent2 = pointerEvent.getMotionEvent();
                if ((motionEvent2 == null || !motionEvent2.isFromSource(8194)) && ((motionEvent = pointerEvent.getMotionEvent()) == null || !motionEvent.isFromSource(InputDeviceCompat.SOURCE_TOUCHPAD))) {
                    return false;
                }
            }
        }
        return true;
    }
}
