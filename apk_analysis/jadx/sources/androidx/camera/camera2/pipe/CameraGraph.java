package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.aa4;
import defpackage.ah;
import defpackage.e02;
import defpackage.e2;
import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.mk2;
import defpackage.mx2;
import defpackage.n1;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.sg;
import defpackage.tg;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface CameraGraph extends CameraGraphBase<Session>, CameraControls3A {

    public static final class ConcurrentConfig {
        private final List<Config> graphConfigs;

        public ConcurrentConfig(List<Config> list) {
            list.getClass();
            this.graphConfigs = list;
            if (list.size() < 2) {
                ah.f("Cannot create ConcurrentGraphConfig without 2 or more CameraGraph.Config(s)");
                throw null;
            }
            Config config = (Config) qn1.T(list);
            List<Config> list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    String strM311getCameraBackendIdAKmI2lo = ((Config) it.next()).m311getCameraBackendIdAKmI2lo();
                    String strM311getCameraBackendIdAKmI2lo2 = config.m311getCameraBackendIdAKmI2lo();
                    boolean zM190equalsimpl0 = false;
                    if (strM311getCameraBackendIdAKmI2lo == null) {
                        if (strM311getCameraBackendIdAKmI2lo2 == null) {
                            zM190equalsimpl0 = true;
                        }
                    } else if (strM311getCameraBackendIdAKmI2lo2 != null) {
                        zM190equalsimpl0 = CameraBackendId.m190equalsimpl0(strM311getCameraBackendIdAKmI2lo, strM311getCameraBackendIdAKmI2lo2);
                    }
                    if (!zM190equalsimpl0) {
                        ah.f("Each CameraGraph.Config must use the same camera backend!");
                        throw null;
                    }
                }
            }
            List<Config> list3 = this.graphConfigs;
            ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
            Iterator<T> it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList.add(CameraId.m351boximpl(((Config) it2.next()).m310getCameraDz_R5H8()));
            }
            if (qn1.N(arrayList).size() == this.graphConfigs.size()) {
                return;
            }
            ah.f("Each CameraGraph.Config must have a distinct camera id!");
            throw null;
        }

        public final List<Config> getGraphConfigs() {
            return this.graphConfigs;
        }
    }

    public static final class Constants3A {
        public static final int DEFAULT_FRAME_LIMIT = 60;
        public static final int DEFAULT_TIME_LIMIT_MS = 3000;
        public static final long DEFAULT_TIME_LIMIT_NS = 3000000000L;
        public static final Constants3A INSTANCE = new Constants3A();
        private static final MeteringRectangle[] METERING_REGIONS_EMPTY = new MeteringRectangle[0];
        private static final MeteringRectangle[] METERING_REGIONS_DEFAULT = {new MeteringRectangle(0, 0, 0, 0, 0)};
        private static final long FRAME_NUMBER_INVALID = FrameNumber.m464constructorimpl(-1);

        private Constants3A() {
        }

        /* JADX INFO: renamed from: getFRAME_NUMBER_INVALID-Ugla2oM, reason: not valid java name */
        public final long m316getFRAME_NUMBER_INVALIDUgla2oM() {
            return FRAME_NUMBER_INVALID;
        }

        public final MeteringRectangle[] getMETERING_REGIONS_DEFAULT() {
            return METERING_REGIONS_DEFAULT;
        }

        public final MeteringRectangle[] getMETERING_REGIONS_EMPTY() {
            return METERING_REGIONS_EMPTY;
        }
    }

    public static final class Flags {
        private final boolean abortCapturesOnStop;
        private final RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture;
        private final Boolean awaitRepeatingRequestOnDisconnect;
        private final boolean closeCameraDeviceOnClose;
        private final boolean closeCaptureSessionOnDisconnect;
        private final boolean configureBlankSessionOnStop;
        private final boolean enableRestartDelays;
        private final int finalizeSessionOnCloseBehavior;

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, int i2, jh2 jh2Var) {
            int i3 = 0;
            z = (i2 & 1) != 0 ? false : z;
            if ((i2 & 2) != 0) {
                z2 = Build.VERSION.SDK_INT >= 30;
            }
            this(z, z2, (i2 & 4) != 0 ? new RepeatingRequestRequirementsBeforeCapture(i3, null, 3, 0 == true ? 1 : 0) : repeatingRequestRequirementsBeforeCapture, (i2 & 8) != 0 ? null : bool, (i2 & 16) != 0 ? FinalizeSessionOnCloseBehavior.Companion.m329getOFFBm6Tfm4() : i, (i2 & 32) != 0 ? Camera2Quirks.Companion.shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe() : z3, (i2 & 64) != 0 ? false : z4, (i2 & 128) != 0 ? false : z5, null);
        }

        /* JADX INFO: renamed from: copy-LsLUW-E$default, reason: not valid java name */
        public static /* synthetic */ Flags m317copyLsLUWE$default(Flags flags, boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = flags.configureBlankSessionOnStop;
            }
            if ((i2 & 2) != 0) {
                z2 = flags.abortCapturesOnStop;
            }
            if ((i2 & 4) != 0) {
                repeatingRequestRequirementsBeforeCapture = flags.awaitRepeatingRequestBeforeCapture;
            }
            if ((i2 & 8) != 0) {
                bool = flags.awaitRepeatingRequestOnDisconnect;
            }
            if ((i2 & 16) != 0) {
                i = flags.finalizeSessionOnCloseBehavior;
            }
            if ((i2 & 32) != 0) {
                z3 = flags.closeCaptureSessionOnDisconnect;
            }
            if ((i2 & 64) != 0) {
                z4 = flags.closeCameraDeviceOnClose;
            }
            if ((i2 & 128) != 0) {
                z5 = flags.enableRestartDelays;
            }
            boolean z6 = z4;
            boolean z7 = z5;
            int i3 = i;
            boolean z8 = z3;
            return flags.m319copyLsLUWE(z, z2, repeatingRequestRequirementsBeforeCapture, bool, i3, z8, z6, z7);
        }

        public final boolean component1() {
            return this.configureBlankSessionOnStop;
        }

        public final boolean component2() {
            return this.abortCapturesOnStop;
        }

        public final RepeatingRequestRequirementsBeforeCapture component3() {
            return this.awaitRepeatingRequestBeforeCapture;
        }

        public final Boolean component4() {
            return this.awaitRepeatingRequestOnDisconnect;
        }

        /* JADX INFO: renamed from: component5-Bm6Tfm4, reason: not valid java name */
        public final int m318component5Bm6Tfm4() {
            return this.finalizeSessionOnCloseBehavior;
        }

        public final boolean component6() {
            return this.closeCaptureSessionOnDisconnect;
        }

        public final boolean component7() {
            return this.closeCameraDeviceOnClose;
        }

        public final boolean component8() {
            return this.enableRestartDelays;
        }

        /* JADX INFO: renamed from: copy-LsLUW-E, reason: not valid java name */
        public final Flags m319copyLsLUWE(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5) {
            repeatingRequestRequirementsBeforeCapture.getClass();
            return new Flags(z, z2, repeatingRequestRequirementsBeforeCapture, bool, i, z3, z4, z5, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Flags)) {
                return false;
            }
            Flags flags = (Flags) obj;
            return this.configureBlankSessionOnStop == flags.configureBlankSessionOnStop && this.abortCapturesOnStop == flags.abortCapturesOnStop && aa4.e(this.awaitRepeatingRequestBeforeCapture, flags.awaitRepeatingRequestBeforeCapture) && aa4.e(this.awaitRepeatingRequestOnDisconnect, flags.awaitRepeatingRequestOnDisconnect) && FinalizeSessionOnCloseBehavior.m324equalsimpl0(this.finalizeSessionOnCloseBehavior, flags.finalizeSessionOnCloseBehavior) && this.closeCaptureSessionOnDisconnect == flags.closeCaptureSessionOnDisconnect && this.closeCameraDeviceOnClose == flags.closeCameraDeviceOnClose && this.enableRestartDelays == flags.enableRestartDelays;
        }

        public final boolean getAbortCapturesOnStop() {
            return this.abortCapturesOnStop;
        }

        public final RepeatingRequestRequirementsBeforeCapture getAwaitRepeatingRequestBeforeCapture() {
            return this.awaitRepeatingRequestBeforeCapture;
        }

        public final Boolean getAwaitRepeatingRequestOnDisconnect() {
            return this.awaitRepeatingRequestOnDisconnect;
        }

        public final boolean getCloseCameraDeviceOnClose() {
            return this.closeCameraDeviceOnClose;
        }

        public final boolean getCloseCaptureSessionOnDisconnect() {
            return this.closeCaptureSessionOnDisconnect;
        }

        public final boolean getConfigureBlankSessionOnStop() {
            return this.configureBlankSessionOnStop;
        }

        public final boolean getEnableRestartDelays() {
            return this.enableRestartDelays;
        }

        /* JADX INFO: renamed from: getFinalizeSessionOnCloseBehavior-Bm6Tfm4, reason: not valid java name */
        public final int m320getFinalizeSessionOnCloseBehaviorBm6Tfm4() {
            return this.finalizeSessionOnCloseBehavior;
        }

        public int hashCode() {
            int iHashCode = (this.awaitRepeatingRequestBeforeCapture.hashCode() + tg.c(Boolean.hashCode(this.configureBlankSessionOnStop) * 31, 31, this.abortCapturesOnStop)) * 31;
            Boolean bool = this.awaitRepeatingRequestOnDisconnect;
            return Boolean.hashCode(this.enableRestartDelays) + tg.c(tg.c((FinalizeSessionOnCloseBehavior.m325hashCodeimpl(this.finalizeSessionOnCloseBehavior) + ((iHashCode + (bool == null ? 0 : bool.hashCode())) * 31)) * 31, 31, this.closeCaptureSessionOnDisconnect), 31, this.closeCameraDeviceOnClose);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Flags(configureBlankSessionOnStop=");
            sb.append(this.configureBlankSessionOnStop);
            sb.append(", abortCapturesOnStop=");
            sb.append(this.abortCapturesOnStop);
            sb.append(", awaitRepeatingRequestBeforeCapture=");
            sb.append(this.awaitRepeatingRequestBeforeCapture);
            sb.append(", awaitRepeatingRequestOnDisconnect=");
            sb.append(this.awaitRepeatingRequestOnDisconnect);
            sb.append(", finalizeSessionOnCloseBehavior=");
            sb.append((Object) FinalizeSessionOnCloseBehavior.m326toStringimpl(this.finalizeSessionOnCloseBehavior));
            sb.append(", closeCaptureSessionOnDisconnect=");
            sb.append(this.closeCaptureSessionOnDisconnect);
            sb.append(", closeCameraDeviceOnClose=");
            sb.append(this.closeCameraDeviceOnClose);
            sb.append(", enableRestartDelays=");
            return sg.d(sb, this.enableRestartDelays, ')');
        }

        public static final class FinalizeSessionOnCloseBehavior {
            private final int value;
            public static final Companion Companion = new Companion(null);
            private static final int OFF = m322constructorimpl(0);
            private static final int IMMEDIATE = m322constructorimpl(1);
            private static final int TIMEOUT = m322constructorimpl(2);

            private /* synthetic */ FinalizeSessionOnCloseBehavior(int i) {
                this.value = i;
            }

            /* JADX INFO: renamed from: box-impl, reason: not valid java name */
            public static final /* synthetic */ FinalizeSessionOnCloseBehavior m321boximpl(int i) {
                return new FinalizeSessionOnCloseBehavior(i);
            }

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            private static int m322constructorimpl(int i) {
                return i;
            }

            /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
            public static boolean m323equalsimpl(int i, Object obj) {
                return (obj instanceof FinalizeSessionOnCloseBehavior) && i == ((FinalizeSessionOnCloseBehavior) obj).m327unboximpl();
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m324equalsimpl0(int i, int i2) {
                return i == i2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m325hashCodeimpl(int i) {
                return Integer.hashCode(i);
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m326toStringimpl(int i) {
                return qz0.d("FinalizeSessionOnCloseBehavior(value=", i, ')');
            }

            public boolean equals(Object obj) {
                return m323equalsimpl(this.value, obj);
            }

            public final int getValue() {
                return this.value;
            }

            public int hashCode() {
                return m325hashCodeimpl(this.value);
            }

            public String toString() {
                return m326toStringimpl(this.value);
            }

            /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
            public final /* synthetic */ int m327unboximpl() {
                return this.value;
            }

            public static final class Companion {
                public /* synthetic */ Companion(jh2 jh2Var) {
                    this();
                }

                /* JADX INFO: renamed from: getIMMEDIATE-Bm6Tfm4, reason: not valid java name */
                public final int m328getIMMEDIATEBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.IMMEDIATE;
                }

                /* JADX INFO: renamed from: getOFF-Bm6Tfm4, reason: not valid java name */
                public final int m329getOFFBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.OFF;
                }

                /* JADX INFO: renamed from: getTIMEOUT-Bm6Tfm4, reason: not valid java name */
                public final int m330getTIMEOUTBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.TIMEOUT;
                }

                private Companion() {
                }
            }
        }

        private Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5) {
            repeatingRequestRequirementsBeforeCapture.getClass();
            this.configureBlankSessionOnStop = z;
            this.abortCapturesOnStop = z2;
            this.awaitRepeatingRequestBeforeCapture = repeatingRequestRequirementsBeforeCapture;
            this.awaitRepeatingRequestOnDisconnect = bool;
            this.finalizeSessionOnCloseBehavior = i;
            this.closeCaptureSessionOnDisconnect = z3;
            this.closeCameraDeviceOnClose = z4;
            this.enableRestartDelays = z5;
        }

        public /* synthetic */ Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, jh2 jh2Var) {
            this(z, z2, repeatingRequestRequirementsBeforeCapture, bool, i, z3, z4, z5);
        }
    }

    public static final class OperatingMode {
        private final int mode;
        public static final Companion Companion = new Companion(null);
        private static final int NORMAL = m333constructorimpl(0);
        private static final int HIGH_SPEED = m333constructorimpl(1);
        private static final int EXTENSION = m333constructorimpl(2);

        private /* synthetic */ OperatingMode(int i) {
            this.mode = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ OperatingMode m332boximpl(int i) {
            return new OperatingMode(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m333constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m334equalsimpl(int i, Object obj) {
            return (obj instanceof OperatingMode) && i == ((OperatingMode) obj).m338unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m335equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m336hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m337toStringimpl(int i) {
            return qz0.d("OperatingMode(mode=", i, ')');
        }

        public boolean equals(Object obj) {
            return m334equalsimpl(this.mode, obj);
        }

        public int hashCode() {
            return m336hashCodeimpl(this.mode);
        }

        public String toString() {
            return m337toStringimpl(this.mode);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m338unboximpl() {
            return this.mode;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: custom-EP6OhB0, reason: not valid java name */
            public final int m339customEP6OhB0(int i) {
                if (i != m342getNORMAL2uNL3no() && i != m341getHIGH_SPEED2uNL3no()) {
                    return OperatingMode.m333constructorimpl(i);
                }
                if (Log.INSTANCE.getERROR_LOGGABLE()) {
                    android.util.Log.e(Log.TAG, "Custom operating mode " + i + " conflicts with standard modes");
                }
                j59.a.getClass();
                fg.c("kotlin.Unit");
                return 0;
            }

            /* JADX INFO: renamed from: getEXTENSION-2uNL3no, reason: not valid java name */
            public final int m340getEXTENSION2uNL3no() {
                return OperatingMode.EXTENSION;
            }

            /* JADX INFO: renamed from: getHIGH_SPEED-2uNL3no, reason: not valid java name */
            public final int m341getHIGH_SPEED2uNL3no() {
                return OperatingMode.HIGH_SPEED;
            }

            /* JADX INFO: renamed from: getNORMAL-2uNL3no, reason: not valid java name */
            public final int m342getNORMAL2uNL3no() {
                return OperatingMode.NORMAL;
            }

            private Companion() {
            }
        }
    }

    public interface Session extends CameraControls3A, AutoCloseable {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: lock3A--tS25XM$default, reason: not valid java name */
        static /* synthetic */ Object m344lock3AtS25XM$default(Session session, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3 nl3Var, nl3 nl3Var2, int i, long j, long j2, e02 e02Var, int i2, Object obj) {
            if (obj == null) {
                return session.mo345lock3AtS25XM((i2 & 1) != 0 ? null : aeMode, (i2 & 2) != 0 ? null : afMode, (i2 & 4) != 0 ? null : awbMode, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : list2, (i2 & 32) != 0 ? null : list3, (i2 & 64) != 0 ? null : lock3ABehavior, (i2 & 128) != 0 ? null : lock3ABehavior2, (i2 & 256) != 0 ? null : lock3ABehavior3, (i2 & 512) != 0 ? null : aeMode2, (i2 & 1024) != 0 ? null : nl3Var, (i2 & 2048) != 0 ? null : nl3Var2, (i2 & 4096) != 0 ? 60 : i, (i2 & 8192) != 0 ? 3000000000L : j, (i2 & 16384) != 0 ? 3000000000L : j2, e02Var);
            }
            n1.e("Super calls with default arguments not supported in this target, function: lock3A--tS25XM");
            return null;
        }

        static /* synthetic */ Object lock3AForCapture$default(Session session, boolean z, boolean z2, int i, long j, e02 e02Var, int i2, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: lock3AForCapture");
                return null;
            }
            if ((i2 & 1) != 0) {
                z = true;
            }
            if ((i2 & 2) != 0) {
                z2 = false;
            }
            if ((i2 & 4) != 0) {
                i = 60;
            }
            if ((i2 & 8) != 0) {
                j = Constants3A.DEFAULT_TIME_LIMIT_NS;
            }
            int i3 = i;
            return session.lock3AForCapture(z, z2, i3, j, e02Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ Object unlock3A$default(Session session, Boolean bool, Boolean bool2, Boolean bool3, nl3 nl3Var, int i, long j, e02 e02Var, int i2, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: unlock3A");
                return null;
            }
            if ((i2 & 1) != 0) {
                bool = null;
            }
            if ((i2 & 2) != 0) {
                bool2 = null;
            }
            if ((i2 & 4) != 0) {
                bool3 = null;
            }
            if ((i2 & 8) != 0) {
                nl3Var = null;
            }
            if ((i2 & 16) != 0) {
                i = 60;
            }
            if ((i2 & 32) != 0) {
                j = Constants3A.DEFAULT_TIME_LIMIT_NS;
            }
            return session.unlock3A(bool, bool2, bool3, nl3Var, i, j, e02Var);
        }

        static /* synthetic */ Object unlock3APostCapture$default(Session session, boolean z, e02 e02Var, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: unlock3APostCapture");
                return null;
            }
            if ((i & 1) != 0) {
                z = true;
            }
            return session.unlock3APostCapture(z, e02Var);
        }

        void abort();

        FrameCapture capture(Request request);

        List<FrameCapture> capture(List<Request> list);

        /* JADX INFO: renamed from: lock3A--tS25XM, reason: not valid java name */
        Object mo345lock3AtS25XM(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2, e02<? super mk2<Result3A>> e02Var);

        Object lock3AForCapture(nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super mk2<Result3A>> e02Var);

        Object lock3AForCapture(boolean z, boolean z2, int i, long j, e02<? super mk2<Result3A>> e02Var);

        void startRepeating(Request request);

        void stopRepeating();

        void submit(Request request);

        void submit(List<Request> list);

        Object unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j, e02<? super mk2<Result3A>> e02Var);

        Object unlock3APostCapture(boolean z, e02<? super mk2<Result3A>> e02Var);

        public static final class DefaultImpls {
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ Object lock3AForCapture$default(Session session, nl3 nl3Var, int i, long j, e02 e02Var, int i2, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: lock3AForCapture");
                return null;
            }
            if ((i2 & 1) != 0) {
                nl3Var = null;
            }
            if ((i2 & 2) != 0) {
                i = 60;
            }
            if ((i2 & 4) != 0) {
                j = Constants3A.DEFAULT_TIME_LIMIT_NS;
            }
            return session.lock3AForCapture(nl3Var, i, j, e02Var);
        }
    }

    public static final class RepeatingRequestRequirementsBeforeCapture {
        private final CompletionBehavior completionBehavior;
        private final int repeatingFramesToComplete;

        public enum CompletionBehavior {
            AT_LEAST,
            EXACT;

            private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

            public static g03<CompletionBehavior> getEntries() {
                return $ENTRIES;
            }
        }

        public /* synthetic */ RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior, int i2, jh2 jh2Var) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? CompletionBehavior.AT_LEAST : completionBehavior, null);
        }

        public final CompletionBehavior getCompletionBehavior() {
            return this.completionBehavior;
        }

        /* JADX INFO: renamed from: getRepeatingFramesToComplete-pVg5ArA, reason: not valid java name */
        public final int m343getRepeatingFramesToCompletepVg5ArA() {
            return this.repeatingFramesToComplete;
        }

        private RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior) {
            completionBehavior.getClass();
            this.repeatingFramesToComplete = i;
            this.completionBehavior = completionBehavior;
        }

        public /* synthetic */ RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior, jh2 jh2Var) {
            this(i, completionBehavior);
        }
    }

    public static final class Config {
        private final String camera;
        private final String cameraBackendId;
        private ConcurrentCameraGraphs concurrentCameraGraphs;
        private final CameraBackendFactory customCameraBackend;
        private final List<Request.Listener> defaultListeners;
        private final Map<?, Object> defaultParameters;
        private final int defaultTemplate;
        private final List<List<CameraStream.Config>> exclusiveStreamGroups;
        private final Flags flags;
        private final List<GraphStateListener> graphStateListeners;
        private final List<InputStream.Config> input;
        private final MetadataTransform metadataTransform;
        private final CameraStream.Config postviewStream;
        private final Map<?, Object> requiredParameters;
        private final String sessionColorSpace;
        private final int sessionMode;
        private final Map<?, Object> sessionParameters;
        private final int sessionTemplate;
        private final List<CameraStream.Config> streams;

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Config(String str, List list, List list2, List list3, CameraStream.Config config, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, int i4, jh2 jh2Var) {
            int i5 = i4 & 4;
            kx2 kx2Var = kx2.b;
            List list6 = i5 != 0 ? kx2Var : list2;
            List list7 = (i4 & 8) != 0 ? null : list3;
            CameraStream.Config config2 = (i4 & 16) != 0 ? null : config;
            int iM647constructorimpl = (i4 & 32) != 0 ? RequestTemplate.m647constructorimpl(1) : i;
            int i6 = i4 & 64;
            mx2 mx2Var = mx2.b;
            this(str, list, list6, list7, config2, iM647constructorimpl, i6 != 0 ? mx2Var : map, (i4 & 128) != 0 ? OperatingMode.Companion.m342getNORMAL2uNL3no() : i2, (i4 & 256) != 0 ? RequestTemplate.m647constructorimpl(1) : i3, (i4 & 512) != 0 ? mx2Var : map2, (i4 & 1024) != 0 ? kx2Var : list4, (i4 & 2048) != 0 ? kx2Var : list5, (i4 & 4096) != 0 ? mx2Var : map3, (i4 & 8192) != 0 ? null : str2, (i4 & 16384) != 0 ? null : cameraBackendFactory, (32768 & i4) != 0 ? new MetadataTransform(0, 0, null, 7, null) : metadataTransform, (65536 & i4) != 0 ? new Flags(false, false, null, null, 0, false, false, false, 255, null) : flags, (i4 & 131072) != 0 ? null : str3, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: copy-evZ4KcE$default, reason: not valid java name */
        public static /* synthetic */ Config m302copyevZ4KcE$default(Config config, String str, List list, List list2, List list3, CameraStream.Config config2, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, int i4, Object obj) {
            String str4;
            Flags flags2;
            String str5 = (i4 & 1) != 0 ? config.camera : str;
            List list6 = (i4 & 2) != 0 ? config.streams : list;
            List list7 = (i4 & 4) != 0 ? config.exclusiveStreamGroups : list2;
            List list8 = (i4 & 8) != 0 ? config.input : list3;
            CameraStream.Config config3 = (i4 & 16) != 0 ? config.postviewStream : config2;
            int i5 = (i4 & 32) != 0 ? config.sessionTemplate : i;
            Map map4 = (i4 & 64) != 0 ? config.sessionParameters : map;
            int i6 = (i4 & 128) != 0 ? config.sessionMode : i2;
            int i7 = (i4 & 256) != 0 ? config.defaultTemplate : i3;
            Map map5 = (i4 & 512) != 0 ? config.defaultParameters : map2;
            List list9 = (i4 & 1024) != 0 ? config.defaultListeners : list4;
            List list10 = (i4 & 2048) != 0 ? config.graphStateListeners : list5;
            Map map6 = (i4 & 4096) != 0 ? config.requiredParameters : map3;
            String str6 = (i4 & 8192) != 0 ? config.cameraBackendId : str2;
            String str7 = str5;
            CameraBackendFactory cameraBackendFactory2 = (i4 & 16384) != 0 ? config.customCameraBackend : cameraBackendFactory;
            MetadataTransform metadataTransform2 = (i4 & 32768) != 0 ? config.metadataTransform : metadataTransform;
            Flags flags3 = (i4 & 65536) != 0 ? config.flags : flags;
            if ((i4 & 131072) != 0) {
                flags2 = flags3;
                str4 = config.sessionColorSpace;
            } else {
                str4 = str3;
                flags2 = flags3;
            }
            return config.m309copyevZ4KcE(str7, list6, list7, list8, config3, i5, map4, i6, i7, map5, list9, list10, map6, str6, cameraBackendFactory2, metadataTransform2, flags2, str4);
        }

        /* JADX INFO: renamed from: component1-Dz_R5H8, reason: not valid java name */
        public final String m303component1Dz_R5H8() {
            return this.camera;
        }

        public final Map<?, Object> component10() {
            return this.defaultParameters;
        }

        public final List<Request.Listener> component11() {
            return this.defaultListeners;
        }

        public final List<GraphStateListener> component12() {
            return this.graphStateListeners;
        }

        public final Map<?, Object> component13() {
            return this.requiredParameters;
        }

        /* JADX INFO: renamed from: component14-AKmI2lo, reason: not valid java name */
        public final String m304component14AKmI2lo() {
            return this.cameraBackendId;
        }

        public final CameraBackendFactory component15() {
            return this.customCameraBackend;
        }

        public final MetadataTransform component16() {
            return this.metadataTransform;
        }

        public final Flags component17() {
            return this.flags;
        }

        /* JADX INFO: renamed from: component18-dxVZaPA, reason: not valid java name */
        public final String m305component18dxVZaPA() {
            return this.sessionColorSpace;
        }

        public final List<CameraStream.Config> component2() {
            return this.streams;
        }

        public final List<List<CameraStream.Config>> component3() {
            return this.exclusiveStreamGroups;
        }

        public final List<InputStream.Config> component4() {
            return this.input;
        }

        public final CameraStream.Config component5() {
            return this.postviewStream;
        }

        /* JADX INFO: renamed from: component6-fGx8uWA, reason: not valid java name */
        public final int m306component6fGx8uWA() {
            return this.sessionTemplate;
        }

        public final Map<?, Object> component7() {
            return this.sessionParameters;
        }

        /* JADX INFO: renamed from: component8-2uNL3no, reason: not valid java name */
        public final int m307component82uNL3no() {
            return this.sessionMode;
        }

        /* JADX INFO: renamed from: component9-fGx8uWA, reason: not valid java name */
        public final int m308component9fGx8uWA() {
            return this.defaultTemplate;
        }

        /* JADX INFO: renamed from: copy-evZ4KcE, reason: not valid java name */
        public final Config m309copyevZ4KcE(String str, List<CameraStream.Config> list, List<? extends List<CameraStream.Config>> list2, List<InputStream.Config> list3, CameraStream.Config config, int i, Map<?, ? extends Object> map, int i2, int i3, Map<?, ? extends Object> map2, List<? extends Request.Listener> list4, List<? extends GraphStateListener> list5, Map<?, ? extends Object> map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3) {
            str.getClass();
            list.getClass();
            list2.getClass();
            map.getClass();
            map2.getClass();
            list4.getClass();
            list5.getClass();
            map3.getClass();
            metadataTransform.getClass();
            flags.getClass();
            return new Config(str, list, list2, list3, config, i, map, i2, i3, map2, list4, list5, map3, str2, cameraBackendFactory, metadataTransform, flags, str3, null);
        }

        /* JADX WARN: Code duplicated, block: B:51:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
        public boolean equals(Object obj) {
            boolean zM190equalsimpl0;
            boolean zM198equalsimpl0;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Config)) {
                return false;
            }
            Config config = (Config) obj;
            if (!CameraId.m354equalsimpl0(this.camera, config.camera) || !aa4.e(this.streams, config.streams) || !aa4.e(this.exclusiveStreamGroups, config.exclusiveStreamGroups) || !aa4.e(this.input, config.input) || !aa4.e(this.postviewStream, config.postviewStream) || !RequestTemplate.m649equalsimpl0(this.sessionTemplate, config.sessionTemplate) || !aa4.e(this.sessionParameters, config.sessionParameters) || !OperatingMode.m335equalsimpl0(this.sessionMode, config.sessionMode) || !RequestTemplate.m649equalsimpl0(this.defaultTemplate, config.defaultTemplate) || !aa4.e(this.defaultParameters, config.defaultParameters) || !aa4.e(this.defaultListeners, config.defaultListeners) || !aa4.e(this.graphStateListeners, config.graphStateListeners) || !aa4.e(this.requiredParameters, config.requiredParameters)) {
                return false;
            }
            String str = this.cameraBackendId;
            String str2 = config.cameraBackendId;
            if (str == null) {
                if (str2 == null) {
                    zM190equalsimpl0 = true;
                } else {
                    zM190equalsimpl0 = false;
                }
            } else if (str2 == null) {
                zM190equalsimpl0 = false;
            } else {
                zM190equalsimpl0 = CameraBackendId.m190equalsimpl0(str, str2);
            }
            if (!zM190equalsimpl0 || !aa4.e(this.customCameraBackend, config.customCameraBackend) || !aa4.e(this.metadataTransform, config.metadataTransform) || !aa4.e(this.flags, config.flags)) {
                return false;
            }
            String str3 = this.sessionColorSpace;
            String str4 = config.sessionColorSpace;
            if (str3 == null) {
                if (str4 == null) {
                    zM198equalsimpl0 = true;
                } else {
                    zM198equalsimpl0 = false;
                }
            } else if (str4 == null) {
                zM198equalsimpl0 = false;
            } else {
                zM198equalsimpl0 = CameraColorSpace.m198equalsimpl0(str3, str4);
            }
            return zM198equalsimpl0;
        }

        /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
        public final String m310getCameraDz_R5H8() {
            return this.camera;
        }

        /* JADX INFO: renamed from: getCameraBackendId-AKmI2lo, reason: not valid java name */
        public final String m311getCameraBackendIdAKmI2lo() {
            return this.cameraBackendId;
        }

        public final ConcurrentCameraGraphs getConcurrentCameraGraphs$camera_camera2_pipe() {
            return this.concurrentCameraGraphs;
        }

        public final CameraBackendFactory getCustomCameraBackend() {
            return this.customCameraBackend;
        }

        public final List<Request.Listener> getDefaultListeners() {
            return this.defaultListeners;
        }

        public final Map<?, Object> getDefaultParameters() {
            return this.defaultParameters;
        }

        /* JADX INFO: renamed from: getDefaultTemplate-fGx8uWA, reason: not valid java name */
        public final int m312getDefaultTemplatefGx8uWA() {
            return this.defaultTemplate;
        }

        public final List<List<CameraStream.Config>> getExclusiveStreamGroups() {
            return this.exclusiveStreamGroups;
        }

        public final Flags getFlags() {
            return this.flags;
        }

        public final List<GraphStateListener> getGraphStateListeners() {
            return this.graphStateListeners;
        }

        public final List<InputStream.Config> getInput() {
            return this.input;
        }

        public final MetadataTransform getMetadataTransform() {
            return this.metadataTransform;
        }

        public final CameraStream.Config getPostviewStream() {
            return this.postviewStream;
        }

        public final Map<?, Object> getRequiredParameters() {
            return this.requiredParameters;
        }

        /* JADX INFO: renamed from: getSessionColorSpace-dxVZaPA, reason: not valid java name */
        public final String m313getSessionColorSpacedxVZaPA() {
            return this.sessionColorSpace;
        }

        /* JADX INFO: renamed from: getSessionMode-2uNL3no, reason: not valid java name */
        public final int m314getSessionMode2uNL3no() {
            return this.sessionMode;
        }

        public final Map<?, Object> getSessionParameters() {
            return this.sessionParameters;
        }

        /* JADX INFO: renamed from: getSessionTemplate-fGx8uWA, reason: not valid java name */
        public final int m315getSessionTemplatefGx8uWA() {
            return this.sessionTemplate;
        }

        public final List<CameraStream.Config> getStreams() {
            return this.streams;
        }

        public int hashCode() {
            int iB = e2.b(this.exclusiveStreamGroups, e2.b(this.streams, CameraId.m355hashCodeimpl(this.camera) * 31, 31), 31);
            List<InputStream.Config> list = this.input;
            int iHashCode = (iB + (list == null ? 0 : list.hashCode())) * 31;
            CameraStream.Config config = this.postviewStream;
            int iC = k.c(this.requiredParameters, e2.b(this.graphStateListeners, e2.b(this.defaultListeners, k.c(this.defaultParameters, (RequestTemplate.m651hashCodeimpl(this.defaultTemplate) + ((OperatingMode.m336hashCodeimpl(this.sessionMode) + k.c(this.sessionParameters, (RequestTemplate.m651hashCodeimpl(this.sessionTemplate) + ((iHashCode + (config == null ? 0 : config.hashCode())) * 31)) * 31, 31)) * 31)) * 31, 31), 31), 31), 31);
            String str = this.cameraBackendId;
            int iM191hashCodeimpl = (iC + (str == null ? 0 : CameraBackendId.m191hashCodeimpl(str))) * 31;
            CameraBackendFactory cameraBackendFactory = this.customCameraBackend;
            int iHashCode2 = (this.flags.hashCode() + ((this.metadataTransform.hashCode() + ((iM191hashCodeimpl + (cameraBackendFactory == null ? 0 : cameraBackendFactory.hashCode())) * 31)) * 31)) * 31;
            String str2 = this.sessionColorSpace;
            return iHashCode2 + (str2 != null ? CameraColorSpace.m200hashCodeimpl(str2) : 0);
        }

        public final void setConcurrentCameraGraphs$camera_camera2_pipe(ConcurrentCameraGraphs concurrentCameraGraphs) {
            this.concurrentCameraGraphs = concurrentCameraGraphs;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Config(camera=");
            sb.append((Object) CameraId.m357toStringimpl(this.camera));
            sb.append(", streams=");
            sb.append(this.streams);
            sb.append(", exclusiveStreamGroups=");
            sb.append(this.exclusiveStreamGroups);
            sb.append(", input=");
            sb.append(this.input);
            sb.append(", postviewStream=");
            sb.append(this.postviewStream);
            sb.append(", sessionTemplate=");
            sb.append((Object) RequestTemplate.m652toStringimpl(this.sessionTemplate));
            sb.append(", sessionParameters=");
            sb.append(this.sessionParameters);
            sb.append(", sessionMode=");
            sb.append((Object) OperatingMode.m337toStringimpl(this.sessionMode));
            sb.append(", defaultTemplate=");
            sb.append((Object) RequestTemplate.m652toStringimpl(this.defaultTemplate));
            sb.append(", defaultParameters=");
            sb.append(this.defaultParameters);
            sb.append(", defaultListeners=");
            sb.append(this.defaultListeners);
            sb.append(", graphStateListeners=");
            sb.append(this.graphStateListeners);
            sb.append(", requiredParameters=");
            sb.append(this.requiredParameters);
            sb.append(", cameraBackendId=");
            String str = this.cameraBackendId;
            sb.append((Object) (str == null ? "null" : CameraBackendId.m192toStringimpl(str)));
            sb.append(", customCameraBackend=");
            sb.append(this.customCameraBackend);
            sb.append(", metadataTransform=");
            sb.append(this.metadataTransform);
            sb.append(", flags=");
            sb.append(this.flags);
            sb.append(", sessionColorSpace=");
            String str2 = this.sessionColorSpace;
            sb.append((Object) (str2 != null ? CameraColorSpace.m202toStringimpl(str2) : "null"));
            sb.append(')');
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Config(String str, List<CameraStream.Config> list, List<? extends List<CameraStream.Config>> list2, List<InputStream.Config> list3, CameraStream.Config config, int i, Map<?, ? extends Object> map, int i2, int i3, Map<?, ? extends Object> map2, List<? extends Request.Listener> list4, List<? extends GraphStateListener> list5, Map<?, ? extends Object> map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3) {
            str.getClass();
            list.getClass();
            list2.getClass();
            map.getClass();
            map2.getClass();
            list4.getClass();
            list5.getClass();
            map3.getClass();
            metadataTransform.getClass();
            flags.getClass();
            this.camera = str;
            this.streams = list;
            this.exclusiveStreamGroups = list2;
            this.input = list3;
            this.postviewStream = config;
            this.sessionTemplate = i;
            this.sessionParameters = map;
            this.sessionMode = i2;
            this.defaultTemplate = i3;
            this.defaultParameters = map2;
            this.defaultListeners = list4;
            this.graphStateListeners = list5;
            this.requiredParameters = map3;
            this.cameraBackendId = str2;
            this.customCameraBackend = cameraBackendFactory;
            this.metadataTransform = metadataTransform;
            this.flags = flags;
            this.sessionColorSpace = str3;
            if (str2 == null || cameraBackendFactory == null) {
                return;
            }
            ah.f("Setting both cameraBackendId and customCameraBackend is not supported.");
            throw null;
        }

        public /* synthetic */ Config(String str, List list, List list2, List list3, CameraStream.Config config, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, jh2 jh2Var) {
            this(str, list, list2, list3, config, i, map, i2, i3, map2, list4, list5, map3, str2, cameraBackendFactory, metadataTransform, flags, str3);
        }
    }
}
