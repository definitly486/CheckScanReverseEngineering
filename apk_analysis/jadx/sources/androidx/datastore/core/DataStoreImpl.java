package androidx.datastore.core;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import androidx.media3.exoplayer.RendererCapabilities;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ch5;
import defpackage.cl4;
import defpackage.e02;
import defpackage.f02;
import defpackage.fh8;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.o22;
import defpackage.p07;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r07;
import defpackage.r57;
import defpackage.rm9;
import defpackage.sj0;
import defpackage.tb7;
import defpackage.y22;
import defpackage.yg5;
import defpackage.yp1;
import defpackage.z22;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreImpl<T> implements DataStore<T> {
    private static final String BUG_MESSAGE = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542";
    public static final Companion Companion = new Companion(null);
    private int collectorCounter;
    private mb4 collectorJob;
    private final yg5 collectorMutex;
    private final cl4 coordinator$delegate;
    private final CorruptionHandler<T> corruptionHandler;
    private final hd3<T> data;
    private final DataStoreInMemoryCache<T> inMemoryCache;
    private final DataStoreImpl<T>.InitDataStore readAndInit;
    private final y22 scope;
    private final Storage<T> storage;
    private final cl4<StorageConnection<T>> storageConnectionDelegate;
    private final SimpleActor<Message.Update<T>> writeActor;

    public final class InitDataStore extends RunOnce {
        private List<? extends bm3<? super InitializerApi<T>, ? super e02<? super j59>, ? extends Object>> initTasks;
        final /* synthetic */ DataStoreImpl<T> this$0;

        public InitDataStore(DataStoreImpl dataStoreImpl, List<? extends bm3<? super InitializerApi<T>, ? super e02<? super j59>, ? extends Object>> list) {
            list.getClass();
            this.this$0 = dataStoreImpl;
            this.initTasks = qn1.t0(list);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0069  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        
            if (r7 == r1) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0074, code lost:
        
            if (r7 == r1) goto L27;
         */
        @Override // androidx.datastore.core.RunOnce
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object doRun(defpackage.e02<? super defpackage.j59> r7) throws androidx.datastore.core.CorruptionException {
            /*
                r6 = this;
                boolean r0 = r7 instanceof androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                if (r0 == 0) goto L13
                r0 = r7
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = (androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1 r0 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$1
                r0.<init>(r6, r7)
            L18:
                java.lang.Object r7 = r0.result
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L3d
                if (r2 == r5) goto L35
                if (r2 != r4) goto L2f
                java.lang.Object r6 = r0.L$0
                androidx.datastore.core.DataStoreImpl$InitDataStore r6 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r6
                defpackage.r57.b(r7)
                goto L66
            L2f:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r3
            L35:
                java.lang.Object r6 = r0.L$0
                androidx.datastore.core.DataStoreImpl$InitDataStore r6 = (androidx.datastore.core.DataStoreImpl.InitDataStore) r6
                defpackage.r57.b(r7)
                goto L77
            L3d:
                defpackage.r57.b(r7)
                java.util.List<? extends bm3<? super androidx.datastore.core.InitializerApi<T>, ? super e02<? super j59>, ? extends java.lang.Object>> r7 = r6.initTasks
                if (r7 == 0) goto L69
                r7.getClass()
                boolean r7 = r7.isEmpty()
                if (r7 == 0) goto L4e
                goto L69
            L4e:
                androidx.datastore.core.DataStoreImpl<T> r7 = r6.this$0
                androidx.datastore.core.InterProcessCoordinator r7 = androidx.datastore.core.DataStoreImpl.access$getCoordinator(r7)
                androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1 r2 = new androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1
                androidx.datastore.core.DataStoreImpl<T> r5 = r6.this$0
                r2.<init>(r5, r6, r3)
                r0.L$0 = r6
                r0.label = r4
                java.lang.Object r7 = r7.lock(r2, r0)
                if (r7 != r1) goto L66
                goto L76
            L66:
                androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
                goto L79
            L69:
                androidx.datastore.core.DataStoreImpl<T> r7 = r6.this$0
                r0.L$0 = r6
                r0.label = r5
                r2 = 0
                java.lang.Object r7 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r7, r2, r0)
                if (r7 != r1) goto L77
            L76:
                return r1
            L77:
                androidx.datastore.core.Data r7 = (androidx.datastore.core.Data) r7
            L79:
                androidx.datastore.core.DataStoreImpl<T> r6 = r6.this$0
                androidx.datastore.core.DataStoreInMemoryCache r6 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r6)
                r6.tryUpdate(r7)
                j59 r6 = defpackage.j59.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.InitDataStore.doRun(e02):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$decrementCollector$1, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {Utils.PULSE_ANIMATOR_DURATION}, m = "decrementCollector")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DataStoreImpl<T> dataStoreImpl, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.decrementCollector(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3", f = "DataStoreImpl.kt", l = {TypedValues.CycleType.TYPE_PATH_ROTATE}, m = "invokeSuspend")
    public static final class AnonymousClass3<R> extends pg8 implements nl3<e02<? super R>, Object> {
        final /* synthetic */ nl3<e02<? super R>, Object> $block;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super AnonymousClass3> e02Var) {
            super(1, e02Var);
            this.$block = nl3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass3(this.$block, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super R> e02Var) {
            return ((AnonymousClass3) create(e02Var)).invokeSuspend(j59.a);
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
            nl3<e02<? super R>, Object> nl3Var = this.$block;
            this.label = 1;
            Object objInvoke = nl3Var.invoke(this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$handleUpdate$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {237, 243, 246}, m = "handleUpdate")
    public static final class C06671 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06671(DataStoreImpl<T> dataStoreImpl, e02<? super C06671> e02Var) {
            super(e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.handleUpdate(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$incrementCollector$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {Utils.PULSE_ANIMATOR_DURATION}, m = "incrementCollector")
    public static final class C06681 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06681(DataStoreImpl<T> dataStoreImpl, e02<? super C06681> e02Var) {
            super(e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.incrementCollector(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {264, 266}, m = "readAndInitOrPropagateAndThrowFailure")
    public static final class C06691 extends f02 {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06691(DataStoreImpl<T> dataStoreImpl, e02<? super C06691> e02Var) {
            super(e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readAndInitOrPropagateAndThrowFailure(this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {287, 296, 304}, m = "readDataAndUpdateCache")
    public static final class C06701 extends f02 {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06701(DataStoreImpl<T> dataStoreImpl, e02<? super C06701> e02Var) {
            super(e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataAndUpdateCache(false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$3", f = "DataStoreImpl.kt", l = {298, 300}, m = "invokeSuspend")
    public static final class C06713 extends pg8 implements nl3<e02<? super b36<? extends State<T>, ? extends Boolean>>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06713(DataStoreImpl<T> dataStoreImpl, e02<? super C06713> e02Var) {
            super(1, e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C06713(this.this$0, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super b36<? extends State<T>, Boolean>> e02Var) {
            return ((C06713) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            Throwable th;
            State readException;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    DataStoreImpl<T> dataStoreImpl = this.this$0;
                    this.label = 1;
                    obj = dataStoreImpl.readDataOrHandleCorruption(true, this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        th = (Throwable) this.L$0;
                        r57.b(obj);
                        readException = new ReadException(th, ((Number) obj).intValue());
                        return new b36(readException, Boolean.TRUE);
                    }
                    r57.b(obj);
                }
                readException = (State) obj;
            } catch (Throwable th2) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = th2;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version != a32Var) {
                    obj = version;
                    th = th2;
                }
                return a32Var;
            }
            return new b36(readException, Boolean.TRUE);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {365, 366, 368, 369, 380, RendererCapabilities.DECODER_SUPPORT_MASK}, m = "readDataOrHandleCorruption")
    public static final class C06721 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06721(DataStoreImpl<T> dataStoreImpl, e02<? super C06721> e02Var) {
            super(e02Var);
            this.this$0 = dataStoreImpl;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readDataOrHandleCorruption(false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$3", f = "DataStoreImpl.kt", l = {387, 388, 390}, m = "invokeSuspend")
    public static final class C06733 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ r07<T> $newData;
        final /* synthetic */ p07 $version;
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06733(r07<T> r07Var, DataStoreImpl<T> dataStoreImpl, p07 p07Var, e02<? super C06733> e02Var) {
            super(1, e02Var);
            this.$newData = r07Var;
            this.this$0 = dataStoreImpl;
            this.$version = p07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C06733(this.$newData, this.this$0, this.$version, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((C06733) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            p07 p07Var;
            r07<T> r07Var;
            p07 p07Var2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    r07Var = this.$newData;
                    DataStoreImpl<T> dataStoreImpl = this.this$0;
                    this.L$0 = r07Var;
                    this.label = 1;
                    obj = (T) dataStoreImpl.readDataFromFileOrDefault(this);
                    if (obj == a32Var) {
                    }
                    return a32Var;
                }
                if (i == 1) {
                    r07Var = (r07) this.L$0;
                    r57.b(obj);
                } else {
                    if (i != 2) {
                        if (i != 3) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        p07Var = (p07) this.L$0;
                        r57.b(obj);
                        p07Var.b = ((Number) obj).intValue();
                        return j59.a;
                    }
                    p07Var2 = (p07) this.L$0;
                    r57.b(obj);
                }
                p07Var2.b = ((Number) obj).intValue();
                return j59.a;
                r07Var.b = (T) obj;
                p07Var2 = this.$version;
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = p07Var2;
                this.label = 2;
                obj = (T) coordinator.getVersion(this);
                if (obj == a32Var) {
                    return a32Var;
                }
                p07Var2.b = ((Number) obj).intValue();
            } catch (CorruptionException unused) {
                p07 p07Var3 = this.$version;
                DataStoreImpl<T> dataStoreImpl2 = this.this$0;
                T t = this.$newData.b;
                this.L$0 = p07Var3;
                this.label = 3;
                Object objWriteData$datastore_core_release = dataStoreImpl2.writeData$datastore_core_release(t, true, this);
                if (objWriteData$datastore_core_release != a32Var) {
                    obj = (T) objWriteData$datastore_core_release;
                    p07Var = p07Var3;
                }
                return a32Var;
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readState$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$readState$2", f = "DataStoreImpl.kt", l = {218, 226}, m = "invokeSuspend")
    public static final class C06742 extends pg8 implements bm3<y22, e02<? super State<T>>, Object> {
        final /* synthetic */ boolean $requireLock;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06742(DataStoreImpl<T> dataStoreImpl, boolean z, e02<? super C06742> e02Var) {
            super(2, e02Var);
            this.this$0 = dataStoreImpl;
            this.$requireLock = z;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C06742(this.this$0, this.$requireLock, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super State<T>> e02Var) {
            return ((C06742) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        
            if (r5 == r0) goto L20;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r5)
                goto L4d
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L17:
                defpackage.r57.b(r5)     // Catch: java.lang.Throwable -> L50
                goto L40
            L1b:
                defpackage.r57.b(r5)
                androidx.datastore.core.DataStoreImpl<T> r5 = r4.this$0
                androidx.datastore.core.DataStoreInMemoryCache r5 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r5)
                androidx.datastore.core.State r5 = r5.getCurrentState()
                boolean r5 = r5 instanceof androidx.datastore.core.Final
                androidx.datastore.core.DataStoreImpl<T> r1 = r4.this$0
                if (r5 == 0) goto L37
                androidx.datastore.core.DataStoreInMemoryCache r4 = androidx.datastore.core.DataStoreImpl.access$getInMemoryCache$p(r1)
                androidx.datastore.core.State r4 = r4.getCurrentState()
                return r4
            L37:
                r4.label = r3     // Catch: java.lang.Throwable -> L50
                java.lang.Object r5 = androidx.datastore.core.DataStoreImpl.access$readAndInitOrPropagateAndThrowFailure(r1, r4)     // Catch: java.lang.Throwable -> L50
                if (r5 != r0) goto L40
                goto L4c
            L40:
                androidx.datastore.core.DataStoreImpl<T> r5 = r4.this$0
                boolean r1 = r4.$requireLock
                r4.label = r2
                java.lang.Object r5 = androidx.datastore.core.DataStoreImpl.access$readDataAndUpdateCache(r5, r1, r4)
                if (r5 != r0) goto L4d
            L4c:
                return r0
            L4d:
                androidx.datastore.core.State r5 = (androidx.datastore.core.State) r5
                return r5
            L50:
                r4 = move-exception
                androidx.datastore.core.ReadException r5 = new androidx.datastore.core.ReadException
                r0 = -1
                r5.<init>(r4, r0)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.C06742.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$transformAndWrite$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", f = "DataStoreImpl.kt", l = {330, 331, 337}, m = "invokeSuspend")
    public static final class C06752 extends pg8 implements nl3<e02<? super T>, Object> {
        final /* synthetic */ o22 $callerContext;
        final /* synthetic */ bm3<T, e02<? super T>, Object> $transform;
        Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06752(DataStoreImpl<T> dataStoreImpl, o22 o22Var, bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super C06752> e02Var) {
            super(1, e02Var);
            this.this$0 = dataStoreImpl;
            this.$callerContext = o22Var;
            this.$transform = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new C06752(this.this$0, this.$callerContext, this.$transform, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super T> e02Var) {
            return ((C06752) create(e02Var)).invokeSuspend(j59.a);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.datastore.core.DataStoreImpl$transformAndWrite$2 for r8v4 'this'  e02
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r8.label
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L28
                if (r1 == r5) goto L24
                if (r1 == r4) goto L1c
                if (r1 != r3) goto L16
                java.lang.Object r8 = r8.L$0
                defpackage.r57.b(r9)
                return r8
            L16:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r2
            L1c:
                java.lang.Object r1 = r8.L$0
                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                defpackage.r57.b(r9)
                goto L4d
            L24:
                defpackage.r57.b(r9)
                goto L36
            L28:
                defpackage.r57.b(r9)
                androidx.datastore.core.DataStoreImpl<T> r9 = r8.this$0
                r8.label = r5
                java.lang.Object r9 = androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(r9, r5, r8)
                if (r9 != r0) goto L36
                goto L66
            L36:
                r1 = r9
                androidx.datastore.core.Data r1 = (androidx.datastore.core.Data) r1
                o22 r9 = r8.$callerContext
                androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1 r6 = new androidx.datastore.core.DataStoreImpl$transformAndWrite$2$newData$1
                bm3<T, e02<? super T>, java.lang.Object> r7 = r8.$transform
                r6.<init>(r7, r1, r2)
                r8.L$0 = r1
                r8.label = r4
                java.lang.Object r9 = defpackage.av0.d(r9, r6, r8)
                if (r9 != r0) goto L4d
                goto L66
            L4d:
                r1.checkHashCode()
                java.lang.Object r1 = r1.getValue()
                boolean r1 = defpackage.aa4.e(r1, r9)
                if (r1 != 0) goto L67
                androidx.datastore.core.DataStoreImpl<T> r1 = r8.this$0
                r8.L$0 = r9
                r8.label = r3
                java.lang.Object r8 = r1.writeData$datastore_core_release(r9, r5, r8)
                if (r8 != r0) goto L67
            L66:
                return r0
            L67:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.C06752.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$updateData$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", l = {169}, m = "invokeSuspend")
    public static final class C06762 extends pg8 implements bm3<y22, e02<? super T>, Object> {
        final /* synthetic */ bm3<T, e02<? super T>, Object> $transform;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06762(DataStoreImpl<T> dataStoreImpl, bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super C06762> e02Var) {
            super(2, e02Var);
            this.this$0 = dataStoreImpl;
            this.$transform = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06762 c06762 = new C06762(this.this$0, this.$transform, e02Var);
            c06762.L$0 = obj;
            return c06762;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
            return ((C06762) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
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
            y22 y22Var = (y22) this.L$0;
            yp1 yp1Var = new yp1();
            ((DataStoreImpl) this.this$0).writeActor.offer(new Message.Update(this.$transform, yp1Var, ((DataStoreImpl) this.this$0).inMemoryCache.getCurrentState(), y22Var.getCoroutineContext()));
            this.label = 1;
            Object objU = yp1Var.u(this);
            return objU == a32Var ? a32Var : objU;
        }
    }

    public DataStoreImpl(Storage<T> storage, List<? extends bm3<? super InitializerApi<T>, ? super e02<? super j59>, ? extends Object>> list, CorruptionHandler<T> corruptionHandler, y22 y22Var) {
        storage.getClass();
        list.getClass();
        corruptionHandler.getClass();
        y22Var.getClass();
        this.storage = storage;
        this.corruptionHandler = corruptionHandler;
        this.scope = y22Var;
        this.data = new tb7(new DataStoreImpl$data$1(this, null));
        this.collectorMutex = new ch5();
        this.inMemoryCache = new DataStoreInMemoryCache<>();
        this.readAndInit = new InitDataStore(this, list);
        this.storageConnectionDelegate = new fh8(new DataStoreImpl$storageConnectionDelegate$1(this));
        this.coordinator$delegate = new fh8(new DataStoreImpl$coordinator$2(this));
        this.writeActor = new SimpleActor<>(y22Var, new DataStoreImpl$writeActor$1(this), DataStoreImpl$writeActor$2.INSTANCE, new DataStoreImpl$writeActor$3(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object decrementCollector(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        yg5 yg5Var;
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
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5Var = this.collectorMutex;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = yg5Var;
            anonymousClass1.label = 1;
            if (yg5Var.lock(null, anonymousClass1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5 yg5Var2 = (yg5) anonymousClass1.L$1;
            DataStoreImpl<T> dataStoreImpl = (DataStoreImpl) anonymousClass1.L$0;
            r57.b(obj);
            yg5Var = yg5Var2;
            this = dataStoreImpl;
        }
        try {
            int i3 = this.collectorCounter - 1;
            this.collectorCounter = i3;
            if (i3 == 0) {
                mb4 mb4Var = this.collectorJob;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                this.collectorJob = null;
            }
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            yg5Var.unlock(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> Object doWithWriteFileLock(boolean z, nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var) {
        return z ? nl3Var.invoke(e02Var) : getCoordinator().lock(new AnonymousClass3(nl3Var, null), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InterProcessCoordinator getCoordinator() {
        return (InterProcessCoordinator) this.coordinator$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ac, code lost:
    
        if (r9 == r1) goto L44;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v10, types: [xp1] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.datastore.core.DataStoreImpl] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleUpdate(androidx.datastore.core.Message.Update<T> r10, defpackage.e02<? super defpackage.j59> r11) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.handleUpdate(androidx.datastore.core.Message$Update, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object incrementCollector(e02<? super j59> e02Var) {
        C06681 c06681;
        yg5 yg5Var;
        if (e02Var instanceof C06681) {
            c06681 = (C06681) e02Var;
            int i = c06681.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06681.label = i - Integer.MIN_VALUE;
            } else {
                c06681 = new C06681(this, e02Var);
            }
        } else {
            c06681 = new C06681(this, e02Var);
        }
        Object obj = c06681.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06681.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5Var = this.collectorMutex;
            c06681.L$0 = this;
            c06681.L$1 = yg5Var;
            c06681.label = 1;
            if (yg5Var.lock(null, c06681) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5 yg5Var2 = (yg5) c06681.L$1;
            DataStoreImpl<T> dataStoreImpl = (DataStoreImpl) c06681.L$0;
            r57.b(obj);
            yg5Var = yg5Var2;
            this = dataStoreImpl;
        }
        try {
            int i3 = this.collectorCounter + 1;
            this.collectorCounter = i3;
            if (i3 == 1) {
                this.collectorJob = av0.c(this.scope, null, null, new DataStoreImpl$incrementCollector$2$1(this, null), 3);
            }
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            yg5Var.unlock(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
    
        if (r2.runIfNeeded(r0) == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAndInitOrPropagateAndThrowFailure(defpackage.e02<? super defpackage.j59> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.datastore.core.DataStoreImpl.C06691
            if (r0 == 0) goto L13
            r0 = r7
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.DataStoreImpl.C06691) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L32
            int r6 = r0.I$0
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.DataStoreImpl r0 = (androidx.datastore.core.DataStoreImpl) r0
            defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L30
            goto L68
        L30:
            r7 = move-exception
            goto L70
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L39:
            java.lang.Object r6 = r0.L$0
            androidx.datastore.core.DataStoreImpl r6 = (androidx.datastore.core.DataStoreImpl) r6
            defpackage.r57.b(r7)
            goto L53
        L41:
            defpackage.r57.b(r7)
            androidx.datastore.core.InterProcessCoordinator r7 = r6.getCoordinator()
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r7.getVersion(r0)
            if (r7 != r1) goto L53
            goto L67
        L53:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            androidx.datastore.core.DataStoreImpl<T>$InitDataStore r2 = r6.readAndInit     // Catch: java.lang.Throwable -> L6b
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L6b
            r0.I$0 = r7     // Catch: java.lang.Throwable -> L6b
            r0.label = r3     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r6 = r2.runIfNeeded(r0)     // Catch: java.lang.Throwable -> L6b
            if (r6 != r1) goto L68
        L67:
            return r1
        L68:
            j59 r6 = defpackage.j59.a
            return r6
        L6b:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L70:
            androidx.datastore.core.DataStoreInMemoryCache<T> r0 = r0.inMemoryCache
            androidx.datastore.core.ReadException r1 = new androidx.datastore.core.ReadException
            r1.<init>(r7, r6)
            r0.tryUpdate(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.readAndInitOrPropagateAndThrowFailure(e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:44:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object readDataAndUpdateCache(boolean z, e02<? super State<T>> e02Var) {
        C06701 c06701;
        DataStoreImpl<T> dataStoreImpl;
        State<T> state;
        DataStoreImpl<T> dataStoreImpl2;
        b36 b36Var;
        State<T> state2;
        if (e02Var instanceof C06701) {
            c06701 = (C06701) e02Var;
            int i = c06701.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06701.label = i - Integer.MIN_VALUE;
            } else {
                c06701 = new C06701(this, e02Var);
            }
        } else {
            c06701 = new C06701(this, e02Var);
        }
        Object objTryLock = c06701.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06701.label;
        if (i2 == 0) {
            r57.b(objTryLock);
            State<T> currentState = this.inMemoryCache.getCurrentState();
            if (currentState instanceof UnInitialized) {
                ah.f(BUG_MESSAGE);
                return null;
            }
            InterProcessCoordinator coordinator = getCoordinator();
            c06701.L$0 = this;
            c06701.L$1 = currentState;
            c06701.Z$0 = z;
            c06701.label = 1;
            Object version = coordinator.getVersion(c06701);
            if (version != a32Var) {
                dataStoreImpl = this;
                state = currentState;
                objTryLock = version;
            }
            return a32Var;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                dataStoreImpl2 = (DataStoreImpl) c06701.L$0;
                r57.b(objTryLock);
                b36Var = (b36) objTryLock;
                state2 = (State) b36Var.b;
                if (((Boolean) b36Var.c).booleanValue()) {
                    dataStoreImpl2.inMemoryCache.tryUpdate(state2);
                }
                return state2;
            }
            if (i2 != 3) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            dataStoreImpl2 = (DataStoreImpl) c06701.L$0;
            r57.b(objTryLock);
            b36Var = (b36) objTryLock;
            state2 = (State) b36Var.b;
            if (((Boolean) b36Var.c).booleanValue()) {
                dataStoreImpl2.inMemoryCache.tryUpdate(state2);
            }
            return state2;
        }
        z = c06701.Z$0;
        state = (State) c06701.L$1;
        dataStoreImpl = (DataStoreImpl) c06701.L$0;
        r57.b(objTryLock);
        int iIntValue = ((Number) objTryLock).intValue();
        boolean z2 = state instanceof Data;
        int version2 = z2 ? state.getVersion() : -1;
        if (z2 && iIntValue == version2) {
            return state;
        }
        if (z) {
            InterProcessCoordinator coordinator2 = dataStoreImpl.getCoordinator();
            C06713 c06713 = new C06713(dataStoreImpl, null);
            c06701.L$0 = dataStoreImpl;
            c06701.L$1 = null;
            c06701.label = 2;
            objTryLock = coordinator2.lock(c06713, c06701);
            if (objTryLock != a32Var) {
                dataStoreImpl2 = dataStoreImpl;
                b36Var = (b36) objTryLock;
                state2 = (State) b36Var.b;
                if (((Boolean) b36Var.c).booleanValue()) {
                    dataStoreImpl2.inMemoryCache.tryUpdate(state2);
                }
                return state2;
            }
        } else {
            InterProcessCoordinator coordinator3 = dataStoreImpl.getCoordinator();
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(dataStoreImpl, version2, null);
            c06701.L$0 = dataStoreImpl;
            c06701.L$1 = null;
            c06701.label = 3;
            objTryLock = coordinator3.tryLock(anonymousClass4, c06701);
            if (objTryLock != a32Var) {
                dataStoreImpl2 = dataStoreImpl;
                b36Var = (b36) objTryLock;
                state2 = (State) b36Var.b;
                if (((Boolean) b36Var.c).booleanValue()) {
                    dataStoreImpl2.inMemoryCache.tryUpdate(state2);
                }
                return state2;
            }
        }
        return a32Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readDataFromFileOrDefault(e02<? super T> e02Var) {
        return StorageConnectionKt.readData(getStorageConnection$datastore_core_release(), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x009f A[Catch: CorruptionException -> 0x005f, TryCatch #3 {CorruptionException -> 0x005f, blocks: (B:19:0x005a, B:54:0x00fc, B:24:0x0068, B:51:0x00df, B:32:0x0085, B:40:0x009f, B:42:0x00a5, B:36:0x008e, B:48:0x00cd), top: B:80:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:64:0x013e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0146  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object readDataOrHandleCorruption(boolean z, e02<? super Data<T>> e02Var) throws CorruptionException {
        C06721 c06721;
        r07 r07Var;
        CorruptionException corruptionException;
        DataStoreImpl<T> dataStoreImpl;
        boolean z2;
        r07 r07Var2;
        p07 p07Var;
        CorruptionException corruptionException2;
        C06733 c06733;
        p07 p07Var2;
        r07 r07Var3;
        int iHashCode;
        Object version;
        DataStoreImpl<T> dataStoreImpl2;
        int i;
        Object obj;
        if (e02Var instanceof C06721) {
            c06721 = (C06721) e02Var;
            int i2 = c06721.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c06721.label = i2 - Integer.MIN_VALUE;
            } else {
                c06721 = new C06721(this, e02Var);
            }
        } else {
            c06721 = new C06721(this, e02Var);
        }
        Object obj2 = (T) c06721.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        try {
            switch (c06721.label) {
                case 0:
                    r57.b(obj2);
                    if (z) {
                        c06721.L$0 = this;
                        c06721.Z$0 = z;
                        c06721.label = 1;
                        obj2 = (T) readDataFromFileOrDefault(c06721);
                        if (obj2 != a32Var) {
                            if (obj2 != null) {
                                iHashCode = obj2.hashCode();
                            } else {
                                iHashCode = 0;
                            }
                            InterProcessCoordinator coordinator = this.getCoordinator();
                            c06721.L$0 = this;
                            c06721.L$1 = obj2;
                            c06721.Z$0 = z;
                            c06721.I$0 = iHashCode;
                            c06721.label = 2;
                            version = coordinator.getVersion(c06721);
                            if (version != a32Var) {
                                dataStoreImpl2 = this;
                                i = iHashCode;
                                obj = obj2;
                                obj2 = (T) version;
                                return new Data(obj, i, ((Number) obj2).intValue());
                            }
                        }
                    } else {
                        InterProcessCoordinator coordinator2 = getCoordinator();
                        c06721.L$0 = this;
                        c06721.Z$0 = z;
                        c06721.label = 3;
                        obj2 = (T) coordinator2.getVersion(c06721);
                        if (obj2 != a32Var) {
                            int iIntValue = ((Number) obj2).intValue();
                            InterProcessCoordinator coordinator3 = this.getCoordinator();
                            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, iIntValue, null);
                            c06721.L$0 = this;
                            c06721.Z$0 = z;
                            c06721.label = 4;
                            obj2 = (T) coordinator3.tryLock(anonymousClass2, c06721);
                            if (obj2 == a32Var) {
                            }
                            return (Data) obj2;
                        }
                    }
                    return a32Var;
                case 1:
                    z = c06721.Z$0;
                    this = (DataStoreImpl) c06721.L$0;
                    r57.b(obj2);
                    if (obj2 != null) {
                        iHashCode = obj2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    InterProcessCoordinator coordinator4 = this.getCoordinator();
                    c06721.L$0 = this;
                    c06721.L$1 = obj2;
                    c06721.Z$0 = z;
                    c06721.I$0 = iHashCode;
                    c06721.label = 2;
                    version = coordinator4.getVersion(c06721);
                    if (version != a32Var) {
                        dataStoreImpl2 = this;
                        i = iHashCode;
                        obj = obj2;
                        obj2 = (T) version;
                        return new Data(obj, i, ((Number) obj2).intValue());
                    }
                    return a32Var;
                case 2:
                    i = c06721.I$0;
                    z = c06721.Z$0;
                    obj = c06721.L$1;
                    dataStoreImpl2 = (DataStoreImpl) c06721.L$0;
                    try {
                        r57.b(obj2);
                        return new Data(obj, i, ((Number) obj2).intValue());
                    } catch (CorruptionException e) {
                        e = e;
                        this = dataStoreImpl2;
                        r07Var = new r07();
                        CorruptionHandler<T> corruptionHandler = this.corruptionHandler;
                        c06721.L$0 = this;
                        c06721.L$1 = e;
                        c06721.L$2 = r07Var;
                        c06721.L$3 = r07Var;
                        c06721.Z$0 = z;
                        c06721.label = 5;
                        Object objHandleCorruption = corruptionHandler.handleCorruption(e, c06721);
                        if (objHandleCorruption != a32Var) {
                            corruptionException = e;
                            obj2 = (T) objHandleCorruption;
                            dataStoreImpl = this;
                            z2 = z;
                            r07Var2 = r07Var;
                            r07Var2.b = (T) obj2;
                            p07Var = new p07();
                            try {
                                c06733 = new C06733(r07Var, dataStoreImpl, p07Var, null);
                                c06721.L$0 = corruptionException;
                                c06721.L$1 = r07Var;
                                c06721.L$2 = p07Var;
                                c06721.L$3 = null;
                                c06721.label = 6;
                                if (dataStoreImpl.doWithWriteFileLock(z2, c06733, c06721) != a32Var) {
                                    p07Var2 = p07Var;
                                    r07Var3 = r07Var;
                                    T t = r07Var3.b;
                                    return new Data(t, t != null ? t.hashCode() : 0, p07Var2.b);
                                }
                            } catch (Throwable th) {
                                th = th;
                                corruptionException2 = corruptionException;
                                sj0.c(corruptionException2, th);
                                throw corruptionException2;
                            }
                        }
                        return a32Var;
                    }
                case 3:
                    z = c06721.Z$0;
                    this = (DataStoreImpl) c06721.L$0;
                    r57.b(obj2);
                    int iIntValue2 = ((Number) obj2).intValue();
                    InterProcessCoordinator coordinator5 = this.getCoordinator();
                    AnonymousClass2 anonymousClass3 = new AnonymousClass2(this, iIntValue2, null);
                    c06721.L$0 = this;
                    c06721.Z$0 = z;
                    c06721.label = 4;
                    obj2 = (T) coordinator5.tryLock(anonymousClass3, c06721);
                    if (obj2 == a32Var) {
                        return a32Var;
                    }
                    return (Data) obj2;
                case 4:
                    boolean z3 = c06721.Z$0;
                    r57.b(obj2);
                    return (Data) obj2;
                case 5:
                    z2 = c06721.Z$0;
                    r07Var2 = (r07) c06721.L$3;
                    r07Var = (r07) c06721.L$2;
                    corruptionException = (CorruptionException) c06721.L$1;
                    dataStoreImpl = (DataStoreImpl) c06721.L$0;
                    r57.b(obj2);
                    r07Var2.b = (T) obj2;
                    p07Var = new p07();
                    c06733 = new C06733(r07Var, dataStoreImpl, p07Var, null);
                    c06721.L$0 = corruptionException;
                    c06721.L$1 = r07Var;
                    c06721.L$2 = p07Var;
                    c06721.L$3 = null;
                    c06721.label = 6;
                    if (dataStoreImpl.doWithWriteFileLock(z2, c06733, c06721) != a32Var) {
                        p07Var2 = p07Var;
                        r07Var3 = r07Var;
                        T t2 = r07Var3.b;
                        return new Data(t2, t2 != null ? t2.hashCode() : 0, p07Var2.b);
                    }
                    return a32Var;
                case 6:
                    p07Var2 = (p07) c06721.L$2;
                    r07Var3 = (r07) c06721.L$1;
                    corruptionException2 = (CorruptionException) c06721.L$0;
                    try {
                        r57.b(obj2);
                        T t3 = r07Var3.b;
                        return new Data(t3, t3 != null ? t3.hashCode() : 0, p07Var2.b);
                    } catch (Throwable th2) {
                        th = th2;
                        sj0.c(corruptionException2, th);
                        throw corruptionException2;
                    }
                default:
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
            }
        } catch (CorruptionException e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readState(boolean z, e02<? super State<T>> e02Var) {
        return av0.d(this.scope.getCoroutineContext(), new C06742(this, z, null), e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object transformAndWrite(bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, o22 o22Var, e02<? super T> e02Var) {
        return getCoordinator().lock(new C06752(this, o22Var, bm3Var, null), e02Var);
    }

    @Override // androidx.datastore.core.DataStore
    public hd3<T> getData() {
        return this.data;
    }

    public final StorageConnection<T> getStorageConnection$datastore_core_release() {
        return this.storageConnectionDelegate.getValue();
    }

    @Override // androidx.datastore.core.DataStore
    public Object updateData(bm3<? super T, ? super e02<? super T>, ? extends Object> bm3Var, e02<? super T> e02Var) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) e02Var.getContext().get(UpdatingDataContextElement.Companion.Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return av0.d(new UpdatingDataContextElement(updatingDataContextElement, this), new C06762(this, bm3Var, null), e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object writeData$datastore_core_release(T t, boolean z, e02<? super Integer> e02Var) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        p07 p07Var;
        if (e02Var instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) e02Var;
            int i = dataStoreImpl$writeData$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.label = i - Integer.MIN_VALUE;
            } else {
                dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, e02Var);
            }
        } else {
            dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, e02Var);
        }
        Object obj = dataStoreImpl$writeData$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = dataStoreImpl$writeData$1.label;
        if (i2 == 0) {
            r57.b(obj);
            p07 p07Var2 = new p07();
            StorageConnection<T> storageConnection$datastore_core_release = getStorageConnection$datastore_core_release();
            DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(p07Var2, this, t, z, null);
            dataStoreImpl$writeData$1.L$0 = p07Var2;
            dataStoreImpl$writeData$1.label = 1;
            if (storageConnection$datastore_core_release.writeScope(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == a32Var) {
                return a32Var;
            }
            p07Var = p07Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            p07Var = (p07) dataStoreImpl$writeData$1.L$0;
            r57.b(obj);
        }
        return new Integer(p07Var.b);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4", f = "DataStoreImpl.kt", l = {306, 309}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends pg8 implements bm3<Boolean, e02<? super b36<? extends State<T>, ? extends Boolean>>, Object> {
        final /* synthetic */ int $cachedVersion;
        Object L$0;
        /* synthetic */ boolean Z$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(DataStoreImpl<T> dataStoreImpl, int i, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.this$0 = dataStoreImpl;
            this.$cachedVersion = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.this$0, this.$cachedVersion, e02Var);
            anonymousClass4.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass4;
        }

        public final Object invoke(boolean z, e02<? super b36<? extends State<T>, Boolean>> e02Var) {
            return ((AnonymousClass4) create(Boolean.valueOf(z), e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v9 */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            int iIntValue;
            Throwable th;
            boolean z;
            State readException;
            ?? r1;
            ?? r2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            ?? r3 = this.label;
            try {
                if (r3 == 0) {
                    r57.b(obj);
                    boolean z2 = this.Z$0;
                    DataStoreImpl<T> dataStoreImpl = this.this$0;
                    this.Z$0 = z2;
                    this.label = 1;
                    obj = dataStoreImpl.readDataOrHandleCorruption(z2, this);
                    r3 = z2;
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (r3 != 1) {
                        if (r3 != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        z = this.Z$0;
                        th = (Throwable) this.L$0;
                        r57.b(obj);
                        iIntValue = ((Number) obj).intValue();
                        r2 = z;
                        readException = new ReadException(th, iIntValue);
                        r1 = r2;
                        return new b36(readException, Boolean.valueOf((boolean) r1));
                    }
                    boolean z3 = this.Z$0;
                    r57.b(obj);
                    r3 = z3;
                }
                readException = (State) obj;
                r1 = r3;
            } catch (Throwable th2) {
                if (r3 != 0) {
                    InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                    this.L$0 = th2;
                    this.Z$0 = r3;
                    this.label = 2;
                    Object version = coordinator.getVersion(this);
                    if (version != a32Var) {
                        obj = version;
                        th = th2;
                        z = r3 == true ? 1 : 0;
                    }
                    return a32Var;
                }
                iIntValue = this.$cachedVersion;
                th = th2;
                r2 = r3;
            }
            return new b36(readException, Boolean.valueOf((boolean) r1));
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Object obj) {
            return invoke(bool.booleanValue(), (e02) obj);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2, reason: invalid class name */
    @bd2(c = "androidx.datastore.core.DataStoreImpl$readDataOrHandleCorruption$2", f = "DataStoreImpl.kt", l = {370, 371}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<Boolean, e02<? super Data<T>>, Object> {
        final /* synthetic */ int $preLockVersion;
        Object L$0;
        /* synthetic */ boolean Z$0;
        int label;
        final /* synthetic */ DataStoreImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(DataStoreImpl<T> dataStoreImpl, int i, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = dataStoreImpl;
            this.$preLockVersion = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$preLockVersion, e02Var);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        public final Object invoke(boolean z, e02<? super Data<T>> e02Var) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0057  */
        /* JADX WARN: Code duplicated, block: B:23:0x005c  */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            boolean z;
            int iIntValue;
            Object obj2;
            int iHashCode;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                z = this.Z$0;
                DataStoreImpl<T> dataStoreImpl = this.this$0;
                this.Z$0 = z;
                this.label = 1;
                obj = dataStoreImpl.readDataFromFileOrDefault(this);
                if (obj != a32Var) {
                }
                return a32Var;
            }
            if (i == 1) {
                z = this.Z$0;
                r57.b(obj);
            } else {
                if (i != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = this.L$0;
                r57.b(obj);
            }
            iIntValue = ((Number) obj).intValue();
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            return new Data(obj2, iHashCode, iIntValue);
            if (z) {
                InterProcessCoordinator coordinator = this.this$0.getCoordinator();
                this.L$0 = obj;
                this.label = 2;
                Object version = coordinator.getVersion(this);
                if (version != a32Var) {
                    Object obj3 = obj;
                    obj = version;
                    obj2 = obj3;
                    iIntValue = ((Number) obj).intValue();
                }
                return a32Var;
            }
            Object obj4 = obj;
            iIntValue = this.$preLockVersion;
            obj2 = obj4;
            if (obj2 != null) {
                iHashCode = obj2.hashCode();
            } else {
                iHashCode = 0;
            }
            return new Data(obj2, iHashCode, iIntValue);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Object obj) {
            return invoke(bool.booleanValue(), (e02) obj);
        }
    }

    public /* synthetic */ DataStoreImpl(Storage storage, List list, CorruptionHandler corruptionHandler, y22 y22Var, int i, jh2 jh2Var) {
        this(storage, (i & 2) != 0 ? kx2.b : list, (i & 4) != 0 ? new NoOpCorruptionHandler() : corruptionHandler, (i & 8) != 0 ? z22.a(Actual_jvmKt.ioDispatcher().plus(rm9.b())) : y22Var);
    }
}
