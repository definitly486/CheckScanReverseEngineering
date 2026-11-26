package androidx.compose.ui.text.input;

import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public class TextInputService {
    public static final int $stable = 8;
    private final AtomicReference<TextInputSession> _currentInputSession = new AtomicReference<>(null);
    private final PlatformTextInputService platformTextInputService;

    public TextInputService(PlatformTextInputService platformTextInputService) {
        this.platformTextInputService = platformTextInputService;
    }

    public final TextInputSession getCurrentInputSession$ui_text() {
        return this._currentInputSession.get();
    }

    @ul2
    public final void hideSoftwareKeyboard() {
        this.platformTextInputService.hideSoftwareKeyboard();
    }

    @ul2
    public final void showSoftwareKeyboard() {
        if (getCurrentInputSession$ui_text() != null) {
            this.platformTextInputService.showSoftwareKeyboard();
        }
    }

    public TextInputSession startInput(TextFieldValue textFieldValue, ImeOptions imeOptions, nl3<? super List<? extends EditCommand>, j59> nl3Var, nl3<? super ImeAction, j59> nl3Var2) {
        this.platformTextInputService.startInput(textFieldValue, imeOptions, nl3Var, nl3Var2);
        TextInputSession textInputSession = new TextInputSession(this, this.platformTextInputService);
        this._currentInputSession.set(textInputSession);
        return textInputSession;
    }

    public void stopInput(TextInputSession textInputSession) {
        AtomicReference<TextInputSession> atomicReference = this._currentInputSession;
        while (!atomicReference.compareAndSet(textInputSession, null)) {
            if (atomicReference.get() != textInputSession) {
                return;
            }
        }
        this.platformTextInputService.stopInput();
    }

    public final void startInput() {
        this.platformTextInputService.startInput();
        this._currentInputSession.set(new TextInputSession(this, this.platformTextInputService));
    }

    public final void stopInput() {
        this._currentInputSession.set(null);
        this.platformTextInputService.stopInput();
    }
}
