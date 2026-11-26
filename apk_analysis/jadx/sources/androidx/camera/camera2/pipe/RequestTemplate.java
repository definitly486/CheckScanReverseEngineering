package androidx.camera.camera2.pipe;

import defpackage.jh;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class RequestTemplate {
    private final int value;

    private /* synthetic */ RequestTemplate(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ RequestTemplate m646boximpl(int i) {
        return new RequestTemplate(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m647constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m648equalsimpl(int i, Object obj) {
        return (obj instanceof RequestTemplate) && i == ((RequestTemplate) obj).m653unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m649equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: getName-impl, reason: not valid java name */
    public static final String m650getNameimpl(int i) {
        switch (i) {
            case 1:
                return "TEMPLATE_PREVIEW";
            case 2:
                return "TEMPLATE_STILL_CAPTURE";
            case 3:
                return "TEMPLATE_RECORD";
            case 4:
                return "TEMPLATE_VIDEO_SNAPSHOT";
            case 5:
                return "TEMPLATE_ZERO_SHUTTER_LAG";
            case 6:
                return "TEMPLATE_MANUAL";
            default:
                return jh.b(i, "UNKNOWN-");
        }
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m651hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m652toStringimpl(int i) {
        return qz0.d("RequestTemplate(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m648equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m651hashCodeimpl(this.value);
    }

    public String toString() {
        return m652toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m653unboximpl() {
        return this.value;
    }
}
