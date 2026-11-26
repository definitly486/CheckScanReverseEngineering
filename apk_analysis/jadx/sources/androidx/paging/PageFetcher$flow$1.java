package androidx.paging;

import androidx.appcompat.app.AppCompatDelegate;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.cf3;
import defpackage.cm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.k8;
import defpackage.ll3;
import defpackage.mm3;
import defpackage.pg8;
import defpackage.qm3;
import defpackage.r57;
import defpackage.zd3;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcher$flow$1", f = "PageFetcher.kt", l = {234}, m = "invokeSuspend", v = 1)
public final class PageFetcher$flow$1<Value> extends pg8 implements bm3<SimpleProducerScope<PagingData<Value>>, e02<? super j59>, Object> {
    final /* synthetic */ RemoteMediator<Key, Value> $remoteMediator;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PageFetcher<Key, Value> this$0;

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcher$flow$1$1", f = "PageFetcher.kt", l = {65, 63}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<id3<? super PageFetcher.LoadRequest>, e02<? super j59>, Object> {
        final /* synthetic */ RemoteMediatorAccessor<Key, Value> $remoteMediatorAccessor;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$remoteMediatorAccessor = remoteMediatorAccessor;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$remoteMediatorAccessor, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super PageFetcher.LoadRequest> id3Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.PageFetcher$flow$1$1 for r6v3 'this'  e02
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L17
                if (r1 != r3) goto L11
                defpackage.r57.b(r7)
                goto L52
            L11:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r2
            L17:
                java.lang.Object r1 = r6.L$0
                id3 r1 = (defpackage.id3) r1
                defpackage.r57.b(r7)
                goto L36
            L1f:
                defpackage.r57.b(r7)
                java.lang.Object r7 = r6.L$0
                r1 = r7
                id3 r1 = (defpackage.id3) r1
                androidx.paging.RemoteMediatorAccessor<Key, Value> r7 = r6.$remoteMediatorAccessor
                if (r7 == 0) goto L39
                r6.L$0 = r1
                r6.label = r4
                java.lang.Object r7 = r7.initialize(r6)
                if (r7 != r0) goto L36
                goto L51
            L36:
                androidx.paging.RemoteMediator$InitializeAction r7 = (androidx.paging.RemoteMediator.InitializeAction) r7
                goto L3a
            L39:
                r7 = r2
            L3a:
                androidx.paging.RemoteMediator$InitializeAction r5 = androidx.paging.RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH
                if (r7 != r5) goto L3f
                goto L40
            L3f:
                r4 = 0
            L40:
                androidx.paging.PageFetcher$RefreshType$Initial r7 = androidx.paging.PageFetcher.RefreshType.Initial.INSTANCE
                androidx.paging.PageFetcher$LoadRequest$Refresh r5 = new androidx.paging.PageFetcher$LoadRequest$Refresh
                r5.<init>(r4, r7)
                r6.L$0 = r2
                r6.label = r3
                java.lang.Object r6 = r1.emit(r5, r6)
                if (r6 != r0) goto L52
            L51:
                return r0
            L52:
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$flow$1(RemoteMediator<Key, Value> remoteMediator, PageFetcher<Key, Value> pageFetcher, e02<? super PageFetcher$flow$1> e02Var) {
        super(2, e02Var);
        this.$remoteMediator = remoteMediator;
        this.this$0 = pageFetcher;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PageFetcher$flow$1 pageFetcher$flow$1 = new PageFetcher$flow$1(this.$remoteMediator, this.this$0, e02Var);
        pageFetcher$flow$1.L$0 = obj;
        return pageFetcher$flow$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(SimpleProducerScope<PagingData<Value>> simpleProducerScope, e02<? super j59> e02Var) {
        return ((PageFetcher$flow$1) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            RemoteMediator<Key, Value> remoteMediator = this.$remoteMediator;
            RemoteMediatorAccessor RemoteMediatorAccessor = remoteMediator != 0 ? RemoteMediatorAccessorKt.RemoteMediatorAccessor(simpleProducerScope, remoteMediator) : null;
            hd3 hd3VarSimpleTransformLatest = FlowExtKt.simpleTransformLatest(zd3.c(new cf3(FlowExtKt.simpleScan(new ce3(((PageFetcher) this.this$0).loadRequests.getFlow(), new AnonymousClass1(RemoteMediatorAccessor, null)), null, new AnonymousClass2(RemoteMediatorAccessor, this.this$0, null)))), new PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1(null, this.this$0, RemoteMediatorAccessor));
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(simpleProducerScope);
            this.label = 1;
            if (hd3VarSimpleTransformLatest.collect(anonymousClass4, this) == a32Var) {
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

    /* JADX INFO: Add missing generic type declarations: [Key] */
    /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$2, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcher$flow$1$2", f = "PageFetcher.kt", l = {90, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 112, 162, 168, 211}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<Key> extends pg8 implements dm3<PageFetcher.GenerationInfo<Key, Value>, PageFetcher.LoadRequest, e02<? super PageFetcher.GenerationInfo<Key, Value>>, Object> {
        final /* synthetic */ RemoteMediatorAccessor<Key, Value> $remoteMediatorAccessor;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ PageFetcher<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor, PageFetcher<Key, Value> pageFetcher, e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
            this.$remoteMediatorAccessor = remoteMediatorAccessor;
            this.this$0 = pageFetcher;
        }

        @Override // defpackage.dm3
        public final Object invoke(PageFetcher.GenerationInfo<Key, Value> generationInfo, PageFetcher.LoadRequest loadRequest, e02<? super PageFetcher.GenerationInfo<Key, Value>> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$remoteMediatorAccessor, this.this$0, e02Var);
            anonymousClass2.L$0 = generationInfo;
            anonymousClass2.L$1 = loadRequest;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:104:0x030e  */
        /* JADX WARN: Code duplicated, block: B:35:0x0120  */
        /* JADX WARN: Code duplicated, block: B:38:0x0133  */
        /* JADX WARN: Code duplicated, block: B:47:0x0158  */
        /* JADX WARN: Code duplicated, block: B:49:0x015e  */
        /* JADX WARN: Code duplicated, block: B:50:0x0163  */
        /* JADX WARN: Code duplicated, block: B:52:0x0166  */
        /* JADX WARN: Code duplicated, block: B:55:0x017a  */
        /* JADX WARN: Code duplicated, block: B:71:0x01d3  */
        /* JADX WARN: Code duplicated, block: B:74:0x01f6 A[LOOP:2: B:72:0x01f0->B:74:0x01f6, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:77:0x0210  */
        /* JADX WARN: Code duplicated, block: B:80:0x0229  */
        /* JADX WARN: Code duplicated, block: B:83:0x0233  */
        /* JADX WARN: Code duplicated, block: B:94:0x029c  */
        /* JADX WARN: Code duplicated, block: B:98:0x02d9 A[LOOP:0: B:96:0x02d3->B:98:0x02d9, LOOP_END] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v29, types: [T, androidx.paging.PagingState] */
        /* JADX WARN: Type inference failed for: r6v31, types: [T, androidx.paging.PagingState] */
        /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r11v10 java.lang.Object, still in use, count: 2, list:
              (r11v10 java.lang.Object) from 0x01cf: PHI (r11 I:??) = (r11v7 java.lang.Object), (r11v10 java.lang.Object) binds: [B:68:0x01ce, B:117:0x01cf] A[DONT_GENERATE, DONT_INLINE]
              (r11v10 java.lang.Object) from 0x01bf: CHECK_CAST (androidx.paging.PagingSource$LoadResult$Page) (r11v10 java.lang.Object)
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
            	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
            	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
            	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
            	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
            	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
            	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
            	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 950
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$2$1, reason: invalid class name */
        public static final /* synthetic */ class AnonymousClass1 extends k8 implements ll3<j59> {
            public AnonymousClass1(Object obj) {
                super(0, obj, PageFetcher.class, "refresh", "refresh(Ljava/lang/Object;)V", 0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PageFetcher.refresh$default((PageFetcher) this.receiver, null, 1, null);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$2$7, reason: invalid class name */
        public static final /* synthetic */ class AnonymousClass7 extends k8 implements ll3<j59> {
            public AnonymousClass7(Object obj) {
                super(0, obj, PageFetcher.class, "refresh", "refresh(Ljava/lang/Object;)V", 0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                PageFetcher.refresh$default((PageFetcher) this.receiver, null, 1, null);
            }

            @Override // defpackage.ll3
            public /* bridge */ /* synthetic */ j59 invoke() {
                invoke2();
                return j59.a;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$flow$1$4, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass4 implements id3, mm3 {
        final /* synthetic */ SimpleProducerScope<PagingData<Value>> $tmp0;

        public AnonymousClass4(SimpleProducerScope<PagingData<Value>> simpleProducerScope) {
            this.$tmp0 = simpleProducerScope;
        }

        public final Object emit(PagingData<Value> pagingData, e02<? super j59> e02Var) {
            Object objSend = this.$tmp0.send(pagingData, e02Var);
            return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof id3) && (obj instanceof mm3)) {
                return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // defpackage.mm3
        public final cm3<?> getFunctionDelegate() {
            return new qm3(2, this.$tmp0, SimpleProducerScope.class, "send", "send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // defpackage.id3
        public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
            return emit((PagingData) obj, (e02<? super j59>) e02Var);
        }
    }
}
