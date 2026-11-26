package androidx.compose.ui.adaptive;

import android.hardware.input.InputManager;
import android.os.Handler;
import android.os.Looper;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaQuery_androidKt$obtainUiMediaScope$2$1 extends gh4 implements nl3<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ InputManager $inputManager;
    final /* synthetic */ UiMediaScopeImpl $scope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaQuery_androidKt$obtainUiMediaScope$2$1(InputManager inputManager, UiMediaScopeImpl uiMediaScopeImpl) {
        super(1);
        this.$inputManager = inputManager;
        this.$scope = uiMediaScopeImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.hardware.input.InputManager$InputDeviceListener, androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$2$1$listener$1] */
    @Override // defpackage.nl3
    public final DisposableEffectResult invoke(DisposableEffectScope disposableEffectScope) {
        final UiMediaScopeImpl uiMediaScopeImpl = this.$scope;
        final InputManager inputManager = this.$inputManager;
        final ?? r4 = new InputManager.InputDeviceListener() { // from class: androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$2$1$listener$1
            @Override // android.hardware.input.InputManager.InputDeviceListener
            public void onInputDeviceAdded(int i) {
                update();
            }

            @Override // android.hardware.input.InputManager.InputDeviceListener
            public void onInputDeviceChanged(int i) {
                update();
            }

            @Override // android.hardware.input.InputManager.InputDeviceListener
            public void onInputDeviceRemoved(int i) {
                update();
            }

            public final void update() {
                uiMediaScopeImpl.m5727set_anyPointerZYK4Wgo(MediaQuery_androidKt.resolvePointerPrecision(inputManager));
                uiMediaScopeImpl.setHasPhysicalKeyboard(MediaQuery_androidKt.hasPhysicalKeyboard(inputManager));
            }
        };
        this.$inputManager.registerInputDeviceListener(r4, new Handler(Looper.getMainLooper()));
        r4.update();
        final InputManager inputManager2 = this.$inputManager;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.adaptive.MediaQuery_androidKt$obtainUiMediaScope$2$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                inputManager2.unregisterInputDeviceListener(r4);
            }
        };
    }
}
