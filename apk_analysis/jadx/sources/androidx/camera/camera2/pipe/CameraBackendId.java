package androidx.camera.camera2.pipe;

import defpackage.aa4;
import defpackage.lt0;

/* JADX INFO: loaded from: classes.dex */
public final class CameraBackendId {
    private final String value;

    private /* synthetic */ CameraBackendId(String str) {
        this.value = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraBackendId m187boximpl(String str) {
        return new CameraBackendId(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m188constructorimpl(String str) {
        str.getClass();
        return str;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m189equalsimpl(String str, Object obj) {
        return (obj instanceof CameraBackendId) && aa4.e(str, ((CameraBackendId) obj).m193unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m190equalsimpl0(String str, String str2) {
        return aa4.e(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m191hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m192toStringimpl(String str) {
        return lt0.d(')', "CameraBackendId(value=", str);
    }

    public boolean equals(Object obj) {
        return m189equalsimpl(this.value, obj);
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return m191hashCodeimpl(this.value);
    }

    public String toString() {
        return m192toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m193unboximpl() {
        return this.value;
    }
}
