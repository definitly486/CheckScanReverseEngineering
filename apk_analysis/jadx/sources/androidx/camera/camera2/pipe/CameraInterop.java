package androidx.camera.camera2.pipe;

import android.view.Surface;
import defpackage.kt;
import defpackage.lt;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class CameraInterop {
    public static final CameraInterop INSTANCE = new CameraInterop();
    private static final lt captureSessionIds = kt.b(0);

    public static final class CameraCaptureSessionId {
        private final int value;

        private /* synthetic */ CameraCaptureSessionId(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ CameraCaptureSessionId m362boximpl(int i) {
            return new CameraCaptureSessionId(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m363constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m364equalsimpl(int i, Object obj) {
            return (obj instanceof CameraCaptureSessionId) && i == ((CameraCaptureSessionId) obj).m368unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m365equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m366hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m367toStringimpl(int i) {
            return qz0.d("CameraCaptureSessionId(value=", i, ')');
        }

        public boolean equals(Object obj) {
            return m364equalsimpl(this.value, obj);
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return m366hashCodeimpl(this.value);
        }

        public String toString() {
            return m367toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m368unboximpl() {
            return this.value;
        }
    }

    public interface CaptureSessionListener {
        /* JADX INFO: renamed from: onActive-rphkYDA */
        void mo50onActiverphkYDA(String str, int i);

        /* JADX INFO: renamed from: onCaptureQueueEmpty-rphkYDA */
        void mo51onCaptureQueueEmptyrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onClosed-rphkYDA */
        void mo52onClosedrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onConfigureFailed-rphkYDA */
        void mo53onConfigureFailedrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onConfigured-rphkYDA */
        void mo54onConfiguredrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onReady-rphkYDA */
        void mo55onReadyrphkYDA(String str, int i);

        /* JADX INFO: renamed from: onSurfacePrepared-GyX_H3Q */
        void mo56onSurfacePreparedGyX_H3Q(String str, int i, Surface surface);
    }

    private CameraInterop() {
    }

    private static /* synthetic */ void getCaptureSessionIds$annotations() {
    }
}
