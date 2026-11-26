package androidx.camera.core;

import android.util.Range;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.UseCaseType;
import androidx.camera.core.featuregroup.impl.feature.FeatureTypeInternal;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.util.Consumer;
import defpackage.aa4;
import defpackage.c9;
import defpackage.eg;
import defpackage.fg;
import defpackage.i84;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.me0;
import defpackage.n1;
import defpackage.ni0;
import defpackage.nn1;
import defpackage.ox2;
import defpackage.qg;
import defpackage.qn1;
import defpackage.xp;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class SessionConfig {
    private final CameraFilter cameraFilter;
    private final List<CameraEffect> effects;
    private Consumer<Set<GroupableFeature>> featureSelectionListener;
    private Executor featureSelectionListenerExecutor;
    private final Range<Integer> frameRateRange;
    private final boolean isAutoRotationEnabled;
    private final boolean isLegacy;
    private final List<GroupableFeature> preferredFeatureGroup;
    private final boolean requireNonEmptyUseCases;
    private final Set<GroupableFeature> requiredFeatureGroup;
    private final int sessionType;
    private final List<UseCase> useCases;
    private final ViewPort viewPort;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FeatureTypeInternal.values().length];
            try {
                iArr[FeatureTypeInternal.DYNAMIC_RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureTypeInternal.FPS_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FeatureTypeInternal.VIDEO_STABILIZATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FeatureTypeInternal.IMAGE_FORMAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FeatureTypeInternal.RECORDING_QUALITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range, Set<? extends GroupableFeature> set, List<? extends GroupableFeature> list3) {
        list.getClass();
        list2.getClass();
        range.getClass();
        set.getClass();
        list3.getClass();
        this.viewPort = viewPort;
        this.effects = list2;
        this.frameRateRange = range;
        this.requiredFeatureGroup = set;
        this.preferredFeatureGroup = list3;
        this.useCases = qn1.N(list);
        this.requireNonEmptyUseCases = true;
        this.featureSelectionListener = new i84(1);
        ScheduledExecutorService scheduledExecutorServiceMainThreadExecutor = CameraXExecutors.mainThreadExecutor();
        scheduledExecutorServiceMainThreadExecutor.getClass();
        this.featureSelectionListenerExecutor = scheduledExecutorServiceMainThreadExecutor;
        if (getRequireNonEmptyUseCases() && list.isEmpty()) {
            fg.c("SessionConfig must contain at least one UseCase.");
            throw null;
        }
        validateFrameRate();
        validateFeatureGroups();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void featureSelectionListener$lambda$0(Set set) {
    }

    private final String getUseCaseName(UseCase useCase) {
        if (useCase instanceof Preview) {
            return "Preview";
        }
        if (useCase instanceof ImageCapture) {
            return "ImageCapture";
        }
        if (useCase instanceof ImageAnalysis) {
            return "ImageAnalysis";
        }
        return UseCaseUtil.isVideoCapture(useCase) ? "VideoCapture" : "UseCase";
    }

    public static /* synthetic */ void setFeatureSelectionListener$default(SessionConfig sessionConfig, Executor executor, Consumer consumer, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: setFeatureSelectionListener");
            return;
        }
        if ((i & 1) != 0) {
            executor = CameraXExecutors.mainThreadExecutor();
            executor.getClass();
        }
        sessionConfig.setFeatureSelectionListener(executor, consumer);
    }

    private final void validateDefaultGroupableFeatureValues(UseCase useCase) {
        String strC;
        String str;
        String str2;
        String useCaseName = getUseCaseName(useCase);
        FeatureTypeInternal appConfiguredGroupableFeatureType$camera_core = UseCaseType.Companion.getAppConfiguredGroupableFeatureType$camera_core(useCase);
        if (appConfiguredGroupableFeatureType$camera_core == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("A ");
        appConfiguredGroupableFeatureType$camera_core.getClass();
        sb.append(appConfiguredGroupableFeatureType$camera_core.name());
        sb.append(" value is set to ");
        sb.append(useCaseName);
        sb.append(" despite using feature groups. Do not use APIs like ");
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[appConfiguredGroupableFeatureType$camera_core.ordinal()];
        if (i == 1) {
            strC = ni0.c(useCaseName, ".Builder.setDynamicRange");
        } else if (i == 2) {
            strC = ni0.c(useCaseName, ".Builder.setTargetFrameRateRange");
        } else if (i == 3) {
            strC = UseCaseUtil.isVideoCapture(useCase) ? ni0.c(useCaseName, ".Builder.setVideoStabilizationEnabled") : ni0.c(useCaseName, ".Builder.setPreviewStabilizationEnabled");
        } else if (i == 4) {
            strC = ni0.c(useCaseName, ".Builder.setOutputFormat");
        } else {
            if (i != 5) {
                me0.e();
                return;
            }
            strC = "Recorder.Builder.setQualitySelector";
        }
        sb.append(strC);
        sb.append(" while using feature groups. If, for example, ");
        int i2 = iArr[appConfiguredGroupableFeatureType$camera_core.ordinal()];
        if (i2 == 1) {
            str = "HDR";
        } else if (i2 == 2) {
            str = "60 FPS";
        } else if (i2 == 3) {
            str = "stabilization";
        } else if (i2 == 4) {
            str = "JPEG_R output format";
        } else {
            if (i2 != 5) {
                me0.e();
                return;
            }
            str = "UHD recording quality";
        }
        sb.append(str);
        sb.append(" is required, instead set ");
        int i3 = iArr[appConfiguredGroupableFeatureType$camera_core.ordinal()];
        if (i3 == 1) {
            str2 = "GroupableFeature.HDR_HLG10";
        } else if (i3 == 2) {
            str2 = "GroupableFeature.FPS_60";
        } else if (i3 == 3) {
            str2 = "GroupableFeature.PREVIEW_STABILIZATION";
        } else if (i3 == 4) {
            str2 = "GroupableFeature.IMAGE_ULTRA_HDR";
        } else {
            if (i3 != 5) {
                me0.e();
                return;
            }
            str2 = "GroupableFeatures.UHD_RECORDING";
        }
        c9.f(me0.d(sb, str2, " as either a required or preferred feature."));
    }

    private final void validateFeatureGroups() {
        if (this.requiredFeatureGroup.isEmpty() && this.preferredFeatureGroup.isEmpty()) {
            return;
        }
        validateRequiredFeatures();
        if (qn1.N(this.preferredFeatureGroup).size() != this.preferredFeatureGroup.size()) {
            c9.f(qg.f(new StringBuilder("Duplicate values in preferredFeatures("), this.preferredFeatureGroup, ')'));
            return;
        }
        LinkedHashSet linkedHashSetX = qn1.X(this.requiredFeatureGroup, this.preferredFeatureGroup);
        if (!linkedHashSetX.isEmpty()) {
            eg.d(linkedHashSetX, "requiredFeatures and preferredFeatures have duplicate values: ");
            return;
        }
        for (UseCase useCase : this.useCases) {
            if (UseCaseType.Companion.getFeatureGroupUseCaseType(useCase) == UseCaseType.UNDEFINED) {
                xp.i(useCase, " is not supported with feature group");
                return;
            }
            validateDefaultGroupableFeatureValues(useCase);
        }
    }

    private final void validateFrameRate() {
        if (aa4.e(this.frameRateRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
            return;
        }
        Iterator<UseCase> it = this.useCases.iterator();
        while (it.hasNext()) {
            if (it.next().getAppConfig().hasTargetFrameRate()) {
                fg.c("Can't set target frame rate on a UseCase (by Preview.Builder.setTargetFrameRate() or VideoCapture.Builder.setTargetFrameRate()) if the frame rate range has already been set in the SessionConfig.");
                return;
            }
        }
    }

    private final void validateRequiredFeatures() {
        Set<GroupableFeature> set = this.requiredFeatureGroup;
        ArrayList arrayList = new ArrayList(kn1.q(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((GroupableFeature) it.next()).getFeatureTypeInternal());
        }
        for (FeatureTypeInternal featureTypeInternal : qn1.N(arrayList)) {
            Set<GroupableFeature> set2 = this.requiredFeatureGroup;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : set2) {
                if (((GroupableFeature) obj).getFeatureTypeInternal() == featureTypeInternal) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() > 1) {
                eg.d(arrayList2, "requiredFeatures has conflicting feature values: ");
                return;
            }
        }
    }

    public CameraFilter getCameraFilter() {
        return this.cameraFilter;
    }

    public final List<CameraEffect> getEffects() {
        return this.effects;
    }

    public final Consumer<Set<GroupableFeature>> getFeatureSelectionListener() {
        return this.featureSelectionListener;
    }

    public final Executor getFeatureSelectionListenerExecutor() {
        return this.featureSelectionListenerExecutor;
    }

    public final Range<Integer> getFrameRateRange() {
        return this.frameRateRange;
    }

    public final List<GroupableFeature> getPreferredFeatureGroup() {
        return this.preferredFeatureGroup;
    }

    public boolean getRequireNonEmptyUseCases() {
        return this.requireNonEmptyUseCases;
    }

    public final Set<GroupableFeature> getRequiredFeatureGroup() {
        return this.requiredFeatureGroup;
    }

    public int getSessionType() {
        return this.sessionType;
    }

    public final List<UseCase> getUseCases() {
        return this.useCases;
    }

    public final ViewPort getViewPort() {
        return this.viewPort;
    }

    public boolean isAutoRotationEnabled() {
        return this.isAutoRotationEnabled;
    }

    public boolean isLegacy() {
        return this.isLegacy;
    }

    public final void setFeatureSelectionListener(Executor executor, Consumer<Set<GroupableFeature>> consumer) {
        executor.getClass();
        consumer.getClass();
        this.featureSelectionListener = consumer;
        this.featureSelectionListenerExecutor = executor;
    }

    public String toString() {
        return "SessionConfig@" + Integer.toHexString(System.identityHashCode(this)) + " {useCases=" + this.useCases + ", frameRateRange=" + this.frameRateRange + ", requiredFeatureGroup=" + this.requiredFeatureGroup + ", preferredFeatureGroup=" + this.preferredFeatureGroup + ", effects=" + this.effects + ", viewPort=" + this.viewPort + '}';
    }

    public final void setFeatureSelectionListener(Consumer<Set<GroupableFeature>> consumer) {
        consumer.getClass();
        setFeatureSelectionListener$default(this, null, consumer, 1, null);
    }

    public static final class Builder {
        private CameraFilter cameraFilter;
        private List<CameraEffect> effects;
        private Range<Integer> frameRateRange;
        private boolean isAutoRotationEnabled;
        private final List<GroupableFeature> preferredFeatureGroup;
        private boolean requireNonEmptyUseCases;
        private final List<GroupableFeature> requiredFeatureGroup;
        private int sessionType;
        private final List<UseCase> useCases;
        private ViewPort viewPort;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(SessionConfig sessionConfig) {
            this(sessionConfig.getUseCases());
            sessionConfig.getClass();
            this.viewPort = sessionConfig.getViewPort();
            this.effects = qn1.v0(sessionConfig.getEffects());
            this.frameRateRange = sessionConfig.getFrameRateRange();
            this.requiredFeatureGroup.addAll(sessionConfig.getRequiredFeatureGroup());
            this.preferredFeatureGroup.addAll(sessionConfig.getPreferredFeatureGroup());
            this.isAutoRotationEnabled = sessionConfig.isAutoRotationEnabled();
            this.cameraFilter = sessionConfig.getCameraFilter();
            this.sessionType = sessionConfig.getSessionType();
            this.requireNonEmptyUseCases = sessionConfig.getRequireNonEmptyUseCases();
        }

        public final Builder addEffect(CameraEffect cameraEffect) {
            cameraEffect.getClass();
            this.effects.add(cameraEffect);
            return this;
        }

        public final SessionConfig build() {
            final List<UseCase> list = this.useCases;
            final ViewPort viewPort = this.viewPort;
            final List listT0 = qn1.t0(this.effects);
            final Range<Integer> range = this.frameRateRange;
            final Set setY0 = qn1.y0(this.requiredFeatureGroup);
            final List listT1 = qn1.t0(this.preferredFeatureGroup);
            return new SessionConfig(this, list, viewPort, listT0, range, setY0, listT1) { // from class: androidx.camera.core.SessionConfig$Builder$build$1
                private final CameraFilter cameraFilter;
                private final boolean isAutoRotationEnabled;
                private final boolean requireNonEmptyUseCases;
                private final int sessionType;

                {
                    this.isAutoRotationEnabled = this.isAutoRotationEnabled;
                    this.cameraFilter = this.cameraFilter;
                    this.sessionType = this.sessionType;
                    this.requireNonEmptyUseCases = this.requireNonEmptyUseCases;
                }

                @Override // androidx.camera.core.SessionConfig
                public CameraFilter getCameraFilter() {
                    return this.cameraFilter;
                }

                @Override // androidx.camera.core.SessionConfig
                public boolean getRequireNonEmptyUseCases() {
                    return this.requireNonEmptyUseCases;
                }

                @Override // androidx.camera.core.SessionConfig
                public int getSessionType() {
                    return this.sessionType;
                }

                @Override // androidx.camera.core.SessionConfig
                public boolean isAutoRotationEnabled() {
                    return this.isAutoRotationEnabled;
                }
            };
        }

        public final Builder setAutoRotationEnabled(boolean z) {
            this.isAutoRotationEnabled = z;
            return this;
        }

        public final Builder setFrameRateRange(Range<Integer> range) {
            range.getClass();
            this.frameRateRange = range;
            return this;
        }

        public final Builder setPreferredFeatureGroup(GroupableFeature... groupableFeatureArr) {
            groupableFeatureArr.getClass();
            this.preferredFeatureGroup.clear();
            nn1.u(this.preferredFeatureGroup, groupableFeatureArr);
            return this;
        }

        public final Builder setRequiredFeatureGroup(GroupableFeature... groupableFeatureArr) {
            groupableFeatureArr.getClass();
            this.requiredFeatureGroup.clear();
            nn1.u(this.requiredFeatureGroup, groupableFeatureArr);
            return this;
        }

        public final Builder setViewPort(ViewPort viewPort) {
            viewPort.getClass();
            this.viewPort = viewPort;
            return this;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(UseCase... useCaseArr) {
            this((List<? extends UseCase>) yr.h0(useCaseArr));
            useCaseArr.getClass();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(List<? extends UseCase> list) {
            list.getClass();
            this.useCases = list;
            this.effects = new ArrayList();
            Range<Integer> range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            range.getClass();
            this.frameRateRange = range;
            this.requiredFeatureGroup = new ArrayList();
            this.preferredFeatureGroup = new ArrayList();
            this.requireNonEmptyUseCases = true;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort) {
        this(list, viewPort, null, null, null, null, 60, null);
        list.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2) {
        this(list, viewPort, list2, null, null, null, 56, null);
        list.getClass();
        list2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range) {
        this(list, viewPort, list2, range, null, null, 48, null);
        list.getClass();
        list2.getClass();
        range.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list, ViewPort viewPort, List<? extends CameraEffect> list2, Range<Integer> range, Set<? extends GroupableFeature> set) {
        this(list, viewPort, list2, range, set, null, 32, null);
        list.getClass();
        list2.getClass();
        range.getClass();
        set.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(List<? extends UseCase> list) {
        this(list, null, null, null, null, null, 62, null);
        list.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SessionConfig(List list, ViewPort viewPort, List list2, Range range, Set set, List list3, int i, jh2 jh2Var) {
        ViewPort viewPort2 = (i & 2) != 0 ? null : viewPort;
        int i2 = i & 4;
        kx2 kx2Var = kx2.b;
        List list4 = i2 != 0 ? kx2Var : list2;
        if ((i & 8) != 0) {
            range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
            range.getClass();
        }
        this(list, viewPort2, list4, range, (i & 16) != 0 ? ox2.b : set, (i & 32) != 0 ? kx2Var : list3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SessionConfig(UseCase... useCaseArr) {
        this(yr.h0(useCaseArr), null, null, null, null, null, 62, null);
        useCaseArr.getClass();
    }
}
