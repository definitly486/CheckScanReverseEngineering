package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1", f = "AsyncPagingDataDiffer.kt", l = {36}, m = "invokeSuspend", v = 1)
public final class AsyncPagingDataDiffer$special$$inlined$transform$1 extends pg8 implements bm3<id3<? super CombinedLoadStates>, e02<? super j59>, Object> {
    final /* synthetic */ hd3 $this_transform;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AsyncPagingDataDiffer this$0;

    /* JADX INFO: renamed from: androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements id3 {
        final /* synthetic */ id3<CombinedLoadStates> $$this$flow;
        final /* synthetic */ AsyncPagingDataDiffer this$0;

        /* JADX INFO: renamed from: androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1$1", f = "AsyncPagingDataDiffer.kt", l = {40, 41, 43}, m = "emit", v = 1)
        public static final class C00941 extends f02 {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            public C00941(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return AnonymousClass1.this.emit(null, this);
            }
        }

        public AnonymousClass1(id3 id3Var, AsyncPagingDataDiffer asyncPagingDataDiffer) {
            this.this$0 = asyncPagingDataDiffer;
            this.$$this$flow = id3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
        
            if (r9.emit(r8, r0) == r1) goto L31;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.id3
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(T r8, defpackage.e02<? super defpackage.j59> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1.AnonymousClass1.C00941
                if (r0 == 0) goto L13
                r0 = r9
                androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1$1$1 r0 = (androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1.AnonymousClass1.C00941) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1$1$1 r0 = new androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1$1$1
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 3
                r4 = 2
                r5 = 1
                r6 = 0
                if (r2 == 0) goto L4d
                if (r2 == r5) goto L41
                if (r2 == r4) goto L35
                if (r2 != r3) goto L2f
                defpackage.r57.b(r9)
                goto L9d
            L2f:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                return r6
            L35:
                java.lang.Object r7 = r0.L$1
                id3 r7 = (defpackage.id3) r7
                java.lang.Object r8 = r0.L$0
                androidx.paging.CombinedLoadStates r8 = (androidx.paging.CombinedLoadStates) r8
                defpackage.r57.b(r9)
                goto L8f
            L41:
                java.lang.Object r8 = r0.L$1
                id3 r8 = (defpackage.id3) r8
                java.lang.Object r2 = r0.L$0
                androidx.paging.CombinedLoadStates r2 = (androidx.paging.CombinedLoadStates) r2
                defpackage.r57.b(r9)
                goto L75
            L4d:
                defpackage.r57.b(r9)
                id3<androidx.paging.CombinedLoadStates> r9 = r7.$$this$flow
                androidx.paging.CombinedLoadStates r8 = (androidx.paging.CombinedLoadStates) r8
                androidx.paging.AsyncPagingDataDiffer r2 = r7.this$0
                xg5 r2 = r2.getInGetItem$paging_runtime()
                java.lang.Object r2 = r2.getValue()
                java.lang.Boolean r2 = (java.lang.Boolean) r2
                boolean r2 = r2.booleanValue()
                if (r2 == 0) goto L90
                r0.L$0 = r8
                r0.L$1 = r9
                r0.label = r5
                java.lang.Object r2 = defpackage.h.g(r0)
                if (r2 != r1) goto L73
                goto L9c
            L73:
                r2 = r8
                r8 = r9
            L75:
                androidx.paging.AsyncPagingDataDiffer r7 = r7.this$0
                xg5 r7 = r7.getInGetItem$paging_runtime()
                androidx.paging.AsyncPagingDataDiffer$loadStateFlow$1$1 r9 = new androidx.paging.AsyncPagingDataDiffer$loadStateFlow$1$1
                r9.<init>(r6)
                r0.L$0 = r2
                r0.L$1 = r8
                r0.label = r4
                java.lang.Object r7 = defpackage.ue3.d(r7, r9, r0)
                if (r7 != r1) goto L8d
                goto L9c
            L8d:
                r7 = r8
                r8 = r2
            L8f:
                r9 = r7
            L90:
                r0.L$0 = r6
                r0.L$1 = r6
                r0.label = r3
                java.lang.Object r7 = r9.emit(r8, r0)
                if (r7 != r1) goto L9d
            L9c:
                return r1
            L9d:
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.AsyncPagingDataDiffer$special$$inlined$transform$1.AnonymousClass1.emit(java.lang.Object, e02):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$special$$inlined$transform$1(hd3 hd3Var, e02 e02Var, AsyncPagingDataDiffer asyncPagingDataDiffer) {
        super(2, e02Var);
        this.$this_transform = hd3Var;
        this.this$0 = asyncPagingDataDiffer;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AsyncPagingDataDiffer$special$$inlined$transform$1 asyncPagingDataDiffer$special$$inlined$transform$1 = new AsyncPagingDataDiffer$special$$inlined$transform$1(this.$this_transform, e02Var, this.this$0);
        asyncPagingDataDiffer$special$$inlined$transform$1.L$0 = obj;
        return asyncPagingDataDiffer$special$$inlined$transform$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super CombinedLoadStates> id3Var, e02<? super j59> e02Var) {
        return ((AsyncPagingDataDiffer$special$$inlined$transform$1) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = (id3) this.L$0;
            hd3 hd3Var = this.$this_transform;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(id3Var, this.this$0);
            this.label = 1;
            if (hd3Var.collect(anonymousClass1, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
