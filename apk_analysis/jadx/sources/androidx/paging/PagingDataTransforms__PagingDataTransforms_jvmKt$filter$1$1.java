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

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1", f = "PagingDataTransforms.jvm.kt", l = {66}, m = "invokeSuspend", v = 1)
public final class PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1<T> extends pg8 implements bm3<y22, e02<? super PageEvent<T>>, Object> {
    final /* synthetic */ PageEvent<T> $event;
    final /* synthetic */ nl3<T, Boolean> $predicate;
    int label;

    /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1$1", f = "PagingDataTransforms.jvm.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<T, e02<? super Boolean>, Object> {
        final /* synthetic */ nl3<T, Boolean> $predicate;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super T, Boolean> nl3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$predicate = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$predicate, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(T t, e02<? super Boolean> e02Var) {
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
            return this.$predicate.invoke((T) this.L$0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1(PageEvent<T> pageEvent, nl3<? super T, Boolean> nl3Var, e02<? super PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1> e02Var) {
        super(2, e02Var);
        this.$event = pageEvent;
        this.$predicate = nl3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1(this.$event, this.$predicate, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super PageEvent<T>> e02Var) {
        return ((PagingDataTransforms__PagingDataTransforms_jvmKt$filter$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        PageEvent<T> pageEvent = this.$event;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$predicate, null);
        this.label = 1;
        Object objFilter = pageEvent.filter(anonymousClass1, this);
        return objFilter == a32Var ? a32Var : objFilter;
    }
}
