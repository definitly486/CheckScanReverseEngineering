package androidx.compose.material3;

import androidx.activity.BackEventCompat;
import androidx.compose.animation.core.SuspendAnimationKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1", f = "NavigationDrawer.kt", l = {957, 983, 983, 983}, m = "invokeSuspend")
public final class NavigationDrawerKt$DrawerPredictiveBackHandler$2$1 extends pg8 implements bm3<hd3<? extends BackEventCompat>, e02<? super j59>, Object> {
    final /* synthetic */ DrawerPredictiveBackState $drawerPredictiveBackState;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ boolean $isRtl;
    final /* synthetic */ o07 $maxScaleXDistanceGrow;
    final /* synthetic */ o07 $maxScaleXDistanceShrink;
    final /* synthetic */ o07 $maxScaleYDistance;
    final /* synthetic */ y22 $scope;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2", f = "NavigationDrawer.kt", l = {974}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ DrawerPredictiveBackState $drawerPredictiveBackState;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(DrawerPredictiveBackState drawerPredictiveBackState, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$drawerPredictiveBackState = drawerPredictiveBackState;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(DrawerPredictiveBackState drawerPredictiveBackState, float f, float f2) {
            drawerPredictiveBackState.setScaleXDistance(f);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$drawerPredictiveBackState, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            AnonymousClass2 anonymousClass2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                float scaleXDistance = this.$drawerPredictiveBackState.getScaleXDistance();
                final DrawerPredictiveBackState drawerPredictiveBackState = this.$drawerPredictiveBackState;
                bm3 bm3Var = new bm3() { // from class: androidx.compose.material3.x2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return NavigationDrawerKt$DrawerPredictiveBackHandler$2$1.AnonymousClass2.invokeSuspend$lambda$0(drawerPredictiveBackState, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
                    }
                };
                this.label = 1;
                anonymousClass2 = this;
                if (SuspendAnimationKt.animate$default(scaleXDistance, 0.0f, 0.0f, null, bm3Var, anonymousClass2, 12, null) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                anonymousClass2 = this;
            }
            anonymousClass2.$drawerPredictiveBackState.clear();
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavigationDrawerKt$DrawerPredictiveBackHandler$2$1(DrawerPredictiveBackState drawerPredictiveBackState, y22 y22Var, DrawerState drawerState, boolean z, o07 o07Var, o07 o07Var2, o07 o07Var3, e02<? super NavigationDrawerKt$DrawerPredictiveBackHandler$2$1> e02Var) {
        super(2, e02Var);
        this.$drawerPredictiveBackState = drawerPredictiveBackState;
        this.$scope = y22Var;
        this.$drawerState = drawerState;
        this.$isRtl = z;
        this.$maxScaleXDistanceGrow = o07Var;
        this.$maxScaleXDistanceShrink = o07Var2;
        this.$maxScaleYDistance = o07Var3;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        NavigationDrawerKt$DrawerPredictiveBackHandler$2$1 navigationDrawerKt$DrawerPredictiveBackHandler$2$1 = new NavigationDrawerKt$DrawerPredictiveBackHandler$2$1(this.$drawerPredictiveBackState, this.$scope, this.$drawerState, this.$isRtl, this.$maxScaleXDistanceGrow, this.$maxScaleXDistanceShrink, this.$maxScaleYDistance, e02Var);
        navigationDrawerKt$DrawerPredictiveBackHandler$2$1.L$0 = obj;
        return navigationDrawerKt$DrawerPredictiveBackHandler$2$1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(hd3<BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return ((NavigationDrawerKt$DrawerPredictiveBackHandler$2$1) create(hd3Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
    
        if (r14.close(r13) == r1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
    
        if (r14.close(r13) == r1) goto L40;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
        /*
            r13 = this;
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r0 = r13.label
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r0 == 0) goto L2e
            if (r0 == r5) goto L27
            if (r0 == r4) goto L23
            if (r0 == r3) goto L23
            if (r0 == r2) goto L1a
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r13)
            r13 = 0
            return r13
        L1a:
            java.lang.Object r13 = r13.L$0
            java.lang.Throwable r13 = (java.lang.Throwable) r13
            defpackage.r57.b(r14)
            goto Lb5
        L23:
            defpackage.r57.b(r14)
            goto L90
        L27:
            defpackage.r57.b(r14)     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            goto L4d
        L2b:
            r0 = move-exception
            r14 = r0
            goto L93
        L2e:
            defpackage.r57.b(r14)
            java.lang.Object r14 = r13.L$0
            hd3 r14 = (defpackage.hd3) r14
            androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$1 r7 = new androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$1     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            androidx.compose.material3.DrawerPredictiveBackState r8 = r13.$drawerPredictiveBackState     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            boolean r9 = r13.$isRtl     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            o07 r10 = r13.$maxScaleXDistanceGrow     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            o07 r11 = r13.$maxScaleXDistanceShrink     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            o07 r12 = r13.$maxScaleYDistance     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            r7.<init>()     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            r13.label = r5     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            java.lang.Object r14 = r14.collect(r7, r13)     // Catch: java.lang.Throwable -> L2b java.util.concurrent.CancellationException -> L6c
            if (r14 != r1) goto L4d
            goto Lb3
        L4d:
            androidx.compose.material3.DrawerPredictiveBackState r14 = r13.$drawerPredictiveBackState
            boolean r14 = r14.getSwipeEdgeMatchesDrawer()
            if (r14 == 0) goto L61
            y22 r14 = r13.$scope
            androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2 r0 = new androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2
            androidx.compose.material3.DrawerPredictiveBackState r2 = r13.$drawerPredictiveBackState
            r0.<init>(r2, r6)
            defpackage.av0.c(r14, r6, r6, r0, r3)
        L61:
            androidx.compose.material3.DrawerState r14 = r13.$drawerState
            r13.label = r4
            java.lang.Object r13 = r14.close(r13)
            if (r13 != r1) goto L90
            goto Lb3
        L6c:
            androidx.compose.material3.DrawerPredictiveBackState r14 = r13.$drawerPredictiveBackState     // Catch: java.lang.Throwable -> L2b
            r14.clear()     // Catch: java.lang.Throwable -> L2b
            androidx.compose.material3.DrawerPredictiveBackState r14 = r13.$drawerPredictiveBackState
            boolean r14 = r14.getSwipeEdgeMatchesDrawer()
            if (r14 == 0) goto L85
            y22 r14 = r13.$scope
            androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2 r0 = new androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2
            androidx.compose.material3.DrawerPredictiveBackState r2 = r13.$drawerPredictiveBackState
            r0.<init>(r2, r6)
            defpackage.av0.c(r14, r6, r6, r0, r3)
        L85:
            androidx.compose.material3.DrawerState r14 = r13.$drawerState
            r13.label = r3
            java.lang.Object r13 = r14.close(r13)
            if (r13 != r1) goto L90
            goto Lb3
        L90:
            j59 r13 = defpackage.j59.a
            return r13
        L93:
            androidx.compose.material3.DrawerPredictiveBackState r0 = r13.$drawerPredictiveBackState
            boolean r0 = r0.getSwipeEdgeMatchesDrawer()
            if (r0 == 0) goto La7
            y22 r0 = r13.$scope
            androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2 r4 = new androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1$2
            androidx.compose.material3.DrawerPredictiveBackState r5 = r13.$drawerPredictiveBackState
            r4.<init>(r5, r6)
            defpackage.av0.c(r0, r6, r6, r4, r3)
        La7:
            androidx.compose.material3.DrawerState r0 = r13.$drawerState
            r13.L$0 = r14
            r13.label = r2
            java.lang.Object r13 = r0.close(r13)
            if (r13 != r1) goto Lb4
        Lb3:
            return r1
        Lb4:
            r13 = r14
        Lb5:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.NavigationDrawerKt$DrawerPredictiveBackHandler$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(hd3<? extends BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return invoke2((hd3<BackEventCompat>) hd3Var, e02Var);
    }
}
