package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.n07;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.y68;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class RemoteMediatorAccessImpl<Key, Value> implements RemoteMediatorAccessor<Key, Value> {
    public static final Companion Companion = new Companion(null);
    private static final int PRIORITY_APPEND_PREPEND = 1;
    private static final int PRIORITY_REFRESH = 2;
    private final AccessorStateHolder<Key, Value> accessorState;
    private final SingleRunner isolationRunner;
    private final RemoteMediator<Key, Value> remoteMediator;
    private final y22 scope;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$initialize$1, reason: invalid class name */
    @bd2(c = "androidx.paging.RemoteMediatorAccessImpl", f = "RemoteMediatorAccessor.kt", l = {417}, m = "initialize", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = remoteMediatorAccessImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.initialize(this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1", f = "RemoteMediatorAccessor.kt", l = {363}, m = "invokeSuspend", v = 1)
    public static final class C07101 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

        /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1", f = "RemoteMediatorAccessor.kt", l = {367}, m = "invokeSuspend", v = 1)
        public static final class C01051 extends pg8 implements nl3<e02<? super j59>, Object> {
            Object L$0;
            int label;
            final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01051(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, e02<? super C01051> e02Var) {
                super(1, e02Var);
                this.this$0 = remoteMediatorAccessImpl;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$1(LoadType loadType, RemoteMediator.MediatorResult mediatorResult, AccessorState accessorState) {
                accessorState.clearPendingRequest(loadType);
                if (((RemoteMediator.MediatorResult.Success) mediatorResult).endOfPaginationReached()) {
                    accessorState.setBlockState(loadType, AccessorState.BlockState.COMPLETED);
                }
                return j59.a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$2(LoadType loadType, RemoteMediator.MediatorResult mediatorResult, AccessorState accessorState) {
                accessorState.clearPendingRequest(loadType);
                accessorState.setError(loadType, new LoadState.Error(((RemoteMediator.MediatorResult.Error) mediatorResult).getThrowable()));
                return j59.a;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(e02<?> e02Var) {
                return new C01051(this.this$0, e02Var);
            }

            @Override // defpackage.nl3
            public final Object invoke(e02<? super j59> e02Var) {
                return ((C01051) create(e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:11:0x002e  */
            /* JADX WARN: Code duplicated, block: B:13:0x0031  */
            /* JADX WARN: Code duplicated, block: B:15:0x0049 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:18:0x0050  */
            /* JADX WARN: Code duplicated, block: B:19:0x0061  */
            /* JADX WARN: Code duplicated, block: B:21:0x0065  */
            /* JADX WARN: Code duplicated, block: B:22:0x0076  */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:16:0x004a). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x002e
                	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                */
            @Override // defpackage.cd0
            public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                /*
                    r6 = this;
                    a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                    int r1 = r6.label
                    r2 = 0
                    r3 = 1
                    if (r1 == 0) goto L18
                    if (r1 != r3) goto L12
                    java.lang.Object r1 = r6.L$0
                    androidx.paging.LoadType r1 = (androidx.paging.LoadType) r1
                    defpackage.r57.b(r7)
                    goto L4a
                L12:
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r6)
                    return r2
                L18:
                    defpackage.r57.b(r7)
                L1b:
                    androidx.paging.RemoteMediatorAccessImpl<Key, Value> r7 = r6.this$0
                    androidx.paging.AccessorStateHolder r7 = androidx.paging.RemoteMediatorAccessImpl.access$getAccessorState$p(r7)
                    androidx.paging.m r1 = new androidx.paging.m
                    r1.<init>()
                    java.lang.Object r7 = r7.use(r1)
                    b36 r7 = (defpackage.b36) r7
                    if (r7 != 0) goto L31
                    j59 r6 = defpackage.j59.a
                    return r6
                L31:
                    A r1 = r7.b
                    androidx.paging.LoadType r1 = (androidx.paging.LoadType) r1
                    B r7 = r7.c
                    androidx.paging.PagingState r7 = (androidx.paging.PagingState) r7
                    androidx.paging.RemoteMediatorAccessImpl<Key, Value> r4 = r6.this$0
                    androidx.paging.RemoteMediator r4 = androidx.paging.RemoteMediatorAccessImpl.access$getRemoteMediator$p(r4)
                    r6.L$0 = r1
                    r6.label = r3
                    java.lang.Object r7 = r4.load(r1, r7, r6)
                    if (r7 != r0) goto L4a
                    return r0
                L4a:
                    androidx.paging.RemoteMediator$MediatorResult r7 = (androidx.paging.RemoteMediator.MediatorResult) r7
                    boolean r4 = r7 instanceof androidx.paging.RemoteMediator.MediatorResult.Success
                    if (r4 == 0) goto L61
                    androidx.paging.RemoteMediatorAccessImpl<Key, Value> r4 = r6.this$0
                    androidx.paging.AccessorStateHolder r4 = androidx.paging.RemoteMediatorAccessImpl.access$getAccessorState$p(r4)
                    androidx.paging.n r5 = new androidx.paging.n
                    androidx.paging.RemoteMediator$MediatorResult$Success r7 = (androidx.paging.RemoteMediator.MediatorResult.Success) r7
                    r5.<init>()
                    r4.use(r5)
                    goto L1b
                L61:
                    boolean r4 = r7 instanceof androidx.paging.RemoteMediator.MediatorResult.Error
                    if (r4 == 0) goto L76
                    androidx.paging.RemoteMediatorAccessImpl<Key, Value> r4 = r6.this$0
                    androidx.paging.AccessorStateHolder r4 = androidx.paging.RemoteMediatorAccessImpl.access$getAccessorState$p(r4)
                    androidx.paging.o r5 = new androidx.paging.o
                    androidx.paging.RemoteMediator$MediatorResult$Error r7 = (androidx.paging.RemoteMediator.MediatorResult.Error) r7
                    r5.<init>()
                    r4.use(r5)
                    goto L1b
                L76:
                    defpackage.me0.e()
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.RemoteMediatorAccessImpl.C07101.C01051.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07101(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, e02<? super C07101> e02Var) {
            super(2, e02Var);
            this.this$0 = remoteMediatorAccessImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07101(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07101) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                SingleRunner singleRunner = ((RemoteMediatorAccessImpl) this.this$0).isolationRunner;
                C01051 c01051 = new C01051(this.this$0, null);
                this.label = 1;
                if (singleRunner.runInIsolation(1, c01051, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1", f = "RemoteMediatorAccessor.kt", l = {288}, m = "invokeSuspend", v = 1)
    public static final class C07111 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

        /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1", f = "RemoteMediatorAccessor.kt", l = {291}, m = "invokeSuspend", v = 1)
        public static final class C01061 extends pg8 implements nl3<e02<? super j59>, Object> {
            final /* synthetic */ n07 $launchAppendPrepend;
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01061(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, n07 n07Var, e02<? super C01061> e02Var) {
                super(1, e02Var);
                this.this$0 = remoteMediatorAccessImpl;
                this.$launchAppendPrepend = n07Var;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean invokeSuspend$lambda$1$0(RemoteMediator.MediatorResult mediatorResult, AccessorState accessorState) {
                LoadType loadType;
                LoadType loadType2;
                LoadType loadType3 = LoadType.REFRESH;
                accessorState.clearPendingRequest(loadType3);
                if (((RemoteMediator.MediatorResult.Success) mediatorResult).endOfPaginationReached()) {
                    AccessorState.BlockState blockState = AccessorState.BlockState.COMPLETED;
                    accessorState.setBlockState(loadType3, blockState);
                    loadType = LoadType.PREPEND;
                    accessorState.setBlockState(loadType, blockState);
                    loadType2 = LoadType.APPEND;
                    accessorState.setBlockState(loadType2, blockState);
                    accessorState.clearPendingRequests();
                } else {
                    loadType = LoadType.PREPEND;
                    AccessorState.BlockState blockState2 = AccessorState.BlockState.UNBLOCKED;
                    accessorState.setBlockState(loadType, blockState2);
                    loadType2 = LoadType.APPEND;
                    accessorState.setBlockState(loadType2, blockState2);
                }
                accessorState.setError(loadType, null);
                accessorState.setError(loadType2, null);
                return accessorState.getPendingBoundary() != null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final boolean invokeSuspend$lambda$1$1(RemoteMediator.MediatorResult mediatorResult, AccessorState accessorState) {
                LoadType loadType = LoadType.REFRESH;
                accessorState.clearPendingRequest(loadType);
                accessorState.setError(loadType, new LoadState.Error(((RemoteMediator.MediatorResult.Error) mediatorResult).getThrowable()));
                return accessorState.getPendingBoundary() != null;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(e02<?> e02Var) {
                return new C01061(this.this$0, this.$launchAppendPrepend, e02Var);
            }

            @Override // defpackage.nl3
            public final Object invoke(e02<? super j59> e02Var) {
                return ((C01061) create(e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl;
                n07 n07Var;
                boolean zBooleanValue;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PagingState<Key, Value> pagingState = (PagingState) ((RemoteMediatorAccessImpl) this.this$0).accessorState.use(new p());
                    if (pagingState != null) {
                        RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl2 = this.this$0;
                        n07 n07Var2 = this.$launchAppendPrepend;
                        RemoteMediator remoteMediator = ((RemoteMediatorAccessImpl) remoteMediatorAccessImpl2).remoteMediator;
                        LoadType loadType = LoadType.REFRESH;
                        this.L$0 = remoteMediatorAccessImpl2;
                        this.L$1 = n07Var2;
                        this.label = 1;
                        obj = remoteMediator.load(loadType, pagingState, this);
                        if (obj == a32Var) {
                            return a32Var;
                        }
                        remoteMediatorAccessImpl = remoteMediatorAccessImpl2;
                        n07Var = n07Var2;
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                n07Var = (n07) this.L$1;
                remoteMediatorAccessImpl = (RemoteMediatorAccessImpl) this.L$0;
                r57.b(obj);
                RemoteMediator.MediatorResult mediatorResult = (RemoteMediator.MediatorResult) obj;
                if (mediatorResult instanceof RemoteMediator.MediatorResult.Success) {
                    final RemoteMediator.MediatorResult.Success success = (RemoteMediator.MediatorResult.Success) mediatorResult;
                    zBooleanValue = ((Boolean) ((RemoteMediatorAccessImpl) remoteMediatorAccessImpl).accessorState.use(new nl3() { // from class: androidx.paging.q
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return Boolean.valueOf(RemoteMediatorAccessImpl.C07111.C01061.invokeSuspend$lambda$1$0(success, (AccessorState) obj2));
                        }
                    })).booleanValue();
                } else {
                    if (!(mediatorResult instanceof RemoteMediator.MediatorResult.Error)) {
                        me0.e();
                        return null;
                    }
                    final RemoteMediator.MediatorResult.Error error = (RemoteMediator.MediatorResult.Error) mediatorResult;
                    zBooleanValue = ((Boolean) ((RemoteMediatorAccessImpl) remoteMediatorAccessImpl).accessorState.use(new nl3() { // from class: androidx.paging.r
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return Boolean.valueOf(RemoteMediatorAccessImpl.C07111.C01061.invokeSuspend$lambda$1$1(error, (AccessorState) obj2));
                        }
                    })).booleanValue();
                }
                n07Var.b = zBooleanValue;
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07111(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, e02<? super C07111> e02Var) {
            super(2, e02Var);
            this.this$0 = remoteMediatorAccessImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07111(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07111) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            n07 n07Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                n07 n07Var2 = new n07();
                SingleRunner singleRunner = ((RemoteMediatorAccessImpl) this.this$0).isolationRunner;
                C01061 c01061 = new C01061(this.this$0, n07Var2, null);
                this.L$0 = n07Var2;
                this.label = 1;
                if (singleRunner.runInIsolation(2, c01061, this) == a32Var) {
                    return a32Var;
                }
                n07Var = n07Var2;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                n07Var = (n07) this.L$0;
                r57.b(obj);
            }
            if (n07Var.b) {
                this.this$0.launchBoundary();
            }
            return j59.a;
        }
    }

    public RemoteMediatorAccessImpl(y22 y22Var, RemoteMediator<Key, Value> remoteMediator) {
        y22Var.getClass();
        remoteMediator.getClass();
        this.scope = y22Var;
        this.remoteMediator = remoteMediator;
        this.accessorState = new AccessorStateHolder<>();
        this.isolationRunner = new SingleRunner(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 allowRefresh$lambda$0(AccessorState accessorState) {
        accessorState.getClass();
        accessorState.setRefreshAllowed(true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 initialize$lambda$0$0(AccessorState accessorState) {
        accessorState.getClass();
        LoadType loadType = LoadType.APPEND;
        AccessorState.BlockState blockState = AccessorState.BlockState.REQUIRES_REFRESH;
        accessorState.setBlockState(loadType, blockState);
        accessorState.setBlockState(LoadType.PREPEND, blockState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchBoundary() {
        av0.c(this.scope, null, null, new C07101(this, null), 3);
    }

    private final void launchRefresh() {
        av0.c(this.scope, null, null, new C07111(this, null), 3);
    }

    private final void requestLoad(AccessorStateHolder<Key, Value> accessorStateHolder, final LoadType loadType, final PagingState<Key, Value> pagingState) {
        if (((Boolean) accessorStateHolder.use(new nl3() { // from class: androidx.paging.h
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(RemoteMediatorAccessImpl.requestLoad$lambda$0(loadType, pagingState, (AccessorState) obj));
            }
        })).booleanValue()) {
            if (WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()] == 1) {
                launchRefresh();
            } else {
                launchBoundary();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean requestLoad$lambda$0(LoadType loadType, PagingState pagingState, AccessorState accessorState) {
        accessorState.getClass();
        return accessorState.add(loadType, pagingState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 requestRefreshIfAllowed$lambda$0(RemoteMediatorAccessImpl remoteMediatorAccessImpl, PagingState pagingState, AccessorState accessorState) {
        accessorState.getClass();
        if (accessorState.getRefreshAllowed()) {
            accessorState.setRefreshAllowed(false);
            remoteMediatorAccessImpl.requestLoad(remoteMediatorAccessImpl.accessorState, LoadType.REFRESH, pagingState);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 retryFailed$lambda$0(List list, AccessorState accessorState) {
        accessorState.getClass();
        LoadStates loadStatesComputeLoadStates = accessorState.computeLoadStates();
        boolean z = loadStatesComputeLoadStates.getRefresh() instanceof LoadState.Error;
        accessorState.clearErrors();
        if (z) {
            LoadType loadType = LoadType.REFRESH;
            list.add(loadType);
            accessorState.setBlockState(loadType, AccessorState.BlockState.UNBLOCKED);
        }
        if (loadStatesComputeLoadStates.getAppend() instanceof LoadState.Error) {
            if (!z) {
                list.add(LoadType.APPEND);
            }
            accessorState.clearPendingRequest(LoadType.APPEND);
        }
        if (loadStatesComputeLoadStates.getPrepend() instanceof LoadState.Error) {
            if (!z) {
                list.add(LoadType.PREPEND);
            }
            accessorState.clearPendingRequest(LoadType.PREPEND);
        }
        return j59.a;
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public void allowRefresh() {
        this.accessorState.use(new k());
    }

    @Override // androidx.paging.RemoteMediatorAccessor
    public y68<LoadStates> getState() {
        return this.accessorState.getLoadStates();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.paging.RemoteMediatorAccessor
    public Object initialize(e02<? super RemoteMediator.InitializeAction> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object objInitialize = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objInitialize);
            RemoteMediator<Key, Value> remoteMediator = this.remoteMediator;
            anonymousClass1.label = 1;
            objInitialize = remoteMediator.initialize(anonymousClass1);
            if (objInitialize == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objInitialize);
        }
        if (((RemoteMediator.InitializeAction) objInitialize) == RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH) {
            this.accessorState.use(new i());
        }
        return objInitialize;
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public void requestRefreshIfAllowed(final PagingState<Key, Value> pagingState) {
        pagingState.getClass();
        this.accessorState.use(new nl3() { // from class: androidx.paging.j
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return RemoteMediatorAccessImpl.requestRefreshIfAllowed$lambda$0(this.b, pagingState, (AccessorState) obj);
            }
        });
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public void retryFailed(PagingState<Key, Value> pagingState) {
        pagingState.getClass();
        final ArrayList arrayList = new ArrayList();
        this.accessorState.use(new nl3() { // from class: androidx.paging.l
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return RemoteMediatorAccessImpl.retryFailed$lambda$0(arrayList, (AccessorState) obj);
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            requestLoad((LoadType) it.next(), pagingState);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public void requestLoad(LoadType loadType, PagingState<Key, Value> pagingState) {
        loadType.getClass();
        pagingState.getClass();
        requestLoad(this.accessorState, loadType, pagingState);
    }
}
