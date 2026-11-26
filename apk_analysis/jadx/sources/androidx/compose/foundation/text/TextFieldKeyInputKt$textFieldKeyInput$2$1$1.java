package androidx.compose.foundation.text;

import androidx.compose.ui.input.key.KeyEvent;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class TextFieldKeyInputKt$textFieldKeyInput$2$1$1 extends qm3 implements nl3<KeyEvent, Boolean> {
    public TextFieldKeyInputKt$textFieldKeyInput$2$1$1(Object obj) {
        super(1, obj, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
        return m2616invokeZmokQxo(keyEvent.m7390unboximpl());
    }

    /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
    public final Boolean m2616invokeZmokQxo(android.view.KeyEvent keyEvent) {
        return Boolean.valueOf(((TextFieldKeyInput) this.receiver).m2613processZmokQxo(keyEvent));
    }
}
