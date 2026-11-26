package androidx.camera.camera2.adapter;

import android.content.Context;
import android.hardware.camera2.CameraManager;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.impl.AbstractCameraPresenceSource;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.de3;
import defpackage.df3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.n07;
import defpackage.pg8;
import defpackage.px;
import defpackage.qn1;
import defpackage.r57;
import defpackage.vc3;
import defpackage.xq;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class PipeCameraPresenceSource extends AbstractCameraPresenceSource {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "PipePresenceSrc";
    private final CameraManager cameraManager;
    private final y22 coroutineScope;
    private mb4 flowCollectionJob;
    private final hd3<List<CameraId>> idFlow;
    private final AtomicBoolean isMonitoring;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PipeCameraPresenceSource(hd3<? extends List<CameraId>> hd3Var, y22 y22Var, List<String> list, Context context) {
        super(list);
        hd3Var.getClass();
        y22Var.getClass();
        list.getClass();
        context.getClass();
        this.idFlow = hd3Var;
        this.coroutineScope = y22Var;
        this.isMonitoring = new AtomicBoolean(false);
        Object systemService = context.getSystemService("camera");
        systemService.getClass();
        this.cameraManager = (CameraManager) systemService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object fetchData$lambda$0(PipeCameraPresenceSource pipeCameraPresenceSource, CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        av0.c(pipeCameraPresenceSource.coroutineScope, null, null, new PipeCameraPresenceSource$fetchData$1$1(pipeCameraPresenceSource, completer, null), 3);
        return "FetchData for PipeCameraPresence0";
    }

    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource, androidx.camera.core.impl.Observable
    public ListenableFuture<List<CameraIdentifier>> fetchData() {
        ListenableFuture<List<CameraIdentifier>> future = CallbackToFutureAdapter.getFuture(new xq(this, 3));
        future.getClass();
        return future;
    }

    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource
    public void startMonitoring() {
        if (!this.isMonitoring.compareAndSet(false, true)) {
            Log.i(TAG, "Monitoring is already active. Ignoring redundant start call.");
            return;
        }
        Log.i(TAG, "Starting to collect camera ID flow.");
        mb4 mb4Var = this.flowCollectionJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        n07 n07Var = new n07();
        n07Var.b = true;
        final hd3<List<CameraId>> hd3Var = this.idFlow;
        this.flowCollectionJob = px.h(new de3(new df3(new hd3<List<? extends CameraIdentifier>>() { // from class: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1

            /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2", f = "PipeCameraPresenceSource.kt", l = {50}, m = "emit", v = 1)
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

                public AnonymousClass2(id3 id3Var) {
                    this.$this_unsafeFlow = id3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
                    CameraIdentifier cameraIdentifierCreate$default;
                    if (e02Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) e02Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(e02Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(e02Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        r57.b(obj2);
                        id3 id3Var = this.$this_unsafeFlow;
                        ArrayList arrayList = new ArrayList();
                        Iterator<T> it = ((List) obj).iterator();
                        while (it.hasNext()) {
                            String strM358unboximpl = ((CameraId) it.next()).m358unboximpl();
                            try {
                                cameraIdentifierCreate$default = CameraIdentifier.Factory.create$default(strM358unboximpl, null, null, 6, null);
                            } catch (Exception e) {
                                Log.w("PipePresenceSrc", "Failed to create CameraIdentifier for pipeId: " + strM358unboximpl, e);
                                cameraIdentifierCreate$default = null;
                            }
                            if (cameraIdentifierCreate$default != null) {
                                arrayList.add(cameraIdentifierCreate$default);
                            }
                        }
                        anonymousClass1.label = 1;
                        if (id3Var.emit(arrayList, anonymousClass1) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj2);
                    }
                    return j59.a;
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3<? super List<? extends CameraIdentifier>> id3Var, e02 e02Var) {
                Object objCollect = hd3Var.collect(new AnonymousClass2(id3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, new AnonymousClass2(n07Var, null)), new AnonymousClass3(null)), this.coroutineScope);
    }

    @Override // androidx.camera.core.impl.AbstractCameraPresenceSource
    public void stopMonitoring() {
        Log.i(TAG, "Stopping camera ID flow collection.");
        if (this.isMonitoring.compareAndSet(true, false)) {
            mb4 mb4Var = this.flowCollectionJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.flowCollectionJob = null;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$2", f = "PipeCameraPresenceSource.kt", l = {84}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<List<? extends CameraIdentifier>, e02<? super j59>, Object> {
        final /* synthetic */ n07 $isFirstEmission;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(n07 n07Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$isFirstEmission = n07Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = PipeCameraPresenceSource.this.new AnonymousClass2(this.$isFirstEmission, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(List<CameraIdentifier> list, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                List list = (List) this.L$0;
                Log.d(PipeCameraPresenceSource.TAG, "Flow emitted new camera set: ".concat(qn1.a0(list, null, null, null, 0, null, 63)));
                if (!PipeCameraPresenceSource.this.isMonitoring.get()) {
                    vc3.a(Log.d(PipeCameraPresenceSource.TAG, "Ignoring camera update because monitoring is stopped."));
                } else if (this.$isFirstEmission.b) {
                    Log.i(PipeCameraPresenceSource.TAG, "Handling first camera set, triggering fresh query.");
                    ListenableFuture<List<CameraIdentifier>> listenableFutureFetchData = PipeCameraPresenceSource.this.fetchData();
                    this.label = 1;
                    if (ListenableFutureKt.await(listenableFutureFetchData, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    PipeCameraPresenceSource.this.updateData(list);
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.$isFirstEmission.b = false;
            return j59.a;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(List<? extends CameraIdentifier> list, e02<? super j59> e02Var) {
            return invoke2((List<CameraIdentifier>) list, e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$3, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$startMonitoring$3", f = "PipeCameraPresenceSource.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements dm3<id3<? super List<? extends CameraIdentifier>>, Throwable, e02<? super j59>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass3(e02<? super AnonymousClass3> e02Var) {
            super(3, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(id3<? super List<CameraIdentifier>> id3Var, Throwable th, e02<? super j59> e02Var) {
            AnonymousClass3 anonymousClass3 = PipeCameraPresenceSource.this.new AnonymousClass3(e02Var);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Throwable th = (Throwable) this.L$0;
            Log.e(PipeCameraPresenceSource.TAG, "Error in camera ID flow collection.", th);
            if (PipeCameraPresenceSource.this.isMonitoring.get()) {
                PipeCameraPresenceSource.this.updateError(th);
            } else {
                vc3.a(Log.d(PipeCameraPresenceSource.TAG, "Ignoring error because monitoring is stopped."));
            }
            return j59.a;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Object invoke(id3<? super List<? extends CameraIdentifier>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return invoke2((id3<? super List<CameraIdentifier>>) id3Var, th, e02Var);
        }
    }
}
