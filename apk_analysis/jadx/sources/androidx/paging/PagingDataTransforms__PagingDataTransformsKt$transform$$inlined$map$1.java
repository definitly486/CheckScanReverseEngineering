package androidx.paging;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes3.dex */
public final class PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1<R> implements hd3<PageEvent<R>> {
    final /* synthetic */ hd3 $this_unsafeTransform$inlined;
    final /* synthetic */ bm3 $transform$inlined;

    /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2, reason: invalid class name */
    public static final class AnonymousClass2<T> implements id3 {
        final /* synthetic */ id3 $this_unsafeFlow;
        final /* synthetic */ bm3 $transform$inlined$1;

        /* JADX INFO: renamed from: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2$1, reason: invalid class name */
        @bd2(c = "androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2", f = "PagingDataTransforms.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG, 50}, m = "emit", v = 1)
        public static final class AnonymousClass1 extends f02 {
            Object L$0;
            int label;
            /* synthetic */ Object result;

            public AnonymousClass1(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return AnonymousClass2.this.emit(null, this);
            }
        }

        public AnonymousClass2(id3 id3Var, bm3 bm3Var) {
            this.$this_unsafeFlow = id3Var;
            this.$transform$inlined$1 = bm3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
        
            if (r7.emit(r9, r0) == r1) goto L22;
         */
        @Override // defpackage.id3
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object emit(java.lang.Object r8, defpackage.e02 r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r9
                androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2$1 r0 = (androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2$1 r0 = new androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2$1
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L39
                if (r2 == r5) goto L31
                if (r2 != r4) goto L2b
                defpackage.r57.b(r9)
                goto L5b
            L2b:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r7)
                return r3
            L31:
                java.lang.Object r7 = r0.L$0
                id3 r7 = (defpackage.id3) r7
                defpackage.r57.b(r9)
                goto L50
            L39:
                defpackage.r57.b(r9)
                id3 r9 = r7.$this_unsafeFlow
                androidx.paging.PageEvent r8 = (androidx.paging.PageEvent) r8
                bm3 r7 = r7.$transform$inlined$1
                r0.L$0 = r9
                r0.label = r5
                java.lang.Object r7 = r7.invoke(r8, r0)
                if (r7 != r1) goto L4d
                goto L5a
            L4d:
                r6 = r9
                r9 = r7
                r7 = r6
            L50:
                r0.L$0 = r3
                r0.label = r4
                java.lang.Object r7 = r7.emit(r9, r0)
                if (r7 != r1) goto L5b
            L5a:
                return r1
            L5b:
                j59 r7 = defpackage.j59.a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, e02):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object emit$$forInline(Object obj, e02 e02Var) {
            new AnonymousClass1(e02Var);
            this.$this_unsafeFlow.emit(this.$transform$inlined$1.invoke((PageEvent) obj, e02Var), e02Var);
            return j59.a;
        }
    }

    public PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1(hd3 hd3Var, bm3 bm3Var) {
        this.$this_unsafeTransform$inlined = hd3Var;
        this.$transform$inlined = bm3Var;
    }

    @Override // defpackage.hd3
    public Object collect(id3 id3Var, e02 e02Var) {
        Object objCollect = this.$this_unsafeTransform$inlined.collect(new AnonymousClass2(id3Var, this.$transform$inlined), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    public Object collect$$forInline(id3 id3Var, e02 e02Var) {
        new f02(e02Var) { // from class: androidx.paging.PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1.1
            int label;
            /* synthetic */ Object result;

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1.this.collect(null, this);
            }
        };
        this.$this_unsafeTransform$inlined.collect(new AnonymousClass2(id3Var, this.$transform$inlined), e02Var);
        return j59.a;
    }
}
