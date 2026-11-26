package androidx.compose.foundation.text;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.BasicSecureTextFieldKt$BasicSecureTextField$2$1", f = "BasicSecureTextField.kt", l = {}, m = "invokeSuspend", v = 1)
public final class BasicSecureTextFieldKt$BasicSecureTextField$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ boolean $revealLastTypedEnabled;
    final /* synthetic */ SecureTextFieldController $secureTextFieldController;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasicSecureTextFieldKt$BasicSecureTextField$2$1(boolean z, SecureTextFieldController secureTextFieldController, e02<? super BasicSecureTextFieldKt$BasicSecureTextField$2$1> e02Var) {
        super(2, e02Var);
        this.$revealLastTypedEnabled = z;
        this.$secureTextFieldController = secureTextFieldController;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new BasicSecureTextFieldKt$BasicSecureTextField$2$1(this.$revealLastTypedEnabled, this.$secureTextFieldController, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((BasicSecureTextFieldKt$BasicSecureTextField$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (!this.$revealLastTypedEnabled) {
            this.$secureTextFieldController.getPasswordInputTransformation().hide();
        }
        return j59.a;
    }
}
