package androidx.compose.material3;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1", f = "BottomSheetScaffold.kt", l = {344, 346}, m = "invokeSuspend")
public final class BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ SheetState $state;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1(SheetState sheetState, e02<? super BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1> e02Var) {
        super(2, e02Var);
        this.$state = sheetState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1(this.$state, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if (r1.hide(r4) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
    
        if (r1.partialExpand(r4) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        return r0;
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
            if (r1 == 0) goto L18
            if (r1 == r3) goto L14
            if (r1 != r2) goto Ld
            goto L14
        Ld:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L14:
            defpackage.r57.b(r5)
            goto L37
        L18:
            defpackage.r57.b(r5)
            androidx.compose.material3.SheetState r5 = r4.$state
            boolean r5 = r5.getSkipHiddenState$material3()
            androidx.compose.material3.SheetState r1 = r4.$state
            if (r5 != 0) goto L2e
            r4.label = r3
            java.lang.Object r4 = r1.hide(r4)
            if (r4 != r0) goto L37
            goto L36
        L2e:
            r4.label = r2
            java.lang.Object r4 = r1.partialExpand(r4)
            if (r4 != r0) goto L37
        L36:
            return r0
        L37:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
