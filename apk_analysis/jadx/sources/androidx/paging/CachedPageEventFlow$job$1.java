package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j44;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.vg5;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.CachedPageEventFlow$job$1", f = "CachedPageEventFlow.kt", l = {73}, m = "invokeSuspend", v = 1)
public final class CachedPageEventFlow$job$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ hd3<PageEvent<T>> $src;
    int label;
    final /* synthetic */ CachedPageEventFlow<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CachedPageEventFlow$job$1(hd3<? extends PageEvent<T>> hd3Var, CachedPageEventFlow<T> cachedPageEventFlow, e02<? super CachedPageEventFlow$job$1> e02Var) {
        super(2, e02Var);
        this.$src = hd3Var;
        this.this$0 = cachedPageEventFlow;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CachedPageEventFlow$job$1(this.$src, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CachedPageEventFlow$job$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.CachedPageEventFlow$job$1 for r4v5 'this'  e02
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L14
            if (r1 != r2) goto Ld
            defpackage.r57.b(r5)
            goto L38
        Ld:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L14:
            defpackage.r57.b(r5)
            hd3<androidx.paging.PageEvent<T>> r5 = r4.$src
            androidx.paging.CachedPageEventFlow$job$1$1 r1 = new androidx.paging.CachedPageEventFlow$job$1$1
            androidx.paging.CachedPageEventFlow<T> r3 = r4.this$0
            r1.<init>(r3)
            r4.label = r2
            p07 r2 = new p07
            r2.<init>()
            ef3 r3 = new ef3
            r3.<init>(r2, r1)
            java.lang.Object r4 = r5.collect(r3, r4)
            if (r4 != r0) goto L33
            goto L35
        L33:
            j59 r4 = defpackage.j59.a
        L35:
            if (r4 != r0) goto L38
            return r0
        L38:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.CachedPageEventFlow$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.paging.CachedPageEventFlow$job$1$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements id3 {
        final /* synthetic */ CachedPageEventFlow<T> this$0;

        public AnonymousClass1(CachedPageEventFlow<T> cachedPageEventFlow) {
            this.this$0 = cachedPageEventFlow;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        
            if (r6.record(r7, r0) == r1) goto L21;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(j44<? extends PageEvent<T>> j44Var, e02<? super j59> e02Var) {
            CachedPageEventFlow$job$1$1$emit$1 cachedPageEventFlow$job$1$1$emit$1;
            if (e02Var instanceof CachedPageEventFlow$job$1$1$emit$1) {
                cachedPageEventFlow$job$1$1$emit$1 = (CachedPageEventFlow$job$1$1$emit$1) e02Var;
                int i = cachedPageEventFlow$job$1$1$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    cachedPageEventFlow$job$1$1$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    cachedPageEventFlow$job$1$1$emit$1 = new CachedPageEventFlow$job$1$1$emit$1(this, e02Var);
                }
            } else {
                cachedPageEventFlow$job$1$1$emit$1 = new CachedPageEventFlow$job$1$1$emit$1(this, e02Var);
            }
            Object obj = cachedPageEventFlow$job$1$1$emit$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = cachedPageEventFlow$job$1$1$emit$1.label;
            if (i2 == 0) {
                r57.b(obj);
                vg5 vg5Var = ((CachedPageEventFlow) this.this$0).mutableSharedSrc;
                cachedPageEventFlow$job$1$1$emit$1.L$0 = j44Var;
                cachedPageEventFlow$job$1$1$emit$1.label = 1;
                if (vg5Var.emit(j44Var, cachedPageEventFlow$job$1$1$emit$1) != a32Var) {
                }
                return a32Var;
            }
            if (i2 == 1) {
                j44Var = (j44) cachedPageEventFlow$job$1$1$emit$1.L$0;
                r57.b(obj);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
            FlattenedPageController flattenedPageController = ((CachedPageEventFlow) this.this$0).pageController;
            cachedPageEventFlow$job$1$1$emit$1.L$0 = null;
            cachedPageEventFlow$job$1$1$emit$1.label = 2;
        }

        @Override // defpackage.id3
        public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
            return emit((j44) obj, (e02<? super j59>) e02Var);
        }
    }
}
