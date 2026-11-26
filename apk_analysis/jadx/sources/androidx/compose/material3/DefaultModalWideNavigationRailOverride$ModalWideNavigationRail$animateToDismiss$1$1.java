package androidx.compose.material3;

import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1", f = "WideNavigationRail.kt", l = {531, 533}, m = "invokeSuspend")
public final class DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1 extends pg8 implements nl3<e02<? super j59>, Object> {
    final /* synthetic */ ModalWideNavigationRailState $modalState;
    final /* synthetic */ ModalWideNavigationRailOverrideScope $this_ModalWideNavigationRail;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1(ModalWideNavigationRailOverrideScope modalWideNavigationRailOverrideScope, ModalWideNavigationRailState modalWideNavigationRailState, e02<? super DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1> e02Var) {
        super(1, e02Var);
        this.$this_ModalWideNavigationRail = modalWideNavigationRailOverrideScope;
        this.$modalState = modalWideNavigationRailState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1(this.$this_ModalWideNavigationRail, this.$modalState, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        if (r5.collapse(r4) == r0) goto L17;
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
            goto L40
        L10:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L17:
            defpackage.r57.b(r5)
            goto L31
        L1b:
            defpackage.r57.b(r5)
            androidx.compose.material3.ModalWideNavigationRailOverrideScope r5 = r4.$this_ModalWideNavigationRail
            boolean r5 = r5.getShouldHideOnCollapse()
            if (r5 == 0) goto L31
            androidx.compose.material3.ModalWideNavigationRailState r5 = r4.$modalState
            r4.label = r3
            java.lang.Object r5 = r5.collapse(r4)
            if (r5 != r0) goto L31
            goto L3f
        L31:
            androidx.compose.material3.ModalWideNavigationRailOverrideScope r5 = r4.$this_ModalWideNavigationRail
            androidx.compose.material3.WideNavigationRailState r5 = r5.getState()
            r4.label = r2
            java.lang.Object r4 = r5.collapse(r4)
            if (r4 != r0) goto L40
        L3f:
            return r0
        L40:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$animateToDismiss$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
