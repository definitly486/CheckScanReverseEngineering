package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionControllerKt {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1, java.lang.Object] */
    public static final Modifier makeDefaultSelectionModifier(final SelectionRegistrar selectionRegistrar, final long j, final ll3<? extends LayoutCoordinates> ll3Var) {
        final ?? r0 = new TextDragObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1
            private long dragTotalDistance;
            private long lastPosition;
            private SelectionAdjustment selectionAdjustmentMode;

            /* JADX WARN: Multi-variable type inference failed */
            {
                Offset.Companion companion = Offset.Companion;
                this.lastPosition = companion.m6003getZeroF1C5BW0();
                this.dragTotalDistance = companion.m6003getZeroF1C5BW0();
                this.selectionAdjustmentMode = SelectionAdjustment.Companion.getNone();
            }

            public final long getDragTotalDistance() {
                return this.dragTotalDistance;
            }

            public final long getLastPosition() {
                return this.lastPosition;
            }

            public final SelectionAdjustment getSelectionAdjustmentMode() {
                return this.selectionAdjustmentMode;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
                if (SelectionRegistrarKt.hasSelection(selectionRegistrar, j)) {
                    selectionRegistrar.notifySelectionUpdateEnd();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDown-k-4lQ0M */
            public void mo2596onDownk4lQ0M(long j2) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onDrag-k-4lQ0M */
            public void mo2597onDragk4lQ0M(long j2) {
                LayoutCoordinates layoutCoordinatesInvoke = ll3Var.invoke();
                if (layoutCoordinatesInvoke != null) {
                    SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                    long j3 = j;
                    if (layoutCoordinatesInvoke.isAttached() && SelectionRegistrarKt.hasSelection(selectionRegistrar2, j3)) {
                        long jM5992plusMKHz9U = Offset.m5992plusMKHz9U(this.dragTotalDistance, j2);
                        this.dragTotalDistance = jM5992plusMKHz9U;
                        long jM5992plusMKHz9U2 = Offset.m5992plusMKHz9U(this.lastPosition, jM5992plusMKHz9U);
                        if (selectionRegistrar2.mo3021notifySelectionUpdatenjBpvok(layoutCoordinatesInvoke, jM5992plusMKHz9U2, this.lastPosition, false, this.selectionAdjustmentMode, true)) {
                            this.lastPosition = jM5992plusMKHz9U2;
                            this.dragTotalDistance = Offset.Companion.m6003getZeroF1C5BW0();
                        }
                    }
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* JADX INFO: renamed from: onStart-3MmeM6k */
            public void mo2598onStart3MmeM6k(long j2, SelectionAdjustment selectionAdjustment) {
                this.selectionAdjustmentMode = selectionAdjustment;
                LayoutCoordinates layoutCoordinatesInvoke = ll3Var.invoke();
                if (layoutCoordinatesInvoke != null) {
                    SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                    if (!layoutCoordinatesInvoke.isAttached()) {
                        return;
                    }
                    selectionRegistrar2.mo3022notifySelectionUpdateStartubNVwUQ(layoutCoordinatesInvoke, j2, this.selectionAdjustmentMode, true);
                    this.lastPosition = j2;
                }
                if (SelectionRegistrarKt.hasSelection(selectionRegistrar, j)) {
                    this.dragTotalDistance = Offset.Companion.m6003getZeroF1C5BW0();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                if (SelectionRegistrarKt.hasSelection(selectionRegistrar, j)) {
                    selectionRegistrar.notifySelectionUpdateEnd();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
            }

            public final void setDragTotalDistance(long j2) {
                this.dragTotalDistance = j2;
            }

            public final void setLastPosition(long j2) {
                this.lastPosition = j2;
            }

            public final void setSelectionAdjustmentMode(SelectionAdjustment selectionAdjustment) {
                this.selectionAdjustmentMode = selectionAdjustment;
            }
        };
        final ?? r1 = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1
            private long lastPosition = Offset.Companion.m6003getZeroF1C5BW0();

            public final long getLastPosition() {
                return this.lastPosition;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onDrag-3MmeM6k */
            public boolean mo2884onDrag3MmeM6k(long j2, SelectionAdjustment selectionAdjustment) {
                LayoutCoordinates layoutCoordinatesInvoke = ll3Var.invoke();
                if (layoutCoordinatesInvoke == null) {
                    return true;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j3 = j;
                if (!layoutCoordinatesInvoke.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, j3)) {
                    return false;
                }
                if (!selectionRegistrar2.mo3021notifySelectionUpdatenjBpvok(layoutCoordinatesInvoke, j2, this.lastPosition, false, selectionAdjustment, false)) {
                    return true;
                }
                this.lastPosition = j2;
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public void onDragDone() {
                selectionRegistrar.notifySelectionUpdateEnd();
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onExtend-k-4lQ0M */
            public boolean mo2885onExtendk4lQ0M(long j2) {
                LayoutCoordinates layoutCoordinatesInvoke = ll3Var.invoke();
                if (layoutCoordinatesInvoke == null) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j3 = j;
                if (!layoutCoordinatesInvoke.isAttached()) {
                    return false;
                }
                if (selectionRegistrar2.mo3021notifySelectionUpdatenjBpvok(layoutCoordinatesInvoke, j2, this.lastPosition, false, SelectionAdjustment.Companion.getNone(), false)) {
                    this.lastPosition = j2;
                }
                return SelectionRegistrarKt.hasSelection(selectionRegistrar2, j3);
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onExtendDrag-k-4lQ0M */
            public boolean mo2886onExtendDragk4lQ0M(long j2) {
                LayoutCoordinates layoutCoordinatesInvoke = ll3Var.invoke();
                if (layoutCoordinatesInvoke == null) {
                    return true;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j3 = j;
                if (!layoutCoordinatesInvoke.isAttached() || !SelectionRegistrarKt.hasSelection(selectionRegistrar2, j3)) {
                    return false;
                }
                if (!selectionRegistrar2.mo3021notifySelectionUpdatenjBpvok(layoutCoordinatesInvoke, j2, this.lastPosition, false, SelectionAdjustment.Companion.getNone(), false)) {
                    return true;
                }
                this.lastPosition = j2;
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* JADX INFO: renamed from: onStart-9KIMszo */
            public boolean mo2887onStart9KIMszo(long j2, SelectionAdjustment selectionAdjustment, int i) {
                LayoutCoordinates layoutCoordinatesInvoke = ll3Var.invoke();
                if (layoutCoordinatesInvoke == null) {
                    return false;
                }
                SelectionRegistrar selectionRegistrar2 = selectionRegistrar;
                long j3 = j;
                if (!layoutCoordinatesInvoke.isAttached()) {
                    return false;
                }
                selectionRegistrar2.mo3022notifySelectionUpdateStartubNVwUQ(layoutCoordinatesInvoke, j2, selectionAdjustment, false);
                this.lastPosition = j2;
                return SelectionRegistrarKt.hasSelection(selectionRegistrar2, j3);
            }

            public final void setLastPosition(long j2) {
                this.lastPosition = j2;
            }
        };
        return SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, (Object) r1, (Object) r0, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.modifiers.SelectionControllerKt.makeDefaultSelectionModifier.1
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures(pointerInputScope, r1, r0, e02Var);
                return objAwaitSelectionGestures == a32.COROUTINE_SUSPENDED ? objAwaitSelectionGestures : j59.a;
            }
        });
    }
}
