package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.me0;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class IndirectPointerInputDragCycleDetector {
    public static final int $stable = 8;
    private DragDetectionState.AwaitDown _awaitDownState;
    private DragDetectionState.AwaitGesturePickup _awaitGesturePickupState;
    private DragDetectionState.AwaitTouchSlop _awaitTouchSlopState;
    private DragDetectionState.Dragging _draggingState;
    private DragDetectionState currentDragState;
    private final DragGestureNode node;
    private long nodeOffset;
    private final OffsetSmoother offsetSmoother;
    private long previousPositionOnScreen;
    private TouchSlopDetector touchSlopDetector;
    private final IndirectPointerInputEventSmoother touchSmooth;
    private VelocityTracker velocityTracker;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DragDetectionState.AwaitDown.AwaitTouchSlop.values().length];
            try {
                iArr[DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public IndirectPointerInputDragCycleDetector(DragGestureNode dragGestureNode) {
        this.node = dragGestureNode;
        Offset.Companion companion = Offset.Companion;
        this.previousPositionOnScreen = companion.m6002getUnspecifiedF1C5BW0();
        this.touchSmooth = new IndirectPointerInputEventSmoother();
        this.offsetSmoother = new OffsetSmoother();
        this.nodeOffset = companion.m6003getZeroF1C5BW0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final DragDetectionState.AwaitDown getAwaitDownState() {
        DragDetectionState.AwaitDown awaitDown = this._awaitDownState;
        if (awaitDown != null) {
            return awaitDown;
        }
        DragDetectionState.AwaitDown awaitDown2 = new DragDetectionState.AwaitDown(null, false, 3, 0 == true ? 1 : 0);
        this._awaitDownState = awaitDown2;
        return awaitDown2;
    }

    private final DragDetectionState.AwaitGesturePickup getAwaitGesturePickupState() {
        DragDetectionState.AwaitGesturePickup awaitGesturePickup = this._awaitGesturePickupState;
        if (awaitGesturePickup != null) {
            return awaitGesturePickup;
        }
        DragDetectionState.AwaitGesturePickup awaitGesturePickup2 = new DragDetectionState.AwaitGesturePickup(null, 0L, null, 7, null);
        this._awaitGesturePickupState = awaitGesturePickup2;
        return awaitGesturePickup2;
    }

    private final DragDetectionState.AwaitTouchSlop getAwaitTouchSlopState() {
        DragDetectionState.AwaitTouchSlop awaitTouchSlop = this._awaitTouchSlopState;
        if (awaitTouchSlop != null) {
            return awaitTouchSlop;
        }
        DragDetectionState.AwaitTouchSlop awaitTouchSlop2 = new DragDetectionState.AwaitTouchSlop(null, 0L, false, 7, null);
        this._awaitTouchSlopState = awaitTouchSlop2;
        return awaitTouchSlop2;
    }

    private final DragDetectionState.Dragging getDraggingState() {
        DragDetectionState.Dragging dragging = this._draggingState;
        if (dragging != null) {
            return dragging;
        }
        DragDetectionState.Dragging dragging2 = new DragDetectionState.Dragging(0L, 1, null);
        this._draggingState = dragging2;
        return dragging2;
    }

    private final void moveToAwaitDownState() {
        DragDetectionState.AwaitDown awaitDownState = getAwaitDownState();
        awaitDownState.setAwaitTouchSlop(DragDetectionState.AwaitDown.AwaitTouchSlop.NotInitialized);
        awaitDownState.setConsumedOnInitial(false);
        this.currentDragState = awaitDownState;
    }

    /* JADX INFO: renamed from: moveToAwaitGesturePickupState-rnUCldI, reason: not valid java name */
    private final void m1526moveToAwaitGesturePickupStaternUCldI(IndirectPointerInputChange indirectPointerInputChange, long j, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup awaitGesturePickupState = getAwaitGesturePickupState();
        awaitGesturePickupState.setInitialDown(indirectPointerInputChange);
        awaitGesturePickupState.m1534setPointerId0FcD4WY(j);
        TouchSlopDetector.m1634resetk4lQ0M$default(touchSlopDetector, 0L, 1, null);
        awaitGesturePickupState.setTouchSlopDetector(touchSlopDetector);
        this.currentDragState = awaitGesturePickupState;
    }

    /* JADX INFO: renamed from: moveToAwaitTouchSlopState-aWI9W7U, reason: not valid java name */
    private final void m1527moveToAwaitTouchSlopStateaWI9W7U(IndirectPointerInputChange indirectPointerInputChange, long j, long j2, boolean z) {
        DragDetectionState.AwaitTouchSlop awaitTouchSlopState = getAwaitTouchSlopState();
        awaitTouchSlopState.setInitialDown(indirectPointerInputChange);
        awaitTouchSlopState.m1536setPointerId0FcD4WY(j);
        TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
        if (touchSlopDetector == null) {
            this.touchSlopDetector = new TouchSlopDetector(this.node.getOrientationLock(), 0L, 2, null);
        } else {
            if (touchSlopDetector != null) {
                touchSlopDetector.setOrientation(this.node.getOrientationLock());
            }
            TouchSlopDetector touchSlopDetector2 = this.touchSlopDetector;
            if (touchSlopDetector2 != null) {
                touchSlopDetector2.m1639resetk4lQ0M(j2);
            }
        }
        awaitTouchSlopState.setVerifyConsumptionInFinalPass(z);
        this.currentDragState = awaitTouchSlopState;
    }

    /* JADX INFO: renamed from: moveToAwaitTouchSlopState-aWI9W7U$default, reason: not valid java name */
    public static /* synthetic */ void m1528moveToAwaitTouchSlopStateaWI9W7U$default(IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector, IndirectPointerInputChange indirectPointerInputChange, long j, long j2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = Offset.Companion.m6003getZeroF1C5BW0();
        }
        long j3 = j2;
        if ((i & 8) != 0) {
            z = false;
        }
        indirectPointerInputDragCycleDetector.m1527moveToAwaitTouchSlopStateaWI9W7U(indirectPointerInputChange, j, j3, z);
    }

    /* JADX INFO: renamed from: moveToDraggingState-0FcD4WY, reason: not valid java name */
    private final void m1529moveToDraggingState0FcD4WY(long j) {
        DragDetectionState.Dragging draggingState = getDraggingState();
        draggingState.m1538setPointerId0FcD4WY(j);
        this.currentDragState = draggingState;
    }

    private final void processAwaitGesturePickup(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass, DragDetectionState.AwaitGesturePickup awaitGesturePickup) {
        boolean z;
        if (pointerEventPass != PointerEventPass.Final) {
            return;
        }
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = true;
                break;
            } else {
                if (changes.get(i).isConsumed()) {
                    z = false;
                    break;
                }
                i++;
            }
        }
        List<IndirectPointerInputChange> changes2 = indirectPointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (changes2.get(i2).getPressed()) {
                if (indirectPointerEvent.getChanges().isEmpty()) {
                    break;
                }
                if (z) {
                    long jM1548primaryAxisPosition_bfSUIo = IndirectPointerInputDragCycleDetectorKt.m1548primaryAxisPosition_bfSUIo((IndirectPointerInputChange) qn1.T(indirectPointerEvent.getChanges()), this.node.getOrientationLock(), IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()));
                    IndirectPointerInputChange initialDown = awaitGesturePickup.getInitialDown();
                    initialDown.getClass();
                    long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(jM1548primaryAxisPosition_bfSUIo, IndirectPointerInputDragCycleDetectorKt.m1548primaryAxisPosition_bfSUIo(initialDown, this.node.getOrientationLock(), IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw())));
                    IndirectPointerInputChange initialDown2 = awaitGesturePickup.getInitialDown();
                    if (initialDown2 != null) {
                        m1528moveToAwaitTouchSlopStateaWI9W7U$default(this, initialDown2, awaitGesturePickup.m1533getPointerIdJ3iCeTQ(), jM5991minusMKHz9U, false, 8, null);
                        return;
                    } else {
                        fg.c("AwaitGesturePickup.initialDown was not initialized.");
                        return;
                    }
                }
                return;
            }
        }
        moveToAwaitDownState();
    }

    private final void processAwaitTouchSlop(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass, DragDetectionState.AwaitTouchSlop awaitTouchSlop) {
        IndirectPointerInputChange indirectPointerInputChange;
        IndirectPointerInputChange indirectPointerInputChange2;
        IndirectPointerInputChange indirectPointerInputChange3;
        if (pointerEventPass == PointerEventPass.Initial) {
            return;
        }
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        while (true) {
            indirectPointerInputChange = null;
            if (i >= size) {
                indirectPointerInputChange2 = null;
                break;
            }
            indirectPointerInputChange2 = changes.get(i);
            if (PointerId.m7548equalsimpl0(indirectPointerInputChange2.m7073getIdJ3iCeTQ(), awaitTouchSlop.m1535getPointerIdJ3iCeTQ())) {
                break;
            } else {
                i++;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange4 = indirectPointerInputChange2;
        if (indirectPointerInputChange4 == null) {
            List<IndirectPointerInputChange> changes2 = indirectPointerEvent.getChanges();
            int size2 = changes2.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    indirectPointerInputChange3 = null;
                    break;
                }
                indirectPointerInputChange3 = changes2.get(i2);
                if (indirectPointerInputChange3.getPressed()) {
                    break;
                } else {
                    i2++;
                }
            }
            indirectPointerInputChange4 = indirectPointerInputChange3;
            if (indirectPointerInputChange4 == null) {
                moveToAwaitDownState();
                return;
            }
            awaitTouchSlop.m1536setPointerId0FcD4WY(indirectPointerInputChange4.m7073getIdJ3iCeTQ());
        }
        IndirectPointerInputChange indirectPointerInputChange5 = indirectPointerInputChange4;
        if (pointerEventPass == PointerEventPass.Main) {
            if (indirectPointerInputChange5.isConsumed()) {
                IndirectPointerInputChange initialDown = awaitTouchSlop.getInitialDown();
                if (initialDown == null) {
                    fg.c("AwaitTouchSlop.initialDown was not initialized");
                    return;
                }
                long jM1535getPointerIdJ3iCeTQ = awaitTouchSlop.m1535getPointerIdJ3iCeTQ();
                TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
                if (touchSlopDetector == null) {
                    fg.c("AwaitTouchSlop.touchSlopDetector was not initialized");
                    return;
                }
                m1526moveToAwaitGesturePickupStaternUCldI(initialDown, jM1535getPointerIdJ3iCeTQ, touchSlopDetector);
            } else if (IndirectPointerInputDragCycleDetectorKt.changedToUpIgnoreConsumed(indirectPointerInputChange5)) {
                List<IndirectPointerInputChange> changes3 = indirectPointerEvent.getChanges();
                int size3 = changes3.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    IndirectPointerInputChange indirectPointerInputChange6 = changes3.get(i3);
                    if (indirectPointerInputChange6.getPressed()) {
                        indirectPointerInputChange = indirectPointerInputChange6;
                        break;
                    }
                }
                IndirectPointerInputChange indirectPointerInputChange7 = indirectPointerInputChange;
                if (indirectPointerInputChange7 == null) {
                    moveToAwaitDownState();
                } else {
                    awaitTouchSlop.m1536setPointerId0FcD4WY(indirectPointerInputChange7.m7073getIdJ3iCeTQ());
                }
            } else {
                long jM1633getPostSlopOffsetqto3Fdw$default = TouchSlopDetector.m1633getPostSlopOffsetqto3Fdw$default(requireTouchSlopDetector(), IndirectPointerInputDragCycleDetectorKt.m1545positionChangeIgnoreConsumed_bfSUIo(indirectPointerInputChange5, this.node.getOrientationLock(), IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw())), DragGestureDetectorKt.m1508pointerSlopE8SPZFQ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.node, CompositionLocalsKt.getLocalViewConfiguration()), PointerType.Companion.m7649getTouchT8wyACA()), false, 4, null);
                if ((9223372034707292159L & jM1633getPostSlopOffsetqto3Fdw$default) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    indirectPointerInputChange5.consume();
                    IndirectPointerInputChange initialDown2 = awaitTouchSlop.getInitialDown();
                    initialDown2.getClass();
                    m1531sendDragStart3f7A7Is(initialDown2, indirectPointerInputChange5, IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()), jM1633getPostSlopOffsetqto3Fdw$default);
                    m1530sendDragEventEu1f8Dk(indirectPointerInputChange5, IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()), jM1633getPostSlopOffsetqto3Fdw$default);
                    m1529moveToDraggingState0FcD4WY(indirectPointerInputChange5.m7073getIdJ3iCeTQ());
                } else {
                    awaitTouchSlop.setVerifyConsumptionInFinalPass(true);
                }
            }
        }
        if (pointerEventPass == PointerEventPass.Final && awaitTouchSlop.getVerifyConsumptionInFinalPass()) {
            if (!indirectPointerInputChange5.isConsumed()) {
                awaitTouchSlop.setVerifyConsumptionInFinalPass(false);
                return;
            }
            IndirectPointerInputChange initialDown3 = awaitTouchSlop.getInitialDown();
            if (initialDown3 == null) {
                fg.c("AwaitTouchSlop.initialDown was not initialized");
                return;
            }
            long jM1535getPointerIdJ3iCeTQ2 = awaitTouchSlop.m1535getPointerIdJ3iCeTQ();
            TouchSlopDetector touchSlopDetector2 = this.touchSlopDetector;
            if (touchSlopDetector2 != null) {
                m1526moveToAwaitGesturePickupStaternUCldI(initialDown3, jM1535getPointerIdJ3iCeTQ2, touchSlopDetector2);
            } else {
                fg.c("AwaitTouchSlop.touchSlopDetector was not initialized");
            }
        }
    }

    private final void processDraggingState(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass, DragDetectionState.Dragging dragging) {
        IndirectPointerInputChange indirectPointerInputChange;
        IndirectPointerInputChange indirectPointerInputChange2;
        if (pointerEventPass != PointerEventPass.Main) {
            return;
        }
        long jM1537getPointerIdJ3iCeTQ = dragging.m1537getPointerIdJ3iCeTQ();
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        while (true) {
            indirectPointerInputChange = null;
            if (i >= size) {
                indirectPointerInputChange2 = null;
                break;
            }
            indirectPointerInputChange2 = changes.get(i);
            if (PointerId.m7548equalsimpl0(indirectPointerInputChange2.m7073getIdJ3iCeTQ(), jM1537getPointerIdJ3iCeTQ)) {
                break;
            } else {
                i++;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange3 = indirectPointerInputChange2;
        if (indirectPointerInputChange3 == null) {
            return;
        }
        if (!IndirectPointerInputDragCycleDetectorKt.changedToUpIgnoreConsumed(indirectPointerInputChange3)) {
            if (indirectPointerInputChange3.isConsumed()) {
                sendDragCancelled();
                return;
            } else {
                if (Offset.m5985getDistanceimpl(IndirectPointerInputDragCycleDetectorKt.m1545positionChangeIgnoreConsumed_bfSUIo(indirectPointerInputChange3, this.node.getOrientationLock(), IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()))) == 0.0f) {
                    return;
                }
                m1530sendDragEventEu1f8Dk(indirectPointerInputChange3, IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()), IndirectPointerInputDragCycleDetectorKt.m1544positionChange_bfSUIo(indirectPointerInputChange3, this.node.getOrientationLock(), IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw())));
                indirectPointerInputChange3.consume();
                return;
            }
        }
        List<IndirectPointerInputChange> changes2 = indirectPointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            IndirectPointerInputChange indirectPointerInputChange4 = changes2.get(i2);
            if (indirectPointerInputChange4.getPressed()) {
                indirectPointerInputChange = indirectPointerInputChange4;
                break;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange5 = indirectPointerInputChange;
        if (indirectPointerInputChange5 != null) {
            dragging.m1538setPointerId0FcD4WY(indirectPointerInputChange5.m7073getIdJ3iCeTQ());
            return;
        }
        if (indirectPointerInputChange3.isConsumed() || !IndirectPointerInputDragCycleDetectorKt.changedToUpIgnoreConsumed(indirectPointerInputChange3)) {
            sendDragCancelled();
        } else {
            m1532sendDragStoppedk92h6UU(indirectPointerInputChange3, IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()));
        }
        moveToAwaitDownState();
    }

    private final void processInitialDownState(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass, DragDetectionState.AwaitDown awaitDown) {
        if (indirectPointerEvent.getChanges().isEmpty()) {
            return;
        }
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (!IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(changes.get(i))) {
                return;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) qn1.T(indirectPointerEvent.getChanges());
        DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop = WhenMappings.$EnumSwitchMapping$0[awaitDown.getAwaitTouchSlop().ordinal()] == 1 ? !this.node.startDragImmediately() ? DragDetectionState.AwaitDown.AwaitTouchSlop.Yes : DragDetectionState.AwaitDown.AwaitTouchSlop.No : awaitDown.getAwaitTouchSlop();
        awaitDown.setAwaitTouchSlop(awaitTouchSlop);
        if (pointerEventPass == PointerEventPass.Initial && awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.No) {
            indirectPointerInputChange.consume();
            awaitDown.setConsumedOnInitial(true);
        }
        if (pointerEventPass == PointerEventPass.Main) {
            if (awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.Yes) {
                m1528moveToAwaitTouchSlopStateaWI9W7U$default(this, indirectPointerInputChange, indirectPointerInputChange.m7073getIdJ3iCeTQ(), 0L, false, 12, null);
                return;
            }
            if (awaitDown.getConsumedOnInitial()) {
                IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxisM7052boximpl = IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw());
                Offset.Companion companion = Offset.Companion;
                m1531sendDragStart3f7A7Is(indirectPointerInputChange, indirectPointerInputChange, indirectPointerEventPrimaryDirectionalMotionAxisM7052boximpl, companion.m6003getZeroF1C5BW0());
                m1530sendDragEventEu1f8Dk(indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis.m7052boximpl(indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw()), companion.m6003getZeroF1C5BW0());
                m1529moveToDraggingState0FcD4WY(indirectPointerInputChange.m7073getIdJ3iCeTQ());
            }
        }
    }

    private final TouchSlopDetector requireTouchSlopDetector() {
        TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
        if (touchSlopDetector != null) {
            return touchSlopDetector;
        }
        fg.c("Touch slop detector not initialized.");
        return null;
    }

    private final VelocityTracker requireVelocityTracker() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            return velocityTracker;
        }
        fg.c("Velocity Tracker not initialized.");
        return null;
    }

    private final void sendDragCancelled() {
        this.node.onDragEvent(DragEvent.DragCancelled.INSTANCE);
    }

    /* JADX INFO: renamed from: sendDragEvent-Eu1f8Dk, reason: not valid java name */
    private final void m1530sendDragEventEu1f8Dk(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        long jPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(this.node));
        if (!Offset.m5984equalsimpl0(this.previousPositionOnScreen, Offset.Companion.m6002getUnspecifiedF1C5BW0()) && !Offset.m5984equalsimpl0(jPositionOnScreen, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m5992plusMKHz9U(this.nodeOffset, Offset.m5991minusMKHz9U(jPositionOnScreen, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = jPositionOnScreen;
        Orientation orientationLock = this.node.getOrientationLock();
        orientationLock.getClass();
        if (Math.abs(DraggableKt.m1518toFloat3MmeM6k(j, orientationLock)) > 2.0f) {
            IndirectPointerInputDragCycleDetectorKt.m1543addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker(), indirectPointerInputChange, this.node.getOrientationLock(), indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
            this.node.onDragEvent(new DragEvent.DragDelta(this.offsetSmoother.m1561smoothEventPositionMKHz9U(j), true, null));
        }
    }

    /* JADX INFO: renamed from: sendDragStart-3f7A7Is, reason: not valid java name */
    private final void m1531sendDragStart3f7A7Is(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerInputChange indirectPointerInputChange2, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new VelocityTracker();
        }
        this.nodeOffset = Offset.Companion.m6003getZeroF1C5BW0();
        IndirectPointerInputDragCycleDetectorKt.m1543addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker(), indirectPointerInputChange, this.node.getOrientationLock(), indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
        long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(IndirectPointerInputDragCycleDetectorKt.m1548primaryAxisPosition_bfSUIo(indirectPointerInputChange2, this.node.getOrientationLock(), indirectPointerEventPrimaryDirectionalMotionAxis), j);
        if (this.node.getCanDrag().invoke(PointerType.m7639boximpl(PointerType.Companion.m7649getTouchT8wyACA())).booleanValue()) {
            this.previousPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(this.node));
            this.node.onDragEvent(new DragEvent.DragStarted(jM5991minusMKHz9U, null));
        }
        this.offsetSmoother.reset();
    }

    /* JADX INFO: renamed from: sendDragStopped-k92h6UU, reason: not valid java name */
    private final void m1532sendDragStoppedk92h6UU(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        IndirectPointerInputDragCycleDetectorKt.m1543addIndirectPointerInputChangeQf4Zb88(requireVelocityTracker(), indirectPointerInputChange, this.node.getOrientationLock(), indirectPointerEventPrimaryDirectionalMotionAxis, this.touchSmooth, this.nodeOffset);
        float maximumFlingVelocity = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.node, CompositionLocalsKt.getLocalViewConfiguration())).getMaximumFlingVelocity();
        long jM7677calculateVelocityAH228Gc = requireVelocityTracker().m7677calculateVelocityAH228Gc(VelocityKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
        requireVelocityTracker().resetTracking();
        this.node.onDragEvent(new DragEvent.DragStopped(DraggableKt.m1520toValidVelocityTH1AsA0(jM7677calculateVelocityAH228Gc), true, null));
    }

    public final DragGestureNode getNode() {
        return this.node;
    }

    public final void processIndirectPointerInputEvent(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass) {
        DragDetectionState awaitDownState = this.currentDragState;
        if (awaitDownState == null) {
            awaitDownState = getAwaitDownState();
            this.currentDragState = awaitDownState;
        }
        if (awaitDownState == null) {
            fg.c("currentDragState should not be null");
            return;
        }
        if (awaitDownState instanceof DragDetectionState.AwaitDown) {
            processInitialDownState(indirectPointerEvent, pointerEventPass, (DragDetectionState.AwaitDown) awaitDownState);
            return;
        }
        if (awaitDownState instanceof DragDetectionState.AwaitTouchSlop) {
            processAwaitTouchSlop(indirectPointerEvent, pointerEventPass, (DragDetectionState.AwaitTouchSlop) awaitDownState);
            return;
        }
        if (awaitDownState instanceof DragDetectionState.AwaitGesturePickup) {
            processAwaitGesturePickup(indirectPointerEvent, pointerEventPass, (DragDetectionState.AwaitGesturePickup) awaitDownState);
        } else if (awaitDownState instanceof DragDetectionState.Dragging) {
            processDraggingState(indirectPointerEvent, pointerEventPass, (DragDetectionState.Dragging) awaitDownState);
        } else {
            me0.e();
        }
    }

    public final void resetDragDetectionState() {
        moveToAwaitDownState();
        if (this.node.isListeningForEvents$foundation()) {
            sendDragCancelled();
        }
        this.velocityTracker = null;
        this.offsetSmoother.reset();
    }

    public static abstract class DragDetectionState {
        public static final int $stable = 0;

        public /* synthetic */ DragDetectionState(jh2 jh2Var) {
            this();
        }

        private DragDetectionState() {
        }

        public static final class AwaitDown extends DragDetectionState {
            public static final int $stable = 8;
            private AwaitTouchSlop awaitTouchSlop;
            private boolean consumedOnInitial;

            public enum AwaitTouchSlop {
                Yes,
                No,
                NotInitialized;

                private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

                public static g03<AwaitTouchSlop> getEntries() {
                    return $ENTRIES;
                }
            }

            public /* synthetic */ AwaitDown(AwaitTouchSlop awaitTouchSlop, boolean z, int i, jh2 jh2Var) {
                this((i & 1) != 0 ? AwaitTouchSlop.NotInitialized : awaitTouchSlop, (i & 2) != 0 ? false : z);
            }

            public final AwaitTouchSlop getAwaitTouchSlop() {
                return this.awaitTouchSlop;
            }

            public final boolean getConsumedOnInitial() {
                return this.consumedOnInitial;
            }

            public final void setAwaitTouchSlop(AwaitTouchSlop awaitTouchSlop) {
                this.awaitTouchSlop = awaitTouchSlop;
            }

            public final void setConsumedOnInitial(boolean z) {
                this.consumedOnInitial = z;
            }

            public AwaitDown(AwaitTouchSlop awaitTouchSlop, boolean z) {
                super(null);
                this.awaitTouchSlop = awaitTouchSlop;
                this.consumedOnInitial = z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public AwaitDown() {
                this(null, false, 3, 0 == true ? 1 : 0);
            }
        }

        public static final class Dragging extends DragDetectionState {
            public static final int $stable = 8;
            private long pointerId;

            public /* synthetic */ Dragging(long j, int i, jh2 jh2Var) {
                this((i & 1) != 0 ? PointerId.m7546constructorimpl(Long.MAX_VALUE) : j, null);
            }

            /* JADX INFO: renamed from: getPointerId-J3iCeTQ, reason: not valid java name */
            public final long m1537getPointerIdJ3iCeTQ() {
                return this.pointerId;
            }

            /* JADX INFO: renamed from: setPointerId-0FcD4WY, reason: not valid java name */
            public final void m1538setPointerId0FcD4WY(long j) {
                this.pointerId = j;
            }

            private Dragging(long j) {
                super(null);
                this.pointerId = j;
            }

            public /* synthetic */ Dragging(long j, jh2 jh2Var) {
                this(j);
            }
        }

        public static final class AwaitGesturePickup extends DragDetectionState {
            public static final int $stable = 8;
            private IndirectPointerInputChange initialDown;
            private long pointerId;
            private TouchSlopDetector touchSlopDetector;

            public /* synthetic */ AwaitGesturePickup(IndirectPointerInputChange indirectPointerInputChange, long j, TouchSlopDetector touchSlopDetector, int i, jh2 jh2Var) {
                this((i & 1) != 0 ? null : indirectPointerInputChange, (i & 2) != 0 ? PointerId.m7546constructorimpl(Long.MAX_VALUE) : j, (i & 4) != 0 ? null : touchSlopDetector, null);
            }

            public final IndirectPointerInputChange getInitialDown() {
                return this.initialDown;
            }

            /* JADX INFO: renamed from: getPointerId-J3iCeTQ, reason: not valid java name */
            public final long m1533getPointerIdJ3iCeTQ() {
                return this.pointerId;
            }

            public final TouchSlopDetector getTouchSlopDetector() {
                return this.touchSlopDetector;
            }

            public final void setInitialDown(IndirectPointerInputChange indirectPointerInputChange) {
                this.initialDown = indirectPointerInputChange;
            }

            /* JADX INFO: renamed from: setPointerId-0FcD4WY, reason: not valid java name */
            public final void m1534setPointerId0FcD4WY(long j) {
                this.pointerId = j;
            }

            public final void setTouchSlopDetector(TouchSlopDetector touchSlopDetector) {
                this.touchSlopDetector = touchSlopDetector;
            }

            private AwaitGesturePickup(IndirectPointerInputChange indirectPointerInputChange, long j, TouchSlopDetector touchSlopDetector) {
                super(null);
                this.initialDown = indirectPointerInputChange;
                this.pointerId = j;
                this.touchSlopDetector = touchSlopDetector;
            }

            public /* synthetic */ AwaitGesturePickup(IndirectPointerInputChange indirectPointerInputChange, long j, TouchSlopDetector touchSlopDetector, jh2 jh2Var) {
                this(indirectPointerInputChange, j, touchSlopDetector);
            }
        }

        public static final class AwaitTouchSlop extends DragDetectionState {
            public static final int $stable = 8;
            private IndirectPointerInputChange initialDown;
            private long pointerId;
            private boolean verifyConsumptionInFinalPass;

            public /* synthetic */ AwaitTouchSlop(IndirectPointerInputChange indirectPointerInputChange, long j, boolean z, int i, jh2 jh2Var) {
                this((i & 1) != 0 ? null : indirectPointerInputChange, (i & 2) != 0 ? PointerId.m7546constructorimpl(Long.MAX_VALUE) : j, (i & 4) != 0 ? false : z, null);
            }

            public final IndirectPointerInputChange getInitialDown() {
                return this.initialDown;
            }

            /* JADX INFO: renamed from: getPointerId-J3iCeTQ, reason: not valid java name */
            public final long m1535getPointerIdJ3iCeTQ() {
                return this.pointerId;
            }

            public final boolean getVerifyConsumptionInFinalPass() {
                return this.verifyConsumptionInFinalPass;
            }

            public final void setInitialDown(IndirectPointerInputChange indirectPointerInputChange) {
                this.initialDown = indirectPointerInputChange;
            }

            /* JADX INFO: renamed from: setPointerId-0FcD4WY, reason: not valid java name */
            public final void m1536setPointerId0FcD4WY(long j) {
                this.pointerId = j;
            }

            public final void setVerifyConsumptionInFinalPass(boolean z) {
                this.verifyConsumptionInFinalPass = z;
            }

            private AwaitTouchSlop(IndirectPointerInputChange indirectPointerInputChange, long j, boolean z) {
                super(null);
                this.initialDown = indirectPointerInputChange;
                this.pointerId = j;
                this.verifyConsumptionInFinalPass = z;
            }

            public /* synthetic */ AwaitTouchSlop(IndirectPointerInputChange indirectPointerInputChange, long j, boolean z, jh2 jh2Var) {
                this(indirectPointerInputChange, j, z);
            }
        }
    }
}
