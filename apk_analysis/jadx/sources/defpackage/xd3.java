package defpackage;

import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", l = {413}, m = "invokeSuspend", v = 1)
public final class xd3 extends pg8 implements dm3<y22, id3<Object>, e02<? super j59>, Object> {
    public qz6 l;
    public long m;
    public int n;
    public int o;
    public /* synthetic */ y22 p;
    public /* synthetic */ id3 q;
    public final /* synthetic */ long r;
    public final /* synthetic */ hd3<Object> s;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1", f = "Delay.kt", l = {395}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<p91<Object>, e02<? super Boolean>, Object> {
        public Object l;
        public int m;
        public /* synthetic */ Object n;
        public final /* synthetic */ id3<Object> o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(id3<Object> id3Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.o = id3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = new a(this.o, e02Var);
            aVar.n = ((p91) obj).a;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(p91<Object> p91Var, e02<? super Boolean> e02Var) {
            Object obj = p91Var.a;
            a aVar = new a(this.o, e02Var);
            aVar.n = obj;
            return aVar.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object obj2 = this.n;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.m;
            if (i == 0) {
                r57.b(obj);
                if (!(obj2 instanceof p91.b)) {
                    this.n = null;
                    this.l = obj2;
                    this.m = 1;
                    if (this.o.emit(obj2, this) == a32Var) {
                        return a32Var;
                    }
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = this.l;
                r57.b(obj);
            }
            if (!(obj2 instanceof p91.a)) {
                return Boolean.TRUE;
            }
            Throwable thA = p91.a(obj2);
            if (thA == null) {
                return Boolean.FALSE;
            }
            throw thA;
        }
    }

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2", f = "Delay.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class b extends pg8 implements nl3<e02<?>, Object> {
        public final /* synthetic */ long l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(long j, e02<? super b> e02Var) {
            super(1, e02Var);
            this.l = j;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new b(this.l, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<?> e02Var) {
            ((b) create(e02Var)).invokeSuspend(j59.a);
            throw null;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            throw new TimeoutCancellationException("Timed out waiting for " + ((Object) wt2.l(this.l)), null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd3(long j, hd3<Object> hd3Var, e02<? super xd3> e02Var) {
        super(3, e02Var);
        this.r = j;
        this.s = hd3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(y22 y22Var, id3<Object> id3Var, e02<? super j59> e02Var) {
        xd3 xd3Var = new xd3(this.r, this.s, e02Var);
        xd3Var.p = y22Var;
        xd3Var.q = id3Var;
        return xd3Var.invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x00ad  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00a2 -> B:20:0x00a5). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            r18 = this;
            r0 = r18
            y22 r1 = r0.p
            id3 r2 = r0.q
            a32 r3 = defpackage.a32.COROUTINE_SUSPENDED
            int r4 = r0.o
            r5 = 1
            r6 = 0
            r7 = 0
            if (r4 == 0) goto L24
            if (r4 != r5) goto L1e
            int r1 = r0.n
            long r8 = r0.m
            qz6 r4 = r0.l
            defpackage.r57.b(r19)
            r10 = r19
            goto La5
        L1e:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r0)
            return r7
        L24:
            defpackage.r57.b(r19)
            r8 = 0
            long r10 = r0.r
            int r4 = defpackage.wt2.d(r10, r8)
            if (r4 <= 0) goto Lb0
            hd3<java.lang.Object> r4 = r0.s
            hd3 r13 = defpackage.ud3.a(r4, r6)
            boolean r4 = r13 instanceof defpackage.d91
            if (r4 == 0) goto L3f
            r4 = r13
            d91 r4 = (defpackage.d91) r4
            goto L40
        L3f:
            r4 = r7
        L40:
            if (r4 != 0) goto L4e
            i91 r12 = new i91
            r16 = 0
            r17 = 14
            r14 = 0
            r15 = 0
            r12.<init>(r13, r14, r15, r16, r17)
            r4 = r12
        L4e:
            qz6 r1 = r4.k(r1)
            r4 = r1
            r1 = r6
            r8 = r10
        L55:
            zl7 r11 = new zl7
            o22 r10 = r0.getContext()
            r11.<init>(r10)
            wl7 r10 = r4.h()
            xd3$a r12 = new xd3$a
            r12.<init>(r2, r7)
            r11.k(r10, r12)
            xd3$b r10 = new xd3$b
            r10.<init>(r8, r7)
            long r12 = defpackage.yk2.d(r8)
            kw5 r14 = new kw5
            r14.<init>(r12)
            jw5 r13 = defpackage.jw5.c
            r13.getClass()
            r12 = 3
            defpackage.v39.c(r12, r13)
            r16 = r10
            zl7$a r10 = new zl7$a
            bh8 r15 = defpackage.dm7.e
            r17 = 0
            r12 = r14
            dm7$a r14 = dm7.a.b
            r10.<init>(r12, r13, r14, r15, r16, r17)
            r11.l(r10, r6)
            r0.p = r7
            r0.q = r2
            r0.l = r4
            r0.m = r8
            r0.n = r1
            r0.o = r5
            java.lang.Object r10 = defpackage.zl7.g(r11, r0)
            if (r10 != r3) goto La5
            return r3
        La5:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L55
            j59 r0 = defpackage.j59.a
            return r0
        Lb0:
            kotlinx.coroutines.TimeoutCancellationException r0 = new kotlinx.coroutines.TimeoutCancellationException
            java.lang.String r1 = "Timed out immediately"
            r0.<init>(r1, r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xd3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
