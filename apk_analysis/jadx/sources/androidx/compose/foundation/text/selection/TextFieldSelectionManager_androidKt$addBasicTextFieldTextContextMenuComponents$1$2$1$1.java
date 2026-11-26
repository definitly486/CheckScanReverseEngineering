package androidx.compose.foundation.text.selection;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1", f = "TextFieldSelectionManager.android.kt", l = {}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1 extends pg8 implements nl3<e02<? super j59>, Object> {
    final /* synthetic */ TextFieldSelectionManager $this_with;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1(TextFieldSelectionManager textFieldSelectionManager, e02<? super TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1> e02Var) {
        super(1, e02Var);
        this.$this_with = textFieldSelectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1(this.$this_with, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$this_with.cut$foundation();
        return j59.a;
    }
}
