package androidx.compose.ui.text.input;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class InputMethodManagerImpl$imm$2 extends gh4 implements ll3<android.view.inputmethod.InputMethodManager> {
    final /* synthetic */ InputMethodManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputMethodManagerImpl$imm$2(InputMethodManagerImpl inputMethodManagerImpl) {
        super(0);
        this.this$0 = inputMethodManagerImpl;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final android.view.inputmethod.InputMethodManager invoke() {
        Object systemService = this.this$0.view.getContext().getSystemService("input_method");
        systemService.getClass();
        return (android.view.inputmethod.InputMethodManager) systemService;
    }
}
