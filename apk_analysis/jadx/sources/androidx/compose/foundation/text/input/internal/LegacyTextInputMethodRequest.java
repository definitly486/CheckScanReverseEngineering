package androidx.compose.foundation.text.input.internal;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.platform.PlatformTextInputMethodRequest;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.et0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.po4;
import defpackage.qy2;
import defpackage.ro4;
import defpackage.w65;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LegacyTextInputMethodRequest implements PlatformTextInputMethodRequest {
    public static final int $stable = 8;
    private final LegacyCursorAnchorInfoController cursorAnchorInfoController;
    private Rect focusedRect;
    private final InputMethodManager inputMethodManager;
    private LegacyTextFieldState legacyTextFieldState;
    private TextFieldSelectionManager textFieldSelectionManager;
    private final View view;
    private ViewConfiguration viewConfiguration;
    private nl3<? super List<? extends EditCommand>, j59> onEditCommand = new qy2(2);
    private nl3<? super ImeAction, j59> onImeActionPerformed = new et0(1);
    private TextFieldValue state = new TextFieldValue("", TextRange.Companion.m8496getZerod9O1mEE(), (TextRange) null, 4, (jh2) null);
    private ImeOptions imeOptions = ImeOptions.Companion.getDefault();
    private List<WeakReference<RecordingInputConnection>> ics = new ArrayList();
    private final cl4 baseInputConnection$delegate = nm4.a(po4.NONE, new ro4(this, 0));

    public LegacyTextInputMethodRequest(View view, nl3<? super Matrix, j59> nl3Var, InputMethodManager inputMethodManager) {
        this.view = view;
        this.inputMethodManager = inputMethodManager;
        this.cursorAnchorInfoController = new LegacyCursorAnchorInfoController(nl3Var, inputMethodManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseInputConnection baseInputConnection_delegate$lambda$0(LegacyTextInputMethodRequest legacyTextInputMethodRequest) {
        return new BaseInputConnection(legacyTextInputMethodRequest.view, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseInputConnection getBaseInputConnection() {
        return (BaseInputConnection) this.baseInputConnection$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onEditCommand$lambda$0(List list) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onImeActionPerformed$lambda$0(ImeAction imeAction) {
        return j59.a;
    }

    private final void restartInputImmediately() {
        this.inputMethodManager.restartInput();
    }

    @Override // androidx.compose.ui.platform.PlatformTextInputMethodRequest
    public RecordingInputConnection createInputConnection(EditorInfo editorInfo) {
        EditorInfo_androidKt.m2705updatepLxbY9I$default(editorInfo, this.state.getText(), this.state.m8741getSelectiond9O1mEE(), this.imeOptions, null, 8, null);
        LegacyPlatformTextInputServiceAdapter_androidKt.updateWithEmojiCompat(editorInfo);
        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.state, new InputEventCallback2() { // from class: androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest.createInputConnection.1
            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public void onConnectionClosed(RecordingInputConnection recordingInputConnection2) {
                int size = LegacyTextInputMethodRequest.this.ics.size();
                for (int i = 0; i < size; i++) {
                    if (aa4.e(((WeakReference) LegacyTextInputMethodRequest.this.ics.get(i)).get(), recordingInputConnection2)) {
                        LegacyTextInputMethodRequest.this.ics.remove(i);
                        return;
                    }
                }
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public void onEditCommands(List<? extends EditCommand> list) {
                LegacyTextInputMethodRequest.this.onEditCommand.invoke(list);
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            /* JADX INFO: renamed from: onImeAction-KlQnJC8 */
            public void mo2731onImeActionKlQnJC8(int i) {
                LegacyTextInputMethodRequest.this.onImeActionPerformed.invoke(ImeAction.m8656boximpl(i));
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public void onKeyEvent(KeyEvent keyEvent) {
                LegacyTextInputMethodRequest.this.getBaseInputConnection().sendKeyEvent(keyEvent);
            }

            @Override // androidx.compose.foundation.text.input.internal.InputEventCallback2
            public void onRequestCursorAnchorInfo(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
                LegacyTextInputMethodRequest.this.cursorAnchorInfoController.requestUpdate(z, z2, z3, z4, z5, z6);
            }
        }, this.imeOptions.getAutoCorrect(), this.legacyTextFieldState, this.textFieldSelectionManager, this.viewConfiguration);
        this.ics.add(new WeakReference<>(recordingInputConnection));
        return recordingInputConnection;
    }

    public final Rect getFocusedRect$foundation() {
        return this.focusedRect;
    }

    public final TextFieldValue getState() {
        return this.state;
    }

    public final View getView() {
        return this.view;
    }

    public final void notifyFocusedRect(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        this.focusedRect = new Rect(w65.b(rect.getLeft()), w65.b(rect.getTop()), w65.b(rect.getRight()), w65.b(rect.getBottom()));
        if (!this.ics.isEmpty() || (rect2 = this.focusedRect) == null) {
            return;
        }
        this.view.requestRectangleOnScreen(new Rect(rect2));
    }

    public final void setFocusedRect$foundation(Rect rect) {
        this.focusedRect = rect;
    }

    public final void startInput(TextFieldValue textFieldValue, LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode, ImeOptions imeOptions, nl3<? super List<? extends EditCommand>, j59> nl3Var, nl3<? super ImeAction, j59> nl3Var2) {
        this.state = textFieldValue;
        this.imeOptions = imeOptions;
        this.onEditCommand = nl3Var;
        this.onImeActionPerformed = nl3Var2;
        this.legacyTextFieldState = legacyPlatformTextInputNode != null ? legacyPlatformTextInputNode.getLegacyTextFieldState() : null;
        this.textFieldSelectionManager = legacyPlatformTextInputNode != null ? legacyPlatformTextInputNode.getTextFieldSelectionManager() : null;
        this.viewConfiguration = legacyPlatformTextInputNode != null ? legacyPlatformTextInputNode.getViewConfiguration() : null;
    }

    public final void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        boolean z = (TextRange.m8484equalsimpl0(this.state.m8741getSelectiond9O1mEE(), textFieldValue2.m8741getSelectiond9O1mEE()) && aa4.e(this.state.m8740getCompositionMzsxiRA(), textFieldValue2.m8740getCompositionMzsxiRA())) ? false : true;
        this.state = textFieldValue2;
        int size = this.ics.size();
        for (int i = 0; i < size; i++) {
            RecordingInputConnection recordingInputConnection = this.ics.get(i).get();
            if (recordingInputConnection != null) {
                recordingInputConnection.setTextFieldValue$foundation(textFieldValue2);
            }
        }
        this.cursorAnchorInfoController.invalidate();
        if (aa4.e(textFieldValue, textFieldValue2)) {
            if (z) {
                InputMethodManager inputMethodManager = this.inputMethodManager;
                int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldValue2.m8741getSelectiond9O1mEE());
                int iM8488getMaximpl = TextRange.m8488getMaximpl(textFieldValue2.m8741getSelectiond9O1mEE());
                TextRange textRangeM8740getCompositionMzsxiRA = this.state.m8740getCompositionMzsxiRA();
                int iM8489getMinimpl2 = textRangeM8740getCompositionMzsxiRA != null ? TextRange.m8489getMinimpl(textRangeM8740getCompositionMzsxiRA.m8495unboximpl()) : -1;
                TextRange textRangeM8740getCompositionMzsxiRA2 = this.state.m8740getCompositionMzsxiRA();
                inputMethodManager.updateSelection(iM8489getMinimpl, iM8488getMaximpl, iM8489getMinimpl2, textRangeM8740getCompositionMzsxiRA2 != null ? TextRange.m8488getMaximpl(textRangeM8740getCompositionMzsxiRA2.m8495unboximpl()) : -1);
                return;
            }
            return;
        }
        if (textFieldValue != null && (!aa4.e(textFieldValue.getText(), textFieldValue2.getText()) || (TextRange.m8484equalsimpl0(textFieldValue.m8741getSelectiond9O1mEE(), textFieldValue2.m8741getSelectiond9O1mEE()) && !aa4.e(textFieldValue.m8740getCompositionMzsxiRA(), textFieldValue2.m8740getCompositionMzsxiRA())))) {
            restartInputImmediately();
            return;
        }
        int size2 = this.ics.size();
        for (int i2 = 0; i2 < size2; i2++) {
            RecordingInputConnection recordingInputConnection2 = this.ics.get(i2).get();
            if (recordingInputConnection2 != null) {
                recordingInputConnection2.updateInputState(this.state, this.inputMethodManager);
            }
        }
    }

    public final void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, androidx.compose.ui.geometry.Rect rect, androidx.compose.ui.geometry.Rect rect2) {
        this.cursorAnchorInfoController.updateTextLayoutResult(textFieldValue, offsetMapping, textLayoutResult, rect, rect2);
    }
}
