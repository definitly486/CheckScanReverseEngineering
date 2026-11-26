package androidx.camera.camera2.adapter;

import android.media.MediaCodec;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.StreamUseCaseUtil;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.e02;
import defpackage.fh8;
import defpackage.gc5;
import defpackage.hc5;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.mx2;
import defpackage.oi2;
import defpackage.or2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.s92;
import defpackage.uy4;
import defpackage.wq7;
import defpackage.y22;
import defpackage.z22;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SessionConfigAdapter {
    public static final Companion Companion = new Companion(null);
    private final cl4 deferrableSurfaces$delegate;
    private final boolean isPrimary;
    private final cl4 sessionConfig$delegate;
    private final cl4 surfaceToStreamUseCaseMap$delegate;
    private final cl4 surfaceToStreamUseHintMap$delegate;
    private final Collection<UseCase> useCases;
    private final cl4 validatingBuilder$delegate;

    /* JADX INFO: renamed from: androidx.camera.camera2.adapter.SessionConfigAdapter$reportSurfaceInvalid$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.adapter.SessionConfigAdapter$reportSurfaceInvalid$2", f = "SessionConfigAdapter.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ SessionConfig $sessionConfig;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SessionConfig sessionConfig, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$sessionConfig = sessionConfig;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$sessionConfig, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            SessionConfig.ErrorListener errorListener;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            SessionConfig sessionConfig = this.$sessionConfig;
            if (sessionConfig != null && (errorListener = sessionConfig.getErrorListener()) != null) {
                errorListener.onError(this.$sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
            }
            return j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SessionConfigAdapter(Collection<? extends UseCase> collection, boolean z) {
        collection.getClass();
        this.useCases = collection;
        this.isPrimary = z;
        this.surfaceToStreamUseCaseMap$delegate = new fh8(new or2(this, 3));
        this.surfaceToStreamUseHintMap$delegate = new fh8(new wq7(this, 0));
        int i = 1;
        this.validatingBuilder$delegate = new fh8(new s92(this, i));
        this.sessionConfig$delegate = new fh8(new gc5(this, i));
        this.deferrableSurfaces$delegate = new fh8(new hc5(this, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List deferrableSurfaces_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        if (!sessionConfigAdapter.getValidatingBuilder().isValid()) {
            ah.f("Check failed.");
            return null;
        }
        SessionConfig.OutputConfig postviewOutputConfig = sessionConfigAdapter.getSessionConfig().getPostviewOutputConfig();
        if (postviewOutputConfig != null) {
            ArrayList arrayList = new ArrayList();
            List<DeferrableSurface> surfaces = sessionConfigAdapter.getSessionConfig().getSurfaces();
            surfaces.getClass();
            arrayList.addAll(surfaces);
            DeferrableSurface surface = postviewOutputConfig.getSurface();
            surface.getClass();
            arrayList.add(surface);
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            if (listUnmodifiableList != null) {
                return listUnmodifiableList;
            }
        }
        return sessionConfigAdapter.getSessionConfig().getSurfaces();
    }

    private final SessionConfig getSessionConfig() {
        return (SessionConfig) this.sessionConfig$delegate.getValue();
    }

    private final long getStreamUseHintForContainerClass(Class<?> cls) {
        return aa4.e(cls, MediaCodec.class) ? OutputStream.StreamUseHint.Companion.m605getVIDEO_RECORD4VYZOf8() : OutputStream.StreamUseHint.Companion.m604getDEFAULT4VYZOf8();
    }

    private final SessionConfig.ValidatingBuilder getValidatingBuilder() {
        return (SessionConfig.ValidatingBuilder) this.validatingBuilder$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionConfig sessionConfig_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        if (!sessionConfigAdapter.getValidatingBuilder().isValid()) {
            ah.f("Check failed.");
            return null;
        }
        SessionConfig sessionConfigBuild = sessionConfigAdapter.getValidatingBuilder().build();
        sessionConfigBuild.getClass();
        return sessionConfigBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map surfaceToStreamUseCaseMap_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UseCase useCase : sessionConfigAdapter.useCases) {
            arrayList.add(Companion.getSessionConfig(useCase, sessionConfigAdapter.isPrimary));
            UseCaseConfig<?> currentConfig = useCase.getCurrentConfig();
            currentConfig.getClass();
            arrayList2.add(currentConfig);
        }
        return sessionConfigAdapter.getSurfaceToStreamUseCaseMapping(arrayList, arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map surfaceToStreamUseHintMap_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        Collection<UseCase> collection = sessionConfigAdapter.useCases;
        ArrayList arrayList = new ArrayList(kn1.q(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Companion.getSessionConfig((UseCase) it.next(), sessionConfigAdapter.isPrimary));
        }
        return sessionConfigAdapter.getSurfaceToStreamUseHintMapping(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SessionConfig.ValidatingBuilder validatingBuilder_delegate$lambda$0(SessionConfigAdapter sessionConfigAdapter) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator<UseCase> it = sessionConfigAdapter.useCases.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(Companion.getSessionConfig(it.next(), sessionConfigAdapter.isPrimary));
        }
        return validatingBuilder;
    }

    public final List<DeferrableSurface> getDeferrableSurfaces() {
        Object value = this.deferrableSurfaces$delegate.getValue();
        value.getClass();
        return (List) value;
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseCaseMap() {
        return (Map) this.surfaceToStreamUseCaseMap$delegate.getValue();
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseCaseMapping(Collection<SessionConfig> collection, Collection<? extends UseCaseConfig<?>> collection2) {
        collection.getClass();
        collection2.getClass();
        Collection<SessionConfig> collection3 = collection;
        if (!collection3.isEmpty()) {
            Iterator<T> it = collection3.iterator();
            while (it.hasNext()) {
                if (((SessionConfig) it.next()).getTemplateType() == 5) {
                    Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                    if (Logger.isErrorEnabled(Log.TAG)) {
                        android.util.Log.e(Camera2Logger.TRUNCATED_TAG, "ZSL in populateSurfaceToStreamUseCaseMapping()");
                    }
                    return mx2.b;
                }
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        StreamUseCaseUtil.INSTANCE.populateSurfaceToStreamUseCaseMapping(collection, collection2, linkedHashMap);
        return linkedHashMap;
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseHintMap() {
        return (Map) this.surfaceToStreamUseHintMap$delegate.getValue();
    }

    public final Map<DeferrableSurface, Long> getSurfaceToStreamUseHintMapping(Collection<SessionConfig> collection) {
        collection.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (SessionConfig sessionConfig : collection) {
            for (DeferrableSurface deferrableSurface : sessionConfig.getSurfaces()) {
                Config implementationOptions = sessionConfig.getImplementationOptions();
                Config.Option<Long> option = Camera2ImplConfig.STREAM_USE_HINT_OPTION;
                if (!implementationOptions.containsOption(option) || sessionConfig.getImplementationOptions().retrieveOption(option) == null) {
                    linkedHashMap.put(deferrableSurface, Long.valueOf(getStreamUseHintForContainerClass(deferrableSurface.getContainerClass())));
                } else {
                    Object objRetrieveOption = sessionConfig.getImplementationOptions().retrieveOption(option);
                    objRetrieveOption.getClass();
                    linkedHashMap.put(deferrableSurface, objRetrieveOption);
                }
            }
        }
        return linkedHashMap;
    }

    public final SessionConfig getValidSessionConfigOrNull() {
        if (isSessionConfigValid()) {
            return getSessionConfig();
        }
        return null;
    }

    public final boolean isSessionConfigValid() {
        return getValidatingBuilder().isValid();
    }

    public final void reportSurfaceInvalid(DeferrableSurface deferrableSurface) {
        Object next;
        deferrableSurface.getClass();
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Unavailable " + deferrableSurface + ", notify SessionConfig invalid");
        }
        Iterator<T> it = this.useCases.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Companion.getSessionConfig((UseCase) next, this.isPrimary).getSurfaces().contains(deferrableSurface));
        UseCase useCase = (UseCase) next;
        SessionConfig sessionConfig = useCase != null ? useCase.getSessionConfig() : null;
        oi2 oi2Var = qo2.a;
        av0.c(z22.a(uy4.a.k0()), null, null, new AnonymousClass2(sessionConfig, null), 3);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SessionConfig getSessionConfig(UseCase useCase, boolean z) {
            useCase.getClass();
            SessionConfig sessionConfig = z ? useCase.getSessionConfig() : useCase.getSecondarySessionConfig();
            sessionConfig.getClass();
            return sessionConfig;
        }

        private Companion() {
        }
    }

    public /* synthetic */ SessionConfigAdapter(Collection collection, boolean z, int i, jh2 jh2Var) {
        this(collection, (i & 2) != 0 ? true : z);
    }
}
