package androidx.compose.ui.focus;

import android.view.KeyEvent;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface FocusOwner extends FocusManager {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: dispatchKeyEvent-YhN2O0w$default, reason: not valid java name */
    static /* synthetic */ boolean m5877dispatchKeyEventYhN2O0w$default(FocusOwner focusOwner, KeyEvent keyEvent, ll3 ll3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: dispatchKeyEvent-YhN2O0w");
            return false;
        }
        if ((i & 2) != 0) {
            ll3Var = FocusOwner$dispatchKeyEvent$1.INSTANCE;
        }
        return focusOwner.mo5880dispatchKeyEventYhN2O0w(keyEvent, ll3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ boolean dispatchRotaryEvent$default(FocusOwner focusOwner, RotaryScrollEvent rotaryScrollEvent, ll3 ll3Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: dispatchRotaryEvent");
            return false;
        }
        if ((i & 2) != 0) {
            ll3Var = AnonymousClass1.INSTANCE;
        }
        return focusOwner.dispatchRotaryEvent(rotaryScrollEvent, ll3Var);
    }

    /* JADX INFO: renamed from: clearFocus-I7lrPNg, reason: not valid java name */
    boolean mo5878clearFocusI7lrPNg(boolean z, boolean z2, boolean z3, int i);

    void clearOwnerFocus();

    void dispatchIndirectPointerCancel();

    boolean dispatchIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent);

    /* JADX INFO: renamed from: dispatchInterceptedSoftKeyboardEvent-ZmokQxo, reason: not valid java name */
    boolean mo5879dispatchInterceptedSoftKeyboardEventZmokQxo(KeyEvent keyEvent);

    /* JADX INFO: renamed from: dispatchKeyEvent-YhN2O0w, reason: not valid java name */
    boolean mo5880dispatchKeyEventYhN2O0w(KeyEvent keyEvent, ll3<Boolean> ll3Var);

    boolean dispatchRotaryEvent(RotaryScrollEvent rotaryScrollEvent, ll3<Boolean> ll3Var);

    /* JADX INFO: renamed from: focusSearch-ULY8qGw, reason: not valid java name */
    Boolean mo5881focusSearchULY8qGw(int i, Rect rect, nl3<? super FocusTargetNode, Boolean> nl3Var);

    void focusTargetAvailable();

    FocusTargetNode getActiveFocusTargetNode();

    Rect getFocusRect();

    MutableObjectList<FocusListener> getListeners();

    Modifier getModifier();

    FocusState getRootState();

    boolean hasFocusableContent();

    boolean hasNonInteropFocusableContent();

    boolean isFocusCaptured();

    /* JADX INFO: renamed from: moveFocus-aToIllA, reason: not valid java name */
    boolean mo5882moveFocusaToIllA(int i, boolean z);

    void releaseFocus();

    /* JADX INFO: renamed from: requestOwnerFocus-7o62pno, reason: not valid java name */
    boolean mo5883requestOwnerFocus7o62pno(FocusDirection focusDirection, Rect rect);

    /* JADX INFO: renamed from: resetFocus-3ESFkO8, reason: not valid java name */
    boolean mo5884resetFocus3ESFkO8(int i);

    void scheduleInvalidation(FocusEventModifierNode focusEventModifierNode);

    void scheduleInvalidation(FocusTargetNode focusTargetNode);

    void scheduleInvalidationForOwner();

    void setActiveFocusTargetNode(FocusTargetNode focusTargetNode);

    void setFocusCaptured(boolean z);

    /* JADX INFO: renamed from: takeFocus-aToIllA, reason: not valid java name */
    boolean mo5885takeFocusaToIllA(int i, Rect rect);

    /* JADX INFO: renamed from: androidx.compose.ui.focus.FocusOwner$dispatchRotaryEvent$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    }
}
