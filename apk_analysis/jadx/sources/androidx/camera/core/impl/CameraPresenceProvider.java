package androidx.camera.core.impl;

import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraPresenceListener;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import defpackage.aa4;
import defpackage.h11;
import defpackage.i11;
import defpackage.j11;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k11;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.l11;
import defpackage.mr7;
import defpackage.n05;
import defpackage.n11;
import defpackage.n7;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.y67;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPresenceProvider {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_SCAN_RETRIES = 3;
    private static final long RETRY_DELAY_MS = 400;
    private static final String TAG = "CameraPresencePrvdr";
    private final Executor backgroundExecutor;
    private CameraFactory cameraFactory;
    private CameraRepository cameraRepository;
    private final Map<String, Observer<CameraState>> cameraStateObservers;
    private CameraValidator cameraValidator;
    private volatile List<CameraIdentifier> currentFilteredIds;
    private final CopyOnWriteArrayList<InternalCameraPresenceListener> dependentInternalListeners;
    private final AtomicBoolean isMonitoring;
    private final Object observerLock;
    private final CopyOnWriteArrayList<ListenerWrapper> publicApiListeners;
    private final Object retryLock;
    private ScheduledFuture<?> retryScanFuture;
    private final ScheduledExecutorService scheduledExecutor;
    private final SourceObservableObserver sourceObserver;
    private Observable<List<CameraIdentifier>> sourcePresenceObservable;

    public static final class ListenerWrapper {
        private final Executor executor;
        private final CameraPresenceListener listener;

        public ListenerWrapper(CameraPresenceListener cameraPresenceListener, Executor executor) {
            cameraPresenceListener.getClass();
            executor.getClass();
            this.listener = cameraPresenceListener;
            this.executor = executor;
        }

        public static /* synthetic */ ListenerWrapper copy$default(ListenerWrapper listenerWrapper, CameraPresenceListener cameraPresenceListener, Executor executor, int i, Object obj) {
            if ((i & 1) != 0) {
                cameraPresenceListener = listenerWrapper.listener;
            }
            if ((i & 2) != 0) {
                executor = listenerWrapper.executor;
            }
            return listenerWrapper.copy(cameraPresenceListener, executor);
        }

        public final CameraPresenceListener component1() {
            return this.listener;
        }

        public final Executor component2() {
            return this.executor;
        }

        public final ListenerWrapper copy(CameraPresenceListener cameraPresenceListener, Executor executor) {
            cameraPresenceListener.getClass();
            executor.getClass();
            return new ListenerWrapper(cameraPresenceListener, executor);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerWrapper)) {
                return false;
            }
            ListenerWrapper listenerWrapper = (ListenerWrapper) obj;
            return aa4.e(this.listener, listenerWrapper.listener) && aa4.e(this.executor, listenerWrapper.executor);
        }

        public final Executor getExecutor() {
            return this.executor;
        }

        public final CameraPresenceListener getListener() {
            return this.listener;
        }

        public int hashCode() {
            return this.executor.hashCode() + (this.listener.hashCode() * 31);
        }

        public String toString() {
            return "ListenerWrapper(listener=" + this.listener + ", executor=" + this.executor + ')';
        }
    }

    public CameraPresenceProvider(Executor executor, ScheduledExecutorService scheduledExecutorService) {
        executor.getClass();
        scheduledExecutorService.getClass();
        this.backgroundExecutor = executor;
        this.scheduledExecutor = scheduledExecutorService;
        this.observerLock = new Object();
        this.retryLock = new Object();
        this.sourceObserver = new SourceObservableObserver();
        this.currentFilteredIds = kx2.b;
        this.isMonitoring = new AtomicBoolean(false);
        this.dependentInternalListeners = new CopyOnWriteArrayList<>();
        this.publicApiListeners = new CopyOnWriteArrayList<>();
        this.cameraStateObservers = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addCameraPresenceListener$lambda$0(CameraPresenceProvider cameraPresenceProvider, CameraPresenceListener cameraPresenceListener) {
        Set<CameraIdentifier> setY0 = qn1.y0(cameraPresenceProvider.currentFilteredIds);
        if (setY0.isEmpty()) {
            return;
        }
        cameraPresenceListener.onCamerasAdded(setY0);
    }

    private final void clearAllCameraStateObservers() {
        synchronized (this.observerLock) {
            if (this.cameraStateObservers.isEmpty()) {
                return;
            }
            Map mapL = n05.l(this.cameraStateObservers);
            this.cameraStateObservers.clear();
            j59 j59Var = j59.a;
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                LinkedHashSet<CameraInternal> cameras = cameraRepository.getCameras();
                cameras.getClass();
                final ArrayList arrayList = new ArrayList();
                for (CameraInternal cameraInternal : cameras) {
                    CameraInfoInternal cameraInfoInternal = cameraInternal != null ? cameraInternal.getCameraInfoInternal() : null;
                    if (cameraInfoInternal != null) {
                        arrayList.add(cameraInfoInternal);
                    }
                }
                Logger.d(TAG, "Clearing all " + mapL.size() + " state observers.");
                for (Map.Entry entry : mapL.entrySet()) {
                    final String str = (String) entry.getKey();
                    final Observer observer = (Observer) entry.getValue();
                    CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: g11
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraPresenceProvider.clearAllCameraStateObservers$lambda$2$0(arrayList, observer, str);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearAllCameraStateObservers$lambda$2$0(List list, Observer observer, String str) {
        Object next;
        LiveData<CameraState> cameraState;
        try {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!aa4.e(((CameraInfoInternal) next).getCameraId(), str));
            CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) next;
            if (cameraInfoInternal == null || (cameraState = cameraInfoInternal.getCameraState()) == null) {
                return;
            }
            cameraState.removeObserver(observer);
        } catch (IllegalArgumentException unused) {
        }
    }

    private final void conditionallySetupCameraStateObserver(String str) {
        CameraRepository cameraRepository = this.cameraRepository;
        if (cameraRepository == null) {
            return;
        }
        try {
            CameraInternal camera = cameraRepository.getCamera(str);
            camera.getClass();
            CameraInfoInternal cameraInfoInternal = camera.getCameraInfoInternal();
            cameraInfoInternal.getClass();
            setupCameraStateObserver(cameraInfoInternal);
        } catch (IllegalArgumentException unused) {
            Logger.w(TAG, "CameraInternal not found for " + str + ". Cannot setup state observer.");
        }
    }

    private final void notifyPublicCamerasAdded(final Set<CameraIdentifier> set) {
        for (final ListenerWrapper listenerWrapper : this.publicApiListeners) {
            listenerWrapper.getExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.d
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.notifyPublicCamerasAdded$lambda$0$0(listenerWrapper, set);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPublicCamerasAdded$lambda$0$0(ListenerWrapper listenerWrapper, Set set) {
        listenerWrapper.getListener().onCamerasAdded(set);
    }

    private final void notifyPublicCamerasRemoved(final Set<CameraIdentifier> set) {
        for (final ListenerWrapper listenerWrapper : this.publicApiListeners) {
            listenerWrapper.getExecutor().execute(new Runnable() { // from class: androidx.camera.core.impl.b
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.notifyPublicCamerasRemoved$lambda$0$0(listenerWrapper, set);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyPublicCamerasRemoved$lambda$0$0(ListenerWrapper listenerWrapper, Set set) {
        listenerWrapper.getListener().onCamerasRemoved(set);
    }

    private final void notifyPublicListeners(Set<CameraIdentifier> set, Set<CameraIdentifier> set2) {
        if (!set.isEmpty()) {
            Logger.i(TAG, "Notifying " + set.size() + " cameras added.");
            notifyPublicCamerasAdded(set);
        }
        if (set2.isEmpty()) {
            return;
        }
        Logger.i(TAG, "Notifying " + set2.size() + " cameras removed.");
        notifyPublicCamerasRemoved(set2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processFilteredCameraIdUpdate(List<CameraIdentifier> list) {
        List listT0 = qn1.t0(this.currentFilteredIds);
        if (aa4.e(list, listT0)) {
            return;
        }
        synchronized (this.retryLock) {
            try {
                if (this.retryScanFuture != null) {
                    Logger.d(TAG, "Camera list updated. Cancelling any pending retries.");
                    ScheduledFuture<?> scheduledFuture = this.retryScanFuture;
                    scheduledFuture.getClass();
                    scheduledFuture.cancel(false);
                    this.retryScanFuture = null;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        List list2 = listT0;
        Set setY0 = qn1.y0(list2);
        List<CameraIdentifier> list3 = list;
        Set setY1 = qn1.y0(list3);
        Set<CameraIdentifier> setJ = mr7.j(setY1, setY0);
        Set<CameraIdentifier> setJ2 = mr7.j(setY0, setY1);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList2.add(((CameraIdentifier) it.next()).getInternalId());
        }
        try {
            Iterator<T> it2 = setJ2.iterator();
            while (it2.hasNext()) {
                removeCameraStateObserver(((CameraIdentifier) it2.next()).getInternalId());
            }
            CameraRepository cameraRepository = this.cameraRepository;
            if (cameraRepository != null) {
                Logger.d(TAG, "Updating CameraRepository...");
                cameraRepository.onCamerasUpdated(arrayList2);
                arrayList.add(cameraRepository);
                Logger.d(TAG, "CameraRepository updated successfully.");
            }
            if (!this.dependentInternalListeners.isEmpty()) {
                Logger.d(TAG, "Updating " + this.dependentInternalListeners.size() + " dependent listeners...");
                for (InternalCameraPresenceListener internalCameraPresenceListener : this.dependentInternalListeners) {
                    internalCameraPresenceListener.onCamerasUpdated(arrayList2);
                    arrayList.add(internalCameraPresenceListener);
                }
            }
            this.currentFilteredIds = list;
            Iterator<T> it3 = setJ.iterator();
            while (it3.hasNext()) {
                conditionallySetupCameraStateObserver(((CameraIdentifier) it3.next()).getInternalId());
            }
            notifyPublicListeners(setJ, setJ2);
        } catch (Exception e) {
            Logger.e(TAG, "A core module failed to update. Rolling back changes.", e);
            ArrayList arrayList3 = new ArrayList(kn1.q(list2, 10));
            Iterator it4 = list2.iterator();
            while (it4.hasNext()) {
                arrayList3.add(((CameraIdentifier) it4.next()).getInternalId());
            }
            for (InternalCameraPresenceListener internalCameraPresenceListener2 : new y67(arrayList)) {
                try {
                    internalCameraPresenceListener2.onCamerasUpdated(arrayList3);
                } catch (Exception e2) {
                    Logger.e(TAG, "Failed to rollback listener: " + internalCameraPresenceListener2, e2);
                }
            }
            Iterator<T> it5 = setJ2.iterator();
            while (it5.hasNext()) {
                conditionallySetupCameraStateObserver(((CameraIdentifier) it5.next()).getInternalId());
            }
            Iterator<T> it6 = setJ.iterator();
            while (it6.hasNext()) {
                removeCameraStateObserver(((CameraIdentifier) it6.next()).getInternalId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeCameraPresenceListener$lambda$0(CameraPresenceListener cameraPresenceListener, ListenerWrapper listenerWrapper) {
        return aa4.e(listenerWrapper.getListener(), cameraPresenceListener);
    }

    private final void removeCameraStateObserver(String str) {
        synchronized (this.observerLock) {
            Observer<CameraState> observerRemove = this.cameraStateObservers.remove(str);
            CameraRepository cameraRepository = this.cameraRepository;
            if (observerRemove != null && cameraRepository != null) {
                try {
                    CameraInternal camera = cameraRepository.getCamera(str);
                    camera.getClass();
                    CameraXExecutors.mainThreadExecutor().execute(new h11(0, camera, observerRemove));
                    Logger.d(TAG, "Removed state observer for: " + str);
                } catch (IllegalArgumentException unused) {
                }
            }
            j59 j59Var = j59.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeCameraStateObserver$lambda$0$0(CameraInternal cameraInternal, Observer observer) {
        cameraInternal.getCameraInfoInternal().getCameraState().removeObserver(observer);
    }

    private final void scheduleRetryAttempt(final int i, final List<CameraIdentifier> list) {
        if (i > 0 && this.isMonitoring.get()) {
            this.retryScanFuture = this.scheduledExecutor.schedule(new Runnable() { // from class: f11
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPresenceProvider.scheduleRetryAttempt$lambda$0(this.b, list, i);
                }
            }, i == 3 ? 0L : RETRY_DELAY_MS, TimeUnit.MILLISECONDS);
        } else if (i <= 0) {
            Logger.w(TAG, "Exhausted all retries for camera list refresh.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleRetryAttempt$lambda$0(CameraPresenceProvider cameraPresenceProvider, List list, int i) {
        cameraPresenceProvider.backgroundExecutor.execute(new l11(cameraPresenceProvider, list, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void scheduleRetryAttempt$lambda$0$0(CameraPresenceProvider cameraPresenceProvider, List list, int i) {
        if (cameraPresenceProvider.isMonitoring.get() && aa4.e(cameraPresenceProvider.currentFilteredIds, list)) {
            Logger.d(TAG, "Triggering refresh. Attempts left: " + i);
            Observable<List<CameraIdentifier>> observable = cameraPresenceProvider.sourcePresenceObservable;
            if (observable != null) {
                observable.fetchData();
            }
            cameraPresenceProvider.scheduleRetryAttempt(i - 1, list);
        }
    }

    private final void setupCameraStateObserver(CameraInfoInternal cameraInfoInternal) {
        final String cameraId = cameraInfoInternal.getCameraId();
        cameraId.getClass();
        if (this.isMonitoring.get()) {
            synchronized (this.observerLock) {
                if (this.cameraStateObservers.containsKey(cameraId)) {
                    return;
                }
                Observer<CameraState> observer = new Observer() { // from class: m11
                    @Override // androidx.lifecycle.Observer
                    public final void onChanged(Object obj) {
                        CameraPresenceProvider.setupCameraStateObserver$lambda$0$0(this.b, cameraId, (CameraState) obj);
                    }
                };
                CameraXExecutors.mainThreadExecutor().execute(new n11(0, cameraInfoInternal, observer));
                this.cameraStateObservers.put(cameraId, observer);
                Logger.d(TAG, "Registered state observer for camera: ".concat(cameraId));
                j59 j59Var = j59.a;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCameraStateObserver$lambda$0$0(CameraPresenceProvider cameraPresenceProvider, String str, CameraState cameraState) {
        if (!cameraPresenceProvider.isMonitoring.get()) {
            Logger.d(TAG, "Ignore camera state change handling since already stop monitoring");
            return;
        }
        if (cameraState.getError() != null) {
            StringBuilder sbD = n7.d("Camera ", str, " state changed to ");
            sbD.append(cameraState.getType());
            sbD.append(" with error: ");
            CameraState.StateError error = cameraState.getError();
            sbD.append(error != null ? Integer.valueOf(error.getCode()) : null);
            sbD.append(". Triggering refresh.");
            Logger.w(TAG, sbD.toString());
            cameraPresenceProvider.backgroundExecutor.execute(new i11(cameraPresenceProvider, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupCameraStateObserver$lambda$0$1(CameraInfoInternal cameraInfoInternal, Observer observer) {
        cameraInfoInternal.getCameraState().observeForever(observer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startup$lambda$1(CameraPresenceProvider cameraPresenceProvider) {
        Iterator<T> it = cameraPresenceProvider.currentFilteredIds.iterator();
        while (it.hasNext()) {
            cameraPresenceProvider.conditionallySetupCameraStateObserver(((CameraIdentifier) it.next()).getInternalId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerRefreshWithRetries() {
        synchronized (this.retryLock) {
            try {
                ScheduledFuture<?> scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                Logger.d(TAG, "Starting new refresh-with-retries sequence.");
                scheduleRetryAttempt(3, this.currentFilteredIds);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void addCameraPresenceListener(CameraPresenceListener cameraPresenceListener, Executor executor) {
        cameraPresenceListener.getClass();
        executor.getClass();
        this.publicApiListeners.add(new ListenerWrapper(cameraPresenceListener, executor));
        executor.execute(new k11(0, this, cameraPresenceListener));
    }

    public final void addDependentInternalListener(InternalCameraPresenceListener internalCameraPresenceListener) {
        internalCameraPresenceListener.getClass();
        this.dependentInternalListeners.add(internalCameraPresenceListener);
    }

    public final void removeCameraPresenceListener(final CameraPresenceListener cameraPresenceListener) {
        cameraPresenceListener.getClass();
        nn1.y(new nl3() { // from class: androidx.camera.core.impl.c
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(CameraPresenceProvider.removeCameraPresenceListener$lambda$0(cameraPresenceListener, (CameraPresenceProvider.ListenerWrapper) obj));
            }
        }, this.publicApiListeners);
    }

    public final void removeDependentInternalListener(InternalCameraPresenceListener internalCameraPresenceListener) {
        internalCameraPresenceListener.getClass();
        this.dependentInternalListeners.remove(internalCameraPresenceListener);
    }

    public final void shutdown() {
        if (!this.isMonitoring.getAndSet(false)) {
            Logger.d(TAG, "Shutdown called when not monitoring. Ignoring.");
            return;
        }
        Logger.i(TAG, "Shutting down CameraPresenceProvider monitoring.");
        synchronized (this.retryLock) {
            try {
                ScheduledFuture<?> scheduledFuture = this.retryScanFuture;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                this.retryScanFuture = null;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        Observable<List<CameraIdentifier>> observable = this.sourcePresenceObservable;
        if (observable != null) {
            observable.removeObserver(this.sourceObserver);
        }
        clearAllCameraStateObservers();
        this.cameraValidator = null;
        this.dependentInternalListeners.clear();
        this.publicApiListeners.clear();
        this.currentFilteredIds = kx2.b;
        this.cameraFactory = null;
        this.cameraRepository = null;
    }

    public final void startup(CameraValidator cameraValidator, CameraFactory cameraFactory, CameraRepository cameraRepository) {
        cameraValidator.getClass();
        cameraFactory.getClass();
        cameraRepository.getClass();
        int i = 0;
        if (this.isMonitoring.compareAndSet(false, true)) {
            Logger.i(TAG, "Starting CameraPresenceProvider monitoring.");
            this.cameraValidator = cameraValidator;
            Set<String> availableCameraIds = cameraFactory.getAvailableCameraIds();
            availableCameraIds.getClass();
            Set<String> set = availableCameraIds;
            ArrayList arrayList = new ArrayList(kn1.q(set, 10));
            for (String str : set) {
                str.getClass();
                arrayList.add(CameraIdentifier.Factory.create$default(str, null, null, 6, null));
            }
            this.currentFilteredIds = arrayList;
            this.cameraFactory = cameraFactory;
            this.cameraRepository = cameraRepository;
            this.sourcePresenceObservable = cameraFactory.getCameraPresenceSource();
            this.backgroundExecutor.execute(new j11(this, i));
            Observable<List<CameraIdentifier>> observable = this.sourcePresenceObservable;
            if (observable != null) {
                observable.addObserver(CameraXExecutors.newSequentialExecutor(this.backgroundExecutor), this.sourceObserver);
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final class SourceObservableObserver implements Observable.Observer<List<? extends CameraIdentifier>> {
        public SourceObservableObserver() {
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public void onError(Throwable th) {
            th.getClass();
            if (CameraPresenceProvider.this.isMonitoring.get()) {
                Logger.e(CameraPresenceProvider.TAG, "Error from source camera presence observable. Triggering refresh.", th);
                Observable observable = CameraPresenceProvider.this.sourcePresenceObservable;
                if (observable != null) {
                    observable.fetchData();
                }
            }
        }

        /* JADX INFO: renamed from: onNewData, reason: avoid collision after fix types in other method */
        public void onNewData2(List<CameraIdentifier> list) {
            CameraFactory cameraFactory;
            CameraRepository cameraRepository;
            CameraValidator cameraValidator;
            List<String> arrayList;
            if (!CameraPresenceProvider.this.isMonitoring.get() || (cameraFactory = CameraPresenceProvider.this.cameraFactory) == null || (cameraRepository = CameraPresenceProvider.this.cameraRepository) == null || (cameraValidator = CameraPresenceProvider.this.cameraValidator) == null) {
                return;
            }
            if (list != null) {
                List<CameraIdentifier> list2 = list;
                arrayList = new ArrayList<>(kn1.q(list2, 10));
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((CameraIdentifier) it.next()).getInternalId());
                }
            } else {
                arrayList = kx2.b;
            }
            if (cameraFactory instanceof CameraFactory.Interrogator) {
                try {
                    List list3 = CameraPresenceProvider.this.currentFilteredIds;
                    List<String> availableCameraIds = ((CameraFactory.Interrogator) cameraFactory).getAvailableCameraIds(arrayList);
                    availableCameraIds.getClass();
                    List<String> list4 = availableCameraIds;
                    ArrayList arrayList2 = new ArrayList(kn1.q(list4, 10));
                    for (String str : list4) {
                        str.getClass();
                        arrayList2.add(CameraIdentifier.Factory.create$default(str, null, null, 6, null));
                    }
                    Set<CameraIdentifier> setJ = mr7.j(qn1.y0(list3), qn1.y0(arrayList2));
                    if (!setJ.isEmpty()) {
                        LinkedHashSet<CameraInternal> cameras = cameraRepository.getCameras();
                        cameras.getClass();
                        if (cameraValidator.isChangeInvalid(cameras, setJ)) {
                            Logger.w(CameraPresenceProvider.TAG, "Camera removal update invalid. Aborting.");
                            return;
                        }
                    }
                } catch (Exception e) {
                    Logger.w(CameraPresenceProvider.TAG, "Failed to interrogate camera factory. Falling back to full update.", e);
                }
            }
            try {
                cameraFactory.onCameraIdsUpdated(arrayList);
                Set<String> availableCameraIds2 = cameraFactory.getAvailableCameraIds();
                availableCameraIds2.getClass();
                Set<String> set = availableCameraIds2;
                ArrayList arrayList3 = new ArrayList(kn1.q(set, 10));
                for (String str2 : set) {
                    str2.getClass();
                    arrayList3.add(CameraIdentifier.Factory.create$default(str2, null, null, 6, null));
                }
                if (arrayList3.equals(CameraPresenceProvider.this.currentFilteredIds)) {
                    return;
                }
                CameraPresenceProvider.this.processFilteredCameraIdUpdate(arrayList3);
            } catch (Exception e2) {
                Logger.w(CameraPresenceProvider.TAG, "CameraFactory failed to update. The camera list may be stale until the next update.", e2);
            }
        }

        @Override // androidx.camera.core.impl.Observable.Observer
        public /* bridge */ /* synthetic */ void onNewData(List<? extends CameraIdentifier> list) {
            onNewData2((List<CameraIdentifier>) list);
        }
    }
}
