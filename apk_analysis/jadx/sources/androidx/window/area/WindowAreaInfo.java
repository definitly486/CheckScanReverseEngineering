package androidx.window.area;

import android.os.Binder;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.layout.WindowMetrics;
import defpackage.aa4;
import defpackage.ah;
import defpackage.fg;
import defpackage.jh2;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowAreaInfo {
    private final HashMap<WindowAreaCapability.Operation, WindowAreaCapability> capabilityMap;
    private WindowMetrics metrics;
    private final Binder token;
    private final Type type;
    private final WindowAreaComponent windowAreaComponent;

    public WindowAreaInfo(WindowMetrics windowMetrics, Type type, Binder binder, WindowAreaComponent windowAreaComponent) {
        windowMetrics.getClass();
        type.getClass();
        binder.getClass();
        windowAreaComponent.getClass();
        this.metrics = windowMetrics;
        this.type = type;
        this.token = binder;
        this.windowAreaComponent = windowAreaComponent;
        this.capabilityMap = new HashMap<>();
    }

    private final WindowAreaSession createRearFacingSession(WindowAreaCapability.Operation operation) {
        if (aa4.e(operation, WindowAreaCapability.Operation.OPERATION_TRANSFER_ACTIVITY_TO_AREA)) {
            return new RearDisplaySessionImpl(this.windowAreaComponent);
        }
        if (!aa4.e(operation, WindowAreaCapability.Operation.OPERATION_PRESENT_ON_AREA)) {
            fg.c("Invalid operation provided");
            return null;
        }
        WindowAreaComponent windowAreaComponent = this.windowAreaComponent;
        ExtensionWindowAreaPresentation rearDisplayPresentation = windowAreaComponent.getRearDisplayPresentation();
        rearDisplayPresentation.getClass();
        return new RearDisplayPresentationSessionPresenterImpl(windowAreaComponent, rearDisplayPresentation, ExtensionsUtil.INSTANCE.getSafeVendorApiLevel());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WindowAreaInfo)) {
            return false;
        }
        WindowAreaInfo windowAreaInfo = (WindowAreaInfo) obj;
        return aa4.e(this.metrics, windowAreaInfo.metrics) && aa4.e(this.type, windowAreaInfo.type) && aa4.e(this.capabilityMap.entrySet(), windowAreaInfo.capabilityMap.entrySet());
    }

    public final WindowAreaSession getActiveSession(WindowAreaCapability.Operation operation) {
        operation.getClass();
        if (!aa4.e(getCapability(operation).getStatus(), WindowAreaCapability.Status.WINDOW_AREA_STATUS_ACTIVE)) {
            ah.f("No session is currently active");
            return null;
        }
        if (aa4.e(this.type, Type.TYPE_REAR_FACING)) {
            return createRearFacingSession(operation);
        }
        return null;
    }

    public final WindowAreaCapability getCapability(WindowAreaCapability.Operation operation) {
        operation.getClass();
        WindowAreaCapability windowAreaCapability = this.capabilityMap.get(operation);
        return windowAreaCapability == null ? new WindowAreaCapability(operation, WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED) : windowAreaCapability;
    }

    public final HashMap<WindowAreaCapability.Operation, WindowAreaCapability> getCapabilityMap$window_release() {
        return this.capabilityMap;
    }

    public final WindowMetrics getMetrics() {
        return this.metrics;
    }

    public final Binder getToken() {
        return this.token;
    }

    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return this.capabilityMap.entrySet().hashCode() + ((this.type.hashCode() + (this.metrics.hashCode() * 31)) * 31);
    }

    public final void setMetrics(WindowMetrics windowMetrics) {
        windowMetrics.getClass();
        this.metrics = windowMetrics;
    }

    public String toString() {
        return "WindowAreaInfo{ Metrics: " + this.metrics + ", type: " + this.type + ", Capabilities: " + this.capabilityMap.entrySet() + " }";
    }

    public static final class Type {
        public static final Companion Companion = new Companion(null);
        public static final Type TYPE_REAR_FACING = new Type("REAR FACING");
        private final String description;

        private Type(String str) {
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
}
