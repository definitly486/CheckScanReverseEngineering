package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
abstract class DragDetectionState {
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
        public final long m1484getPointerIdJ3iCeTQ() {
            return this.pointerId;
        }

        /* JADX INFO: renamed from: setPointerId-0FcD4WY, reason: not valid java name */
        public final void m1485setPointerId0FcD4WY(long j) {
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
        private PointerInputChange initialDown;
        private long pointerId;
        private TouchSlopDetector touchSlopDetector;

        public /* synthetic */ AwaitGesturePickup(PointerInputChange pointerInputChange, long j, TouchSlopDetector touchSlopDetector, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : pointerInputChange, (i & 2) != 0 ? PointerId.m7546constructorimpl(Long.MAX_VALUE) : j, (i & 4) != 0 ? null : touchSlopDetector, null);
        }

        public final PointerInputChange getInitialDown() {
            return this.initialDown;
        }

        /* JADX INFO: renamed from: getPointerId-J3iCeTQ, reason: not valid java name */
        public final long m1480getPointerIdJ3iCeTQ() {
            return this.pointerId;
        }

        public final TouchSlopDetector getTouchSlopDetector() {
            return this.touchSlopDetector;
        }

        public final void setInitialDown(PointerInputChange pointerInputChange) {
            this.initialDown = pointerInputChange;
        }

        /* JADX INFO: renamed from: setPointerId-0FcD4WY, reason: not valid java name */
        public final void m1481setPointerId0FcD4WY(long j) {
            this.pointerId = j;
        }

        public final void setTouchSlopDetector(TouchSlopDetector touchSlopDetector) {
            this.touchSlopDetector = touchSlopDetector;
        }

        private AwaitGesturePickup(PointerInputChange pointerInputChange, long j, TouchSlopDetector touchSlopDetector) {
            super(null);
            this.initialDown = pointerInputChange;
            this.pointerId = j;
            this.touchSlopDetector = touchSlopDetector;
        }

        public /* synthetic */ AwaitGesturePickup(PointerInputChange pointerInputChange, long j, TouchSlopDetector touchSlopDetector, jh2 jh2Var) {
            this(pointerInputChange, j, touchSlopDetector);
        }
    }

    public static final class AwaitTouchSlop extends DragDetectionState {
        public static final int $stable = 8;
        private PointerInputChange initialDown;
        private long pointerId;
        private boolean verifyConsumptionInFinalPass;

        public /* synthetic */ AwaitTouchSlop(PointerInputChange pointerInputChange, long j, boolean z, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? null : pointerInputChange, (i & 2) != 0 ? PointerId.m7546constructorimpl(Long.MAX_VALUE) : j, (i & 4) != 0 ? false : z, null);
        }

        public final PointerInputChange getInitialDown() {
            return this.initialDown;
        }

        /* JADX INFO: renamed from: getPointerId-J3iCeTQ, reason: not valid java name */
        public final long m1482getPointerIdJ3iCeTQ() {
            return this.pointerId;
        }

        public final boolean getVerifyConsumptionInFinalPass() {
            return this.verifyConsumptionInFinalPass;
        }

        public final void setInitialDown(PointerInputChange pointerInputChange) {
            this.initialDown = pointerInputChange;
        }

        /* JADX INFO: renamed from: setPointerId-0FcD4WY, reason: not valid java name */
        public final void m1483setPointerId0FcD4WY(long j) {
            this.pointerId = j;
        }

        public final void setVerifyConsumptionInFinalPass(boolean z) {
            this.verifyConsumptionInFinalPass = z;
        }

        private AwaitTouchSlop(PointerInputChange pointerInputChange, long j, boolean z) {
            super(null);
            this.initialDown = pointerInputChange;
            this.pointerId = j;
            this.verifyConsumptionInFinalPass = z;
        }

        public /* synthetic */ AwaitTouchSlop(PointerInputChange pointerInputChange, long j, boolean z, jh2 jh2Var) {
            this(pointerInputChange, j, z);
        }
    }
}
