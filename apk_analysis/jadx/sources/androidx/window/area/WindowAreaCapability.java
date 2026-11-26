package androidx.window.area;

import com.google.firebase.inappmessaging.display.internal.injection.keys.LayoutConfigKey;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowAreaCapability {
    private final Operation operation;
    private final Status status;

    public WindowAreaCapability(Operation operation, Status status) {
        operation.getClass();
        status.getClass();
        this.operation = operation;
        this.status = status;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WindowAreaCapability)) {
            return false;
        }
        WindowAreaCapability windowAreaCapability = (WindowAreaCapability) obj;
        return aa4.e(this.operation, windowAreaCapability.operation) && aa4.e(this.status, windowAreaCapability.status);
    }

    public final Operation getOperation() {
        return this.operation;
    }

    public final Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        return this.status.hashCode() + (this.operation.hashCode() * 31);
    }

    public String toString() {
        return "Operation: " + this.operation + ": Status: " + this.status;
    }

    public static final class Operation {
        private final String description;
        public static final Companion Companion = new Companion(null);
        public static final Operation OPERATION_TRANSFER_ACTIVITY_TO_AREA = new Operation("TRANSFER");
        public static final Operation OPERATION_PRESENT_ON_AREA = new Operation("PRESENT");

        private Operation(String str) {
            this.description = str;
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static final class Status {
        private final String description;
        public static final Companion Companion = new Companion(null);
        private static final Status WINDOW_AREA_STATUS_UNKNOWN = new Status("UNKNOWN");
        public static final Status WINDOW_AREA_STATUS_UNSUPPORTED = new Status(LayoutConfigKey.UNSUPPORTED);
        public static final Status WINDOW_AREA_STATUS_UNAVAILABLE = new Status("UNAVAILABLE");
        public static final Status WINDOW_AREA_STATUS_AVAILABLE = new Status("AVAILABLE");
        public static final Status WINDOW_AREA_STATUS_ACTIVE = new Status("ACTIVE");

        private Status(String str) {
            this.description = str;
        }

        public String toString() {
            return this.description;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Status getWINDOW_AREA_STATUS_UNKNOWN$window_release() {
                return Status.WINDOW_AREA_STATUS_UNKNOWN;
            }

            private Companion() {
            }
        }
    }
}
