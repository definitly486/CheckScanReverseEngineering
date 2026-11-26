package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cf3;
import defpackage.co;
import defpackage.cu0;
import defpackage.dm3;
import defpackage.e02;
import defpackage.e91;
import defpackage.fg;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.np2;
import defpackage.pg8;
import defpackage.px;
import defpackage.r07;
import defpackage.r57;
import defpackage.u96;
import defpackage.ug6;
import defpackage.zd3;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemSnapshotListFlow {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2, reason: invalid class name */
    @bd2(c = "androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2", f = "ItemSnapshotListFlow.kt", l = {59}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements bm3<ug6<? super ItemSnapshotList<T>>, e02<? super j59>, Object> {
        final /* synthetic */ r07<CombinedLoadStates> $errorCombinedLoadStates;
        final /* synthetic */ nl3<CombinedLoadStates, j59> $onLoadError;
        final /* synthetic */ hd3<PagingData<T>> $this_asItemSnapshotListFlow;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2$1, reason: invalid class name */
        @bd2(c = "androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2$1", f = "ItemSnapshotListFlow.kt", l = {121}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<PagingData<T>, e02<? super j59>, Object> {
            final /* synthetic */ ug6<ItemSnapshotList<T>> $$this$channelFlow;
            final /* synthetic */ r07<CombinedLoadStates> $errorCombinedLoadStates;
            final /* synthetic */ nl3<CombinedLoadStates, j59> $onLoadError;
            /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.paging.ItemSnapshotListFlow$asItemSnapshotListFlow$2$1$1", f = "ItemSnapshotListFlow.kt", l = {}, m = "invokeSuspend", v = 1)
            public static final class C00991 extends pg8 implements dm3<PageStore<T>, PageEvent<T>, e02<? super PageStore<T>>, Object> {
                final /* synthetic */ r07<CombinedLoadStates> $errorCombinedLoadStates;
                final /* synthetic */ nl3<CombinedLoadStates, j59> $onLoadError;
                /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C00991(r07<CombinedLoadStates> r07Var, nl3<? super CombinedLoadStates, j59> nl3Var, e02<? super C00991> e02Var) {
                    super(3, e02Var);
                    this.$errorCombinedLoadStates = r07Var;
                    this.$onLoadError = nl3Var;
                }

                @Override // defpackage.dm3
                public final Object invoke(PageStore<T> pageStore, PageEvent<T> pageEvent, e02<? super PageStore<T>> e02Var) {
                    C00991 c00991 = new C00991(this.$errorCombinedLoadStates, this.$onLoadError, e02Var);
                    c00991.L$0 = pageStore;
                    c00991.L$1 = pageEvent;
                    return c00991.invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    LoadStates mediator;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    if (this.label != 0) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                    PageStore pageStore = (PageStore) this.L$0;
                    PageEvent<T> pageEvent = (PageEvent) this.L$1;
                    if (pageEvent instanceof PageEvent.LoadStateUpdate) {
                        PageEvent.LoadStateUpdate loadStateUpdate = (PageEvent.LoadStateUpdate) pageEvent;
                        if (!loadStateUpdate.getSource().hasError() && ((mediator = loadStateUpdate.getMediator()) == null || !mediator.hasError())) {
                            return pageStore;
                        }
                        r07<CombinedLoadStates> r07Var = this.$errorCombinedLoadStates;
                        r07Var.b = (T) MutableCombinedLoadStateCollectionKt.computeNewState(r07Var.b, loadStateUpdate.getSource(), loadStateUpdate.getMediator());
                        this.$onLoadError.invoke(this.$errorCombinedLoadStates.b);
                        return pageStore;
                    }
                    if (pageEvent instanceof PageEvent.StaticList) {
                        PageEvent.StaticList staticList = (PageEvent.StaticList) pageEvent;
                        return new PageStore(u96.h(new TransformablePage(0, staticList.getData())), staticList.getPlaceholdersBefore(), staticList.getPlaceholdersAfter());
                    }
                    if (pageEvent instanceof PageEvent.Insert) {
                        PageEvent.Insert insert = (PageEvent.Insert) pageEvent;
                        if (insert.getLoadType() == LoadType.REFRESH) {
                            if (pageStore == null) {
                                return new PageStore(insert.getPages(), insert.getPlaceholdersBefore(), insert.getPlaceholdersAfter());
                            }
                            fg.c("PageStore should be null on REFRESH. This likely indicates an error in the library. Please file a bug in the Buganizer");
                            return null;
                        }
                    }
                    if (pageStore != null) {
                        pageStore.processEvent(pageEvent);
                        return pageStore;
                    }
                    fg.c("PageStore should only be null on REFRESH. This likely indicates an error in the library. Please file a bug in the Buganizer");
                    return null;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(r07<CombinedLoadStates> r07Var, nl3<? super CombinedLoadStates, j59> nl3Var, ug6<? super ItemSnapshotList<T>> ug6Var, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.$errorCombinedLoadStates = r07Var;
                this.$onLoadError = nl3Var;
                this.$$this$channelFlow = ug6Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$errorCombinedLoadStates, this.$onLoadError, this.$$this$channelFlow, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(PagingData<T> pagingData, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(pagingData, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    np2 np2VarD = zd3.d(new cf3(FlowExtKt.simpleScan(((PagingData) this.L$0).getFlow$paging_common(), null, new C00991(this.$errorCombinedLoadStates, this.$onLoadError, null))), new e(), zd3.c);
                    final ug6<ItemSnapshotList<T>> ug6Var = this.$$this$channelFlow;
                    id3<? super T> id3Var = new id3() { // from class: androidx.paging.ItemSnapshotListFlow.asItemSnapshotListFlow.2.1.3
                        public final Object emit(PageStore<T> pageStore, e02<? super j59> e02Var) {
                            Object objSend = ug6Var.send(pageStore.snapshot(), e02Var);
                            return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
                        }

                        @Override // defpackage.id3
                        public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                            return emit((PageStore) obj2, (e02<? super j59>) e02Var);
                        }
                    };
                    this.label = 1;
                    if (np2VarD.collect(id3Var, this) == a32Var) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(hd3<PagingData<T>> hd3Var, r07<CombinedLoadStates> r07Var, nl3<? super CombinedLoadStates, j59> nl3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_asItemSnapshotListFlow = hd3Var;
            this.$errorCombinedLoadStates = r07Var;
            this.$onLoadError = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_asItemSnapshotListFlow, this.$errorCombinedLoadStates, this.$onLoadError, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super ItemSnapshotList<T>> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ug6 ug6Var = (ug6) this.L$0;
                hd3<PagingData<T>> hd3Var = this.$this_asItemSnapshotListFlow;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$errorCombinedLoadStates, this.$onLoadError, ug6Var, null);
                this.label = 1;
                if (px.c(hd3Var, anonymousClass1, this) == a32Var) {
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

    public static final <T> hd3<ItemSnapshotList<T>> asItemSnapshotListFlow(hd3<PagingData<T>> hd3Var, nl3<? super CombinedLoadStates, j59> nl3Var) {
        hd3Var.getClass();
        nl3Var.getClass();
        return new e91(new AnonymousClass2(hd3Var, new r07(), nl3Var, null), gx2.b, -2, cu0.SUSPEND);
    }

    public static /* synthetic */ hd3 asItemSnapshotListFlow$default(hd3 hd3Var, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new co(3);
        }
        return asItemSnapshotListFlow(hd3Var, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 asItemSnapshotListFlow$lambda$0(CombinedLoadStates combinedLoadStates) {
        combinedLoadStates.getClass();
        return j59.a;
    }
}
