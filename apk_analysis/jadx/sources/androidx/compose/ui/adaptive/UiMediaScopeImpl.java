package androidx.compose.ui.adaptive;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.input.InputManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.UiMediaScope;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.unit.DpSize;

/* JADX INFO: loaded from: classes2.dex */
public final class UiMediaScopeImpl implements UiMediaScope {
    public static final int $stable = 0;
    private final MutableState _anyPointer$delegate;
    private final MutableState _windowInfo$delegate;
    private final MutableState hasPhysicalKeyboard$delegate;
    private final MutableState isImeVisible$delegate;
    private final PackageManager packageManager;
    private final MutableState _windowPosture$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(UiMediaScope.Posture.m5705boximpl(UiMediaScope.Posture.Companion.m5713getFlatm18o9QQ()), null, 2, null);
    private final MutableState isDocked$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);

    public UiMediaScopeImpl(Context context, InputManager inputManager, WindowInfo windowInfo, boolean z) {
        this.packageManager = context.getPackageManager();
        this._windowInfo$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(windowInfo, null, 2, null);
        this._anyPointer$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(UiMediaScope.PointerPrecision.m5694boximpl(MediaQuery_androidKt.resolvePointerPrecision(inputManager)), null, 2, null);
        this.isImeVisible$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z), null, 2, null);
        this.hasPhysicalKeyboard$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(MediaQuery_androidKt.hasPhysicalKeyboard(inputManager)), null, 2, null);
    }

    @Override // androidx.compose.ui.UiMediaScope
    public boolean getHasCamera() {
        return MediaQuery_androidKt.isCameraAvailable(this.packageManager);
    }

    @Override // androidx.compose.ui.UiMediaScope
    public boolean getHasMicrophone() {
        return MediaQuery_androidKt.isMicAvailable(this.packageManager);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean getHasPhysicalKeyboard() {
        return ((Boolean) this.hasPhysicalKeyboard$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.ui.UiMediaScope
    /* JADX INFO: renamed from: getKeyboardKind-J9_QTjY */
    public String mo5678getKeyboardKindJ9_QTjY() {
        if (getHasPhysicalKeyboard()) {
            return UiMediaScope.KeyboardKind.Companion.m5692getPhysicalJ9_QTjY();
        }
        return isImeVisible() ? UiMediaScope.KeyboardKind.Companion.m5693getVirtualJ9_QTjY() : UiMediaScope.KeyboardKind.Companion.m5691getNoneJ9_QTjY();
    }

    @Override // androidx.compose.ui.UiMediaScope
    /* JADX INFO: renamed from: getPointerPrecision-fpxItnM */
    public String mo5679getPointerPrecisionfpxItnM() {
        return m5725get_anyPointerfpxItnM();
    }

    @Override // androidx.compose.ui.UiMediaScope
    /* JADX INFO: renamed from: getViewingDistance-tKro-MQ */
    public String mo5680getViewingDistancetKroMQ() {
        if (MediaQuery_androidKt.isTvDevice(this.packageManager)) {
            return UiMediaScope.ViewingDistance.Companion.m5722getFartKroMQ();
        }
        return (MediaQuery_androidKt.isAutomotiveDevice(this.packageManager) || isDocked()) ? UiMediaScope.ViewingDistance.Companion.m5723getMediumtKroMQ() : UiMediaScope.ViewingDistance.Companion.m5724getNeartKroMQ();
    }

    @Override // androidx.compose.ui.UiMediaScope
    /* JADX INFO: renamed from: getWindowHeight-D9Ej5fM */
    public float mo5681getWindowHeightD9Ej5fM() {
        return DpSize.m9138getHeightD9Ej5fM(get_windowInfo().mo8207getContainerDpSizeMYxV2XQ());
    }

    @Override // androidx.compose.ui.UiMediaScope
    /* JADX INFO: renamed from: getWindowPosture-m18o9QQ */
    public String mo5682getWindowPosturem18o9QQ() {
        return m5726get_windowPosturem18o9QQ();
    }

    @Override // androidx.compose.ui.UiMediaScope
    /* JADX INFO: renamed from: getWindowWidth-D9Ej5fM */
    public float mo5683getWindowWidthD9Ej5fM() {
        return DpSize.m9140getWidthD9Ej5fM(get_windowInfo().mo8207getContainerDpSizeMYxV2XQ());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: get_anyPointer-fpxItnM, reason: not valid java name */
    public final String m5725get_anyPointerfpxItnM() {
        return ((UiMediaScope.PointerPrecision) this._anyPointer$delegate.getValue()).m5700unboximpl();
    }

    public final WindowInfo get_windowInfo() {
        return (WindowInfo) this._windowInfo$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: get_windowPosture-m18o9QQ, reason: not valid java name */
    public final String m5726get_windowPosturem18o9QQ() {
        return ((UiMediaScope.Posture) this._windowPosture$delegate.getValue()).m5711unboximpl();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isDocked() {
        return ((Boolean) this.isDocked$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isImeVisible() {
        return ((Boolean) this.isImeVisible$delegate.getValue()).booleanValue();
    }

    public final void setDocked(boolean z) {
        this.isDocked$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setHasPhysicalKeyboard(boolean z) {
        this.hasPhysicalKeyboard$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setImeVisible(boolean z) {
        this.isImeVisible$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: renamed from: set_anyPointer-ZYK4Wgo, reason: not valid java name */
    public final void m5727set_anyPointerZYK4Wgo(String str) {
        this._anyPointer$delegate.setValue(UiMediaScope.PointerPrecision.m5694boximpl(str));
    }

    public final void set_windowInfo(WindowInfo windowInfo) {
        this._windowInfo$delegate.setValue(windowInfo);
    }

    /* JADX INFO: renamed from: set_windowPosture-InyEWag, reason: not valid java name */
    public final void m5728set_windowPostureInyEWag(String str) {
        this._windowPosture$delegate.setValue(UiMediaScope.Posture.m5705boximpl(str));
    }
}
