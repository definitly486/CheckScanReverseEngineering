package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollingLogic2D$onScrollStopped$performFling$1", f = "Scrollable2D.kt", l = {383, 386, 389}, m = "invokeSuspend", v = 1)
public final class ScrollingLogic2D$onScrollStopped$performFling$1 extends pg8 implements bm3<Velocity, e02<? super Velocity>, Object> {
    /* synthetic */ long J$0;
    long J$1;
    int label;
    final /* synthetic */ ScrollingLogic2D this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic2D$onScrollStopped$performFling$1(ScrollingLogic2D scrollingLogic2D, e02<? super ScrollingLogic2D$onScrollStopped$performFling$1> e02Var) {
        super(2, e02Var);
        this.this$0 = scrollingLogic2D;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ScrollingLogic2D$onScrollStopped$performFling$1 scrollingLogic2D$onScrollStopped$performFling$1 = new ScrollingLogic2D$onScrollStopped$performFling$1(this.this$0, e02Var);
        scrollingLogic2D$onScrollStopped$performFling$1.J$0 = ((Velocity) obj).m9289unboximpl();
        return scrollingLogic2D$onScrollStopped$performFling$1;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Velocity velocity, e02<? super Velocity> e02Var) {
        return m1630invokesFctU(velocity.m9289unboximpl(), e02Var);
    }

    /* JADX INFO: renamed from: invoke-sF-c-tU, reason: not valid java name */
    public final Object m1630invokesFctU(long j, e02<? super Velocity> e02Var) {
        return ((ScrollingLogic2D$onScrollStopped$performFling$1) create(Velocity.m9271boximpl(j), e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0082, code lost:
    
        if (r0 == r6) goto L22;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
        /*
            r13 = this;
            a32 r6 = defpackage.a32.COROUTINE_SUSPENDED
            int r0 = r13.label
            r1 = 3
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L32
            if (r0 == r3) goto L2b
            if (r0 == r2) goto L22
            if (r0 != r1) goto L1b
            long r0 = r13.J$1
            long r2 = r13.J$0
            defpackage.r57.b(r14)
            r7 = r2
            r3 = r0
            r0 = r14
            goto L85
        L1b:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r0)
            r0 = 0
            return r0
        L22:
            long r2 = r13.J$1
            long r7 = r13.J$0
            defpackage.r57.b(r14)
            r0 = r14
            goto L65
        L2b:
            long r3 = r13.J$0
            defpackage.r57.b(r14)
            r0 = r14
            goto L49
        L32:
            defpackage.r57.b(r14)
            long r7 = r13.J$0
            androidx.compose.foundation.gestures.ScrollingLogic2D r0 = r13.this$0
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r0 = androidx.compose.foundation.gestures.ScrollingLogic2D.access$getNestedScrollDispatcher$p(r0)
            r13.J$0 = r7
            r13.label = r3
            java.lang.Object r0 = r0.m7421dispatchPreFlingQWom1Mo(r7, r13)
            if (r0 != r6) goto L48
            goto L84
        L48:
            r3 = r7
        L49:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r7 = r0.m9289unboximpl()
            long r7 = androidx.compose.ui.unit.Velocity.m9283minusAH228Gc(r3, r7)
            androidx.compose.foundation.gestures.ScrollingLogic2D r0 = r13.this$0
            r13.J$0 = r3
            r13.J$1 = r7
            r13.label = r2
            java.lang.Object r0 = r0.mo1590doFlingAnimationQWom1Mo(r7, r13)
            if (r0 != r6) goto L62
            goto L84
        L62:
            r11 = r7
            r7 = r3
            r2 = r11
        L65:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r9 = r0.m9289unboximpl()
            androidx.compose.foundation.gestures.ScrollingLogic2D r0 = r13.this$0
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r0 = androidx.compose.foundation.gestures.ScrollingLogic2D.access$getNestedScrollDispatcher$p(r0)
            long r2 = androidx.compose.ui.unit.Velocity.m9283minusAH228Gc(r2, r9)
            r13.J$0 = r7
            r13.J$1 = r9
            r13.label = r1
            r5 = r13
            r1 = r2
            r3 = r9
            java.lang.Object r0 = r0.m7419dispatchPostFlingRZ2iAVY(r1, r3, r5)
            if (r0 != r6) goto L85
        L84:
            return r6
        L85:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r0 = r0.m9289unboximpl()
            long r0 = androidx.compose.ui.unit.Velocity.m9283minusAH228Gc(r3, r0)
            long r0 = androidx.compose.ui.unit.Velocity.m9283minusAH228Gc(r7, r0)
            androidx.compose.ui.unit.Velocity r0 = androidx.compose.ui.unit.Velocity.m9271boximpl(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic2D$onScrollStopped$performFling$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
