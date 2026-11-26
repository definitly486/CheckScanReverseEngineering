package androidx.camera.camera2.pipe;

import androidx.core.view.InputDeviceCompat;
import defpackage.ga1;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class StreamFormat {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int UNKNOWN = m678constructorimpl(0);
    private static final int PRIVATE = m678constructorimpl(34);
    private static final int DEPTH16 = m678constructorimpl(1144402265);
    private static final int DEPTH_JPEG = m678constructorimpl(1768253795);
    private static final int DEPTH_POINT_CLOUD = m678constructorimpl(257);
    private static final int FLEX_RGB_888 = m678constructorimpl(41);
    private static final int FLEX_RGBA_8888 = m678constructorimpl(42);
    private static final int HEIC = m678constructorimpl(1212500294);
    private static final int JPEG = m678constructorimpl(256);
    private static final int JPEG_R = m678constructorimpl(4101);
    private static final int NV16 = m678constructorimpl(16);
    private static final int NV21 = m678constructorimpl(17);
    private static final int RAW10 = m678constructorimpl(37);
    private static final int RAW12 = m678constructorimpl(38);
    private static final int RAW_DEPTH = m678constructorimpl(InputDeviceCompat.SOURCE_TOUCHSCREEN);
    private static final int RAW_PRIVATE = m678constructorimpl(36);
    private static final int RAW_SENSOR = m678constructorimpl(32);
    private static final int RGB_565 = m678constructorimpl(4);
    private static final int Y12 = m678constructorimpl(842094169);
    private static final int Y16 = m678constructorimpl(540422489);
    private static final int Y8 = m678constructorimpl(538982489);
    private static final int YCBCR_P010 = m678constructorimpl(54);
    private static final int YUV_420_888 = m678constructorimpl(35);
    private static final int YUV_422_888 = m678constructorimpl(39);
    private static final int YUV_444_888 = m678constructorimpl(40);
    private static final int YUY2 = m678constructorimpl(20);
    private static final int YV12 = m678constructorimpl(842094169);

    private /* synthetic */ StreamFormat(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ StreamFormat m677boximpl(int i) {
        return new StreamFormat(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m678constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m679equalsimpl(int i, Object obj) {
        return (obj instanceof StreamFormat) && i == ((StreamFormat) obj).m685unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m680equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: getBitsPerPixel-impl, reason: not valid java name */
    public static final int m681getBitsPerPixelimpl(int i) {
        if (m680equalsimpl0(i, DEPTH16)) {
            return 16;
        }
        if (m680equalsimpl0(i, FLEX_RGB_888)) {
            return 24;
        }
        if (m680equalsimpl0(i, FLEX_RGBA_8888)) {
            return 32;
        }
        if (m680equalsimpl0(i, NV16)) {
            return 16;
        }
        if (m680equalsimpl0(i, NV21)) {
            return 12;
        }
        if (m680equalsimpl0(i, RAW10)) {
            return 10;
        }
        if (m680equalsimpl0(i, RAW12)) {
            return 12;
        }
        if (m680equalsimpl0(i, RAW_DEPTH) || m680equalsimpl0(i, RAW_SENSOR) || m680equalsimpl0(i, RGB_565)) {
            return 16;
        }
        if (m680equalsimpl0(i, Y12)) {
            return 12;
        }
        if (m680equalsimpl0(i, Y16)) {
            return 16;
        }
        if (m680equalsimpl0(i, Y8)) {
            return 8;
        }
        if (m680equalsimpl0(i, YCBCR_P010)) {
            return 16;
        }
        if (m680equalsimpl0(i, YUV_420_888)) {
            return 12;
        }
        if (m680equalsimpl0(i, YUV_422_888)) {
            return 16;
        }
        if (m680equalsimpl0(i, YUV_444_888)) {
            return 24;
        }
        if (m680equalsimpl0(i, YUY2)) {
            return 16;
        }
        return m680equalsimpl0(i, YV12) ? 12 : -1;
    }

    /* JADX INFO: renamed from: getName-impl, reason: not valid java name */
    public static final String m682getNameimpl(int i) {
        if (m680equalsimpl0(i, UNKNOWN)) {
            return "UNKNOWN";
        }
        if (m680equalsimpl0(i, PRIVATE)) {
            return "PRIVATE";
        }
        if (m680equalsimpl0(i, DEPTH16)) {
            return "DEPTH16";
        }
        if (m680equalsimpl0(i, DEPTH_JPEG)) {
            return "DEPTH_JPEG";
        }
        if (m680equalsimpl0(i, DEPTH_POINT_CLOUD)) {
            return "DEPTH_POINT_CLOUD";
        }
        if (m680equalsimpl0(i, FLEX_RGB_888)) {
            return "FLEX_RGB_888";
        }
        if (m680equalsimpl0(i, FLEX_RGBA_8888)) {
            return "FLEX_RGBA_8888";
        }
        if (m680equalsimpl0(i, HEIC)) {
            return "HEIC";
        }
        if (m680equalsimpl0(i, JPEG)) {
            return "JPEG";
        }
        if (m680equalsimpl0(i, JPEG_R)) {
            return "JPEG_R";
        }
        if (m680equalsimpl0(i, NV16)) {
            return "NV16";
        }
        if (m680equalsimpl0(i, NV21)) {
            return "NV21";
        }
        if (m680equalsimpl0(i, RAW10)) {
            return "RAW10";
        }
        if (m680equalsimpl0(i, RAW12)) {
            return "RAW12";
        }
        if (m680equalsimpl0(i, RAW_DEPTH)) {
            return "RAW_DEPTH";
        }
        if (m680equalsimpl0(i, RAW_PRIVATE)) {
            return "RAW_PRIVATE";
        }
        if (m680equalsimpl0(i, RAW_SENSOR)) {
            return "RAW_SENSOR";
        }
        if (m680equalsimpl0(i, RGB_565)) {
            return "RGB_565";
        }
        if (m680equalsimpl0(i, Y12)) {
            return "Y12";
        }
        if (m680equalsimpl0(i, Y16)) {
            return "Y16";
        }
        if (m680equalsimpl0(i, Y8)) {
            return "Y8";
        }
        if (m680equalsimpl0(i, YCBCR_P010)) {
            return "YCBCR_P010";
        }
        if (m680equalsimpl0(i, YUV_420_888)) {
            return "YUV_420_888";
        }
        if (m680equalsimpl0(i, YUV_422_888)) {
            return "YUV_422_888";
        }
        if (m680equalsimpl0(i, YUV_444_888)) {
            return "YUV_444_888";
        }
        if (m680equalsimpl0(i, YUY2)) {
            return "YUY2";
        }
        if (m680equalsimpl0(i, YV12)) {
            return "YV12";
        }
        StringBuilder sb = new StringBuilder("UNKNOWN(");
        ga1.b(16);
        String string = Integer.toString(i, 16);
        string.getClass();
        sb.append(string);
        sb.append(')');
        return sb.toString();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m683hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m684toStringimpl(int i) {
        return "StreamFormat(" + m682getNameimpl(i) + ')';
    }

    public boolean equals(Object obj) {
        return m679equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m683hashCodeimpl(this.value);
    }

    public String toString() {
        return m684toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m685unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getDEPTH16-8FPWQzE, reason: not valid java name */
        public final int m686getDEPTH168FPWQzE() {
            return StreamFormat.DEPTH16;
        }

        /* JADX INFO: renamed from: getDEPTH_JPEG-8FPWQzE, reason: not valid java name */
        public final int m687getDEPTH_JPEG8FPWQzE() {
            return StreamFormat.DEPTH_JPEG;
        }

        /* JADX INFO: renamed from: getDEPTH_POINT_CLOUD-8FPWQzE, reason: not valid java name */
        public final int m688getDEPTH_POINT_CLOUD8FPWQzE() {
            return StreamFormat.DEPTH_POINT_CLOUD;
        }

        /* JADX INFO: renamed from: getFLEX_RGBA_8888-8FPWQzE, reason: not valid java name */
        public final int m689getFLEX_RGBA_88888FPWQzE() {
            return StreamFormat.FLEX_RGBA_8888;
        }

        /* JADX INFO: renamed from: getFLEX_RGB_888-8FPWQzE, reason: not valid java name */
        public final int m690getFLEX_RGB_8888FPWQzE() {
            return StreamFormat.FLEX_RGB_888;
        }

        /* JADX INFO: renamed from: getHEIC-8FPWQzE, reason: not valid java name */
        public final int m691getHEIC8FPWQzE() {
            return StreamFormat.HEIC;
        }

        /* JADX INFO: renamed from: getJPEG-8FPWQzE, reason: not valid java name */
        public final int m692getJPEG8FPWQzE() {
            return StreamFormat.JPEG;
        }

        /* JADX INFO: renamed from: getJPEG_R-8FPWQzE, reason: not valid java name */
        public final int m693getJPEG_R8FPWQzE() {
            return StreamFormat.JPEG_R;
        }

        /* JADX INFO: renamed from: getNV16-8FPWQzE, reason: not valid java name */
        public final int m694getNV168FPWQzE() {
            return StreamFormat.NV16;
        }

        /* JADX INFO: renamed from: getNV21-8FPWQzE, reason: not valid java name */
        public final int m695getNV218FPWQzE() {
            return StreamFormat.NV21;
        }

        /* JADX INFO: renamed from: getPRIVATE-8FPWQzE, reason: not valid java name */
        public final int m696getPRIVATE8FPWQzE() {
            return StreamFormat.PRIVATE;
        }

        /* JADX INFO: renamed from: getRAW10-8FPWQzE, reason: not valid java name */
        public final int m697getRAW108FPWQzE() {
            return StreamFormat.RAW10;
        }

        /* JADX INFO: renamed from: getRAW12-8FPWQzE, reason: not valid java name */
        public final int m698getRAW128FPWQzE() {
            return StreamFormat.RAW12;
        }

        /* JADX INFO: renamed from: getRAW_DEPTH-8FPWQzE, reason: not valid java name */
        public final int m699getRAW_DEPTH8FPWQzE() {
            return StreamFormat.RAW_DEPTH;
        }

        /* JADX INFO: renamed from: getRAW_PRIVATE-8FPWQzE, reason: not valid java name */
        public final int m700getRAW_PRIVATE8FPWQzE() {
            return StreamFormat.RAW_PRIVATE;
        }

        /* JADX INFO: renamed from: getRAW_SENSOR-8FPWQzE, reason: not valid java name */
        public final int m701getRAW_SENSOR8FPWQzE() {
            return StreamFormat.RAW_SENSOR;
        }

        /* JADX INFO: renamed from: getRGB_565-8FPWQzE, reason: not valid java name */
        public final int m702getRGB_5658FPWQzE() {
            return StreamFormat.RGB_565;
        }

        /* JADX INFO: renamed from: getUNKNOWN-8FPWQzE, reason: not valid java name */
        public final int m703getUNKNOWN8FPWQzE() {
            return StreamFormat.UNKNOWN;
        }

        /* JADX INFO: renamed from: getY12-8FPWQzE, reason: not valid java name */
        public final int m704getY128FPWQzE() {
            return StreamFormat.Y12;
        }

        /* JADX INFO: renamed from: getY16-8FPWQzE, reason: not valid java name */
        public final int m705getY168FPWQzE() {
            return StreamFormat.Y16;
        }

        /* JADX INFO: renamed from: getY8-8FPWQzE, reason: not valid java name */
        public final int m706getY88FPWQzE() {
            return StreamFormat.Y8;
        }

        /* JADX INFO: renamed from: getYCBCR_P010-8FPWQzE, reason: not valid java name */
        public final int m707getYCBCR_P0108FPWQzE() {
            return StreamFormat.YCBCR_P010;
        }

        /* JADX INFO: renamed from: getYUV_420_888-8FPWQzE, reason: not valid java name */
        public final int m708getYUV_420_8888FPWQzE() {
            return StreamFormat.YUV_420_888;
        }

        /* JADX INFO: renamed from: getYUV_422_888-8FPWQzE, reason: not valid java name */
        public final int m709getYUV_422_8888FPWQzE() {
            return StreamFormat.YUV_422_888;
        }

        /* JADX INFO: renamed from: getYUV_444_888-8FPWQzE, reason: not valid java name */
        public final int m710getYUV_444_8888FPWQzE() {
            return StreamFormat.YUV_444_888;
        }

        /* JADX INFO: renamed from: getYUY2-8FPWQzE, reason: not valid java name */
        public final int m711getYUY28FPWQzE() {
            return StreamFormat.YUY2;
        }

        /* JADX INFO: renamed from: getYV12-8FPWQzE, reason: not valid java name */
        public final int m712getYV128FPWQzE() {
            return StreamFormat.YV12;
        }

        private Companion() {
        }
    }
}
