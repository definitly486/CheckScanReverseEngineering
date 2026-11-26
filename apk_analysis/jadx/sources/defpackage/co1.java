package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, 73, 76}, m = "invokeSuspend", v = 1)
public final class co1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public Object[] l;
    public x81 m;
    public byte[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ hd3<Object>[] t;
    public final /* synthetic */ ll3<Object[]> u;
    public final /* synthetic */ dm3<id3<Object>, Object[], e02<? super j59>, Object> v;
    public final /* synthetic */ id3<Object> w;

    @bd2(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {28}, m = "invokeSuspend", v = 1)
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public int l;
        public final /* synthetic */ hd3<Object>[] m;
        public final /* synthetic */ int n;
        public final /* synthetic */ AtomicInteger o;
        public final /* synthetic */ mu0 p;

        /* JADX INFO: renamed from: co1$a$a, reason: collision with other inner class name */
        public static final class C0124a<T> implements id3 {
            public final /* synthetic */ mu0 b;
            public final /* synthetic */ int c;

            /* JADX INFO: renamed from: co1$a$a$a, reason: collision with other inner class name */
            @bd2(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", l = {29, 30}, m = "emit", v = 1)
            public static final class C0125a extends f02 {
                public /* synthetic */ Object l;
                public final /* synthetic */ C0124a<T> m;
                public int n;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0125a(C0124a<? super T> c0124a, e02<? super C0125a> e02Var) {
                    super(e02Var);
                    this.m = c0124a;
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.l = obj;
                    this.n |= Integer.MIN_VALUE;
                    return this.m.emit(null, this);
                }
            }

            public C0124a(mu0 mu0Var, int i) {
                this.b = mu0Var;
                this.c = i;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
            
                if (defpackage.h.g(r0) == r1) goto L21;
             */
            @Override // defpackage.id3
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(T r6, defpackage.e02<? super defpackage.j59> r7) {
                /*
                    r5 = this;
                    boolean r0 = r7 instanceof co1.a.C0124a.C0125a
                    if (r0 == 0) goto L13
                    r0 = r7
                    co1$a$a$a r0 = (co1.a.C0124a.C0125a) r0
                    int r1 = r0.n
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.n = r1
                    goto L18
                L13:
                    co1$a$a$a r0 = new co1$a$a$a
                    r0.<init>(r5, r7)
                L18:
                    java.lang.Object r7 = r0.l
                    a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                    int r2 = r0.n
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L35
                    if (r2 == r4) goto L31
                    if (r2 != r3) goto L2a
                    defpackage.r57.b(r7)
                    goto L53
                L2a:
                    java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r5)
                    r5 = 0
                    return r5
                L31:
                    defpackage.r57.b(r7)
                    goto L4a
                L35:
                    defpackage.r57.b(r7)
                    j44 r7 = new j44
                    int r2 = r5.c
                    r7.<init>(r2, r6)
                    r0.n = r4
                    mu0 r5 = r5.b
                    java.lang.Object r5 = r5.send(r7, r0)
                    if (r5 != r1) goto L4a
                    goto L52
                L4a:
                    r0.n = r3
                    java.lang.Object r5 = defpackage.h.g(r0)
                    if (r5 != r1) goto L53
                L52:
                    return r1
                L53:
                    j59 r5 = defpackage.j59.a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: co1.a.C0124a.emit(java.lang.Object, e02):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(hd3[] hd3VarArr, int i, AtomicInteger atomicInteger, mu0 mu0Var, e02 e02Var) {
            super(2, e02Var);
            this.m = hd3VarArr;
            this.n = i;
            this.o = atomicInteger;
            this.p = mu0Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a(this.m, this.n, this.o, this.p, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.l;
            AtomicInteger atomicInteger = this.o;
            mu0 mu0Var = this.p;
            try {
                if (i == 0) {
                    r57.b(obj);
                    hd3<Object>[] hd3VarArr = this.m;
                    int i2 = this.n;
                    hd3<Object> hd3Var = hd3VarArr[i2];
                    C0124a c0124a = new C0124a(mu0Var, i2);
                    this.l = 1;
                    if (hd3Var.collect(c0124a, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    mu0Var.close(null);
                }
                return j59.a;
            } catch (Throwable th) {
                if (atomicInteger.decrementAndGet() == 0) {
                    mu0Var.close(null);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public co1(hd3<Object>[] hd3VarArr, ll3<Object[]> ll3Var, dm3<? super id3<Object>, ? super Object[], ? super e02<? super j59>, ? extends Object> dm3Var, id3<Object> id3Var, e02<? super co1> e02Var) {
        super(2, e02Var);
        this.t = hd3VarArr;
        this.u = ll3Var;
        this.v = dm3Var;
        this.w = id3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        co1 co1Var = new co1(this.t, this.u, this.v, this.w, e02Var);
        co1Var.s = obj;
        return co1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((co1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:27:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d5 A[LOOP:0: B:29:0x00d5->B:51:?, LOOP_START, PHI: r4 r13
      0x00d5: PHI (r4v4 int) = (r4v3 int), (r4v5 int) binds: [B:26:0x00d0, B:51:?] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r13v4 j44) = (r13v3 j44), (r13v14 j44) binds: [B:26:0x00d0, B:51:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:31:0x00df  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:39:0x0104  */
    /* JADX WARN: Code duplicated, block: B:42:0x011b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0143  */
    /* JADX WARN: Code duplicated, block: B:47:0x0151  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f4 A[EDGE_INSN: B:49:0x00f4->B:36:0x00f4 BREAK  A[LOOP:0: B:29:0x00d5->B:51:?], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0143 -> B:46:0x014d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.co1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
