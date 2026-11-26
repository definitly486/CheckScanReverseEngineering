package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.ComposeUiFlags;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerEvent {
    public static final int $stable = 8;
    private final int buttons;
    private final List<PointerInputChange> changes;
    private final int classification;
    private final InternalPointerEvent internalPointerEvent;
    private final int keyboardModifiers;
    private int type;

    public PointerEvent(List<PointerInputChange> list, InternalPointerEvent internalPointerEvent) {
        MotionEvent motionEvent;
        this.changes = list;
        this.internalPointerEvent = internalPointerEvent;
        this.classification = (Build.VERSION.SDK_INT < 29 || (motionEvent = getMotionEvent()) == null) ? 0 : motionEvent.getClassification();
        MotionEvent motionEvent2 = getMotionEvent();
        this.buttons = PointerButtons.m7493constructorimpl(motionEvent2 != null ? motionEvent2.getButtonState() : 0);
        MotionEvent motionEvent3 = getMotionEvent();
        this.keyboardModifiers = PointerKeyboardModifiers.m7633constructorimpl(motionEvent3 != null ? motionEvent3.getMetaState() : 0);
        this.type = m7499calculatePointerEventType7fucELk();
    }

    /* JADX INFO: renamed from: calculatePointerEventType-7fucELk, reason: not valid java name */
    private final int m7499calculatePointerEventType7fucELk() {
        MotionEvent motionEvent = getMotionEvent();
        int i = 0;
        if (motionEvent == null) {
            List<PointerInputChange> list = this.changes;
            int size = list.size();
            while (i < size) {
                PointerInputChange pointerInputChange = list.get(i);
                if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
                    return PointerEventType.Companion.m7520getRelease7fucELk();
                }
                if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
                    return PointerEventType.Companion.m7519getPress7fucELk();
                }
                i++;
            }
            return PointerEventType.Companion.m7515getMove7fucELk();
        }
        int i2 = Build.VERSION.SDK_INT;
        boolean z = i2 >= 29 && motionEvent.getClassification() == 3;
        if (i2 >= 29 && motionEvent.getClassification() == 5) {
            i = 1;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (z && ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
                return PointerEventType.Companion.m7518getPanStart7fucELk();
            }
            return (i == 0 || !ComposeUiFlags.isTrackpadGestureHandlingEnabled) ? PointerEventType.Companion.m7519getPress7fucELk() : PointerEventType.Companion.m7523getScaleStart7fucELk();
        }
        if (actionMasked == 1) {
            if (z && ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
                return PointerEventType.Companion.m7516getPanEnd7fucELk();
            }
            return (i == 0 || !ComposeUiFlags.isTrackpadGestureHandlingEnabled) ? PointerEventType.Companion.m7520getRelease7fucELk() : PointerEventType.Companion.m7522getScaleEnd7fucELk();
        }
        if (actionMasked != 2) {
            switch (actionMasked) {
                case 5:
                    if (z && ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
                        return PointerEventType.Companion.m7518getPanStart7fucELk();
                    }
                    return (i == 0 || !ComposeUiFlags.isTrackpadGestureHandlingEnabled) ? PointerEventType.Companion.m7519getPress7fucELk() : PointerEventType.Companion.m7521getScaleChange7fucELk();
                case 6:
                    if (z && ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
                        return PointerEventType.Companion.m7516getPanEnd7fucELk();
                    }
                    return (i == 0 || !ComposeUiFlags.isTrackpadGestureHandlingEnabled) ? PointerEventType.Companion.m7520getRelease7fucELk() : PointerEventType.Companion.m7521getScaleChange7fucELk();
                case 7:
                    break;
                case 8:
                    return PointerEventType.Companion.m7524getScroll7fucELk();
                case 9:
                    return PointerEventType.Companion.m7513getEnter7fucELk();
                case 10:
                    return PointerEventType.Companion.m7514getExit7fucELk();
                default:
                    return PointerEventType.Companion.m7525getUnknown7fucELk();
            }
        }
        if (z && ComposeUiFlags.isTrackpadGestureHandlingEnabled) {
            return PointerEventType.Companion.m7517getPanMove7fucELk();
        }
        return (i == 0 || !ComposeUiFlags.isTrackpadGestureHandlingEnabled) ? PointerEventType.Companion.m7515getMove7fucELk() : PointerEventType.Companion.m7521getScaleChange7fucELk();
    }

    public final List<PointerInputChange> component1() {
        return this.changes;
    }

    public final PointerEvent copy(List<PointerInputChange> list, MotionEvent motionEvent) {
        if (motionEvent == null) {
            return new PointerEvent(list, null);
        }
        if (motionEvent.equals(getMotionEvent())) {
            return new PointerEvent(list, this.internalPointerEvent);
        }
        LongSparseArray longSparseArray = new LongSparseArray(list.size());
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i = 0;
        while (i < size) {
            PointerInputChange pointerInputChange = list.get(i);
            longSparseArray.put(pointerInputChange.m7566getIdJ3iCeTQ(), pointerInputChange);
            long jM7566getIdJ3iCeTQ = pointerInputChange.m7566getIdJ3iCeTQ();
            long uptimeMillis = pointerInputChange.getUptimeMillis();
            long jM7569getPositionF1C5BW0 = pointerInputChange.m7569getPositionF1C5BW0();
            long jM7569getPositionF1C5BW1 = pointerInputChange.m7569getPositionF1C5BW0();
            boolean pressed = pointerInputChange.getPressed();
            float pressure = pointerInputChange.getPressure();
            int iM7572getTypeT8wyACA = pointerInputChange.m7572getTypeT8wyACA();
            InternalPointerEvent internalPointerEvent = this.internalPointerEvent;
            int i2 = i;
            arrayList.add(new PointerInputEventData(jM7566getIdJ3iCeTQ, uptimeMillis, jM7569getPositionF1C5BW0, jM7569getPositionF1C5BW1, pressed, pressure, iM7572getTypeT8wyACA, internalPointerEvent != null && internalPointerEvent.m7474activeHoverEvent0FcD4WY(pointerInputChange.m7566getIdJ3iCeTQ()), null, 0L, pointerInputChange.getScaleFactor(), pointerInputChange.m7568getPanOffsetF1C5BW0(), 0L, 4864, null));
            i = i2 + 1;
        }
        return new PointerEvent(list, new InternalPointerEvent(longSparseArray, new PointerInputEvent(motionEvent.getEventTime(), arrayList, motionEvent)));
    }

    /* JADX INFO: renamed from: getButtons-ry648PA, reason: not valid java name */
    public final int m7500getButtonsry648PA() {
        return this.buttons;
    }

    public final List<PointerInputChange> getChanges() {
        return this.changes;
    }

    public final int getClassification() {
        return this.classification;
    }

    public final InternalPointerEvent getInternalPointerEvent$ui() {
        return this.internalPointerEvent;
    }

    /* JADX INFO: renamed from: getKeyboardModifiers-k7X9c1A, reason: not valid java name */
    public final int m7501getKeyboardModifiersk7X9c1A() {
        return this.keyboardModifiers;
    }

    public final MotionEvent getMotionEvent() {
        InternalPointerEvent internalPointerEvent = this.internalPointerEvent;
        if (internalPointerEvent != null) {
            return internalPointerEvent.getMotionEvent();
        }
        return null;
    }

    /* JADX INFO: renamed from: getType-7fucELk, reason: not valid java name */
    public final int m7502getType7fucELk() {
        return this.type;
    }

    /* JADX INFO: renamed from: setType-EhbLWgg$ui, reason: not valid java name */
    public final void m7503setTypeEhbLWgg$ui(int i) {
        this.type = i;
    }

    public PointerEvent(List<PointerInputChange> list) {
        this(list, null);
    }
}
