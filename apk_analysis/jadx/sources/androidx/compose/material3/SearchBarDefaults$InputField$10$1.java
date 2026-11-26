package androidx.compose.material3;

import androidx.compose.ui.focus.FocusManager;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.SearchBarDefaults$InputField$10$1", f = "SearchBar.kt", l = {}, m = "invokeSuspend")
public final class SearchBarDefaults$InputField$10$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ FocusManager $focusManager;
    final /* synthetic */ boolean $shouldClearFocusOnCollapse;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarDefaults$InputField$10$1(boolean z, FocusManager focusManager, e02<? super SearchBarDefaults$InputField$10$1> e02Var) {
        super(2, e02Var);
        this.$shouldClearFocusOnCollapse = z;
        this.$focusManager = focusManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SearchBarDefaults$InputField$10$1(this.$shouldClearFocusOnCollapse, this.$focusManager, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SearchBarDefaults$InputField$10$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        if (this.$shouldClearFocusOnCollapse) {
            FocusManager.clearFocus$default(this.$focusManager, false, 1, null);
        }
        return j59.a;
    }
}
