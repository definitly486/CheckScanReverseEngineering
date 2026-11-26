package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.pipe.compat.Api33Compat;
import defpackage.aa4;
import defpackage.ah;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qg;
import defpackage.qz0;
import defpackage.rg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface OutputStream {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean isValidForHighSpeedOperatingMode(OutputStream outputStream) {
            return OutputStream.super.isValidForHighSpeedOperatingMode();
        }
    }

    /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
    String mo524getCameraDz_R5H8();

    /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: not valid java name */
    DynamicRangeProfile mo525getDynamicRangeProfileOoVcG5w();

    /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name */
    int mo526getFormat8FPWQzE();

    /* JADX INFO: renamed from: getId-4LaLFng, reason: not valid java name */
    int mo527getId4LaLFng();

    /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: not valid java name */
    MirrorMode mo528getMirrorModedO1_9xk();

    OutputType getOutputType();

    Size getSize();

    CameraStream getStream();

    /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: not valid java name */
    StreamUseCase mo529getStreamUseCase8x2ez34();

    /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: not valid java name */
    StreamUseHint mo530getStreamUseHintHIPxoCc();

    /* JADX INFO: renamed from: getTimestampBase-pcPfPbY, reason: not valid java name */
    TimestampBase mo531getTimestampBasepcPfPbY();

    default boolean isValidForHighSpeedOperatingMode() {
        if (mo529getStreamUseCase8x2ez34() == null) {
            return true;
        }
        StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez34 = mo529getStreamUseCase8x2ez34();
        StreamUseCase.Companion companion = StreamUseCase.Companion;
        if (streamUseCaseMo529getStreamUseCase8x2ez34 == null ? false : StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez34.m589unboximpl(), companion.m591getDEFAULTvrKr8v8())) {
            return true;
        }
        StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez35 = mo529getStreamUseCase8x2ez34();
        if (streamUseCaseMo529getStreamUseCase8x2ez35 == null ? false : StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez35.m589unboximpl(), companion.m592getPREVIEWvrKr8v8())) {
            return true;
        }
        StreamUseCase streamUseCaseMo529getStreamUseCase8x2ez36 = mo529getStreamUseCase8x2ez34();
        if ((streamUseCaseMo529getStreamUseCase8x2ez36 == null ? false : StreamUseCase.m586equalsimpl0(streamUseCaseMo529getStreamUseCase8x2ez36.m589unboximpl(), companion.m596getVIDEO_RECORDvrKr8v8())) || mo530getStreamUseHintHIPxoCc() == null) {
            return true;
        }
        StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc = mo530getStreamUseHintHIPxoCc();
        StreamUseHint.Companion companion2 = StreamUseHint.Companion;
        if (streamUseHintMo530getStreamUseHintHIPxoCc == null ? false : StreamUseHint.m600equalsimpl0(streamUseHintMo530getStreamUseHintHIPxoCc.m603unboximpl(), companion2.m604getDEFAULT4VYZOf8())) {
            return true;
        }
        StreamUseHint streamUseHintMo530getStreamUseHintHIPxoCc2 = mo530getStreamUseHintHIPxoCc();
        return streamUseHintMo530getStreamUseHintHIPxoCc2 == null ? false : StreamUseHint.m600equalsimpl0(streamUseHintMo530getStreamUseHintHIPxoCc2.m603unboximpl(), companion2.m605getVIDEO_RECORD4VYZOf8());
    }

    public static abstract class Config {
        public static final Companion Companion = new Companion(null);
        private final String camera;
        private final DynamicRangeProfile dynamicRangeProfile;
        private final int format;
        private final MirrorMode mirrorMode;
        private final List<SensorPixelMode> sensorPixelModes;
        private final Size size;
        private final StreamUseCase streamUseCase;
        private final StreamUseHint streamUseHint;
        private final TimestampBase timestampBase;

        private Config(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<SensorPixelMode> list) {
            size.getClass();
            list.getClass();
            this.size = size;
            this.format = i;
            this.camera = str;
            this.mirrorMode = mirrorMode;
            this.timestampBase = timestampBase;
            this.dynamicRangeProfile = dynamicRangeProfile;
            this.streamUseCase = streamUseCase;
            this.streamUseHint = streamUseHint;
            this.sensorPixelModes = list;
        }

        /* JADX INFO: renamed from: getCamera-1LO98Z0, reason: not valid java name */
        public final String m532getCamera1LO98Z0() {
            return this.camera;
        }

        /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: not valid java name */
        public final DynamicRangeProfile m533getDynamicRangeProfileOoVcG5w() {
            return this.dynamicRangeProfile;
        }

        /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name */
        public final int m534getFormat8FPWQzE() {
            return this.format;
        }

        /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: not valid java name */
        public final MirrorMode m535getMirrorModedO1_9xk() {
            return this.mirrorMode;
        }

        public final List<SensorPixelMode> getSensorPixelModes() {
            return this.sensorPixelModes;
        }

        public final Size getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: not valid java name */
        public final StreamUseCase m536getStreamUseCase8x2ez34() {
            return this.streamUseCase;
        }

        /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: not valid java name */
        public final StreamUseHint m537getStreamUseHintHIPxoCc() {
            return this.streamUseHint;
        }

        /* JADX INFO: renamed from: getTimestampBase-pcPfPbY, reason: not valid java name */
        public final TimestampBase m538getTimestampBasepcPfPbY() {
            return this.timestampBase;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Config(size=");
            sb.append(this.size);
            sb.append(", format=");
            sb.append((Object) StreamFormat.m684toStringimpl(this.format));
            sb.append(", camera=");
            String str = this.camera;
            sb.append((Object) (str == null ? "null" : CameraId.m357toStringimpl(str)));
            sb.append(", mirrorMode=");
            sb.append(this.mirrorMode);
            sb.append(", timestampBase=");
            sb.append(this.timestampBase);
            sb.append(", dynamicRangeProfile=");
            sb.append(this.dynamicRangeProfile);
            sb.append(", streamUseCase=");
            sb.append(this.streamUseCase);
            sb.append(", streamUseHint=");
            sb.append(this.streamUseHint);
            sb.append(", sensorPixelModes=");
            return qg.f(sb, this.sensorPixelModes, ')');
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX INFO: renamed from: create-vBYXiEU$default, reason: not valid java name */
            public static /* synthetic */ Config m539createvBYXiEU$default(Companion companion, Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, int i2, Object obj) {
                if ((i2 & 4) != 0) {
                    str = null;
                }
                if ((i2 & 8) != 0) {
                    outputType = OutputType.Companion.getSURFACE();
                }
                if ((i2 & 16) != 0) {
                    mirrorMode = null;
                }
                if ((i2 & 32) != 0) {
                    timestampBase = null;
                }
                if ((i2 & 64) != 0) {
                    dynamicRangeProfile = null;
                }
                if ((i2 & 128) != 0) {
                    streamUseCase = null;
                }
                if ((i2 & 256) != 0) {
                    streamUseHint = null;
                }
                if ((i2 & 512) != 0) {
                    list = kx2.b;
                }
                return companion.m541createvBYXiEU(size, i, str, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX INFO: renamed from: external-4cjX7jI$default, reason: not valid java name */
            public static /* synthetic */ Config m540external4cjX7jI$default(Companion companion, Size size, int i, String str, OutputConfiguration outputConfiguration, StreamUseHint streamUseHint, List list, int i2, Object obj) {
                if ((i2 & 4) != 0) {
                    str = null;
                }
                String str2 = str;
                if ((i2 & 32) != 0) {
                    list = kx2.b;
                }
                return companion.m542external4cjX7jI(size, i, str2, outputConfiguration, streamUseHint, list);
            }

            private final boolean isLazilyConfigurable(OutputType outputType) {
                OutputType.Companion companion = OutputType.Companion;
                if (aa4.e(outputType, companion.getSURFACE_TEXTURE()) || aa4.e(outputType, companion.getSURFACE_VIEW())) {
                    return true;
                }
                return (aa4.e(outputType, companion.getMEDIA_CODEC()) || aa4.e(outputType, companion.getMEDIA_RECORDER())) && Build.VERSION.SDK_INT >= 35;
            }

            /* JADX INFO: renamed from: create-vBYXiEU, reason: not valid java name */
            public final Config m541createvBYXiEU(Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<SensorPixelMode> list) {
                size.getClass();
                outputType.getClass();
                list.getClass();
                if (isLazilyConfigurable(outputType)) {
                    return new LazyOutputConfig(size, i, str, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list, null);
                }
                if (outputType == OutputType.Companion.getSURFACE()) {
                    return new SimpleOutputConfig(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list, null);
                }
                ah.f("Check failed.");
                return null;
            }

            /* JADX INFO: renamed from: external-4cjX7jI, reason: not valid java name */
            public final Config m542external4cjX7jI(Size size, int i, String str, OutputConfiguration outputConfiguration, StreamUseHint streamUseHint, List<SensorPixelMode> list) {
                size.getClass();
                outputConfiguration.getClass();
                list.getClass();
                return new ExternalOutputConfig(size, i, str, outputConfiguration, streamUseHint, list, null);
            }

            private Companion() {
            }
        }

        public static final class SimpleOutputConfig extends Config {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            private SimpleOutputConfig(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<SensorPixelMode> list) {
                super(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list, null);
                size.getClass();
                list.getClass();
            }

            public /* synthetic */ SimpleOutputConfig(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, jh2 jh2Var) {
                this(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
            }
        }

        public /* synthetic */ Config(Size size, int i, String str, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, jh2 jh2Var) {
            this(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
        }

        public static final class LazyOutputConfig extends Config {
            private final OutputType outputType;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            private LazyOutputConfig(Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List<SensorPixelMode> list) {
                super(size, i, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list, null);
                size.getClass();
                outputType.getClass();
                list.getClass();
                this.outputType = outputType;
            }

            public final OutputType getOutputType$camera_camera2_pipe() {
                return this.outputType;
            }

            public /* synthetic */ LazyOutputConfig(Size size, int i, String str, OutputType outputType, MirrorMode mirrorMode, TimestampBase timestampBase, DynamicRangeProfile dynamicRangeProfile, StreamUseCase streamUseCase, StreamUseHint streamUseHint, List list, jh2 jh2Var) {
                this(size, i, str, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
            }
        }

        public static final class ExternalOutputConfig extends Config {
            private final OutputConfiguration output;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            private ExternalOutputConfig(Size size, int i, String str, OutputConfiguration outputConfiguration, StreamUseHint streamUseHint, List<SensorPixelMode> list) {
                super(size, i, str, MirrorMode.m563boximpl(MirrorMode.m564constructorimpl(Api33Compat.getMirrorMode(outputConfiguration))), TimestampBase.m606boximpl(TimestampBase.m607constructorimpl(Api33Compat.getTimestampBase(outputConfiguration))), DynamicRangeProfile.m543boximpl(DynamicRangeProfile.m544constructorimpl(Api33Compat.getDynamicRangeProfile(outputConfiguration))), StreamUseCase.m583boximpl(StreamUseCase.m584constructorimpl(Api33Compat.getStreamUseCase(outputConfiguration))), streamUseHint, list, null);
                size.getClass();
                outputConfiguration.getClass();
                list.getClass();
                this.output = outputConfiguration;
            }

            public final OutputConfiguration getOutput() {
                return this.output;
            }

            public /* synthetic */ ExternalOutputConfig(Size size, int i, String str, OutputConfiguration outputConfiguration, StreamUseHint streamUseHint, List list, jh2 jh2Var) {
                this(size, i, str, outputConfiguration, streamUseHint, list);
            }
        }
    }

    public static final class DynamicRangeProfile {
        private final long value;
        public static final Companion Companion = new Companion(null);
        private static final long STANDARD = m544constructorimpl(1);
        private static final long HLG10 = m544constructorimpl(2);
        private static final long HDR10 = m544constructorimpl(4);
        private static final long HDR10_PLUS = m544constructorimpl(8);
        private static final long DOLBY_VISION_10B_HDR_REF = m544constructorimpl(16);
        private static final long DOLBY_VISION_10B_HDR_REF_PO = m544constructorimpl(32);
        private static final long DOLBY_VISION_10B_HDR_OEM = m544constructorimpl(64);
        private static final long DOLBY_VISION_10B_HDR_OEM_PO = m544constructorimpl(128);
        private static final long DOLBY_VISION_8B_HDR_REF = m544constructorimpl(256);
        private static final long DOLBY_VISION_8B_HDR_REF_PO = m544constructorimpl(512);
        private static final long DOLBY_VISION_8B_HDR_OEM = m544constructorimpl(1024);
        private static final long DOLBY_VISION_8B_HDR_OEM_PO = m544constructorimpl(2048);
        private static final long PUBLIC_MAX = m544constructorimpl(4096);

        private /* synthetic */ DynamicRangeProfile(long j) {
            this.value = j;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ DynamicRangeProfile m543boximpl(long j) {
            return new DynamicRangeProfile(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m544constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m545equalsimpl(long j, Object obj) {
            return (obj instanceof DynamicRangeProfile) && j == ((DynamicRangeProfile) obj).m549unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m546equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m547hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m548toStringimpl(long j) {
            return rg.g("DynamicRangeProfile(value=", j, ')');
        }

        public boolean equals(Object obj) {
            return m545equalsimpl(this.value, obj);
        }

        public final long getValue() {
            return this.value;
        }

        public int hashCode() {
            return m547hashCodeimpl(this.value);
        }

        public String toString() {
            return m548toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m549unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_10B_HDR_OEM-fFAQAUE, reason: not valid java name */
            public final long m550getDOLBY_VISION_10B_HDR_OEMfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_10B_HDR_OEM;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_10B_HDR_OEM_PO-fFAQAUE, reason: not valid java name */
            public final long m551getDOLBY_VISION_10B_HDR_OEM_POfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_10B_HDR_OEM_PO;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_10B_HDR_REF-fFAQAUE, reason: not valid java name */
            public final long m552getDOLBY_VISION_10B_HDR_REFfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_10B_HDR_REF;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_10B_HDR_REF_PO-fFAQAUE, reason: not valid java name */
            public final long m553getDOLBY_VISION_10B_HDR_REF_POfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_10B_HDR_REF_PO;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_8B_HDR_OEM-fFAQAUE, reason: not valid java name */
            public final long m554getDOLBY_VISION_8B_HDR_OEMfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_8B_HDR_OEM;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_8B_HDR_OEM_PO-fFAQAUE, reason: not valid java name */
            public final long m555getDOLBY_VISION_8B_HDR_OEM_POfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_8B_HDR_OEM_PO;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_8B_HDR_REF-fFAQAUE, reason: not valid java name */
            public final long m556getDOLBY_VISION_8B_HDR_REFfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_8B_HDR_REF;
            }

            /* JADX INFO: renamed from: getDOLBY_VISION_8B_HDR_REF_PO-fFAQAUE, reason: not valid java name */
            public final long m557getDOLBY_VISION_8B_HDR_REF_POfFAQAUE() {
                return DynamicRangeProfile.DOLBY_VISION_8B_HDR_REF_PO;
            }

            /* JADX INFO: renamed from: getHDR10-fFAQAUE, reason: not valid java name */
            public final long m558getHDR10fFAQAUE() {
                return DynamicRangeProfile.HDR10;
            }

            /* JADX INFO: renamed from: getHDR10_PLUS-fFAQAUE, reason: not valid java name */
            public final long m559getHDR10_PLUSfFAQAUE() {
                return DynamicRangeProfile.HDR10_PLUS;
            }

            /* JADX INFO: renamed from: getHLG10-fFAQAUE, reason: not valid java name */
            public final long m560getHLG10fFAQAUE() {
                return DynamicRangeProfile.HLG10;
            }

            /* JADX INFO: renamed from: getPUBLIC_MAX-fFAQAUE, reason: not valid java name */
            public final long m561getPUBLIC_MAXfFAQAUE() {
                return DynamicRangeProfile.PUBLIC_MAX;
            }

            /* JADX INFO: renamed from: getSTANDARD-fFAQAUE, reason: not valid java name */
            public final long m562getSTANDARDfFAQAUE() {
                return DynamicRangeProfile.STANDARD;
            }

            private Companion() {
            }
        }
    }

    public static final class MirrorMode {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int MIRROR_MODE_AUTO = m564constructorimpl(0);
        private static final int MIRROR_MODE_NONE = m564constructorimpl(1);
        private static final int MIRROR_MODE_H = m564constructorimpl(2);
        private static final int MIRROR_MODE_V = m564constructorimpl(3);

        private /* synthetic */ MirrorMode(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ MirrorMode m563boximpl(int i) {
            return new MirrorMode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m564constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m565equalsimpl(int i, Object obj) {
            return (obj instanceof MirrorMode) && i == ((MirrorMode) obj).m569unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m566equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m567hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m568toStringimpl(int i) {
            return qz0.d("MirrorMode(value=", i, ')');
        }

        public boolean equals(Object obj) {
            return m565equalsimpl(this.value, obj);
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return m567hashCodeimpl(this.value);
        }

        public String toString() {
            return m568toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m569unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getMIRROR_MODE_AUTO-DrUKqn0, reason: not valid java name */
            public final int m570getMIRROR_MODE_AUTODrUKqn0() {
                return MirrorMode.MIRROR_MODE_AUTO;
            }

            /* JADX INFO: renamed from: getMIRROR_MODE_H-DrUKqn0, reason: not valid java name */
            public final int m571getMIRROR_MODE_HDrUKqn0() {
                return MirrorMode.MIRROR_MODE_H;
            }

            /* JADX INFO: renamed from: getMIRROR_MODE_NONE-DrUKqn0, reason: not valid java name */
            public final int m572getMIRROR_MODE_NONEDrUKqn0() {
                return MirrorMode.MIRROR_MODE_NONE;
            }

            /* JADX INFO: renamed from: getMIRROR_MODE_V-DrUKqn0, reason: not valid java name */
            public final int m573getMIRROR_MODE_VDrUKqn0() {
                return MirrorMode.MIRROR_MODE_V;
            }

            private Companion() {
            }
        }
    }

    public static final class OutputType {
        public static final Companion Companion = new Companion(null);
        private static final OutputType SURFACE = new OutputType();
        private static final OutputType SURFACE_VIEW = new OutputType();
        private static final OutputType SURFACE_TEXTURE = new OutputType();
        private static final OutputType SURFACE_DEFERRED_FOR_QUERY_ONLY = new OutputType();
        private static final OutputType MEDIA_CODEC = new OutputType();
        private static final OutputType MEDIA_RECORDER = new OutputType();

        private OutputType() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final OutputType getMEDIA_CODEC() {
                return OutputType.MEDIA_CODEC;
            }

            public final OutputType getMEDIA_RECORDER() {
                return OutputType.MEDIA_RECORDER;
            }

            public final OutputType getSURFACE() {
                return OutputType.SURFACE;
            }

            public final OutputType getSURFACE_DEFERRED_FOR_QUERY_ONLY$camera_camera2_pipe() {
                return OutputType.SURFACE_DEFERRED_FOR_QUERY_ONLY;
            }

            public final OutputType getSURFACE_TEXTURE() {
                return OutputType.SURFACE_TEXTURE;
            }

            public final OutputType getSURFACE_VIEW() {
                return OutputType.SURFACE_VIEW;
            }

            private Companion() {
            }
        }
    }

    public static final class SensorPixelMode {
        public static final Companion Companion = new Companion(null);
        private static final int DEFAULT = m575constructorimpl(0);
        private static final int MAXIMUM_RESOLUTION = m575constructorimpl(1);
        private final int value;

        private /* synthetic */ SensorPixelMode(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ SensorPixelMode m574boximpl(int i) {
            return new SensorPixelMode(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m575constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m576equalsimpl(int i, Object obj) {
            return (obj instanceof SensorPixelMode) && i == ((SensorPixelMode) obj).m580unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m577equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m578hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m579toStringimpl(int i) {
            return qz0.d("SensorPixelMode(value=", i, ')');
        }

        public boolean equals(Object obj) {
            return m576equalsimpl(this.value, obj);
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return m578hashCodeimpl(this.value);
        }

        public String toString() {
            return m579toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m580unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getDEFAULT-ApWyzMw, reason: not valid java name */
            public final int m581getDEFAULTApWyzMw() {
                return SensorPixelMode.DEFAULT;
            }

            /* JADX INFO: renamed from: getMAXIMUM_RESOLUTION-ApWyzMw, reason: not valid java name */
            public final int m582getMAXIMUM_RESOLUTIONApWyzMw() {
                return SensorPixelMode.MAXIMUM_RESOLUTION;
            }

            private Companion() {
            }
        }
    }

    public static final class StreamUseCase {
        private final long value;
        public static final Companion Companion = new Companion(null);
        private static final long DEFAULT = m584constructorimpl(0);
        private static final long PREVIEW = m584constructorimpl(1);
        private static final long STILL_CAPTURE = m584constructorimpl(2);
        private static final long VIDEO_RECORD = m584constructorimpl(3);
        private static final long PREVIEW_VIDEO_STILL = m584constructorimpl(4);
        private static final long VIDEO_CALL = m584constructorimpl(5);
        private static final long CROPPED_RAW = m584constructorimpl(6);

        private /* synthetic */ StreamUseCase(long j) {
            this.value = j;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ StreamUseCase m583boximpl(long j) {
            return new StreamUseCase(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m584constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m585equalsimpl(long j, Object obj) {
            return (obj instanceof StreamUseCase) && j == ((StreamUseCase) obj).m589unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m586equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m587hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m588toStringimpl(long j) {
            return rg.g("StreamUseCase(value=", j, ')');
        }

        public boolean equals(Object obj) {
            return m585equalsimpl(this.value, obj);
        }

        public final long getValue() {
            return this.value;
        }

        public int hashCode() {
            return m587hashCodeimpl(this.value);
        }

        public String toString() {
            return m588toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m589unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getCROPPED_RAW-vrKr8v8, reason: not valid java name */
            public final long m590getCROPPED_RAWvrKr8v8() {
                return StreamUseCase.CROPPED_RAW;
            }

            /* JADX INFO: renamed from: getDEFAULT-vrKr8v8, reason: not valid java name */
            public final long m591getDEFAULTvrKr8v8() {
                return StreamUseCase.DEFAULT;
            }

            /* JADX INFO: renamed from: getPREVIEW-vrKr8v8, reason: not valid java name */
            public final long m592getPREVIEWvrKr8v8() {
                return StreamUseCase.PREVIEW;
            }

            /* JADX INFO: renamed from: getPREVIEW_VIDEO_STILL-vrKr8v8, reason: not valid java name */
            public final long m593getPREVIEW_VIDEO_STILLvrKr8v8() {
                return StreamUseCase.PREVIEW_VIDEO_STILL;
            }

            /* JADX INFO: renamed from: getSTILL_CAPTURE-vrKr8v8, reason: not valid java name */
            public final long m594getSTILL_CAPTUREvrKr8v8() {
                return StreamUseCase.STILL_CAPTURE;
            }

            /* JADX INFO: renamed from: getVIDEO_CALL-vrKr8v8, reason: not valid java name */
            public final long m595getVIDEO_CALLvrKr8v8() {
                return StreamUseCase.VIDEO_CALL;
            }

            /* JADX INFO: renamed from: getVIDEO_RECORD-vrKr8v8, reason: not valid java name */
            public final long m596getVIDEO_RECORDvrKr8v8() {
                return StreamUseCase.VIDEO_RECORD;
            }

            private Companion() {
            }
        }
    }

    public static final class StreamUseHint {
        public static final Companion Companion = new Companion(null);
        private static final long DEFAULT = m598constructorimpl(0);
        private static final long VIDEO_RECORD = m598constructorimpl(1);
        private final long value;

        private /* synthetic */ StreamUseHint(long j) {
            this.value = j;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ StreamUseHint m597boximpl(long j) {
            return new StreamUseHint(j);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static long m598constructorimpl(long j) {
            return j;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m599equalsimpl(long j, Object obj) {
            return (obj instanceof StreamUseHint) && j == ((StreamUseHint) obj).m603unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m600equalsimpl0(long j, long j2) {
            return j == j2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m601hashCodeimpl(long j) {
            return Long.hashCode(j);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m602toStringimpl(long j) {
            return rg.g("StreamUseHint(value=", j, ')');
        }

        public boolean equals(Object obj) {
            return m599equalsimpl(this.value, obj);
        }

        public final long getValue() {
            return this.value;
        }

        public int hashCode() {
            return m601hashCodeimpl(this.value);
        }

        public String toString() {
            return m602toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ long m603unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getDEFAULT-4VYZOf8, reason: not valid java name */
            public final long m604getDEFAULT4VYZOf8() {
                return StreamUseHint.DEFAULT;
            }

            /* JADX INFO: renamed from: getVIDEO_RECORD-4VYZOf8, reason: not valid java name */
            public final long m605getVIDEO_RECORD4VYZOf8() {
                return StreamUseHint.VIDEO_RECORD;
            }

            private Companion() {
            }
        }
    }

    public static final class TimestampBase {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int TIMESTAMP_BASE_DEFAULT = m607constructorimpl(0);
        private static final int TIMESTAMP_BASE_SENSOR = m607constructorimpl(1);
        private static final int TIMESTAMP_BASE_MONOTONIC = m607constructorimpl(2);
        private static final int TIMESTAMP_BASE_REALTIME = m607constructorimpl(3);
        private static final int TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED = m607constructorimpl(4);

        private /* synthetic */ TimestampBase(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ TimestampBase m606boximpl(int i) {
            return new TimestampBase(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m607constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m608equalsimpl(int i, Object obj) {
            return (obj instanceof TimestampBase) && i == ((TimestampBase) obj).m612unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m609equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m610hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m611toStringimpl(int i) {
            return qz0.d("TimestampBase(value=", i, ')');
        }

        public boolean equals(Object obj) {
            return m608equalsimpl(this.value, obj);
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return m610hashCodeimpl(this.value);
        }

        public String toString() {
            return m611toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m612unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getTIMESTAMP_BASE_CHOREOGRAPHER_SYNCED-6HVI0MA, reason: not valid java name */
            public final int m613getTIMESTAMP_BASE_CHOREOGRAPHER_SYNCED6HVI0MA() {
                return TimestampBase.TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED;
            }

            /* JADX INFO: renamed from: getTIMESTAMP_BASE_DEFAULT-6HVI0MA, reason: not valid java name */
            public final int m614getTIMESTAMP_BASE_DEFAULT6HVI0MA() {
                return TimestampBase.TIMESTAMP_BASE_DEFAULT;
            }

            /* JADX INFO: renamed from: getTIMESTAMP_BASE_MONOTONIC-6HVI0MA, reason: not valid java name */
            public final int m615getTIMESTAMP_BASE_MONOTONIC6HVI0MA() {
                return TimestampBase.TIMESTAMP_BASE_MONOTONIC;
            }

            /* JADX INFO: renamed from: getTIMESTAMP_BASE_REALTIME-6HVI0MA, reason: not valid java name */
            public final int m616getTIMESTAMP_BASE_REALTIME6HVI0MA() {
                return TimestampBase.TIMESTAMP_BASE_REALTIME;
            }

            /* JADX INFO: renamed from: getTIMESTAMP_BASE_SENSOR-6HVI0MA, reason: not valid java name */
            public final int m617getTIMESTAMP_BASE_SENSOR6HVI0MA() {
                return TimestampBase.TIMESTAMP_BASE_SENSOR;
            }

            private Companion() {
            }
        }
    }
}
