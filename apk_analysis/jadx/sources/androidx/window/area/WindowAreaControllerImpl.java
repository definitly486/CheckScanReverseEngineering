package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.window.area.WindowAreaControllerImpl;
import androidx.window.area.adapter.WindowAreaAdapter;
import androidx.window.core.BuildConfig;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.VerificationMode;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.extensions.area.ExtensionWindowAreaStatus;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.reflection.Consumer2;
import defpackage.aa4;
import defpackage.eu3;
import defpackage.hd3;
import defpackage.hi9;
import defpackage.j11;
import defpackage.jh2;
import defpackage.rr0;
import defpackage.rt;
import defpackage.s0;
import defpackage.vh;
import defpackage.x07;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowAreaControllerImpl extends WindowAreaController {
    private static final String REAR_DISPLAY_BINDER_DESCRIPTOR = "WINDOW_AREA_REAR_DISPLAY";
    private boolean activeWindowAreaSession;
    private WindowAreaCapability.Status currentRearDisplayModeStatus;
    private WindowAreaCapability.Status currentRearDisplayPresentationStatus;
    private final HashMap<String, WindowAreaInfo> currentWindowAreaInfoMap;
    private boolean presentationSessionActive;
    private Consumer2<Integer> rearDisplaySessionConsumer;
    private final WindowAreaComponent windowAreaComponent;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = x07.a(WindowAreaControllerImpl.class).f();

    public WindowAreaControllerImpl(WindowAreaComponent windowAreaComponent) {
        windowAreaComponent.getClass();
        this.windowAreaComponent = windowAreaComponent;
        WindowAreaCapability.Status.Companion companion = WindowAreaCapability.Status.Companion;
        this.currentRearDisplayModeStatus = companion.getWINDOW_AREA_STATUS_UNKNOWN$window_release();
        this.currentRearDisplayPresentationStatus = companion.getWINDOW_AREA_STATUS_UNKNOWN$window_release();
        this.currentWindowAreaInfoMap = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void presentContentOnWindowArea$lambda$2(WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        windowAreaPresentationSessionCallback.onSessionEnded(new IllegalArgumentException("Invalid WindowAreaInfo token"));
    }

    private final boolean shouldRemoveWindowAreaInfo(WindowAreaInfo windowAreaInfo) {
        for (WindowAreaCapability windowAreaCapability : windowAreaInfo.getCapabilityMap$window_release().values()) {
            windowAreaCapability.getClass();
            if (!aa4.e(windowAreaCapability.getStatus(), WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED)) {
                return false;
            }
        }
        return true;
    }

    private final void startRearDisplayMode(Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback) {
        if (aa4.e(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_ACTIVE)) {
            windowAreaSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently active, WindowAreaInfo#getActiveSessioncan be used to get an instance of the current active session"));
            return;
        }
        if (!aa4.e(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE)) {
            windowAreaSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently not available to be entered"));
            return;
        }
        this.activeWindowAreaSession = true;
        RearDisplaySessionConsumer rearDisplaySessionConsumer = new RearDisplaySessionConsumer(this, executor, windowAreaSessionCallback, this.windowAreaComponent);
        this.rearDisplaySessionConsumer = rearDisplaySessionConsumer;
        this.windowAreaComponent.startRearDisplaySession(activity, rearDisplaySessionConsumer);
    }

    private final void startRearDisplayPresentationMode(Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        if (!aa4.e(this.currentRearDisplayPresentationStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE)) {
            windowAreaPresentationSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently not available to be entered"));
        } else {
            this.presentationSessionActive = true;
            this.windowAreaComponent.startRearDisplayPresentationSession(activity, new RearDisplayPresentationSessionConsumer(this, executor, windowAreaPresentationSessionCallback, this.windowAreaComponent));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void transferActivityToWindowArea$lambda$1(WindowAreaSessionCallback windowAreaSessionCallback) {
        windowAreaSessionCallback.onSessionEnded(new IllegalArgumentException("Invalid WindowAreaInfo token"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRearDisplayAvailability(int i) {
        WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion;
        DisplayMetrics rearDisplayMetrics = this.windowAreaComponent.getRearDisplayMetrics();
        rearDisplayMetrics.getClass();
        WindowMetrics windowMetricsFromDisplayMetrics$window_release = companion.fromDisplayMetrics$window_release(rearDisplayMetrics);
        WindowAreaCapability.Status statusTranslate$window_release$default = WindowAreaAdapter.translate$window_release$default(WindowAreaAdapter.INSTANCE, i, this.activeWindowAreaSession, 0, 4, null);
        this.currentRearDisplayModeStatus = statusTranslate$window_release$default;
        updateRearDisplayWindowArea(WindowAreaCapability.Operation.OPERATION_TRANSFER_ACTIVITY_TO_AREA, statusTranslate$window_release$default, windowMetricsFromDisplayMetrics$window_release);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRearDisplayPresentationAvailability(ExtensionWindowAreaStatus extensionWindowAreaStatus) {
        this.currentRearDisplayPresentationStatus = WindowAreaAdapter.translate$window_release$default(WindowAreaAdapter.INSTANCE, extensionWindowAreaStatus.getWindowAreaStatus(), this.presentationSessionActive, 0, 4, null);
        WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion;
        DisplayMetrics windowAreaDisplayMetrics = extensionWindowAreaStatus.getWindowAreaDisplayMetrics();
        windowAreaDisplayMetrics.getClass();
        updateRearDisplayWindowArea(WindowAreaCapability.Operation.OPERATION_PRESENT_ON_AREA, this.currentRearDisplayPresentationStatus, companion.fromDisplayMetrics$window_release(windowAreaDisplayMetrics));
    }

    private final void updateRearDisplayWindowArea(WindowAreaCapability.Operation operation, WindowAreaCapability.Status status, WindowMetrics windowMetrics) {
        WindowAreaInfo windowAreaInfo = this.currentWindowAreaInfoMap.get(REAR_DISPLAY_BINDER_DESCRIPTOR);
        if (!aa4.e(status, WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED)) {
            if (windowAreaInfo == null) {
                windowAreaInfo = new WindowAreaInfo(windowMetrics, WindowAreaInfo.Type.TYPE_REAR_FACING, hi9.a(), this.windowAreaComponent);
            }
            windowAreaInfo.getCapabilityMap$window_release().put(operation, new WindowAreaCapability(operation, status));
            windowAreaInfo.setMetrics(windowMetrics);
            this.currentWindowAreaInfoMap.put(REAR_DISPLAY_BINDER_DESCRIPTOR, windowAreaInfo);
            return;
        }
        if (windowAreaInfo != null) {
            if (shouldRemoveWindowAreaInfo(windowAreaInfo)) {
                this.currentWindowAreaInfoMap.remove(REAR_DISPLAY_BINDER_DESCRIPTOR);
            } else {
                windowAreaInfo.getCapabilityMap$window_release().put(operation, new WindowAreaCapability(operation, status));
            }
        }
    }

    @Override // androidx.window.area.WindowAreaController
    public hd3<List<WindowAreaInfo>> getWindowAreaInfos() {
        return s0.a(new WindowAreaControllerImpl$windowAreaInfos$1(this, null));
    }

    @Override // androidx.window.area.WindowAreaController
    public void presentContentOnWindowArea(Binder binder, Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        binder.getClass();
        activity.getClass();
        executor.getClass();
        windowAreaPresentationSessionCallback.getClass();
        if (aa4.e(binder.getInterfaceDescriptor(), REAR_DISPLAY_BINDER_DESCRIPTOR)) {
            startRearDisplayPresentationMode(activity, executor, windowAreaPresentationSessionCallback);
        } else {
            executor.execute(new rt(windowAreaPresentationSessionCallback, 4));
        }
    }

    @Override // androidx.window.area.WindowAreaController
    public void transferActivityToWindowArea(Binder binder, Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback) {
        binder.getClass();
        activity.getClass();
        executor.getClass();
        windowAreaSessionCallback.getClass();
        if (aa4.e(binder.getInterfaceDescriptor(), REAR_DISPLAY_BINDER_DESCRIPTOR)) {
            startRearDisplayMode(activity, executor, windowAreaSessionCallback);
        } else {
            executor.execute(new rr0(windowAreaSessionCallback, 3));
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final class RearDisplayPresentationSessionConsumer implements Consumer2<Integer> {
        private final Executor executor;
        private int lastReportedSessionStatus;
        final /* synthetic */ WindowAreaControllerImpl this$0;
        private final WindowAreaComponent windowAreaComponent;
        private final WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback;

        public RearDisplayPresentationSessionConsumer(WindowAreaControllerImpl windowAreaControllerImpl, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback, WindowAreaComponent windowAreaComponent) {
            executor.getClass();
            windowAreaPresentationSessionCallback.getClass();
            windowAreaComponent.getClass();
            this.this$0 = windowAreaControllerImpl;
            this.executor = executor;
            this.windowAreaPresentationSessionCallback = windowAreaPresentationSessionCallback;
            this.windowAreaComponent = windowAreaComponent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void accept$lambda$0(int i, int i2, RearDisplayPresentationSessionConsumer rearDisplayPresentationSessionConsumer, WindowAreaControllerImpl windowAreaControllerImpl) {
            if (i == 0) {
                windowAreaControllerImpl.presentationSessionActive = false;
                rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback.onSessionEnded(null);
                return;
            }
            if (i != 1) {
                if (i == 2) {
                    rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback.onContainerVisibilityChanged(true);
                    return;
                }
                Log.e(WindowAreaControllerImpl.TAG, "Invalid session state value received: " + i);
                return;
            }
            if (i2 == 2) {
                rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback.onContainerVisibilityChanged(false);
                return;
            }
            WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback = rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback;
            WindowAreaComponent windowAreaComponent = rearDisplayPresentationSessionConsumer.windowAreaComponent;
            ExtensionWindowAreaPresentation rearDisplayPresentation = windowAreaComponent.getRearDisplayPresentation();
            rearDisplayPresentation.getClass();
            windowAreaPresentationSessionCallback.onSessionStarted(new RearDisplayPresentationSessionPresenterImpl(windowAreaComponent, rearDisplayPresentation, ExtensionsUtil.INSTANCE.getSafeVendorApiLevel()));
        }

        public void accept(final int i) {
            final int i2 = this.lastReportedSessionStatus;
            this.lastReportedSessionStatus = i;
            Executor executor = this.executor;
            final WindowAreaControllerImpl windowAreaControllerImpl = this.this$0;
            executor.execute(new Runnable() { // from class: ii9
                @Override // java.lang.Runnable
                public final void run() {
                    WindowAreaControllerImpl.RearDisplayPresentationSessionConsumer.accept$lambda$0(i, i2, this, windowAreaControllerImpl);
                }
            });
        }

        @Override // androidx.window.reflection.Consumer2
        public /* bridge */ /* synthetic */ void accept(Integer num) {
            accept(num.intValue());
        }
    }

    public final class RearDisplaySessionConsumer implements Consumer2<Integer> {
        private final WindowAreaSessionCallback appCallback;
        private final Executor executor;
        private final WindowAreaComponent extensionsComponent;
        private WindowAreaSession session;
        final /* synthetic */ WindowAreaControllerImpl this$0;

        public RearDisplaySessionConsumer(WindowAreaControllerImpl windowAreaControllerImpl, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback, WindowAreaComponent windowAreaComponent) {
            executor.getClass();
            windowAreaSessionCallback.getClass();
            windowAreaComponent.getClass();
            this.this$0 = windowAreaControllerImpl;
            this.executor = executor;
            this.appCallback = windowAreaSessionCallback;
            this.extensionsComponent = windowAreaComponent;
        }

        private final void onSessionFinished() {
            this.this$0.activeWindowAreaSession = false;
            this.session = null;
            this.executor.execute(new j11(this, 4));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onSessionFinished$lambda$2(RearDisplaySessionConsumer rearDisplaySessionConsumer) {
            rearDisplaySessionConsumer.appCallback.onSessionEnded(null);
        }

        private final void onSessionStarted() {
            RearDisplaySessionImpl rearDisplaySessionImpl = new RearDisplaySessionImpl(this.extensionsComponent);
            this.session = rearDisplaySessionImpl;
            this.executor.execute(new eu3(3, this, rearDisplaySessionImpl));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onSessionStarted$lambda$1$lambda$0(RearDisplaySessionConsumer rearDisplaySessionConsumer, WindowAreaSession windowAreaSession) {
            rearDisplaySessionConsumer.appCallback.onSessionStarted(windowAreaSession);
        }

        public void accept(int i) {
            if (i == 0) {
                onSessionFinished();
            } else {
                if (i == 1) {
                    onSessionStarted();
                    return;
                }
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.STRICT) {
                    vh.d(i, "Received an unknown session status value: ", WindowAreaControllerImpl.TAG);
                }
                onSessionFinished();
            }
        }

        @Override // androidx.window.reflection.Consumer2
        public /* bridge */ /* synthetic */ void accept(Integer num) {
            accept(num.intValue());
        }
    }
}
