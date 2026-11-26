package androidx.camera.camera2.impl;

import android.view.Surface;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.ga1;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.mk2;
import defpackage.n1;
import defpackage.pg8;
import defpackage.r57;
import defpackage.uk5;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;
import defpackage.yv8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public class UseCaseSurfaceManager implements CameraSurfaceManager.SurfaceListener {
    private final Map<Surface, DeferrableSurface> activeSurfaceMap;
    private final CameraPipe cameraPipe;
    private Map<Surface, ? extends DeferrableSurface> configuredSurfaceMap;
    private final InactiveSurfaceCloser inactiveSurfaceCloser;
    private final Object lock;
    private final SessionConfigAdapter sessionConfigAdapter;
    private mk2<Boolean> setupDeferred;
    private xp1<j59> stopDeferred;
    private final UseCaseThreads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseSurfaceManager", f = "UseCaseSurfaceManager.kt", l = {193}, m = "awaitSetupCompletion$suspendImpl", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseSurfaceManager.awaitSetupCompletion$suspendImpl(UseCaseSurfaceManager.this, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseSurfaceManager", f = "UseCaseSurfaceManager.kt", l = {254}, m = "getSurfaces", v = 1)
    public static final class C04011 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C04011(e02<? super C04011> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UseCaseSurfaceManager.this.getSurfaces(null, 0L, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$2", f = "UseCaseSurfaceManager.kt", l = {258}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super List<Surface>>, Object> {
        final /* synthetic */ List<DeferrableSurface> $deferrableSurfaces;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(List<? extends DeferrableSurface> list, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$deferrableSurfaces = list;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$deferrableSurfaces, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super List<Surface>> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
            List<DeferrableSurface> list = this.$deferrableSurfaces;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Futures.nonCancellationPropagating(((DeferrableSurface) it.next()).getSurface()));
            }
            ListenableFuture listenableFutureSuccessfulAsList = Futures.successfulAsList(arrayList);
            listenableFutureSuccessfulAsList.getClass();
            this.label = 1;
            Object objAwait = ListenableFutureKt.await(listenableFutureSuccessfulAsList, this);
            return objAwait == a32Var ? a32Var : objAwait;
        }
    }

    public UseCaseSurfaceManager(UseCaseThreads useCaseThreads, CameraPipe cameraPipe, InactiveSurfaceCloser inactiveSurfaceCloser, SessionConfigAdapter sessionConfigAdapter) {
        useCaseThreads.getClass();
        cameraPipe.getClass();
        inactiveSurfaceCloser.getClass();
        sessionConfigAdapter.getClass();
        this.threads = useCaseThreads;
        this.cameraPipe = cameraPipe;
        this.inactiveSurfaceCloser = inactiveSurfaceCloser;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.lock = new Object();
        this.activeSurfaceMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean areValid(List<? extends Surface> list) {
        return (list.isEmpty() || list.contains(null)) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object awaitSetupCompletion$suspendImpl(UseCaseSurfaceManager useCaseSurfaceManager, e02<? super Boolean> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = useCaseSurfaceManager.new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = useCaseSurfaceManager.new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 != 0) {
                if (i2 == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            synchronized (useCaseSurfaceManager.lock) {
                mk2<Boolean> mk2Var = useCaseSurfaceManager.setupDeferred;
                if (mk2Var == null || useCaseSurfaceManager.stopDeferred != null) {
                    return Boolean.FALSE;
                }
                anonymousClass1.label = 1;
                Object objZ = mk2Var.Z(anonymousClass1);
                return objZ == a32Var ? a32Var : objZ;
            }
        } catch (CancellationException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled(Log.TAG)) {
                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Surface setup was cancelled");
            }
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object getSurfaces(List<? extends DeferrableSurface> list, long j, e02<? super List<? extends Surface>> e02Var) {
        C04011 c04011;
        if (e02Var instanceof C04011) {
            c04011 = (C04011) e02Var;
            int i = c04011.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04011.label = i - Integer.MIN_VALUE;
            } else {
                c04011 = new C04011(e02Var);
            }
        } else {
            c04011 = new C04011(e02Var);
        }
        Object objC = c04011.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04011.label;
        if (i2 == 0) {
            r57.b(objC);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(list, null);
            c04011.label = 1;
            objC = yv8.c(j, anonymousClass2, c04011);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        List list2 = (List) objC;
        return list2 == null ? kx2.b : list2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSurfaceListener() {
        this.cameraPipe.cameraSurfaceManager().addListener(this);
    }

    public static /* synthetic */ mk2 setupAsync$default(UseCaseSurfaceManager useCaseSurfaceManager, CameraGraph cameraGraph, SessionConfigAdapter sessionConfigAdapter, Map map, long j, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: setupAsync");
            return null;
        }
        if ((i & 8) != 0) {
            j = 5000;
        }
        return useCaseSurfaceManager.setupAsync(cameraGraph, sessionConfigAdapter, map, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setupAsync$lambda$0$3$0(List list, Throwable th) {
        DeferrableSurfaces.decrementAll(list);
        return j59.a;
    }

    private final void tryClearSurfaceListener() {
        synchronized (this.lock) {
            try {
                if (this.activeSurfaceMap.isEmpty() && this.configuredSurfaceMap == null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, this + " remove surface listener");
                    }
                    this.cameraPipe.cameraSurfaceManager().removeListener(this);
                    xp1<j59> xp1Var = this.stopDeferred;
                    if (xp1Var != null) {
                        xp1Var.f(j59.a);
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Object awaitSetupCompletion(e02<? super Boolean> e02Var) {
        return awaitSetupCompletion$suspendImpl(this, e02Var);
    }

    @Override // androidx.camera.camera2.pipe.CameraSurfaceManager.SurfaceListener
    public void onSurfaceActive(Surface surface) {
        DeferrableSurface deferrableSurface;
        surface.getClass();
        synchronized (this.lock) {
            try {
                Map<Surface, ? extends DeferrableSurface> map = this.configuredSurfaceMap;
                if (map != null && (deferrableSurface = map.get(surface)) != null) {
                    if (!this.activeSurfaceMap.containsKey(surface)) {
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "SurfaceActive " + deferrableSurface + " in " + this);
                        }
                        this.activeSurfaceMap.put(surface, deferrableSurface);
                        try {
                            deferrableSurface.incrementUseCount();
                        } catch (DeferrableSurface.SurfaceClosedException e) {
                            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                            if (Logger.isWarnEnabled(Log.TAG)) {
                                android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Error when " + surface + " going to increase the use count.", e);
                            }
                            SessionConfigAdapter sessionConfigAdapter = this.sessionConfigAdapter;
                            DeferrableSurface deferrableSurface2 = e.getDeferrableSurface();
                            deferrableSurface2.getClass();
                            sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface2);
                        }
                    }
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraSurfaceManager.SurfaceListener
    public void onSurfaceInactive(Surface surface) {
        surface.getClass();
        synchronized (this.lock) {
            try {
                DeferrableSurface deferrableSurfaceRemove = this.activeSurfaceMap.remove(surface);
                if (deferrableSurfaceRemove != null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "SurfaceInactive " + deferrableSurfaceRemove + " in " + this);
                    }
                    this.inactiveSurfaceCloser.onSurfaceInactive(deferrableSurfaceRemove);
                    try {
                        deferrableSurfaceRemove.decrementUseCount();
                    } catch (IllegalStateException e) {
                        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                        if (Logger.isWarnEnabled(Log.TAG)) {
                            android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Error when " + surface + " going to decrease the use count.", e);
                        }
                    }
                    tryClearSurfaceListener();
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final mk2<Boolean> setupAsync(CameraGraph cameraGraph, SessionConfigAdapter sessionConfigAdapter, Map<DeferrableSurface, StreamId> map, long j) {
        mk2<Boolean> mk2VarA;
        cameraGraph.getClass();
        sessionConfigAdapter.getClass();
        map.getClass();
        synchronized (this.lock) {
            try {
                if (this.setupDeferred != null) {
                    throw new IllegalStateException("Surfaces should only be set up once!");
                }
                if (this.stopDeferred != null) {
                    throw new IllegalStateException("Surfaces being setup after stopped!");
                }
                if (this.configuredSurfaceMap != null) {
                    throw new IllegalStateException("Check failed.");
                }
                List<DeferrableSurface> deferrableSurfaces = sessionConfigAdapter.getDeferrableSurfaces();
                int i = 3;
                try {
                    DeferrableSurfaces.incrementAll(deferrableSurfaces);
                    mk2VarA = av0.a(this.threads.getScope(), null, null, new UseCaseSurfaceManager$setupAsync$1$deferred$1(sessionConfigAdapter, this, deferrableSurfaces, j, map, cameraGraph, null), 3);
                    mk2VarA.g(new uk5(deferrableSurfaces, i));
                    this.setupDeferred = mk2VarA;
                } catch (DeferrableSurface.SurfaceClosedException e) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled(Log.TAG)) {
                        android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to increment DeferrableSurfaces: Surfaces closed");
                    }
                    av0.c(this.threads.getScope(), null, null, new UseCaseSurfaceManager$setupAsync$1$4(sessionConfigAdapter, e, null), 3);
                    mk2VarA = ga1.a(Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mk2VarA;
    }

    public final mk2<j59> stopAsync() {
        xp1 yp1Var;
        synchronized (this.lock) {
            try {
                yp1Var = this.stopDeferred;
                if (yp1Var != null) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isWarnEnabled(Log.TAG)) {
                        android.util.Log.w(Camera2Logger.TRUNCATED_TAG, "UseCaseSurfaceManager is already stopping!");
                    }
                } else {
                    mk2<Boolean> mk2Var = this.setupDeferred;
                    if (mk2Var != null) {
                        mk2Var.cancel(null);
                    }
                    this.inactiveSurfaceCloser.closeAll();
                    this.configuredSurfaceMap = null;
                    yp1Var = new yp1();
                    this.stopDeferred = yp1Var;
                    tryClearSurfaceListener();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return yp1Var;
    }
}
