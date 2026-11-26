package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bt7;
import defpackage.cu0;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.ir7;
import defpackage.j59;
import defpackage.l1;
import defpackage.r57;
import defpackage.ra8;
import defpackage.vg5;
import defpackage.y22;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class MultiInstanceInvalidationClient {
    private final Context appContext;
    private int clientId;
    private final y22 coroutineScope;
    private final vg5<Set<String>> invalidatedTables;
    private final IMultiInstanceInvalidationCallback invalidationCallback;
    private IMultiInstanceInvalidationService invalidationService;
    private final InvalidationTracker invalidationTracker;
    private final String name;
    private final MultiInstanceInvalidationClient$observer$1 observer;
    private final ServiceConnection serviceConnection;
    private final AtomicBoolean stopped;

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.room.MultiInstanceInvalidationClient$observer$1] */
    public MultiInstanceInvalidationClient(Context context, String str, InvalidationTracker invalidationTracker) {
        context.getClass();
        str.getClass();
        invalidationTracker.getClass();
        this.name = str;
        this.invalidationTracker = invalidationTracker;
        this.appContext = context.getApplicationContext();
        this.coroutineScope = invalidationTracker.getDatabase$room_runtime().getCoroutineScope();
        this.stopped = new AtomicBoolean(true);
        this.invalidatedTables = bt7.a(0, 0, cu0.SUSPEND);
        final String[] tableNames$room_runtime = invalidationTracker.getTableNames$room_runtime();
        this.observer = new InvalidationTracker.Observer(tableNames$room_runtime) { // from class: androidx.room.MultiInstanceInvalidationClient$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean isRemote$room_runtime() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(Set<String> set) {
                set.getClass();
                if (this.this$0.stopped.get()) {
                    return;
                }
                try {
                    IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.this$0.invalidationService;
                    if (iMultiInstanceInvalidationService != null) {
                        iMultiInstanceInvalidationService.broadcastInvalidation(this.this$0.clientId, (String[]) set.toArray(new String[0]));
                    }
                } catch (RemoteException e) {
                    Log.w(Room.LOG_TAG, "Cannot broadcast invalidation", e);
                }
            }
        };
        this.invalidationCallback = new IMultiInstanceInvalidationCallback.Stub() { // from class: androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1
            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public void onInvalidation(String[] strArr) {
                strArr.getClass();
                av0.c(this.this$0.coroutineScope, null, null, new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(strArr, this.this$0, null), 3);
            }
        };
        this.serviceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                componentName.getClass();
                iBinder.getClass();
                this.this$0.invalidationService = IMultiInstanceInvalidationService.Stub.asInterface(iBinder);
                this.this$0.registerCallback();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                componentName.getClass();
                this.this$0.invalidationService = null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerCallback() {
        try {
            IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.invalidationService;
            if (iMultiInstanceInvalidationService != null) {
                this.clientId = iMultiInstanceInvalidationService.registerCallback(this.invalidationCallback, this.name);
            }
        } catch (RemoteException e) {
            Log.w(Room.LOG_TAG, "Cannot register multi-instance invalidation callback", e);
        }
    }

    public final hd3<Set<String>> createFlow(final String[] strArr) {
        strArr.getClass();
        final vg5<Set<String>> vg5Var = this.invalidatedTables;
        return new hd3<Set<? extends String>>() { // from class: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1

            /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ String[] $resolvedTableNames$inlined;
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2", f = "MultiInstanceInvalidationClient.android.kt", l = {235}, m = "emit")
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

                public AnonymousClass2(id3 id3Var, String[] strArr) {
                    this.$this_unsafeFlow = id3Var;
                    this.$resolvedTableNames$inlined = strArr;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
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
                        Set set = (Set) obj;
                        ir7 ir7Var = new ir7();
                        for (String str : this.$resolvedTableNames$inlined) {
                            Iterator<T> it = set.iterator();
                            while (it.hasNext()) {
                                if (ra8.v(str, (String) it.next(), true)) {
                                    ir7Var.add(str);
                                }
                            }
                        }
                        ir7 ir7VarD = l1.d(ir7Var);
                        ir7 ir7Var2 = ir7VarD.b.isEmpty() ? null : ir7VarD;
                        if (ir7Var2 != null) {
                            anonymousClass1.label = 1;
                            if (id3Var.emit(ir7Var2, anonymousClass1) == a32Var) {
                                return a32Var;
                            }
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
            public Object collect(id3<? super Set<? extends String>> id3Var, e02 e02Var) {
                Object objCollect = vg5Var.collect(new AnonymousClass2(id3Var, strArr), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        };
    }

    public final InvalidationTracker getInvalidationTracker() {
        return this.invalidationTracker;
    }

    public final String getName() {
        return this.name;
    }

    public final void start(Intent intent) {
        intent.getClass();
        if (this.stopped.compareAndSet(true, false)) {
            this.appContext.bindService(intent, this.serviceConnection, 1);
            this.invalidationTracker.addRemoteObserver$room_runtime(this.observer);
        }
    }

    public final void stop() {
        if (this.stopped.compareAndSet(false, true)) {
            this.invalidationTracker.removeObserver(this.observer);
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.invalidationService;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.unregisterCallback(this.invalidationCallback, this.clientId);
                }
            } catch (RemoteException e) {
                Log.w(Room.LOG_TAG, "Cannot unregister multi-instance invalidation callback", e);
            }
            this.appContext.unbindService(this.serviceConnection);
        }
    }
}
