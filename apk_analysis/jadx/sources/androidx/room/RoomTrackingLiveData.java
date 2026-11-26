package androidx.room;

import androidx.lifecycle.LiveData;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RoomTrackingLiveData<T> extends LiveData<T> {
    private final AtomicBoolean computing;
    private final InvalidationLiveDataContainer container;
    private final RoomDatabase database;
    private final boolean inTransaction;
    private final AtomicBoolean invalid;
    private final o22 launchContext;
    private final InvalidationTracker.Observer observer;
    private final AtomicBoolean registeredObserver;

    /* JADX INFO: renamed from: androidx.room.RoomTrackingLiveData$invalidated$1, reason: invalid class name */
    @bd2(c = "androidx.room.RoomTrackingLiveData$invalidated$1", f = "RoomTrackingLiveData.android.kt", l = {113}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ RoomTrackingLiveData<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(RoomTrackingLiveData<T> roomTrackingLiveData, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = roomTrackingLiveData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                RoomTrackingLiveData<T> roomTrackingLiveData = this.this$0;
                this.label = 1;
                if (roomTrackingLiveData.refresh(this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.room.RoomTrackingLiveData$onActive$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.RoomTrackingLiveData$onActive$1", f = "RoomTrackingLiveData.android.kt", l = {123}, m = "invokeSuspend")
    public static final class C07231 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ RoomTrackingLiveData<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07231(RoomTrackingLiveData<T> roomTrackingLiveData, e02<? super C07231> e02Var) {
            super(2, e02Var);
            this.this$0 = roomTrackingLiveData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07231(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07231) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                RoomTrackingLiveData<T> roomTrackingLiveData = this.this$0;
                this.label = 1;
                if (roomTrackingLiveData.refresh(this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.room.RoomTrackingLiveData$refresh$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.RoomTrackingLiveData", f = "RoomTrackingLiveData.android.kt", l = {82}, m = "refresh")
    public static final class C07241 extends f02 {
        int I$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ RoomTrackingLiveData<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07241(RoomTrackingLiveData<T> roomTrackingLiveData, e02<? super C07241> e02Var) {
            super(e02Var);
            this.this$0 = roomTrackingLiveData;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.refresh(this);
        }
    }

    private RoomTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, String[] strArr) {
        this.database = roomDatabase;
        this.container = invalidationLiveDataContainer;
        this.inTransaction = z;
        this.observer = new RoomTrackingLiveData$observer$1(strArr, this);
        this.invalid = new AtomicBoolean(true);
        this.computing = new AtomicBoolean(false);
        this.registeredObserver = new AtomicBoolean(false);
        this.launchContext = roomDatabase.inCompatibilityMode() ? z ? roomDatabase.getTransactionContext$room_runtime() : roomDatabase.getQueryContext() : gx2.b;
    }

    public static final /* synthetic */ void access$invalidated(RoomTrackingLiveData roomTrackingLiveData) {
        roomTrackingLiveData.invalidated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidated() {
        boolean zHasActiveObservers = hasActiveObservers();
        if (this.invalid.compareAndSet(false, true) && zHasActiveObservers) {
            av0.c(this.database.getCoroutineScope(), this.launchContext, null, new AnonymousClass1(this, null), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    /* JADX WARN: Code duplicated, block: B:28:0x0060 A[Catch: all -> 0x002e, Exception -> 0x0030, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0030, blocks: (B:12:0x0027, B:28:0x0060), top: B:45:0x0027, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x006b A[LOOP:0: B:26:0x0058->B:31:0x006b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #1 {all -> 0x002e, blocks: (B:12:0x0027, B:26:0x0058, B:28:0x0060, B:35:0x0078, B:32:0x006e, B:33:0x0075), top: B:45:0x0027, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0087  */
    /* JADX WARN: Code duplicated, block: B:41:0x008a  */
    /* JADX WARN: Code duplicated, block: B:49:0x006a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0056 -> B:26:0x0058). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0087 -> B:40:0x0088). Please report as a decompilation issue!!! */
    public final Object refresh(e02<? super j59> e02Var) {
        C07241 c07241;
        int i;
        Object obj;
        Object objCompute;
        if (e02Var instanceof C07241) {
            c07241 = (C07241) e02Var;
            int i2 = c07241.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c07241.label = i2 - Integer.MIN_VALUE;
            } else {
                c07241 = new C07241(this, e02Var);
            }
        } else {
            c07241 = new C07241(this, e02Var);
        }
        Object obj2 = c07241.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = c07241.label;
        if (i3 == 0) {
            r57.b(obj2);
            if (this.registeredObserver.compareAndSet(false, true)) {
                this.database.getInvalidationTracker().addWeakObserver(this.observer);
            }
            if (this.computing.compareAndSet(false, true)) {
                obj = null;
                i = 0;
                while (this.invalid.compareAndSet(true, false)) {
                    c07241.I$0 = 1;
                    c07241.label = 1;
                    objCompute = compute(c07241);
                    if (objCompute == a32Var) {
                        return a32Var;
                    }
                    obj = objCompute;
                    i = 1;
                }
                if (i != 0) {
                    postValue(obj);
                }
                this.computing.set(false);
            } else {
                i = 0;
            }
            if (i != 0) {
            }
            return j59.a;
        }
        if (i3 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        int i4 = c07241.I$0;
        try {
            try {
                r57.b(obj2);
                obj = obj2;
                i = i4;
                while (this.invalid.compareAndSet(true, false)) {
                    c07241.I$0 = 1;
                    c07241.label = 1;
                    objCompute = compute(c07241);
                    if (objCompute == a32Var) {
                        return a32Var;
                    }
                    obj = objCompute;
                    i = 1;
                }
                if (i != 0) {
                    postValue(obj);
                }
                this.computing.set(false);
                if (i != 0 || !this.invalid.get()) {
                    return j59.a;
                }
                if (this.computing.compareAndSet(false, true)) {
                    obj = null;
                    i = 0;
                    while (this.invalid.compareAndSet(true, false)) {
                        c07241.I$0 = 1;
                        c07241.label = 1;
                        objCompute = compute(c07241);
                        if (objCompute == a32Var) {
                            return a32Var;
                        }
                        obj = objCompute;
                        i = 1;
                    }
                    if (i != 0) {
                        postValue(obj);
                    }
                    this.computing.set(false);
                } else {
                    i = 0;
                }
                if (i != 0) {
                }
                return j59.a;
            } catch (Exception e) {
                throw new RuntimeException("Exception while computing database live data.", e);
            }
        } catch (Throwable th) {
            this.computing.set(false);
            throw th;
        }
    }

    public abstract Object compute(e02<? super T> e02Var);

    public final RoomDatabase getDatabase() {
        return this.database;
    }

    public final boolean getInTransaction() {
        return this.inTransaction;
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        this.container.onActive(this);
        av0.c(this.database.getCoroutineScope(), this.launchContext, null, new C07231(this, null), 2);
    }

    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        this.container.onInactive(this);
    }

    public /* synthetic */ RoomTrackingLiveData(RoomDatabase roomDatabase, InvalidationLiveDataContainer invalidationLiveDataContainer, boolean z, String[] strArr, jh2 jh2Var) {
        this(roomDatabase, invalidationLiveDataContainer, z, strArr);
    }
}
