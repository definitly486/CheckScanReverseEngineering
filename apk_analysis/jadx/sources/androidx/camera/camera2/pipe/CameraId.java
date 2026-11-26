package androidx.camera.camera2.pipe;

import defpackage.aa4;
import defpackage.bj;
import defpackage.fg;
import defpackage.jh2;
import defpackage.qa8;
import defpackage.ta8;

/* JADX INFO: loaded from: classes.dex */
public final class CameraId {
    public static final Companion Companion = new Companion(null);
    private final String value;

    private /* synthetic */ CameraId(String str) {
        this.value = str;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraId m351boximpl(String str) {
        return new CameraId(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m352constructorimpl(String str) {
        str.getClass();
        if (!ta8.M(str)) {
            return str;
        }
        fg.c("CameraId cannot be null or blank!");
        return null;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m353equalsimpl(String str, Object obj) {
        return (obj instanceof CameraId) && aa4.e(str, ((CameraId) obj).m358unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m354equalsimpl0(String str, String str2) {
        return aa4.e(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m355hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toCamera1Id-impl, reason: not valid java name */
    public static final Integer m356toCamera1Idimpl(String str) {
        return qa8.p(str);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m357toStringimpl(String str) {
        return bj.c("CameraId-", str);
    }

    public boolean equals(Object obj) {
        return m353equalsimpl(this.value, obj);
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        return m355hashCodeimpl(this.value);
    }

    public String toString() {
        return m357toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m358unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromCamera1Id-c9D3src, reason: not valid java name */
        public final String m359fromCamera1Idc9D3src(int i) {
            return CameraId.m352constructorimpl(String.valueOf(i));
        }

        /* JADX INFO: renamed from: fromCamera2Id-c9D3src, reason: not valid java name */
        public final String m360fromCamera2Idc9D3src(String str) {
            str.getClass();
            return CameraId.m352constructorimpl(str);
        }

        private Companion() {
        }
    }
}
