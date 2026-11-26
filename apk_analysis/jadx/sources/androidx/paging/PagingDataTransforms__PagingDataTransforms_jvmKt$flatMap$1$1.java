package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1", f = "PagingDataTransforms.jvm.kt", l = {52}, m = "invokeSuspend", v = 1)
public final class PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1<R> extends pg8 implements bm3<y22, e02<? super PageEvent<R>>, Object> {
    final /* synthetic */ PageEvent<T> $event;
    final /* synthetic */ nl3<T, Iterable<R>> $transform;
    int label;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1$1", f = "PagingDataTransforms.jvm.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements bm3<T, e02<? super Iterable<? extends R>>, Object> {
        final /* synthetic */ nl3<T, Iterable<R>> $transform;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super T, ? extends Iterable<? extends R>> nl3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$transform = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(T t, e02<? super Iterable<? extends R>> e02Var) {
            return ((AnonymousClass1) create(t, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            return this.$transform.invoke((T) this.L$0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1(PageEvent<T> pageEvent, nl3<? super T, ? extends Iterable<? extends R>> nl3Var, e02<? super PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1> e02Var) {
        super(2, e02Var);
        this.$event = pageEvent;
        this.$transform = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1(this.$event, this.$transform, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super PageEvent<R>> e02Var) {
        return ((PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1<R> for r5v2 'this'  e02
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L14
            if (r1 != r2) goto Ld
            defpackage.r57.b(r6)
            return r6
        Ld:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L14:
            defpackage.r57.b(r6)
            androidx.paging.PageEvent<T> r6 = r5.$event
            androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1$1 r1 = new androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1$1
            nl3<T, java.lang.Iterable<R>> r3 = r5.$transform
            r4 = 0
            r1.<init>(r3, r4)
            r5.label = r2
            java.lang.Object r5 = r6.flatMap(r1, r5)
            if (r5 != r0) goto L2a
            return r0
        L2a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$flatMap$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
