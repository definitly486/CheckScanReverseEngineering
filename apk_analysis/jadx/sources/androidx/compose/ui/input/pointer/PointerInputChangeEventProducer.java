package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class PointerInputChangeEventProducer {
    private final LongSparseArray<PointerInputData> previousPointerInputData = new LongSparseArray<>(0, 1, null);

    public final void clear() {
        this.previousPointerInputData.clear();
    }

    public final InternalPointerEvent produce(PointerInputEvent pointerInputEvent, PositionCalculator positionCalculator) {
        long uptime;
        boolean down;
        long jMo7652screenToLocalMKHz9U;
        LongSparseArray longSparseArray = new LongSparseArray(pointerInputEvent.getPointers().size());
        List<PointerInputEventData> pointers = pointerInputEvent.getPointers();
        int size = pointers.size();
        for (int i = 0; i < size; i++) {
            PointerInputEventData pointerInputEventData = pointers.get(i);
            PointerInputData pointerInputData = this.previousPointerInputData.get(pointerInputEventData.m7584getIdJ3iCeTQ());
            if (pointerInputData == null) {
                down = false;
                uptime = pointerInputEventData.getUptime();
                jMo7652screenToLocalMKHz9U = pointerInputEventData.m7587getPositionF1C5BW0();
            } else {
                uptime = pointerInputData.getUptime();
                down = pointerInputData.getDown();
                jMo7652screenToLocalMKHz9U = positionCalculator.mo7652screenToLocalMKHz9U(pointerInputData.m7574getPositionOnScreenF1C5BW0());
            }
            longSparseArray.put(pointerInputEventData.m7584getIdJ3iCeTQ(), new PointerInputChange(pointerInputEventData.m7584getIdJ3iCeTQ(), pointerInputEventData.getUptime(), pointerInputEventData.m7587getPositionF1C5BW0(), pointerInputEventData.getDown(), pointerInputEventData.getPressure(), uptime, jMo7652screenToLocalMKHz9U, down, false, pointerInputEventData.m7590getTypeT8wyACA(), pointerInputEventData.getHistorical(), pointerInputEventData.m7589getScrollDeltaF1C5BW0(), pointerInputEventData.getScaleGestureFactor(), pointerInputEventData.m7586getPanGestureOffsetF1C5BW0(), pointerInputEventData.m7585getOriginalEventPositionF1C5BW0(), null));
            boolean down2 = pointerInputEventData.getDown();
            LongSparseArray<PointerInputData> longSparseArray2 = this.previousPointerInputData;
            if (down2) {
                longSparseArray2.put(pointerInputEventData.m7584getIdJ3iCeTQ(), new PointerInputData(pointerInputEventData.getUptime(), pointerInputEventData.m7588getPositionOnScreenF1C5BW0(), pointerInputEventData.getDown(), null));
            } else {
                longSparseArray2.remove(pointerInputEventData.m7584getIdJ3iCeTQ());
            }
        }
        return new InternalPointerEvent(longSparseArray, pointerInputEvent);
    }

    public static final class PointerInputData {
        private final boolean down;
        private final long positionOnScreen;
        private final long uptime;

        private PointerInputData(long j, long j2, boolean z) {
            this.uptime = j;
            this.positionOnScreen = j2;
            this.down = z;
        }

        public final boolean getDown() {
            return this.down;
        }

        /* JADX INFO: renamed from: getPositionOnScreen-F1C5BW0, reason: not valid java name */
        public final long m7574getPositionOnScreenF1C5BW0() {
            return this.positionOnScreen;
        }

        public final long getUptime() {
            return this.uptime;
        }

        public /* synthetic */ PointerInputData(long j, long j2, boolean z, jh2 jh2Var) {
            this(j, j2, z);
        }
    }
}
