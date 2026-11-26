package androidx.compose.material3;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1", f = "WideNavigationRail.kt", l = {538, 539}, m = "invokeSuspend")
public final class DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1 extends pg8 implements bm3<Float, e02<? super j59>, Object> {
    final /* synthetic */ ModalWideNavigationRailState $modalState;
    final /* synthetic */ ModalWideNavigationRailOverrideScope $this_ModalWideNavigationRail;
    /* synthetic */ float F$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1(ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope, ModalWideNavigationRailState modalWideNavigationRailState, e02<? super DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1> e02Var) {
        super(2, e02Var);
        this.$this_ModalWideNavigationRail = modalWideNavigationRailOverrideScope;
        this.$modalState = modalWideNavigationRailState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1 defaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1 = new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1(this.$this_ModalWideNavigationRail, this.$modalState, e02Var);
        defaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1.F$0 = ((Number) obj).floatValue();
        return defaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1;
    }

    public final Object invoke(float f, e02<? super j59> e02Var) {
        return ((DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1) create(Float.valueOf(f), e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
    
        if (r5.collapse(r4) == r0) goto L19;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r5)
            goto L4e
        L10:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L17:
            defpackage.r57.b(r5)
            goto L33
        L1b:
            defpackage.r57.b(r5)
            float r5 = r4.F$0
            androidx.compose.material3.ModalWideNavigationRailOverrideScope r1 = r4.$this_ModalWideNavigationRail
            boolean r1 = r1.getShouldHideOnCollapse()
            if (r1 == 0) goto L4e
            androidx.compose.material3.ModalWideNavigationRailState r1 = r4.$modalState
            r4.label = r3
            java.lang.Object r5 = r1.settle$material3(r5, r4)
            if (r5 != r0) goto L33
            goto L4d
        L33:
            androidx.compose.material3.ModalWideNavigationRailState r5 = r4.$modalState
            androidx.compose.material3.WideNavigationRailValue r5 = r5.getTargetValue()
            boolean r5 = androidx.compose.material3.WideNavigationRailStateKt.isExpanded(r5)
            if (r5 != 0) goto L4e
            androidx.compose.material3.ModalWideNavigationRailOverrideScope r5 = r4.$this_ModalWideNavigationRail
            androidx.compose.material3.WideNavigationRailState r5 = r5.getState()
            r4.label = r2
            java.lang.Object r4 = r5.collapse(r4)
            if (r4 != r0) goto L4e
        L4d:
            return r0
        L4e:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$settleToDismiss$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Float f, e02<? super j59> e02Var) {
        return invoke(f.floatValue(), e02Var);
    }
}
