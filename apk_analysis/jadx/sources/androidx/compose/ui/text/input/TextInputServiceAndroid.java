package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.Choreographer;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.g03;
import defpackage.gh4;
import defpackage.h03;
import defpackage.h51;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.po4;
import defpackage.r07;
import defpackage.ul2;
import defpackage.w65;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class TextInputServiceAndroid implements PlatformTextInputService {
    public static final int $stable = 8;
    private final cl4 baseInputConnection$delegate;
    private final CursorAnchorInfoController cursorAnchorInfoController;
    private boolean editorHasFocus;
    private Rect focusedRect;
    private Runnable frameCallback;
    private List<WeakReference<RecordingInputConnection>> ics;
    private ImeOptions imeOptions;
    private final Executor inputCommandProcessorExecutor;
    private final InputMethodManager inputMethodManager;
    private nl3<? super List<? extends EditCommand>, j59> onEditCommand;
    private nl3<? super ImeAction, j59> onImeActionPerformed;
    private TextFieldValue state;
    private final MutableVector<TextInputCommand> textInputCommandQueue;
    private final View view;

    public enum TextInputCommand {
        StartInput,
        StopInput,
        ShowKeyboard,
        HideKeyboard;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<TextInputCommand> getEntries() {
            return $ENTRIES;
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextInputCommand.values().length];
            try {
                iArr[TextInputCommand.StartInput.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextInputCommand.StopInput.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextInputCommand.ShowKeyboard.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TextInputCommand.HideKeyboard.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.text.input.TextInputServiceAndroid$stopInput$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<ImeAction, j59> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(ImeAction imeAction) {
            m8743invokeKlQnJC8(imeAction.m8662unboximpl());
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke-KlQnJC8, reason: not valid java name */
        public final void m8743invokeKlQnJC8(int i) {
        }
    }

    public TextInputServiceAndroid(View view, MatrixPositionCalculator matrixPositionCalculator, InputMethodManager inputMethodManager, Executor executor) {
        this.view = view;
        this.inputMethodManager = inputMethodManager;
        this.inputCommandProcessorExecutor = executor;
        this.onEditCommand = TextInputServiceAndroid$onEditCommand$1.INSTANCE;
        this.onImeActionPerformed = TextInputServiceAndroid$onImeActionPerformed$1.INSTANCE;
        this.state = new TextFieldValue("", TextRange.Companion.m8496getZerod9O1mEE(), (TextRange) null, 4, (jh2) null);
        this.imeOptions = ImeOptions.Companion.getDefault();
        this.ics = new ArrayList();
        this.baseInputConnection$delegate = nm4.a(po4.NONE, new TextInputServiceAndroid$baseInputConnection$2(this));
        this.cursorAnchorInfoController = new CursorAnchorInfoController(matrixPositionCalculator, inputMethodManager);
        this.textInputCommandQueue = new MutableVector<>(new TextInputCommand[16], 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseInputConnection getBaseInputConnection() {
        return (BaseInputConnection) this.baseInputConnection$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void processInputCommands() {
        View viewFindFocus;
        if (!this.view.isFocused() && (viewFindFocus = this.view.getRootView().findFocus()) != null && viewFindFocus.onCheckIsTextEditor()) {
            this.textInputCommandQueue.clear();
            return;
        }
        r07 r07Var = new r07();
        r07 r07Var2 = new r07();
        MutableVector<TextInputCommand> mutableVector = this.textInputCommandQueue;
        TextInputCommand[] textInputCommandArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            processInputCommands$applyToState(textInputCommandArr[i], r07Var, r07Var2);
        }
        this.textInputCommandQueue.clear();
        if (aa4.e(r07Var.b, Boolean.TRUE)) {
            restartInputImmediately();
        }
        Boolean bool = (Boolean) r07Var2.b;
        if (bool != null) {
            setKeyboardVisibleImmediately(bool.booleanValue());
        }
        if (aa4.e(r07Var.b, Boolean.FALSE)) {
            restartInputImmediately();
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Boolean] */
    private static final void processInputCommands$applyToState(TextInputCommand textInputCommand, r07<Boolean> r07Var, r07<Boolean> r07Var2) {
        int i = WhenMappings.$EnumSwitchMapping$0[textInputCommand.ordinal()];
        if (i == 1) {
            ?? r3 = Boolean.TRUE;
            r07Var.b = r3;
            r07Var2.b = r3;
        } else if (i == 2) {
            ?? r4 = Boolean.FALSE;
            r07Var.b = r4;
            r07Var2.b = r4;
        } else if (i != 3 && i != 4) {
            me0.e();
        } else {
            if (aa4.e(r07Var.b, Boolean.FALSE)) {
                return;
            }
            r07Var2.b = Boolean.valueOf(textInputCommand == TextInputCommand.ShowKeyboard);
        }
    }

    private final void restartInputImmediately() {
        this.inputMethodManager.restartInput();
    }

    private final void sendInputCommand(TextInputCommand textInputCommand) {
        this.textInputCommandQueue.add(textInputCommand);
        if (this.frameCallback == null) {
            h51 h51Var = new h51(this, 2);
            this.inputCommandProcessorExecutor.execute(h51Var);
            this.frameCallback = h51Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendInputCommand$lambda$0(TextInputServiceAndroid textInputServiceAndroid) {
        textInputServiceAndroid.frameCallback = null;
        textInputServiceAndroid.processInputCommands();
    }

    private final void setKeyboardVisibleImmediately(boolean z) {
        InputMethodManager inputMethodManager = this.inputMethodManager;
        if (z) {
            inputMethodManager.showSoftInput();
        } else {
            inputMethodManager.hideSoftInput();
        }
    }

    public final InputConnection createInputConnection(EditorInfo editorInfo) {
        if (!this.editorHasFocus) {
            return null;
        }
        TextInputServiceAndroid_androidKt.update(editorInfo, this.imeOptions, this.state);
        TextInputServiceAndroid_androidKt.updateWithEmojiCompat(editorInfo);
        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.state, new InputEventCallback2() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid.createInputConnection.1
            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void onConnectionClosed(RecordingInputConnection recordingInputConnection2) {
                int size = TextInputServiceAndroid.this.ics.size();
                for (int i = 0; i < size; i++) {
                    if (aa4.e(((WeakReference) TextInputServiceAndroid.this.ics.get(i)).get(), recordingInputConnection2)) {
                        TextInputServiceAndroid.this.ics.remove(i);
                        return;
                    }
                }
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void onEditCommands(List<? extends EditCommand> list) {
                TextInputServiceAndroid.this.onEditCommand.invoke(list);
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            /* JADX INFO: renamed from: onImeAction-KlQnJC8 */
            public void mo8691onImeActionKlQnJC8(int i) {
                TextInputServiceAndroid.this.onImeActionPerformed.invoke(ImeAction.m8656boximpl(i));
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void onKeyEvent(KeyEvent keyEvent) {
                TextInputServiceAndroid.this.getBaseInputConnection().sendKeyEvent(keyEvent);
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void onRequestCursorAnchorInfo(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
                TextInputServiceAndroid.this.cursorAnchorInfoController.requestUpdate(z, z2, z3, z4, z5, z6);
            }
        }, this.imeOptions.getAutoCorrect());
        this.ics.add(new WeakReference<>(recordingInputConnection));
        return recordingInputConnection;
    }

    public final TextFieldValue getState$ui() {
        return this.state;
    }

    public final View getView() {
        return this.view;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void hideSoftwareKeyboard() {
        sendInputCommand(TextInputCommand.HideKeyboard);
    }

    public final boolean isEditorFocused() {
        return this.editorHasFocus;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    @ul2
    public void notifyFocusedRect(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        this.focusedRect = new Rect(w65.b(rect.getLeft()), w65.b(rect.getTop()), w65.b(rect.getRight()), w65.b(rect.getBottom()));
        if (!this.ics.isEmpty() || (rect2 = this.focusedRect) == null) {
            return;
        }
        this.view.requestRectangleOnScreen(new Rect(rect2));
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void showSoftwareKeyboard() {
        sendInputCommand(TextInputCommand.ShowKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, nl3<? super List<? extends EditCommand>, j59> nl3Var, nl3<? super ImeAction, j59> nl3Var2) {
        this.editorHasFocus = true;
        this.state = textFieldValue;
        this.imeOptions = imeOptions;
        this.onEditCommand = nl3Var;
        this.onImeActionPerformed = nl3Var2;
        sendInputCommand(TextInputCommand.StartInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void stopInput() {
        this.editorHasFocus = false;
        this.onEditCommand = C06541.INSTANCE;
        this.onImeActionPerformed = AnonymousClass2.INSTANCE;
        this.focusedRect = null;
        sendInputCommand(TextInputCommand.StopInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void updateState(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        boolean z = (TextRange.m8484equalsimpl0(this.state.m8741getSelectiond9O1mEE(), textFieldValue2.m8741getSelectiond9O1mEE()) && aa4.e(this.state.m8740getCompositionMzsxiRA(), textFieldValue2.m8740getCompositionMzsxiRA())) ? false : true;
        this.state = textFieldValue2;
        int size = this.ics.size();
        for (int i = 0; i < size; i++) {
            RecordingInputConnection recordingInputConnection = this.ics.get(i).get();
            if (recordingInputConnection != null) {
                recordingInputConnection.setMTextFieldValue$ui(textFieldValue2);
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

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void updateTextLayoutResult(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, nl3<? super Matrix, j59> nl3Var, androidx.compose.ui.geometry.Rect rect, androidx.compose.ui.geometry.Rect rect2) {
        this.cursorAnchorInfoController.updateTextLayoutResult(textFieldValue, offsetMapping, textLayoutResult, nl3Var, rect, rect2);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.text.input.TextInputServiceAndroid$stopInput$1, reason: invalid class name and case insensitive filesystem */
    public static final class C06541 extends gh4 implements nl3<List<? extends EditCommand>, j59> {
        public static final C06541 INSTANCE = new C06541();

        public C06541() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(List<? extends EditCommand> list) {
            invoke2(list);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(List<? extends EditCommand> list) {
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void startInput() {
        sendInputCommand(TextInputCommand.StartInput);
    }

    public /* synthetic */ TextInputServiceAndroid(View view, MatrixPositionCalculator matrixPositionCalculator, InputMethodManager inputMethodManager, Executor executor, int i, jh2 jh2Var) {
        this(view, matrixPositionCalculator, inputMethodManager, (i & 8) != 0 ? TextInputServiceAndroid_androidKt.asExecutor(Choreographer.getInstance()) : executor);
    }

    public TextInputServiceAndroid(View view, MatrixPositionCalculator matrixPositionCalculator) {
        this(view, matrixPositionCalculator, new InputMethodManagerImpl(view), null, 8, null);
    }
}
