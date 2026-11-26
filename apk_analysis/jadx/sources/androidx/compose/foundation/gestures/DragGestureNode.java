package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.GestureNodeKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.j59;
import defpackage.l91;
import defpackage.me0;
import defpackage.mr2;
import defpackage.n1;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.x81;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class DragGestureNode extends DelegatingNode implements PointerInputModifierNode, IndirectPointerInputModifierNode, CompositionLocalConsumerModifierNode, GestureConnection {
    public static final int $stable = 8;
    private DragDetectionState.AwaitDown _awaitDownState;
    private DragDetectionState.AwaitGesturePickup _awaitGesturePickupState;
    private DragDetectionState.AwaitTouchSlop _awaitTouchSlopState;
    private final nl3<PointerType, Boolean> _canDrag = new mr2(this, 0);
    private DragDetectionState.Dragging _draggingState;
    private nl3<? super PointerType, Boolean> canDrag;
    private x81<DragEvent> channel;
    private DragDetectionState currentDragState;
    private DragInteraction.Start dragInteraction;
    private boolean enabled;
    private DelegatableNode gestureNode;
    private IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector;
    private MutableInteractionSource interactionSource;
    private boolean isListeningForEvents;
    private boolean isListeningForPointerInputEvents;
    private long nodeOffset;
    private Orientation orientationLock;
    private long previousPositionOnScreen;
    private TouchSlopDetector touchSlopDetector;
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

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$processDragCancel$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", l = {634}, m = "processDragCancel", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureNode.this.processDragCancel(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$processDragStart$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", l = {616, 619}, m = "processDragStart", v = 1)
    public static final class C04861 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C04861(e02<? super C04861> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureNode.this.processDragStart(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$processDragStop$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", l = {626}, m = "processDragStop", v = 1)
    public static final class C04871 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04871(e02<? super C04871> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DragGestureNode.this.processDragStop(null, this);
        }
    }

    public DragGestureNode(nl3<? super PointerType, Boolean> nl3Var, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation) {
        this.orientationLock = orientation;
        this.canDrag = nl3Var;
        this.enabled = z;
        this.interactionSource = mutableInteractionSource;
        Offset.Companion companion = Offset.Companion;
        this.previousPositionOnScreen = companion.m6002getUnspecifiedF1C5BW0();
        this.nodeOffset = companion.m6003getZeroF1C5BW0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _canDrag$lambda$0(DragGestureNode dragGestureNode, PointerType pointerType) {
        return dragGestureNode.canDrag.invoke(pointerType).booleanValue();
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
    private final void m1510moveToAwaitGesturePickupStaternUCldI(PointerInputChange pointerInputChange, long j, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup awaitGesturePickupState = getAwaitGesturePickupState();
        awaitGesturePickupState.setInitialDown(pointerInputChange);
        awaitGesturePickupState.m1481setPointerId0FcD4WY(j);
        TouchSlopDetector.m1634resetk4lQ0M$default(touchSlopDetector, 0L, 1, null);
        awaitGesturePickupState.setTouchSlopDetector(touchSlopDetector);
        this.currentDragState = awaitGesturePickupState;
    }

    /* JADX INFO: renamed from: moveToAwaitTouchSlopState-aWI9W7U, reason: not valid java name */
    private final void m1511moveToAwaitTouchSlopStateaWI9W7U(PointerInputChange pointerInputChange, long j, long j2, boolean z) {
        DragDetectionState.AwaitTouchSlop awaitTouchSlopState = getAwaitTouchSlopState();
        awaitTouchSlopState.setInitialDown(pointerInputChange);
        awaitTouchSlopState.m1483setPointerId0FcD4WY(j);
        TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
        if (touchSlopDetector == null) {
            this.touchSlopDetector = new TouchSlopDetector(this.orientationLock, 0L, 2, null);
        } else {
            if (touchSlopDetector != null) {
                touchSlopDetector.setOrientation(this.orientationLock);
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
    public static /* synthetic */ void m1512moveToAwaitTouchSlopStateaWI9W7U$default(DragGestureNode dragGestureNode, PointerInputChange pointerInputChange, long j, long j2, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: moveToAwaitTouchSlopState-aWI9W7U");
            return;
        }
        if ((i & 4) != 0) {
            j2 = Offset.Companion.m6003getZeroF1C5BW0();
        }
        long j3 = j2;
        if ((i & 8) != 0) {
            z = false;
        }
        dragGestureNode.m1511moveToAwaitTouchSlopStateaWI9W7U(pointerInputChange, j, j3, z);
    }

    /* JADX INFO: renamed from: moveToDraggingState-0FcD4WY, reason: not valid java name */
    private final void m1513moveToDraggingState0FcD4WY(long j) {
        DragDetectionState.Dragging draggingState = getDraggingState();
        draggingState.m1485setPointerId0FcD4WY(j);
        this.currentDragState = draggingState;
    }

    private final void processAwaitGesturePickup(PointerEvent pointerEvent, PointerEventPass pointerEventPass, DragDetectionState.AwaitGesturePickup awaitGesturePickup) {
        boolean z;
        if (pointerEventPass != PointerEventPass.Final) {
            return;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
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
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (changes2.get(i2).getPressed()) {
                if (pointerEvent.getChanges().isEmpty()) {
                    break;
                }
                if (z) {
                    long jM7569getPositionF1C5BW0 = ((PointerInputChange) qn1.T(pointerEvent.getChanges())).m7569getPositionF1C5BW0();
                    PointerInputChange initialDown = awaitGesturePickup.getInitialDown();
                    initialDown.getClass();
                    long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(jM7569getPositionF1C5BW0, initialDown.m7569getPositionF1C5BW0());
                    PointerInputChange initialDown2 = awaitGesturePickup.getInitialDown();
                    if (initialDown2 != null) {
                        m1512moveToAwaitTouchSlopStateaWI9W7U$default(this, initialDown2, awaitGesturePickup.m1480getPointerIdJ3iCeTQ(), jM5991minusMKHz9U, false, 8, null);
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

    private final void processAwaitTouchSlop(PointerEvent pointerEvent, PointerEventPass pointerEventPass, DragDetectionState.AwaitTouchSlop awaitTouchSlop) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        PointerInputChange pointerInputChange3;
        if (pointerEventPass == PointerEventPass.Initial) {
            return;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        while (true) {
            pointerInputChange = null;
            if (i >= size) {
                pointerInputChange2 = null;
                break;
            }
            pointerInputChange2 = changes.get(i);
            if (PointerId.m7548equalsimpl0(pointerInputChange2.m7566getIdJ3iCeTQ(), awaitTouchSlop.m1482getPointerIdJ3iCeTQ())) {
                break;
            } else {
                i++;
            }
        }
        PointerInputChange pointerInputChange4 = pointerInputChange2;
        if (pointerInputChange4 == null) {
            List<PointerInputChange> changes2 = pointerEvent.getChanges();
            int size2 = changes2.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    pointerInputChange3 = null;
                    break;
                }
                pointerInputChange3 = changes2.get(i2);
                if (pointerInputChange3.getPressed()) {
                    break;
                } else {
                    i2++;
                }
            }
            pointerInputChange4 = pointerInputChange3;
            if (pointerInputChange4 == null) {
                moveToAwaitDownState();
                return;
            }
            awaitTouchSlop.m1483setPointerId0FcD4WY(pointerInputChange4.m7566getIdJ3iCeTQ());
        }
        if (pointerEventPass == PointerEventPass.Main) {
            if (pointerInputChange4.isConsumed()) {
                PointerInputChange initialDown = awaitTouchSlop.getInitialDown();
                if (initialDown == null) {
                    fg.c("AwaitTouchSlop.initialDown was not initialized");
                    return;
                }
                long jM1482getPointerIdJ3iCeTQ = awaitTouchSlop.m1482getPointerIdJ3iCeTQ();
                TouchSlopDetector touchSlopDetector = this.touchSlopDetector;
                if (touchSlopDetector == null) {
                    fg.c("AwaitTouchSlop.touchSlopDetector was not initialized");
                    return;
                }
                m1510moveToAwaitGesturePickupStaternUCldI(initialDown, jM1482getPointerIdJ3iCeTQ, touchSlopDetector);
            } else if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange4)) {
                List<PointerInputChange> changes3 = pointerEvent.getChanges();
                int size3 = changes3.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    PointerInputChange pointerInputChange5 = changes3.get(i3);
                    if (pointerInputChange5.getPressed()) {
                        pointerInputChange = pointerInputChange5;
                        break;
                    }
                }
                PointerInputChange pointerInputChange6 = pointerInputChange;
                if (pointerInputChange6 == null) {
                    moveToAwaitDownState();
                } else {
                    awaitTouchSlop.m1483setPointerId0FcD4WY(pointerInputChange6.m7566getIdJ3iCeTQ());
                }
            } else {
                long jM1633getPostSlopOffsetqto3Fdw$default = TouchSlopDetector.m1633getPostSlopOffsetqto3Fdw$default(requireTouchSlopDetector(), PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange4), DragGestureDetectorKt.m1508pointerSlopE8SPZFQ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration()), pointerInputChange4.m7572getTypeT8wyACA()), false, 4, null);
                if (ComposeFoundationFlags.isNestedDraggablesTouchConflictFixEnabled) {
                    if ((9223372034707292159L & jM1633getPostSlopOffsetqto3Fdw$default) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                        boolean zIsInterested = isInterested(pointerInputChange4);
                        GestureConnection parentGestureConnection = GestureNodeKt.getParentGestureConnection(this);
                        boolean z = parentGestureConnection != null && parentGestureConnection.isInterested(pointerInputChange4);
                        if (zIsInterested || !z) {
                            pointerInputChange4.consume();
                            PointerInputChange initialDown2 = awaitTouchSlop.getInitialDown();
                            initialDown2.getClass();
                            m1515sendDragStart0AR0LA0(initialDown2, pointerInputChange4, jM1633getPostSlopOffsetqto3Fdw$default);
                            m1514sendDragEventUv8p0NA(pointerInputChange4, jM1633getPostSlopOffsetqto3Fdw$default);
                            m1513moveToDraggingState0FcD4WY(pointerInputChange4.m7566getIdJ3iCeTQ());
                        } else {
                            awaitTouchSlop.setVerifyConsumptionInFinalPass(true);
                        }
                    } else {
                        awaitTouchSlop.setVerifyConsumptionInFinalPass(true);
                    }
                } else if ((9223372034707292159L & jM1633getPostSlopOffsetqto3Fdw$default) != InlineClassHelperKt.UnspecifiedPackedFloats) {
                    pointerInputChange4.consume();
                    PointerInputChange initialDown3 = awaitTouchSlop.getInitialDown();
                    initialDown3.getClass();
                    m1515sendDragStart0AR0LA0(initialDown3, pointerInputChange4, jM1633getPostSlopOffsetqto3Fdw$default);
                    m1514sendDragEventUv8p0NA(pointerInputChange4, jM1633getPostSlopOffsetqto3Fdw$default);
                    m1513moveToDraggingState0FcD4WY(pointerInputChange4.m7566getIdJ3iCeTQ());
                } else {
                    awaitTouchSlop.setVerifyConsumptionInFinalPass(true);
                }
            }
        }
        if (pointerEventPass == PointerEventPass.Final && awaitTouchSlop.getVerifyConsumptionInFinalPass()) {
            if (!pointerInputChange4.isConsumed()) {
                awaitTouchSlop.setVerifyConsumptionInFinalPass(false);
                return;
            }
            PointerInputChange initialDown4 = awaitTouchSlop.getInitialDown();
            if (initialDown4 == null) {
                fg.c("AwaitTouchSlop.initialDown was not initialized");
                return;
            }
            long jM1482getPointerIdJ3iCeTQ2 = awaitTouchSlop.m1482getPointerIdJ3iCeTQ();
            TouchSlopDetector touchSlopDetector2 = this.touchSlopDetector;
            if (touchSlopDetector2 != null) {
                m1510moveToAwaitGesturePickupStaternUCldI(initialDown4, jM1482getPointerIdJ3iCeTQ2, touchSlopDetector2);
            } else {
                fg.c("AwaitTouchSlop.touchSlopDetector was not initialized");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object processDragCancel(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            DragInteraction.Start start = this.dragInteraction;
            if (start != null) {
                MutableInteractionSource mutableInteractionSource = this.interactionSource;
                if (mutableInteractionSource != null) {
                    DragInteraction.Cancel cancel = new DragInteraction.Cancel(start);
                    anonymousClass1.label = 1;
                    if (mutableInteractionSource.emit(cancel, anonymousClass1) == a32Var) {
                        return a32Var;
                    }
                }
            }
            onDragStopped(new DragEvent.DragStopped(Velocity.Companion.m9291getZero9UxMQ8M(), false, null));
            return j59.a;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.dragInteraction = null;
        onDragStopped(new DragEvent.DragStopped(Velocity.Companion.m9291getZero9UxMQ8M(), false, null));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object processDragStart(DragEvent.DragStarted dragStarted, e02<? super j59> e02Var) {
        C04861 c04861;
        MutableInteractionSource mutableInteractionSource;
        DragInteraction.Start start;
        DragEvent.DragStarted dragStarted2;
        DragInteraction.Start start2;
        if (e02Var instanceof C04861) {
            c04861 = (C04861) e02Var;
            int i = c04861.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04861.label = i - Integer.MIN_VALUE;
            } else {
                c04861 = new C04861(e02Var);
            }
        } else {
            c04861 = new C04861(e02Var);
        }
        Object obj = c04861.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04861.label;
        if (i2 == 0) {
            r57.b(obj);
            DragInteraction.Start start3 = this.dragInteraction;
            if (start3 != null && (mutableInteractionSource = this.interactionSource) != null) {
                DragInteraction.Cancel cancel = new DragInteraction.Cancel(start3);
                c04861.L$0 = dragStarted;
                c04861.label = 1;
                if (mutableInteractionSource.emit(cancel, c04861) != a32Var) {
                }
                return a32Var;
            }
            this.dragInteraction = start;
            mo1452onDragStartedk4lQ0M(dragStarted.m1487getStartPointF1C5BW0());
            return j59.a;
        }
        if (i2 == 1) {
            dragStarted = (DragEvent.DragStarted) c04861.L$0;
            r57.b(obj);
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            start2 = (DragInteraction.Start) c04861.L$1;
            dragStarted2 = (DragEvent.DragStarted) c04861.L$0;
            r57.b(obj);
        }
        start = start2;
        dragStarted = dragStarted2;
        this.dragInteraction = start;
        mo1452onDragStartedk4lQ0M(dragStarted.m1487getStartPointF1C5BW0());
        return j59.a;
        start = new DragInteraction.Start();
        MutableInteractionSource mutableInteractionSource2 = this.interactionSource;
        if (mutableInteractionSource2 != null) {
            c04861.L$0 = dragStarted;
            c04861.L$1 = start;
            c04861.label = 2;
            if (mutableInteractionSource2.emit(start, c04861) != a32Var) {
                dragStarted2 = dragStarted;
                start2 = start;
                start = start2;
                dragStarted = dragStarted2;
            }
            return a32Var;
        }
        this.dragInteraction = start;
        mo1452onDragStartedk4lQ0M(dragStarted.m1487getStartPointF1C5BW0());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object processDragStop(DragEvent.DragStopped dragStopped, e02<? super j59> e02Var) {
        C04871 c04871;
        if (e02Var instanceof C04871) {
            c04871 = (C04871) e02Var;
            int i = c04871.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04871.label = i - Integer.MIN_VALUE;
            } else {
                c04871 = new C04871(e02Var);
            }
        } else {
            c04871 = new C04871(e02Var);
        }
        Object obj = c04871.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04871.label;
        if (i2 == 0) {
            r57.b(obj);
            DragInteraction.Start start = this.dragInteraction;
            if (start != null) {
                MutableInteractionSource mutableInteractionSource = this.interactionSource;
                if (mutableInteractionSource != null) {
                    DragInteraction.Stop stop = new DragInteraction.Stop(start);
                    c04871.L$0 = dragStopped;
                    c04871.label = 1;
                    if (mutableInteractionSource.emit(stop, c04871) == a32Var) {
                        return a32Var;
                    }
                }
            }
            onDragStopped(dragStopped);
            return j59.a;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        dragStopped = (DragEvent.DragStopped) c04871.L$0;
        r57.b(obj);
        this.dragInteraction = null;
        onDragStopped(dragStopped);
        return j59.a;
    }

    private final void processDraggingState(PointerEvent pointerEvent, PointerEventPass pointerEventPass, DragDetectionState.Dragging dragging) {
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        if (pointerEventPass != PointerEventPass.Main) {
            return;
        }
        long jM1484getPointerIdJ3iCeTQ = dragging.m1484getPointerIdJ3iCeTQ();
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        while (true) {
            pointerInputChange = null;
            if (i >= size) {
                pointerInputChange2 = null;
                break;
            }
            pointerInputChange2 = changes.get(i);
            if (PointerId.m7548equalsimpl0(pointerInputChange2.m7566getIdJ3iCeTQ(), jM1484getPointerIdJ3iCeTQ)) {
                break;
            } else {
                i++;
            }
        }
        PointerInputChange pointerInputChange3 = pointerInputChange2;
        if (pointerInputChange3 == null) {
            return;
        }
        if (!PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
            if (pointerInputChange3.isConsumed()) {
                sendDragCancelled();
                return;
            } else {
                if (Offset.m5985getDistanceimpl(PointerEventKt.positionChangeIgnoreConsumed(pointerInputChange3)) == 0.0f) {
                    return;
                }
                m1514sendDragEventUv8p0NA(pointerInputChange3, PointerEventKt.positionChange(pointerInputChange3));
                pointerInputChange3.consume();
                return;
            }
        }
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PointerInputChange pointerInputChange4 = changes2.get(i2);
            if (pointerInputChange4.getPressed()) {
                pointerInputChange = pointerInputChange4;
                break;
            }
        }
        PointerInputChange pointerInputChange5 = pointerInputChange;
        if (pointerInputChange5 != null) {
            dragging.m1485setPointerId0FcD4WY(pointerInputChange5.m7566getIdJ3iCeTQ());
            return;
        }
        if (pointerInputChange3.isConsumed() || !PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange3)) {
            sendDragCancelled();
        } else {
            sendDragStopped(pointerInputChange3);
        }
        moveToAwaitDownState();
    }

    private final void processInitialDownState(PointerEvent pointerEvent, PointerEventPass pointerEventPass, DragDetectionState.AwaitDown awaitDown) {
        DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop;
        if (!pointerEvent.getChanges().isEmpty() && TapGestureDetectorKt.isChangedToDown$default(pointerEvent, false, false, 2, null)) {
            PointerInputChange pointerInputChange = (PointerInputChange) qn1.T(pointerEvent.getChanges());
            if (WhenMappings.$EnumSwitchMapping$0[awaitDown.getAwaitTouchSlop().ordinal()] == 1) {
                awaitTouchSlop = !startDragImmediately() ? DragDetectionState.AwaitDown.AwaitTouchSlop.Yes : DragDetectionState.AwaitDown.AwaitTouchSlop.No;
            } else {
                awaitTouchSlop = awaitDown.getAwaitTouchSlop();
            }
            awaitDown.setAwaitTouchSlop(awaitTouchSlop);
            if (pointerEventPass == PointerEventPass.Initial && awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.No) {
                pointerInputChange.consume();
                awaitDown.setConsumedOnInitial(true);
            }
            if (pointerEventPass == PointerEventPass.Main) {
                if (awaitTouchSlop == DragDetectionState.AwaitDown.AwaitTouchSlop.Yes) {
                    m1512moveToAwaitTouchSlopStateaWI9W7U$default(this, pointerInputChange, pointerInputChange.m7566getIdJ3iCeTQ(), 0L, false, 12, null);
                } else if (awaitDown.getConsumedOnInitial()) {
                    Offset.Companion companion = Offset.Companion;
                    m1515sendDragStart0AR0LA0(pointerInputChange, pointerInputChange, companion.m6003getZeroF1C5BW0());
                    m1514sendDragEventUv8p0NA(pointerInputChange, companion.m6003getZeroF1C5BW0());
                    m1513moveToDraggingState0FcD4WY(pointerInputChange.m7566getIdJ3iCeTQ());
                }
            }
        }
    }

    private final void processRawPointerEvent(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        DragDetectionState dragDetectionState = this.currentDragState;
        if (dragDetectionState == null) {
            fg.c("currentDragState should not be null");
            return;
        }
        if (dragDetectionState instanceof DragDetectionState.AwaitDown) {
            processInitialDownState(pointerEvent, pointerEventPass, (DragDetectionState.AwaitDown) dragDetectionState);
            return;
        }
        if (dragDetectionState instanceof DragDetectionState.AwaitTouchSlop) {
            processAwaitTouchSlop(pointerEvent, pointerEventPass, (DragDetectionState.AwaitTouchSlop) dragDetectionState);
            return;
        }
        if (dragDetectionState instanceof DragDetectionState.AwaitGesturePickup) {
            processAwaitGesturePickup(pointerEvent, pointerEventPass, (DragDetectionState.AwaitGesturePickup) dragDetectionState);
        } else if (dragDetectionState instanceof DragDetectionState.Dragging) {
            processDraggingState(pointerEvent, pointerEventPass, (DragDetectionState.Dragging) dragDetectionState);
        } else {
            me0.e();
        }
    }

    private final x81<DragEvent> requireChannel() {
        x81<DragEvent> x81Var = this.channel;
        if (x81Var != null) {
            return x81Var;
        }
        fg.c("Events channel not initialized.");
        return null;
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

    private final void resetDragDetectionState() {
        moveToAwaitDownState();
        if (this.isListeningForEvents) {
            sendDragCancelled();
        }
        this.velocityTracker = null;
    }

    private final void sendDragCancelled() {
        requireChannel().mo0trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE);
    }

    /* JADX INFO: renamed from: sendDragEvent-Uv8p0NA, reason: not valid java name */
    private final void m1514sendDragEventUv8p0NA(PointerInputChange pointerInputChange, long j) {
        long jPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(getNode()));
        if (!Offset.m5984equalsimpl0(this.previousPositionOnScreen, Offset.Companion.m6002getUnspecifiedF1C5BW0()) && !Offset.m5984equalsimpl0(jPositionOnScreen, this.previousPositionOnScreen)) {
            this.nodeOffset = Offset.m5992plusMKHz9U(this.nodeOffset, Offset.m5991minusMKHz9U(jPositionOnScreen, this.previousPositionOnScreen));
        }
        this.previousPositionOnScreen = jPositionOnScreen;
        VelocityTrackerKt.m7678addPointerInputChange0AR0LA0(requireVelocityTracker(), pointerInputChange, this.nodeOffset);
        requireChannel().mo0trySendJP2dKIU(new DragEvent.DragDelta(j, false, null));
    }

    /* JADX INFO: renamed from: sendDragStart-0AR0LA0, reason: not valid java name */
    private final void m1515sendDragStart0AR0LA0(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, long j) {
        if (this.velocityTracker == null) {
            this.velocityTracker = new VelocityTracker();
        }
        VelocityTrackerKt.addPointerInputChange(requireVelocityTracker(), pointerInputChange);
        long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(pointerInputChange2.m7569getPositionF1C5BW0(), j);
        this.nodeOffset = Offset.Companion.m6003getZeroF1C5BW0();
        if (this.canDrag.invoke(PointerType.m7639boximpl(pointerInputChange.m7572getTypeT8wyACA())).booleanValue()) {
            if (!this.isListeningForEvents) {
                if (this.channel == null) {
                    this.channel = l91.a(Integer.MAX_VALUE, null, null, 6);
                }
                startListeningForEvents();
            }
            this.previousPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(DelegatableNodeKt.requireLayoutCoordinates(this));
            requireChannel().mo0trySendJP2dKIU(new DragEvent.DragStarted(jM5991minusMKHz9U, null));
        }
    }

    private final void sendDragStopped(PointerInputChange pointerInputChange) {
        VelocityTrackerKt.addPointerInputChange(requireVelocityTracker(), pointerInputChange);
        float maximumFlingVelocity = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getMaximumFlingVelocity();
        long jM7677calculateVelocityAH228Gc = requireVelocityTracker().m7677calculateVelocityAH228Gc(VelocityKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
        requireVelocityTracker().resetTracking();
        requireChannel().mo0trySendJP2dKIU(new DragEvent.DragStopped(DraggableKt.m1520toValidVelocityTH1AsA0(jM7677calculateVelocityAH228Gc), false, null));
        this.isListeningForPointerInputEvents = false;
    }

    private final void startListeningForEvents() {
        this.isListeningForEvents = true;
        if (this.channel == null) {
            this.channel = l91.a(Integer.MAX_VALUE, null, null, 6);
        }
        av0.c(getCoroutineScope(), null, null, new C04881(null), 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void update$default(DragGestureNode dragGestureNode, nl3 nl3Var, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: update");
            return;
        }
        if ((i & 1) != 0) {
            nl3Var = dragGestureNode.canDrag;
        }
        if ((i & 2) != 0) {
            z = dragGestureNode.enabled;
        }
        if ((i & 4) != 0) {
            mutableInteractionSource = dragGestureNode.interactionSource;
        }
        if ((i & 8) != 0) {
            orientation = dragGestureNode.orientationLock;
        }
        if ((i & 16) != 0) {
            z2 = false;
        }
        boolean z3 = z2;
        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
        nl3 nl3Var2 = nl3Var;
        dragGestureNode.update(nl3Var2, z, mutableInteractionSource2, orientation, z3);
    }

    public final void disposeInteractionSource() {
        DragInteraction.Start start = this.dragInteraction;
        if (start != null) {
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                mutableInteractionSource.tryEmit(new DragInteraction.Cancel(start));
            }
            this.dragInteraction = null;
        }
    }

    public abstract Object drag(bm3<? super nl3<? super DragEvent.DragDelta, j59>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var);

    public final nl3<PointerType, Boolean> getCanDrag() {
        return this.canDrag;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final MutableInteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    public final Orientation getOrientationLock() {
        return this.orientationLock;
    }

    public final void initializeGestureCoordination() {
        if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled && this.gestureNode == null) {
            this.gestureNode = delegate(GestureNodeKt.gestureNode(this));
        }
    }

    @Override // androidx.compose.foundation.GestureConnection
    public boolean isInterested(PointerInputChange pointerInputChange) {
        if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
            return this.enabled;
        }
        if (!ComposeFoundationFlags.isNestedDraggablesTouchConflictFixEnabled || PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
            return false;
        }
        if (this.touchSlopDetector == null) {
            this.touchSlopDetector = new TouchSlopDetector(this.orientationLock, 0L, 2, null);
        }
        float touchSlop = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getTouchSlop();
        long jPositionChange = PointerEventKt.positionChange(pointerInputChange);
        TouchSlopDetector touchSlopDetectorRequireTouchSlopDetector = requireTouchSlopDetector();
        return !Offset.m5984equalsimpl0(touchSlopDetectorRequireTouchSlopDetector.m1636getPostSlopOffsetqto3Fdw(jPositionChange, touchSlop, false), Offset.Companion.m6002getUnspecifiedF1C5BW0()) && touchSlopDetectorRequireTouchSlopDetector.m1637isDeltaAtAngleOfInterestk4lQ0M(jPositionChange);
    }

    public final boolean isListeningForEvents$foundation() {
        return this.isListeningForEvents;
    }

    public final boolean isListeningForPointerInputEvents$foundation() {
        return this.isListeningForPointerInputEvents;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onCancelIndirectPointerInput() {
        IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
        if (indirectPointerInputDragCycleDetector != null) {
            indirectPointerInputDragCycleDetector.resetDragDetectionState();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        if (this.isListeningForPointerInputEvents) {
            resetDragDetectionState();
        }
        this.isListeningForPointerInputEvents = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.isListeningForEvents = false;
        disposeInteractionSource();
        this.nodeOffset = Offset.Companion.m6003getZeroF1C5BW0();
        DelegatableNode delegatableNode = this.gestureNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
        this.gestureNode = null;
    }

    public final void onDragEvent(DragEvent dragEvent) {
        if ((dragEvent instanceof DragEvent.DragStarted) && !this.isListeningForEvents) {
            this.isListeningForEvents = true;
            startListeningForEvents();
        }
        requireChannel().mo0trySendJP2dKIU(dragEvent);
    }

    /* JADX INFO: renamed from: onDragStarted-k-4lQ0M */
    public abstract void mo1452onDragStartedk4lQ0M(long j);

    public abstract void onDragStopped(DragEvent.DragStopped dragStopped);

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass) {
        initializeGestureCoordination();
        if (this.enabled) {
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector == null) {
                indirectPointerInputDragCycleDetector = new IndirectPointerInputDragCycleDetector(this);
                this.indirectPointerInputDragCycleDetector = indirectPointerInputDragCycleDetector;
            }
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.processIndirectPointerInputEvent(indirectPointerEvent, pointerEventPass);
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.isListeningForPointerInputEvents = true;
        initializeGestureCoordination();
        if (this.enabled) {
            if (this.currentDragState == null) {
                this.currentDragState = getAwaitDownState();
            }
            processRawPointerEvent(pointerEvent, pointerEventPass);
        }
    }

    public final void setListeningForEvents$foundation(boolean z) {
        this.isListeningForEvents = z;
    }

    public final void setListeningForPointerInputEvents$foundation(boolean z) {
        this.isListeningForPointerInputEvents = z;
    }

    public final void setOrientationLock(Orientation orientation) {
        this.orientationLock = orientation;
    }

    public abstract boolean startDragImmediately();

    public final void update(nl3<? super PointerType, Boolean> nl3Var, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z2) {
        this.canDrag = nl3Var;
        boolean z3 = true;
        if (this.enabled != z) {
            this.enabled = z;
            if (!z) {
                disposeInteractionSource();
                this.indirectPointerInputDragCycleDetector = null;
            }
            z2 = true;
        }
        if (!aa4.e(this.interactionSource, mutableInteractionSource)) {
            disposeInteractionSource();
            this.interactionSource = mutableInteractionSource;
        }
        if (this.orientationLock != orientation) {
            this.orientationLock = orientation;
        } else {
            z3 = z2;
        }
        if (z3) {
            if (this.isListeningForPointerInputEvents) {
                resetDragDetectionState();
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.indirectPointerInputDragCycleDetector;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.resetDragDetectionState();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1", f = "Draggable.kt", l = {TypedValues.PositionType.TYPE_CURVE_FIT, TypedValues.PositionType.TYPE_POSITION_TYPE, 512, 519, 521, 524}, m = "invokeSuspend", v = 1)
    public static final class C04881 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        public C04881(e02<? super C04881> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C04881 c04881 = DragGestureNode.this.new C04881(e02Var);
            c04881.L$0 = obj;
            return c04881;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C04881) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0030 A[PHI: r1 r3
          0x0030: PHI (r1v14 r07) = (r1v6 r07), (r1v19 r07) binds: [B:13:0x002d, B:36:0x00b4] A[DONT_GENERATE, DONT_INLINE]
          0x0030: PHI (r3v8 y22) = (r3v5 y22), (r3v10 y22) binds: [B:13:0x002d, B:36:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:19:0x005a A[PHI: r4
          0x005a: PHI (r4v7 y22) = (r4v0 y22), (r4v3 y22), (r4v3 y22), (r4v3 y22), (r4v5 y22), (r4v8 y22) binds: [B:18:0x0052, B:45:0x00d3, B:47:0x00e2, B:41:0x00cc, B:30:0x008a, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:21:0x0060  */
        /* JADX WARN: Code duplicated, block: B:23:0x006d  */
        /* JADX WARN: Code duplicated, block: B:26:0x007e  */
        /* JADX WARN: Code duplicated, block: B:31:0x008c  */
        /* JADX WARN: Code duplicated, block: B:34:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:44:0x00d1 A[Catch: CancellationException -> 0x00cf, TryCatch #0 {CancellationException -> 0x00cf, blocks: (B:38:0x00b7, B:40:0x00bd, B:44:0x00d1, B:46:0x00d5), top: B:55:0x00b7 }] */
        /* JADX WARN: Code duplicated, block: B:46:0x00d5 A[Catch: CancellationException -> 0x00cf, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x00cf, blocks: (B:38:0x00b7, B:40:0x00bd, B:44:0x00d1, B:46:0x00d5), top: B:55:0x00b7 }] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x008a -> B:19:0x005a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00cc -> B:19:0x005a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00d3 -> B:19:0x005a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00e2 -> B:19:0x005a). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00f2 -> B:11:0x0023). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instruction units count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode.C04881.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.gestures.DragGestureNode$startListeningForEvents$1$1", f = "Draggable.kt", l = {515}, m = "invokeSuspend", v = 1)
        public static final class C00311 extends pg8 implements bm3<nl3<? super DragEvent.DragDelta, ? extends j59>, e02<? super j59>, Object> {
            final /* synthetic */ r07<DragEvent> $event;
            /* synthetic */ Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ DragGestureNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00311(r07<DragEvent> r07Var, DragGestureNode dragGestureNode, e02<? super C00311> e02Var) {
                super(2, e02Var);
                this.$event = r07Var;
                this.this$0 = dragGestureNode;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00311 c00311 = new C00311(this.$event, this.this$0, e02Var);
                c00311.L$0 = obj;
                return c00311;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(nl3<? super DragEvent.DragDelta, j59> nl3Var, e02<? super j59> e02Var) {
                return ((C00311) create(nl3Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:11:0x002c  */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0051 -> B:24:0x0054). Please report as a decompilation issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0057 -> B:26:0x0058). Please report as a decompilation issue!!! */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                nl3 nl3Var;
                DragEvent dragEvent;
                r07<DragEvent> r07Var;
                T t;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    nl3Var = (nl3) this.L$0;
                    dragEvent = this.$event.b;
                    if (!(dragEvent instanceof DragEvent.DragStopped) || (dragEvent instanceof DragEvent.DragCancelled)) {
                        return j59.a;
                    }
                    DragEvent.DragDelta dragDelta = dragEvent instanceof DragEvent.DragDelta ? (DragEvent.DragDelta) dragEvent : null;
                    if (dragDelta != null) {
                        nl3Var.invoke(dragDelta);
                    }
                    r07Var = this.$event;
                    x81 x81Var = this.this$0.channel;
                    if (x81Var != null) {
                        this.L$0 = nl3Var;
                        this.L$1 = r07Var;
                        this.label = 1;
                        obj = x81Var.b(this);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                    } else {
                        t = 0;
                    }
                    r07Var.b = t;
                    dragEvent = this.$event.b;
                    if (dragEvent instanceof DragEvent.DragStopped) {
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r07Var = (r07) this.L$1;
                nl3Var = (nl3) this.L$0;
                r57.b(obj);
                t = (DragEvent) obj;
                r07Var.b = t;
                dragEvent = this.$event.b;
                if (dragEvent instanceof DragEvent.DragStopped) {
                }
                return j59.a;
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ Object invoke(nl3<? super DragEvent.DragDelta, ? extends j59> nl3Var, e02<? super j59> e02Var) {
                return invoke2((nl3<? super DragEvent.DragDelta, j59>) nl3Var, e02Var);
            }
        }
    }

    @Override // androidx.compose.foundation.GestureConnection
    public boolean isInterested(IndirectPointerInputChange indirectPointerInputChange) {
        return IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(indirectPointerInputChange) && this.enabled;
    }
}
