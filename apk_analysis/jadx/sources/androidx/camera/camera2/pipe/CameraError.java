package androidx.camera.camera2.pipe;

import android.hardware.camera2.CameraAccessException;
import android.os.Build;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes.dex */
public final class CameraError {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int ERROR_UNDETERMINED = m277constructorimpl(0);
    private static final int ERROR_CAMERA_IN_USE = m277constructorimpl(1);
    private static final int ERROR_CAMERA_LIMIT_EXCEEDED = m277constructorimpl(2);
    private static final int ERROR_CAMERA_DISABLED = m277constructorimpl(3);
    private static final int ERROR_CAMERA_DEVICE = m277constructorimpl(4);
    private static final int ERROR_CAMERA_SERVICE = m277constructorimpl(5);
    private static final int ERROR_CAMERA_DISCONNECTED = m277constructorimpl(6);
    private static final int ERROR_ILLEGAL_ARGUMENT_EXCEPTION = m277constructorimpl(7);
    private static final int ERROR_SECURITY_EXCEPTION = m277constructorimpl(8);
    private static final int ERROR_GRAPH_CONFIG = m277constructorimpl(9);
    private static final int ERROR_DO_NOT_DISTURB_ENABLED = m277constructorimpl(10);
    private static final int ERROR_UNKNOWN_EXCEPTION = m277constructorimpl(11);
    private static final int ERROR_CAMERA_OPENER = m277constructorimpl(12);
    private static final int ERROR_CAMERA_OPEN_TIMEOUT = m277constructorimpl(13);

    private /* synthetic */ CameraError(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraError m276boximpl(int i) {
        return new CameraError(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static int m277constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m278equalsimpl(int i, Object obj) {
        return (obj instanceof CameraError) && i == ((CameraError) obj).m283unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m279equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m280hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isDisconnected-impl, reason: not valid java name */
    public static final boolean m281isDisconnectedimpl(int i) {
        return m279equalsimpl0(i, ERROR_CAMERA_DISCONNECTED) || m279equalsimpl0(i, ERROR_CAMERA_IN_USE) || m279equalsimpl0(i, ERROR_CAMERA_LIMIT_EXCEEDED);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m282toStringimpl(int i) {
        String str;
        StringBuilder sb = new StringBuilder("CameraError(");
        if (m279equalsimpl0(i, ERROR_UNDETERMINED)) {
            str = "ERROR_UNDETERMINED";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_IN_USE)) {
            str = "ERROR_CAMERA_IN_USE";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_LIMIT_EXCEEDED)) {
            str = "ERROR_CAMERA_LIMIT_EXCEEDED";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_DISABLED)) {
            str = "ERROR_CAMERA_DISABLED";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_DEVICE)) {
            str = "ERROR_CAMERA_DEVICE";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_SERVICE)) {
            str = "ERROR_CAMERA_SERVICE";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_DISCONNECTED)) {
            str = "ERROR_CAMERA_DISCONNECTED";
        } else if (m279equalsimpl0(i, ERROR_ILLEGAL_ARGUMENT_EXCEPTION)) {
            str = "ERROR_ILLEGAL_ARGUMENT_EXCEPTION";
        } else if (m279equalsimpl0(i, ERROR_SECURITY_EXCEPTION)) {
            str = "ERROR_SECURITY_EXCEPTION";
        } else if (m279equalsimpl0(i, ERROR_GRAPH_CONFIG)) {
            str = "ERROR_GRAPH_CONFIG";
        } else if (m279equalsimpl0(i, ERROR_DO_NOT_DISTURB_ENABLED)) {
            str = "ERROR_DO_NOT_DISTURB_ENABLED";
        } else if (m279equalsimpl0(i, ERROR_UNKNOWN_EXCEPTION)) {
            str = "ERROR_UNKNOWN_EXCEPTION";
        } else if (m279equalsimpl0(i, ERROR_CAMERA_OPENER)) {
            str = "ERROR_CAMERA_OPENER";
        } else {
            str = m279equalsimpl0(i, ERROR_CAMERA_OPEN_TIMEOUT) ? "ERROR_CAMERA_OPEN_TIMEOUT" : "ERROR_UNKNOWN";
        }
        return xp.e(sb, str, ')');
    }

    public boolean equals(Object obj) {
        return m278equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m280hashCodeimpl(this.value);
    }

    public String toString() {
        return m282toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m283unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final boolean isDoNotDisturbException(Throwable th) {
            if (!(th instanceof RuntimeException)) {
                return false;
            }
            StackTraceElement[] stackTrace = ((RuntimeException) th).getStackTrace();
            stackTrace.getClass();
            return aa4.e(!(stackTrace.length == 0) ? stackTrace[0].getMethodName() : null, "_enableShutterSound");
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m285fromPVuDhNw$camera_camera2_pipe(CameraAccessException cameraAccessException) {
            cameraAccessException.getClass();
            int reason = cameraAccessException.getReason();
            if (reason == 1) {
                return m288getERROR_CAMERA_DISABLEDv7Vf74A();
            }
            if (reason == 2) {
                return m289getERROR_CAMERA_DISCONNECTEDv7Vf74A();
            }
            if (reason == 3) {
                return m299getERROR_UNDETERMINEDv7Vf74A();
            }
            if (reason == 4) {
                return m290getERROR_CAMERA_IN_USEv7Vf74A();
            }
            if (reason == 5) {
                return m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A();
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Unexpected CameraAccessException: " + cameraAccessException);
            }
            return m300getERROR_UNKNOWN_EXCEPTIONv7Vf74A();
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DEVICE-v7Vf74A, reason: not valid java name */
        public final int m287getERROR_CAMERA_DEVICEv7Vf74A() {
            return CameraError.ERROR_CAMERA_DEVICE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DISABLED-v7Vf74A, reason: not valid java name */
        public final int m288getERROR_CAMERA_DISABLEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_DISABLED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_DISCONNECTED-v7Vf74A, reason: not valid java name */
        public final int m289getERROR_CAMERA_DISCONNECTEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_DISCONNECTED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_IN_USE-v7Vf74A, reason: not valid java name */
        public final int m290getERROR_CAMERA_IN_USEv7Vf74A() {
            return CameraError.ERROR_CAMERA_IN_USE;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_LIMIT_EXCEEDED-v7Vf74A, reason: not valid java name */
        public final int m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A() {
            return CameraError.ERROR_CAMERA_LIMIT_EXCEEDED;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_OPENER-v7Vf74A, reason: not valid java name */
        public final int m292getERROR_CAMERA_OPENERv7Vf74A() {
            return CameraError.ERROR_CAMERA_OPENER;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_OPEN_TIMEOUT-v7Vf74A, reason: not valid java name */
        public final int m293getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A() {
            return CameraError.ERROR_CAMERA_OPEN_TIMEOUT;
        }

        /* JADX INFO: renamed from: getERROR_CAMERA_SERVICE-v7Vf74A, reason: not valid java name */
        public final int m294getERROR_CAMERA_SERVICEv7Vf74A() {
            return CameraError.ERROR_CAMERA_SERVICE;
        }

        /* JADX INFO: renamed from: getERROR_DO_NOT_DISTURB_ENABLED-v7Vf74A, reason: not valid java name */
        public final int m295getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A() {
            return CameraError.ERROR_DO_NOT_DISTURB_ENABLED;
        }

        /* JADX INFO: renamed from: getERROR_GRAPH_CONFIG-v7Vf74A, reason: not valid java name */
        public final int m296getERROR_GRAPH_CONFIGv7Vf74A() {
            return CameraError.ERROR_GRAPH_CONFIG;
        }

        /* JADX INFO: renamed from: getERROR_ILLEGAL_ARGUMENT_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m297getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_ILLEGAL_ARGUMENT_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_SECURITY_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m298getERROR_SECURITY_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_SECURITY_EXCEPTION;
        }

        /* JADX INFO: renamed from: getERROR_UNDETERMINED-v7Vf74A, reason: not valid java name */
        public final int m299getERROR_UNDETERMINEDv7Vf74A() {
            return CameraError.ERROR_UNDETERMINED;
        }

        /* JADX INFO: renamed from: getERROR_UNKNOWN_EXCEPTION-v7Vf74A, reason: not valid java name */
        public final int m300getERROR_UNKNOWN_EXCEPTIONv7Vf74A() {
            return CameraError.ERROR_UNKNOWN_EXCEPTION;
        }

        public final boolean shouldHandleDoNotDisturbException$camera_camera2_pipe(Throwable th) {
            th.getClass();
            return Build.VERSION.SDK_INT == 28 && isDoNotDisturbException(th);
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m286fromPVuDhNw$camera_camera2_pipe(Throwable th) {
            th.getClass();
            if (th instanceof CameraAccessException) {
                return m285fromPVuDhNw$camera_camera2_pipe((CameraAccessException) th);
            }
            if (th instanceof IllegalArgumentException) {
                return m297getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A();
            }
            if (th instanceof SecurityException) {
                return m298getERROR_SECURITY_EXCEPTIONv7Vf74A();
            }
            if (shouldHandleDoNotDisturbException$camera_camera2_pipe(th)) {
                return m295getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A();
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Unexpected throwable: " + th);
            }
            return m300getERROR_UNKNOWN_EXCEPTIONv7Vf74A();
        }

        /* JADX INFO: renamed from: from-PVuDhNw$camera_camera2_pipe, reason: not valid java name */
        public final int m284fromPVuDhNw$camera_camera2_pipe(int i) {
            if (i == 1) {
                return m290getERROR_CAMERA_IN_USEv7Vf74A();
            }
            if (i == 2) {
                return m291getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A();
            }
            if (i == 3) {
                return m288getERROR_CAMERA_DISABLEDv7Vf74A();
            }
            if (i == 4) {
                return m287getERROR_CAMERA_DEVICEv7Vf74A();
            }
            if (i == 5) {
                return m294getERROR_CAMERA_SERVICEv7Vf74A();
            }
            fg.c(jh.b(i, "Unexpected StateCallback error code: "));
            return 0;
        }
    }
}
