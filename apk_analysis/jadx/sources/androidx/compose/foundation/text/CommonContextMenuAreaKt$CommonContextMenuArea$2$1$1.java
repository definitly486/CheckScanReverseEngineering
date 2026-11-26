package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.spatial.RectListKt;
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
@bd2(c = "androidx.compose.foundation.text.CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1", f = "CommonContextMenuArea.kt", l = {RectListKt.BitOffsetForGesturable}, m = "invokeSuspend", v = 1)
public final class CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ MutableState<MenuItemsAvailability> $menuItemsAvailability;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1(MutableState<MenuItemsAvailability> mutableState, TextFieldSelectionManager textFieldSelectionManager, e02<? super CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1> e02Var) {
        super(2, e02Var);
        this.$menuItemsAvailability = mutableState;
        this.$manager = textFieldSelectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1(this.$menuItemsAvailability, this.$manager, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CommonContextMenuAreaKt$CommonContextMenuArea$2$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        MutableState mutableState;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            MutableState<MenuItemsAvailability> mutableState2 = this.$menuItemsAvailability;
            TextFieldSelectionManager textFieldSelectionManager = this.$manager;
            this.L$0 = mutableState2;
            this.label = 1;
            Object contextMenuItemsAvailability = CommonContextMenuAreaKt.getContextMenuItemsAvailability(textFieldSelectionManager, this);
            if (contextMenuItemsAvailability == a32Var) {
                return a32Var;
            }
            obj = contextMenuItemsAvailability;
            mutableState = mutableState2;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableState = (MutableState) this.L$0;
            r57.b(obj);
        }
        mutableState.setValue(obj);
        return j59.a;
    }
}
