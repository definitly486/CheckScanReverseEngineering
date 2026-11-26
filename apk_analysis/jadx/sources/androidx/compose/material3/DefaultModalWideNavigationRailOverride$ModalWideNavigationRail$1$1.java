package androidx.compose.material3;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.x81;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1", f = "WideNavigationRail.kt", l = {561}, m = "invokeSuspend")
public final class DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ x81<Boolean> $channel;
    final /* synthetic */ ModalWideNavigationRailState $modalState;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1$1", f = "WideNavigationRail.kt", l = {565, 567}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ ModalWideNavigationRailState $modalState;
        final /* synthetic */ boolean $newTarget;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, ModalWideNavigationRailState modalWideNavigationRailState, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$newTarget = z;
            this.$modalState = modalWideNavigationRailState;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$newTarget, this.$modalState, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0027, code lost:
        
            if (r1.expand(r4) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
        
            if (r1.collapse(r4) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
        
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
                goto L33
            L18:
                defpackage.r57.b(r5)
                boolean r5 = r4.$newTarget
                androidx.compose.material3.ModalWideNavigationRailState r1 = r4.$modalState
                if (r5 == 0) goto L2a
                r4.label = r3
                java.lang.Object r4 = r1.expand(r4)
                if (r4 != r0) goto L33
                goto L32
            L2a:
                r4.label = r2
                java.lang.Object r4 = r1.collapse(r4)
                if (r4 != r0) goto L33
            L32:
                return r0
            L33:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1(x81<Boolean> x81Var, ModalWideNavigationRailState modalWideNavigationRailState, e02<? super DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1> e02Var) {
        super(2, e02Var);
        this.$channel = x81Var;
        this.$modalState = modalWideNavigationRailState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1 defaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1 = new DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1(this.$channel, this.$modalState, e02Var);
        defaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1.L$0 = obj;
        return defaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0036 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0057  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:12:0x0037). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:14:0x003f
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 != r3) goto L16
            java.lang.Object r1 = r7.L$1
            k91 r1 = (defpackage.k91) r1
            java.lang.Object r4 = r7.L$0
            y22 r4 = (defpackage.y22) r4
            defpackage.r57.b(r8)
            goto L37
        L16:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L1c:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.L$0
            y22 r8 = (defpackage.y22) r8
            x81<java.lang.Boolean> r1 = r7.$channel
            k91 r1 = r1.iterator()
            r4 = r8
        L2a:
            r7.L$0 = r4
            r7.L$1 = r1
            r7.label = r3
            java.lang.Object r8 = r1.b(r7)
            if (r8 != r0) goto L37
            return r0
        L37:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L67
            java.lang.Object r8 = r1.next()
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            x81<java.lang.Boolean> r5 = r7.$channel
            java.lang.Object r5 = r5.i()
            java.lang.Object r5 = defpackage.p91.b(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            if (r5 == 0) goto L5b
            boolean r8 = r5.booleanValue()
        L5b:
            androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1$1 r5 = new androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1$1
            androidx.compose.material3.ModalWideNavigationRailState r6 = r7.$modalState
            r5.<init>(r8, r6, r2)
            r8 = 3
            defpackage.av0.c(r4, r2, r2, r5, r8)
            goto L2a
        L67:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DefaultModalWideNavigationRailOverride$ModalWideNavigationRail$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
