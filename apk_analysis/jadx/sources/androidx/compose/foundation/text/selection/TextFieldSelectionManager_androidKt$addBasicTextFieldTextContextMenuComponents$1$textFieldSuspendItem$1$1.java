package androidx.compose.foundation.text.selection;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1", f = "TextFieldSelectionManager.android.kt", l = {98}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ nl3<e02<? super j59>, Object> $onClick;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1> e02Var) {
        super(2, e02Var);
        this.$onClick = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(this.$onClick, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            nl3<e02<? super j59>, Object> nl3Var = this.$onClick;
            this.label = 1;
            if (nl3Var.invoke(this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
