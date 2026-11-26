package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetectorKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ClickableNode extends AbstractClickableNode {
    public static final int $stable = 8;
    private PointerInputChange downEvent;
    private IndirectPointerInputChange indirectDownEvent;

    private ClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, ll3<j59> ll3Var) {
        super(mutableInteractionSource, indicationNodeFactory, z, z2, str, role, ll3Var, null);
    }

    private final void cancelInput(boolean z) {
        if (z) {
            this.indirectDownEvent = null;
        } else {
            this.downEvent = null;
        }
        handlePressInteractionCancel(z);
    }

    private final void checkForCancellation(PointerEvent pointerEvent) {
        if (this.downEvent != null) {
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                PointerInputChange pointerInputChange = changes.get(i);
                if (pointerInputChange.isConsumed() && pointerInputChange != this.downEvent) {
                    cancelInput(false);
                    return;
                }
            }
        }
    }

    private final void handleDownEvent(PointerInputChange pointerInputChange) {
        pointerInputChange.consume();
        this.downEvent = pointerInputChange;
        if (getEnabled()) {
            if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled) {
                handlePressInteractionStart(pointerInputChange);
            } else {
                m1255handlePressInteractionStart3MmeM6k(pointerInputChange.m7569getPositionF1C5BW0(), false);
            }
        }
    }

    private final void handleNonUpEventIfNeeded(IndirectPointerEvent indirectPointerEvent) {
        float touchSlop = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalViewConfiguration())).getTouchSlop();
        List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            IndirectPointerInputChange indirectPointerInputChange = changes.get(i);
            long jM7074getPositionF1C5BW0 = indirectPointerInputChange.m7074getPositionF1C5BW0();
            IndirectPointerInputChange indirectPointerInputChange2 = this.indirectDownEvent;
            indirectPointerInputChange2.getClass();
            boolean z = Math.abs(Offset.m5985getDistanceimpl(Offset.m5991minusMKHz9U(jM7074getPositionF1C5BW0, indirectPointerInputChange2.m7074getPositionF1C5BW0()))) > touchSlop;
            if (indirectPointerInputChange.isConsumed() || z) {
                cancelInput(true);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: handleNonUpEventIfNeeded-O0kMr_c, reason: not valid java name */
    private final void m1338handleNonUpEventIfNeededO0kMr_c(PointerEvent pointerEvent, long j) {
        long jM1252getExtendedTouchPaddinghWWAJMo = m1252getExtendedTouchPaddinghWWAJMo(j);
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = changes.get(i);
            if (pointerInputChange.isConsumed() || PointerEventKt.m7505isOutOfBoundsjwHxaWs(pointerInputChange, j, jM1252getExtendedTouchPaddinghWWAJMo)) {
                cancelInput(false);
                return;
            }
        }
    }

    private final void handleUpEvent(PointerInputChange pointerInputChange) {
        pointerInputChange.consume();
        if (getEnabled()) {
            PointerInputChange pointerInputChange2 = this.downEvent;
            pointerInputChange2.getClass();
            m1254handlePressInteractionRelease3MmeM6k(pointerInputChange2.m7569getPositionF1C5BW0(), false);
            getOnClick().invoke();
        }
        this.downEvent = null;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onCancelIndirectPointerInput() {
        cancelInput(true);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        super.onCancelPointerInput();
        cancelInput(false);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* JADX INFO: renamed from: onClickKeyDownEvent-ZmokQxo */
    public final boolean mo1256onClickKeyDownEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* JADX INFO: renamed from: onClickKeyUpEvent-ZmokQxo */
    public final boolean mo1257onClickKeyUpEventZmokQxo(KeyEvent keyEvent) {
        getOnClick().invoke();
        return true;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public void onIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent, PointerEventPass pointerEventPass) {
        super.onIndirectPointerEvent(indirectPointerEvent, pointerEventPass);
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass == PointerEventPass.Final) {
                checkForCancellation(indirectPointerEvent);
                return;
            }
            return;
        }
        if (this.indirectDownEvent == null) {
            List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(changes.get(i))) {
                    handleDownEvent(indirectPointerEvent.getChanges().get(0));
                    return;
                }
            }
            return;
        }
        List<IndirectPointerInputChange> changes2 = indirectPointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (!ClickableKt.changedToUp(changes2.get(i2))) {
                handleNonUpEventIfNeeded(indirectPointerEvent);
                return;
            }
        }
        handleUpEvent(indirectPointerEvent.getChanges().get(0));
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        super.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass == PointerEventPass.Final) {
                checkForCancellation(pointerEvent);
            }
        } else {
            if (this.downEvent == null) {
                if (TapGestureDetectorKt.isChangedToDown$default(pointerEvent, true, false, 2, null)) {
                    handleDownEvent(pointerEvent.getChanges().get(0));
                    return;
                }
                return;
            }
            List<PointerInputChange> changes = pointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                if (!PointerEventKt.changedToUp(changes.get(i))) {
                    m1338handleNonUpEventIfNeededO0kMr_c(pointerEvent, j);
                    return;
                }
            }
            handleUpEvent(pointerEvent.getChanges().get(0));
        }
    }

    /* JADX INFO: renamed from: update-O2vRcR0, reason: not valid java name */
    public final void m1339updateO2vRcR0(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, ll3<j59> ll3Var) {
        m1261updateCommonO2vRcR0(mutableInteractionSource, indicationNodeFactory, z, z2, str, role, ll3Var);
    }

    public /* synthetic */ ClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, ll3 ll3Var, jh2 jh2Var) {
        this(mutableInteractionSource, indicationNodeFactory, z, z2, str, role, ll3Var);
    }

    private final void handleDownEvent(IndirectPointerInputChange indirectPointerInputChange) {
        indirectPointerInputChange.consume();
        this.indirectDownEvent = indirectPointerInputChange;
        if (getEnabled()) {
            if (ComposeFoundationFlags.isDelayPressesUsingGestureConsumptionEnabled) {
                handlePressInteractionStart(indirectPointerInputChange);
            } else {
                m1255handlePressInteractionStart3MmeM6k(indirectPointerInputChange.m7074getPositionF1C5BW0(), true);
            }
        }
    }

    private final void handleUpEvent(IndirectPointerInputChange indirectPointerInputChange) {
        indirectPointerInputChange.consume();
        if (getEnabled()) {
            IndirectPointerInputChange indirectPointerInputChange2 = this.indirectDownEvent;
            indirectPointerInputChange2.getClass();
            m1254handlePressInteractionRelease3MmeM6k(indirectPointerInputChange2.m7074getPositionF1C5BW0(), true);
            getOnClick().invoke();
        }
        this.indirectDownEvent = null;
    }

    private final void checkForCancellation(IndirectPointerEvent indirectPointerEvent) {
        if (this.indirectDownEvent != null) {
            List<IndirectPointerInputChange> changes = indirectPointerEvent.getChanges();
            int size = changes.size();
            for (int i = 0; i < size; i++) {
                IndirectPointerInputChange indirectPointerInputChange = changes.get(i);
                if (indirectPointerInputChange.isConsumed() && indirectPointerInputChange != this.indirectDownEvent) {
                    cancelInput(true);
                    return;
                }
            }
        }
    }
}
