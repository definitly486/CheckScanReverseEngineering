package androidx.camera.camera2.adapter;

import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.CameraCompatibilityFilter;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.InternalCameraPresenceListener;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.mx2;
import defpackage.ox2;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCoordinatorAdapter implements CameraCoordinator, InternalCameraPresenceListener {
    private List<? extends CameraInfo> activeConcurrentCameraInfosList;
    private final CameraDevices cameraDevices;
    private CameraPipe cameraPipe;
    private CameraRepository cameraRepository;
    private Map<String, ? extends List<String>> concurrentCameraIdMap;
    private Set<? extends Set<CameraId>> concurrentCameraIdsSet;
    private int concurrentMode;
    private boolean concurrentModeOn;
    private final Object lock;
    private List<String> pendingCameraIds;

    public CameraCoordinatorAdapter(CameraPipe cameraPipe, CameraDevices cameraDevices) {
        cameraDevices.getClass();
        this.cameraPipe = cameraPipe;
        this.cameraDevices = cameraDevices;
        this.lock = new Object();
        this.concurrentCameraIdsSet = ox2.b;
        this.concurrentCameraIdMap = mx2.b;
        this.activeConcurrentCameraInfosList = kx2.b;
        this.pendingCameraIds = new ArrayList();
    }

    public static /* synthetic */ void getActiveConcurrentCameraInfosList$annotations() {
    }

    public static /* synthetic */ void getCameraRepository$annotations() {
    }

    public static /* synthetic */ void getConcurrentCameraIdMap$annotations() {
    }

    public static /* synthetic */ void getConcurrentCameraIdsSet$annotations() {
    }

    public static /* synthetic */ void getConcurrentMode$annotations() {
    }

    public static /* synthetic */ void getConcurrentModeOn$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void tryStartConcurrentGraph() {
        CameraInternalAdapter cameraInternalAdapter;
        synchronized (this.lock) {
            try {
                if (!this.activeConcurrentCameraInfosList.isEmpty() && !this.pendingCameraIds.isEmpty()) {
                    List<? extends CameraInfo> list = this.activeConcurrentCameraInfosList;
                    ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            if (qn1.y0(arrayList).equals(qn1.y0(this.pendingCameraIds))) {
                                this.pendingCameraIds.clear();
                                List<? extends CameraInfo> list2 = this.activeConcurrentCameraInfosList;
                                synchronized (this.lock) {
                                    CameraRepository cameraRepository = this.cameraRepository;
                                    if (cameraRepository == null) {
                                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                                        if (Logger.isErrorEnabled(Log.TAG)) {
                                            android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "Coordinator has not been initialized with a CameraRepository.");
                                        }
                                        return;
                                    }
                                    ArrayList arrayList2 = new ArrayList();
                                    Iterator<T> it2 = list2.iterator();
                                    while (it2.hasNext()) {
                                        try {
                                            String strM3getCameraIdzjxgSG8 = CameraInfoAdapter.Companion.m3getCameraIdzjxgSG8((CameraInfo) it2.next());
                                            strM3getCameraIdzjxgSG8.getClass();
                                            CameraInternal camera = cameraRepository.getCamera(strM3getCameraIdzjxgSG8);
                                            cameraInternalAdapter = camera instanceof CameraInternalAdapter ? (CameraInternalAdapter) camera : null;
                                        } catch (IllegalArgumentException unused) {
                                        }
                                        if (cameraInternalAdapter != null) {
                                            arrayList2.add(cameraInternalAdapter);
                                        }
                                    }
                                    ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
                                    Iterator it3 = arrayList2.iterator();
                                    while (it3.hasNext()) {
                                        CameraGraph.Config deferredCameraGraphConfig$camera_camera2 = ((CameraInternalAdapter) it3.next()).getDeferredCameraGraphConfig$camera_camera2();
                                        if (deferredCameraGraphConfig$camera_camera2 == null) {
                                            ah.f("Every CameraInternal instance is expected to have a deferred CameraGraph config");
                                            return;
                                        }
                                        arrayList3.add(deferredCameraGraphConfig$camera_camera2);
                                    }
                                    CameraPipe cameraPipe = this.cameraPipe;
                                    if (cameraPipe == null) {
                                        ah.f("Required value was null.");
                                        return;
                                    }
                                    List<CameraGraph> listCreateCameraGraphs = cameraPipe.createCameraGraphs(new CameraGraph.ConcurrentConfig(arrayList3));
                                    if (listCreateCameraGraphs.size() != arrayList3.size()) {
                                        ah.f("Check failed.");
                                        return;
                                    }
                                    for (b36 b36Var : qn1.z0(arrayList2, listCreateCameraGraphs)) {
                                        ((CameraInternalAdapter) b36Var.b).resumeDeferredCameraGraphCreation$camera_camera2((CameraGraph) b36Var.c);
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        String strM3getCameraIdzjxgSG9 = CameraInfoAdapter.Companion.m3getCameraIdzjxgSG8((CameraInfo) it.next());
                        CameraId cameraIdM351boximpl = strM3getCameraIdzjxgSG9 != null ? CameraId.m351boximpl(strM3getCameraIdzjxgSG9) : null;
                        if (cameraIdM351boximpl == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        arrayList.add(cameraIdM351boximpl.m358unboximpl());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void addListener(CameraCoordinator.ConcurrentCameraModeListener concurrentCameraModeListener) {
        concurrentCameraModeListener.getClass();
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void addPendingCameraInfo(CameraInfo cameraInfo) {
        cameraInfo.getClass();
        synchronized (this.lock) {
            try {
                if (this.concurrentModeOn) {
                    List<String> list = this.pendingCameraIds;
                    String strM3getCameraIdzjxgSG8 = CameraInfoAdapter.Companion.m3getCameraIdzjxgSG8(cameraInfo);
                    CameraId cameraIdM351boximpl = strM3getCameraIdzjxgSG8 != null ? CameraId.m351boximpl(strM3getCameraIdzjxgSG8) : null;
                    if (cameraIdM351boximpl == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    list.add(cameraIdM351boximpl.m358unboximpl());
                    tryStartConcurrentGraph();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public List<CameraInfo> getActiveConcurrentCameraInfos() {
        ArrayList arrayList;
        synchronized (this.lock) {
            arrayList = new ArrayList(this.activeConcurrentCameraInfosList);
        }
        return arrayList;
    }

    public final List<CameraInfo> getActiveConcurrentCameraInfosList() {
        return this.activeConcurrentCameraInfosList;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public int getCameraOperatingMode() {
        int i;
        synchronized (this.lock) {
            i = this.concurrentMode;
        }
        return i;
    }

    public final CameraRepository getCameraRepository() {
        return this.cameraRepository;
    }

    public final Map<String, List<String>> getConcurrentCameraIdMap() {
        return this.concurrentCameraIdMap;
    }

    public final Set<Set<CameraId>> getConcurrentCameraIdsSet() {
        return this.concurrentCameraIdsSet;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public List<List<CameraSelector>> getConcurrentCameraSelectors() {
        List<List<CameraSelector>> listT0;
        synchronized (this.lock) {
            try {
                Set<? extends Set<CameraId>> set = this.concurrentCameraIdsSet;
                ArrayList arrayList = new ArrayList(kn1.q(set, 10));
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    Set set2 = (Set) it.next();
                    ArrayList arrayList2 = new ArrayList(kn1.q(set2, 10));
                    Iterator it2 = set2.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(CameraSelector.of(CameraIdentifier.Factory.create$default(((CameraId) it2.next()).m358unboximpl(), null, null, 6, null)));
                    }
                    arrayList.add(qn1.t0(arrayList2));
                }
                listT0 = qn1.t0(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return listT0;
    }

    public final int getConcurrentMode() {
        return this.concurrentMode;
    }

    public final boolean getConcurrentModeOn() {
        return this.concurrentModeOn;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public String getPairedConcurrentCameraId(String str) {
        String str2;
        str.getClass();
        synchronized (this.lock) {
            List<String> list = this.concurrentCameraIdMap.get(str);
            str2 = null;
            if (list != null) {
                loop0: for (String str3 : list) {
                    Iterator<? extends CameraInfo> it = this.activeConcurrentCameraInfosList.iterator();
                    while (it.hasNext()) {
                        String strM3getCameraIdzjxgSG8 = CameraInfoAdapter.Companion.m3getCameraIdzjxgSG8(it.next());
                        if (strM3getCameraIdzjxgSG8 == null) {
                            strM3getCameraIdzjxgSG8 = null;
                        }
                        if (aa4.e(str3, strM3getCameraIdzjxgSG8)) {
                            str2 = str3;
                            break loop0;
                        }
                    }
                }
            }
        }
        return str2;
    }

    public final List<String> getPendingCameraIds() {
        return this.pendingCameraIds;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void init(CameraRepository cameraRepository) throws CameraUpdateException {
        List<String> arrayList;
        cameraRepository.getClass();
        synchronized (this.lock) {
            this.cameraRepository = cameraRepository;
            j59 j59Var = j59.a;
        }
        List listM236awaitCameraIdsSeavPBo$default = CameraDevices.m236awaitCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null);
        if (listM236awaitCameraIdsSeavPBo$default != null) {
            List list = listM236awaitCameraIdsSeavPBo$default;
            arrayList = new ArrayList<>(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((CameraId) it.next()).m358unboximpl());
            }
        } else {
            arrayList = kx2.b;
        }
        onCamerasUpdated(arrayList);
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public void onCamerasUpdated(List<String> list) throws CameraUpdateException {
        list.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Set<Set> setM238awaitConcurrentCameraIdsSeavPBo$default = CameraDevices.m238awaitConcurrentCameraIdsSeavPBo$default(this.cameraDevices, null, 1, null);
            if (setM238awaitConcurrentCameraIdsSeavPBo$default == null) {
                setM238awaitConcurrentCameraIdsSeavPBo$default = ox2.b;
            }
            for (Set set : setM238awaitConcurrentCameraIdsSeavPBo$default) {
                Set set2 = set;
                ArrayList arrayList = new ArrayList(kn1.q(set2, 10));
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((CameraId) it.next()).m358unboximpl());
                }
                Set setY0 = qn1.y0(arrayList);
                if (list.containsAll(setY0)) {
                    List listT0 = qn1.t0(set);
                    if (listT0.size() >= 2) {
                        String strM358unboximpl = ((CameraId) listT0.get(0)).m358unboximpl();
                        String strM358unboximpl2 = ((CameraId) listT0.get(1)).m358unboximpl();
                        try {
                            if (CameraCompatibilityFilter.isBackwardCompatible(strM358unboximpl, this.cameraDevices) && CameraCompatibilityFilter.isBackwardCompatible(strM358unboximpl2, this.cameraDevices)) {
                                linkedHashSet.add(set);
                                if (!linkedHashMap.containsKey(strM358unboximpl)) {
                                    linkedHashMap.put(strM358unboximpl, new ArrayList());
                                }
                                Object obj = linkedHashMap.get(strM358unboximpl);
                                obj.getClass();
                                ((List) obj).add(strM358unboximpl2);
                                if (!linkedHashMap.containsKey(strM358unboximpl2)) {
                                    linkedHashMap.put(strM358unboximpl2, new ArrayList());
                                }
                                Object obj2 = linkedHashMap.get(strM358unboximpl2);
                                obj2.getClass();
                                ((List) obj2).add(strM358unboximpl);
                            }
                        } catch (InitializationException e) {
                            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                            if (Logger.isWarnEnabled(Log.TAG)) {
                                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Skipping incompatible concurrent pair: " + set + " due to " + e.getMessage());
                            }
                        }
                    }
                } else {
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled(Log.TAG)) {
                        android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to retrieve concurrent camera: " + setY0 + " from " + list);
                    }
                }
            }
            synchronized (this.lock) {
                this.concurrentCameraIdsSet = linkedHashSet;
                this.concurrentCameraIdMap = linkedHashMap;
                j59 j59Var = j59.a;
            }
        } catch (Exception e2) {
            throw new CameraUpdateException("Failed to retrieve concurrent camera id info for camera-pipe.", e2);
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void removeListener(CameraCoordinator.ConcurrentCameraModeListener concurrentCameraModeListener) {
        concurrentCameraModeListener.getClass();
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void removePendingCameraInfo(CameraInfo cameraInfo) {
        cameraInfo.getClass();
        synchronized (this.lock) {
            try {
                if (this.concurrentModeOn) {
                    List<String> list = this.pendingCameraIds;
                    String strM3getCameraIdzjxgSG8 = CameraInfoAdapter.Companion.m3getCameraIdzjxgSG8(cameraInfo);
                    CameraId cameraIdM351boximpl = strM3getCameraIdzjxgSG8 != null ? CameraId.m351boximpl(strM3getCameraIdzjxgSG8) : null;
                    if (cameraIdM351boximpl == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    list.remove(cameraIdM351boximpl.m358unboximpl());
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void setActiveConcurrentCameraInfos(List<? extends CameraInfo> list) {
        list.getClass();
        synchronized (this.lock) {
            this.activeConcurrentCameraInfosList = list;
            tryStartConcurrentGraph();
            j59 j59Var = j59.a;
        }
    }

    public final void setActiveConcurrentCameraInfosList(List<? extends CameraInfo> list) {
        list.getClass();
        this.activeConcurrentCameraInfosList = list;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void setCameraOperatingMode(int i) {
        CameraRepository cameraRepository;
        synchronized (this.lock) {
            this.concurrentMode = i;
            cameraRepository = this.cameraRepository;
        }
        if (cameraRepository == null) {
            return;
        }
        boolean z = i == 2;
        this.concurrentModeOn = z;
        if (!z) {
            this.activeConcurrentCameraInfosList = kx2.b;
        }
        Iterator<CameraInternal> it = cameraRepository.getCameras().iterator();
        it.getClass();
        while (it.hasNext()) {
            CameraInternal next = it.next();
            CameraInternalAdapter cameraInternalAdapter = next instanceof CameraInternalAdapter ? (CameraInternalAdapter) next : null;
            if (cameraInternalAdapter != null) {
                if (i == 1) {
                    cameraInternalAdapter.setCameraGraphCreationMode$camera_camera2(true);
                } else if (i == 2) {
                    cameraInternalAdapter.setCameraGraphCreationMode$camera_camera2(false);
                }
            }
        }
    }

    public final void setCameraRepository(CameraRepository cameraRepository) {
        this.cameraRepository = cameraRepository;
    }

    public final void setConcurrentCameraIdMap(Map<String, ? extends List<String>> map) {
        map.getClass();
        this.concurrentCameraIdMap = map;
    }

    public final void setConcurrentCameraIdsSet(Set<? extends Set<CameraId>> set) {
        set.getClass();
        this.concurrentCameraIdsSet = set;
    }

    public final void setConcurrentMode(int i) {
        this.concurrentMode = i;
    }

    public final void setConcurrentModeOn(boolean z) {
        this.concurrentModeOn = z;
    }

    public final void setPendingCameraIds(List<String> list) {
        list.getClass();
        this.pendingCameraIds = list;
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator
    public void shutdown() {
        this.cameraPipe = null;
        this.concurrentModeOn = false;
        synchronized (this.lock) {
            this.cameraRepository = null;
            this.concurrentCameraIdsSet = ox2.b;
            this.concurrentCameraIdMap = mx2.b;
            this.activeConcurrentCameraInfosList = kx2.b;
            this.concurrentMode = 0;
            this.pendingCameraIds.clear();
            j59 j59Var = j59.a;
        }
    }
}
