package androidx.core.view;

import android.view.View;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {410, 412}, m = "invokeSuspend", v = 1)
public final class ViewKt$allViews$1 extends f57 implements bm3<bp7<? super View>, e02<? super j59>, Object> {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, e02<? super ViewKt$allViews$1> e02Var) {
        super(2, e02Var);
        this.$this_allViews = view;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, e02Var);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(bp7<? super View> bp7Var, e02<? super j59> e02Var) {
        return ((ViewKt$allViews$1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
    
        if (r5 == r0) goto L20;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            defpackage.r57.b(r6)
            goto L57
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            return r2
        L17:
            java.lang.Object r1 = r5.L$0
            bp7 r1 = (defpackage.bp7) r1
            defpackage.r57.b(r6)
            goto L34
        L1f:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.L$0
            r1 = r6
            bp7 r1 = (defpackage.bp7) r1
            android.view.View r6 = r5.$this_allViews
            r5.L$0 = r1
            r5.label = r4
            a32 r6 = r1.a(r5, r6)
            if (r6 != r0) goto L34
            goto L56
        L34:
            android.view.View r6 = r5.$this_allViews
            boolean r4 = r6 instanceof android.view.ViewGroup
            if (r4 == 0) goto L57
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            zo7 r6 = androidx.core.view.ViewGroupKt.getDescendants(r6)
            r5.L$0 = r2
            r5.label = r3
            r1.getClass()
            java.util.Iterator r6 = r6.iterator()
            java.lang.Object r5 = r1.b(r6, r5)
            if (r5 != r0) goto L52
            goto L54
        L52:
            j59 r5 = defpackage.j59.a
        L54:
            if (r5 != r0) goto L57
        L56:
            return r0
        L57:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.ViewKt$allViews$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
