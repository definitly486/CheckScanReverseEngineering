package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.input.ImeAction;
import defpackage.aa4;
import defpackage.ah;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class KeyboardActionRunner implements KeyboardActionScope {
    public static final int $stable = 8;
    public FocusManager focusManager;
    public KeyboardActions keyboardActions;
    private final SoftwareKeyboardController keyboardController;

    public KeyboardActionRunner(SoftwareKeyboardController softwareKeyboardController) {
        this.keyboardController = softwareKeyboardController;
    }

    /* JADX INFO: renamed from: defaultKeyboardActionWithResult-KlQnJC8, reason: not valid java name */
    private final boolean m2542defaultKeyboardActionWithResultKlQnJC8(int i) {
        SoftwareKeyboardController softwareKeyboardController;
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m8659equalsimpl0(i, companion.m8675getNexteUduSuo())) {
            getFocusManager().mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5870getNextdhqQ8s());
            return true;
        }
        if (ImeAction.m8659equalsimpl0(i, companion.m8677getPreviouseUduSuo())) {
            getFocusManager().mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5871getPreviousdhqQ8s());
            return true;
        }
        if (!ImeAction.m8659equalsimpl0(i, companion.m8673getDoneeUduSuo()) || (softwareKeyboardController = this.keyboardController) == null) {
            return false;
        }
        softwareKeyboardController.hide();
        return true;
    }

    @Override // androidx.compose.foundation.text.KeyboardActionScope
    /* JADX INFO: renamed from: defaultKeyboardAction-KlQnJC8, reason: not valid java name */
    public void mo2543defaultKeyboardActionKlQnJC8(int i) {
        m2542defaultKeyboardActionWithResultKlQnJC8(i);
    }

    public final FocusManager getFocusManager() {
        FocusManager focusManager = this.focusManager;
        if (focusManager != null) {
            return focusManager;
        }
        aa4.j("focusManager");
        throw null;
    }

    public final KeyboardActions getKeyboardActions() {
        KeyboardActions keyboardActions = this.keyboardActions;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        aa4.j("keyboardActions");
        throw null;
    }

    /* JADX INFO: renamed from: runAction-KlQnJC8, reason: not valid java name */
    public final boolean m2544runActionKlQnJC8(int i) {
        nl3<KeyboardActionScope, j59> onSend;
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m8659equalsimpl0(i, companion.m8673getDoneeUduSuo())) {
            onSend = getKeyboardActions().getOnDone();
        } else if (ImeAction.m8659equalsimpl0(i, companion.m8674getGoeUduSuo())) {
            onSend = getKeyboardActions().getOnGo();
        } else if (ImeAction.m8659equalsimpl0(i, companion.m8675getNexteUduSuo())) {
            onSend = getKeyboardActions().getOnNext();
        } else if (ImeAction.m8659equalsimpl0(i, companion.m8677getPreviouseUduSuo())) {
            onSend = getKeyboardActions().getOnPrevious();
        } else if (ImeAction.m8659equalsimpl0(i, companion.m8678getSearcheUduSuo())) {
            onSend = getKeyboardActions().getOnSearch();
        } else if (ImeAction.m8659equalsimpl0(i, companion.m8679getSendeUduSuo())) {
            onSend = getKeyboardActions().getOnSend();
        } else {
            if (!ImeAction.m8659equalsimpl0(i, companion.m8672getDefaulteUduSuo()) && !ImeAction.m8659equalsimpl0(i, companion.m8676getNoneeUduSuo())) {
                ah.f("invalid ImeAction");
                return false;
            }
            onSend = null;
        }
        if (onSend == null) {
            return m2542defaultKeyboardActionWithResultKlQnJC8(i);
        }
        onSend.invoke(this);
        return true;
    }

    public final void setFocusManager(FocusManager focusManager) {
        this.focusManager = focusManager;
    }

    public final void setKeyboardActions(KeyboardActions keyboardActions) {
        this.keyboardActions = keyboardActions;
    }
}
