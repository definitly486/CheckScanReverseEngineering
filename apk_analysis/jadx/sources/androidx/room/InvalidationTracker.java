package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.LiveData;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.support.AutoCloser;
import androidx.sqlite.SQLiteConnection;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cu0;
import defpackage.ds1;
import defpackage.e02;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l68;
import defpackage.ll3;
import defpackage.m91;
import defpackage.mx2;
import defpackage.n05;
import defpackage.n1;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qj;
import defpackage.qn1;
import defpackage.r57;
import defpackage.se3;
import defpackage.sr;
import defpackage.uj;
import defpackage.ul2;
import defpackage.y22;
import defpackage.zg;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public class InvalidationTracker {
    public static final Companion Companion = new Companion(null);
    private AutoCloser autoCloser;
    private final RoomDatabase database;
    private final TriggerBasedInvalidationTracker implementation;
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;
    private Intent multiInstanceInvalidationIntent;
    private final Map<Observer, ObserverWrapper> observerMap;
    private final ReentrantLock observerMapLock;
    private final ll3<j59> onRefreshCompleted;
    private final ll3<j59> onRefreshScheduled;
    private final Map<String, String> shadowTablesMap;
    private final String[] tableNames;
    private final Object trackerLock;
    private final Map<String, Set<String>> viewTables;

    public static final class MultiInstanceClientInitState {
        private final Context context;
        private final String name;
        private final Intent serviceIntent;

        public MultiInstanceClientInitState(Context context, String str, Intent intent) {
            context.getClass();
            str.getClass();
            intent.getClass();
            this.context = context;
            this.name = str;
            this.serviceIntent = intent;
        }

        public static /* synthetic */ MultiInstanceClientInitState copy$default(MultiInstanceClientInitState multiInstanceClientInitState, Context context, String str, Intent intent, int i, Object obj) {
            if ((i & 1) != 0) {
                context = multiInstanceClientInitState.context;
            }
            if ((i & 2) != 0) {
                str = multiInstanceClientInitState.name;
            }
            if ((i & 4) != 0) {
                intent = multiInstanceClientInitState.serviceIntent;
            }
            return multiInstanceClientInitState.copy(context, str, intent);
        }

        public final Context component1() {
            return this.context;
        }

        public final String component2() {
            return this.name;
        }

        public final Intent component3() {
            return this.serviceIntent;
        }

        public final MultiInstanceClientInitState copy(Context context, String str, Intent intent) {
            context.getClass();
            str.getClass();
            intent.getClass();
            return new MultiInstanceClientInitState(context, str, intent);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MultiInstanceClientInitState)) {
                return false;
            }
            MultiInstanceClientInitState multiInstanceClientInitState = (MultiInstanceClientInitState) obj;
            return aa4.e(this.context, multiInstanceClientInitState.context) && aa4.e(this.name, multiInstanceClientInitState.name) && aa4.e(this.serviceIntent, multiInstanceClientInitState.serviceIntent);
        }

        public final Context getContext() {
            return this.context;
        }

        public final String getName() {
            return this.name;
        }

        public final Intent getServiceIntent() {
            return this.serviceIntent;
        }

        public int hashCode() {
            return this.serviceIntent.hashCode() + zg.b(this.context.hashCode() * 31, 31, this.name);
        }

        public String toString() {
            return "MultiInstanceClientInitState(context=" + this.context + ", name=" + this.name + ", serviceIntent=" + this.serviceIntent + ')';
        }
    }

    /* JADX INFO: renamed from: androidx.room.InvalidationTracker$addObserver$1, reason: invalid class name */
    @bd2(c = "androidx.room.InvalidationTracker$addObserver$1", f = "InvalidationTracker.android.kt", l = {253}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return InvalidationTracker.this.new AnonymousClass1(e02Var);
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
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = InvalidationTracker.this.implementation;
                this.label = 1;
                if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.room.InvalidationTracker$refreshVersionsSync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.InvalidationTracker$refreshVersionsSync$1", f = "InvalidationTracker.android.kt", l = {345}, m = "invokeSuspend")
    public static final class C07191 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C07191(e02<? super C07191> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return InvalidationTracker.this.new C07191(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07191) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ll3<j59> ll3Var = InvalidationTracker.this.onRefreshScheduled;
                ll3<j59> ll3Var2 = InvalidationTracker.this.onRefreshCompleted;
                this.label = 1;
                if (InvalidationTracker.this.implementation.refreshInvalidation$room_runtime(new String[0], ll3Var, ll3Var2, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.room.InvalidationTracker$removeObserver$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.room.InvalidationTracker$removeObserver$1", f = "InvalidationTracker.android.kt", l = {310}, m = "invokeSuspend")
    public static final class C07201 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C07201(e02<? super C07201> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return InvalidationTracker.this.new C07201(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07201) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = InvalidationTracker.this.implementation;
                this.label = 1;
                if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == a32Var) {
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

    public InvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        roomDatabase.getClass();
        map.getClass();
        map2.getClass();
        strArr.getClass();
        this.database = roomDatabase;
        this.shadowTablesMap = map;
        this.viewTables = map2;
        this.tableNames = strArr;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(roomDatabase, map, map2, strArr, roomDatabase.getUseTempTrackingTable$room_runtime(), new InvalidationTracker$implementation$1(this));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new qj(this, 1);
        this.onRefreshCompleted = new ds1(this, 2);
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(roomDatabase);
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.setOnAllowRefresh$room_runtime(new uj(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$2(InvalidationTracker invalidationTracker) {
        return !invalidationTracker.database.inCompatibilityMode() || invalidationTracker.database.isOpenInternal$room_runtime();
    }

    private final boolean addObserverOnly(Observer observer) {
        b36<String[], int[]> b36VarValidateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(observer.getTables$room_runtime());
        String[] strArr = b36VarValidateTableNames$room_runtime.b;
        int[] iArr = b36VarValidateTableNames$room_runtime.c;
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArr, strArr);
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            boolean zContainsKey = this.observerMap.containsKey(observer);
            Map<Observer, ObserverWrapper> map = this.observerMap;
            ObserverWrapper observerWrapperPut = zContainsKey ? (ObserverWrapper) n05.c(observer, map) : map.put(observer, observerWrapper);
            reentrantLock.unlock();
            return observerWrapperPut == null && this.implementation.onObserverAdded$room_runtime(iArr);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public static /* synthetic */ hd3 createFlow$default(InvalidationTracker invalidationTracker, String[] strArr, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: createFlow");
            return null;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return invalidationTracker.createFlow(strArr, z);
    }

    private final List<Observer> getAllObservers() {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            return qn1.t0(this.observerMap.keySet());
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyInvalidatedObservers(Set<Integer> set) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List listT0 = qn1.t0(this.observerMap.values());
            reentrantLock.unlock();
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                ((ObserverWrapper) it.next()).notifyByTableIds$room_runtime(set);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAutoCloseCallback() {
        synchronized (this.trackerLock) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
                if (multiInstanceInvalidationClient != null) {
                    List<Observer> allObservers = getAllObservers();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : allObservers) {
                        if (!((Observer) obj).isRemote$room_runtime()) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        multiInstanceInvalidationClient.stop();
                    }
                }
                this.implementation.resetSync$room_runtime();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onRefreshCompleted$lambda$1(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.decrementCountAndScheduleClose();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onRefreshScheduled$lambda$0(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        return j59.a;
    }

    private final boolean removeObserverOnly(Observer observer) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            ObserverWrapper observerWrapperRemove = this.observerMap.remove(observer);
            reentrantLock.unlock();
            return observerWrapperRemove != null && this.implementation.onObserverRemoved$room_runtime(observerWrapperRemove.getTableIds$room_runtime());
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public void addObserver(Observer observer) {
        observer.getClass();
        if (addObserverOnly(observer)) {
            RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new AnonymousClass1(null));
        }
    }

    public final void addRemoteObserver$room_runtime(Observer observer) {
        observer.getClass();
        if (observer.isRemote$room_runtime()) {
            addObserverOnly(observer);
        } else {
            ah.f("isRemote was false of observer argument");
        }
    }

    public void addWeakObserver(Observer observer) {
        observer.getClass();
        addObserver(new WeakObserver(this, observer));
    }

    public final hd3<Set<String>> createFlow(String[] strArr, boolean z) {
        strArr.getClass();
        b36<String[], int[]> b36VarValidateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(strArr);
        String[] strArr2 = b36VarValidateTableNames$room_runtime.b;
        hd3<Set<String>> hd3VarCreateFlow$room_runtime = this.implementation.createFlow$room_runtime(strArr2, b36VarValidateTableNames$room_runtime.c, z);
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        hd3<Set<String>> hd3VarCreateFlow = multiInstanceInvalidationClient != null ? multiInstanceInvalidationClient.createFlow(strArr2) : null;
        if (hd3VarCreateFlow == null) {
            return hd3VarCreateFlow$room_runtime;
        }
        hd3[] hd3VarArr = {hd3VarCreateFlow$room_runtime, hd3VarCreateFlow};
        int i = se3.a;
        return new m91(new sr(hd3VarArr), gx2.b, -2, cu0.SUSPEND);
    }

    public <T> LiveData<T> createLiveData(String[] strArr, boolean z, Callable<T> callable) {
        strArr.getClass();
        callable.getClass();
        this.implementation.validateTableNames$room_runtime(strArr);
        return this.invalidationLiveDataContainer.create(strArr, z, callable);
    }

    public final RoomDatabase getDatabase$room_runtime() {
        return this.database;
    }

    public final String[] getTableNames$room_runtime() {
        return this.tableNames;
    }

    public final void initMultiInstanceInvalidation$room_runtime(Context context, String str, Intent intent) {
        context.getClass();
        str.getClass();
        intent.getClass();
        this.multiInstanceInvalidationIntent = intent;
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, str, this);
    }

    public final void internalInit$room_runtime(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        this.implementation.configureConnection(sQLiteConnection);
        synchronized (this.trackerLock) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
                if (multiInstanceInvalidationClient != null) {
                    Intent intent = this.multiInstanceInvalidationIntent;
                    if (intent == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    multiInstanceInvalidationClient.start(intent);
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void notifyObserversByTableNames$room_runtime(Set<String> set) {
        set.getClass();
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> listT0 = qn1.t0(this.observerMap.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : listT0) {
                if (!observerWrapper.getObserver$room_runtime().isRemote$room_runtime()) {
                    observerWrapper.notifyByTableNames$room_runtime(set);
                }
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final Object refresh(String[] strArr, e02<? super Boolean> e02Var) {
        return this.implementation.refreshInvalidation$room_runtime(strArr, this.onRefreshScheduled, this.onRefreshCompleted, e02Var);
    }

    public final void refreshAsync() {
        this.implementation.refreshInvalidationAsync$room_runtime(this.onRefreshScheduled, this.onRefreshCompleted);
    }

    public void refreshVersionsAsync() {
        this.implementation.refreshInvalidationAsync$room_runtime(this.onRefreshScheduled, this.onRefreshCompleted);
    }

    public void refreshVersionsSync() {
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C07191(null));
    }

    public void removeObserver(Observer observer) {
        observer.getClass();
        if (removeObserverOnly(observer)) {
            RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C07201(null));
        }
    }

    public final void setAutoCloser$room_runtime(AutoCloser autoCloser) {
        autoCloser.getClass();
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new InvalidationTracker$setAutoCloser$1(this));
    }

    public final void stop$room_runtime() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
        }
    }

    public final Object sync$room_runtime(e02<? super j59> e02Var) throws Throwable {
        Object objSyncTriggers$room_runtime = this.implementation.syncTriggers$room_runtime(e02Var);
        return objSyncTriggers$room_runtime == a32.COROUTINE_SUSPENDED ? objSyncTriggers$room_runtime : j59.a;
    }

    public final void syncBlocking$room_runtime() {
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new InvalidationTracker$syncBlocking$1(this, null));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    @ul2
    public <T> LiveData<T> createLiveData(String[] strArr, Callable<T> callable) {
        strArr.getClass();
        callable.getClass();
        return createLiveData(strArr, false, (Callable) callable);
    }

    public final <T> LiveData<T> createLiveData(String[] strArr, boolean z, nl3<? super SQLiteConnection, ? extends T> nl3Var) {
        strArr.getClass();
        nl3Var.getClass();
        this.implementation.validateTableNames$room_runtime(strArr);
        return this.invalidationLiveDataContainer.create(strArr, z, nl3Var);
    }

    public static abstract class Observer {
        private final String[] tables;

        public Observer(String str, String... strArr) {
            str.getClass();
            strArr.getClass();
            l68 l68Var = new l68(2);
            l68Var.a(str);
            l68Var.b(strArr);
            ArrayList<Object> arrayList = l68Var.a;
            this((String[]) arrayList.toArray(new String[arrayList.size()]));
        }

        public final String[] getTables$room_runtime() {
            return this.tables;
        }

        public boolean isRemote$room_runtime() {
            return false;
        }

        public abstract void onInvalidated(Set<String> set);

        public Observer(String[] strArr) {
            strArr.getClass();
            this.tables = strArr;
        }
    }

    public final hd3<Set<String>> createFlow(String... strArr) {
        strArr.getClass();
        return createFlow$default(this, strArr, false, 2, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @ul2
    public InvalidationTracker(RoomDatabase roomDatabase, String... strArr) {
        roomDatabase.getClass();
        strArr.getClass();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        mx2 mx2Var = mx2.b;
        this(roomDatabase, mx2Var, mx2Var, strArr2);
    }
}
