package androidx.navigationevent.compose;

import androidx.navigationevent.NavigationEventDispatcher;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.navigationevent.compose.RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1", f = "RememberNavigationEventDispatcherOwner.kt", l = {}, m = "invokeSuspend")
public final class RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ NavigationEventDispatcher $localDispatcher;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1(NavigationEventDispatcher navigationEventDispatcher, boolean z, e02<? super RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1> e02Var) {
        super(2, e02Var);
        this.$localDispatcher = navigationEventDispatcher;
        this.$enabled = z;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1(this.$localDispatcher, this.$enabled, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((RememberNavigationEventDispatcherOwnerKt$rememberNavigationEventDispatcherOwner$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$localDispatcher.setEnabled(this.$enabled);
        return j59.a;
    }
}
