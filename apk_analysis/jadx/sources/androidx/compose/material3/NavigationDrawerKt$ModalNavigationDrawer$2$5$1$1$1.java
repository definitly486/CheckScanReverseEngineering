package androidx.compose.material3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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
@bd2(c = "androidx.compose.material3.NavigationDrawerKt$ModalNavigationDrawer$2$5$1$1$1", f = "NavigationDrawer.kt", l = {TypedValues.CycleType.TYPE_VISIBILITY}, m = "invokeSuspend")
public final class NavigationDrawerKt$ModalNavigationDrawer$2$5$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ DrawerState $drawerState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavigationDrawerKt$ModalNavigationDrawer$2$5$1$1$1(DrawerState drawerState, e02<? super NavigationDrawerKt$ModalNavigationDrawer$2$5$1$1$1> e02Var) {
        super(2, e02Var);
        this.$drawerState = drawerState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new NavigationDrawerKt$ModalNavigationDrawer$2$5$1$1$1(this.$drawerState, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((NavigationDrawerKt$ModalNavigationDrawer$2$5$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            DrawerState drawerState = this.$drawerState;
            this.label = 1;
            if (drawerState.close(this) == a32Var) {
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
