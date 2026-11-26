package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1", f = "AppBar.kt", l = {2555}, m = "invokeSuspend")
public final class DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
    final /* synthetic */ SingleRowTopAppBarOverrideScope $this_SingleRowTopAppBar;
    /* synthetic */ float F$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1(SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, e02<? super DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1> e02Var) {
        super(3, e02Var);
        this.$this_SingleRowTopAppBar = singleRowTopAppBarOverrideScope;
    }

    public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
        DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1 defaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1 = new DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1(this.$this_SingleRowTopAppBar, e02Var);
        defaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1.F$0 = f;
        return defaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            float f = this.F$0;
            TopAppBarState state = this.$this_SingleRowTopAppBar.getScrollBehavior().getState();
            DecayAnimationSpec<Float> flingAnimationSpec = this.$this_SingleRowTopAppBar.getScrollBehavior().getFlingAnimationSpec();
            AnimationSpec<Float> snapAnimationSpec = this.$this_SingleRowTopAppBar.getScrollBehavior().getSnapAnimationSpec();
            this.label = 1;
            if (AppBarKt.settleAppBar(state, f, flingAnimationSpec, snapAnimationSpec, this) == a32Var) {
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

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
        return invoke(y22Var, f.floatValue(), e02Var);
    }
}
