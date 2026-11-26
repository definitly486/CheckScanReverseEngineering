package androidx.compose.ui.adaptive;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.hardware.input.InputManager;
import android.view.InputDevice;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.UiMediaScope;
import androidx.compose.ui.platform.WindowInfo;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaQuery_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasPhysicalKeyboard(InputManager inputManager) {
        int[] inputDeviceIds;
        if (inputManager != null && (inputDeviceIds = inputManager.getInputDeviceIds()) != null) {
            for (int i : inputDeviceIds) {
                InputDevice inputDevice = inputManager.getInputDevice(i);
                if (inputDevice != null && inputDevice.getKeyboardType() == 2 && !inputDevice.isVirtual()) {
                    return true;
                }
            }
        }
        return false;
    }

    private static final boolean hasSource(int i, int i2) {
        return (i & i2) == i2;
    }

    private static final boolean hasValidPointerSource(InputDevice inputDevice, int i, int i2) {
        return (inputDevice.getSources() & i) == i && inputDevice.getMotionRange(i2, i) != null;
    }

    public static /* synthetic */ boolean hasValidPointerSource$default(InputDevice inputDevice, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return hasValidPointerSource(inputDevice, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isAutomotiveDevice(PackageManager packageManager) {
        return packageManager.hasSystemFeature("android.hardware.type.automotive");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isCameraAvailable(PackageManager packageManager) {
        return packageManager.hasSystemFeature("android.hardware.camera.any");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isDocked(Intent intent) {
        return (intent == null || intent.getIntExtra("android.intent.extra.DOCK_STATE", 0) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isImeVisible(WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat != null && windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isMicAvailable(PackageManager packageManager) {
        return packageManager.hasSystemFeature("android.hardware.microphone");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isTvDevice(PackageManager packageManager) {
        return packageManager.hasSystemFeature("android.software.leanback");
    }

    public static final UiMediaScope obtainUiMediaScope(Context context, View view, WindowInfo windowInfo, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-590796729, i, -1, "androidx.compose.ui.adaptive.obtainUiMediaScope (MediaQuery.android.kt:121)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            Object systemService = context.getSystemService("input");
            systemService.getClass();
            objRememberedValue = (InputManager) systemService;
            composer.updateRememberedValue(objRememberedValue);
        }
        InputManager inputManager = (InputManager) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = Boolean.valueOf(isImeVisible(ViewCompat.getRootWindowInsets(view)));
            composer.updateRememberedValue(objRememberedValue2);
        }
        boolean zBooleanValue = ((Boolean) objRememberedValue2).booleanValue();
        Object objRememberedValue3 = composer.rememberedValue();
        if (objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new UiMediaScopeImpl(context, inputManager, windowInfo, zBooleanValue);
            composer.updateRememberedValue(objRememberedValue3);
        }
        UiMediaScopeImpl uiMediaScopeImpl = (UiMediaScopeImpl) objRememberedValue3;
        uiMediaScopeImpl.set_windowInfo(windowInfo);
        boolean zChangedInstance = composer.changedInstance(context);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue4 == companion.getEmpty()) {
            objRememberedValue4 = new MediaQuery_androidKt$obtainUiMediaScope$1$1(context, uiMediaScopeImpl, null);
            composer.updateRememberedValue(objRememberedValue4);
        }
        int i2 = i & 14;
        EffectsKt.LaunchedEffect(context, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue4, composer, i2);
        boolean zChangedInstance2 = composer.changedInstance(inputManager);
        Object objRememberedValue5 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue5 == companion.getEmpty()) {
            objRememberedValue5 = new MediaQuery_androidKt$obtainUiMediaScope$2$1(inputManager, uiMediaScopeImpl);
            composer.updateRememberedValue(objRememberedValue5);
        }
        EffectsKt.DisposableEffect(context, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, composer, i2);
        boolean zChangedInstance3 = composer.changedInstance(view);
        Object objRememberedValue6 = composer.rememberedValue();
        if (zChangedInstance3 || objRememberedValue6 == companion.getEmpty()) {
            objRememberedValue6 = new MediaQuery_androidKt$obtainUiMediaScope$3$1(view, uiMediaScopeImpl);
            composer.updateRememberedValue(objRememberedValue6);
        }
        EffectsKt.DisposableEffect(view, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue6, composer, (i >> 3) & 14);
        boolean zChangedInstance4 = composer.changedInstance(context);
        Object objRememberedValue7 = composer.rememberedValue();
        if (zChangedInstance4 || objRememberedValue7 == companion.getEmpty()) {
            objRememberedValue7 = new MediaQuery_androidKt$obtainUiMediaScope$4$1(context, uiMediaScopeImpl);
            composer.updateRememberedValue(objRememberedValue7);
        }
        EffectsKt.DisposableEffect(context, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue7, composer, i2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return uiMediaScopeImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String resolvePointerPrecision(InputManager inputManager) {
        if (inputManager == null) {
            return UiMediaScope.PointerPrecision.Companion.m5704getNonefpxItnM();
        }
        String strM5704getNonefpxItnM = UiMediaScope.PointerPrecision.Companion.m5704getNonefpxItnM();
        for (int i : inputManager.getInputDeviceIds()) {
            InputDevice inputDevice = inputManager.getInputDevice(i);
            if (inputDevice != null) {
                if (hasValidPointerSource$default(inputDevice, 8194, 0, 2, null) || hasValidPointerSource$default(inputDevice, InputDeviceCompat.SOURCE_STYLUS, 0, 2, null) || hasValidPointerSource$default(inputDevice, InputDeviceCompat.SOURCE_TOUCHPAD, 0, 2, null)) {
                    return UiMediaScope.PointerPrecision.Companion.m5703getFinefpxItnM();
                }
                if (hasValidPointerSource$default(inputDevice, InputDeviceCompat.SOURCE_TOUCHSCREEN, 0, 2, null)) {
                    strM5704getNonefpxItnM = UiMediaScope.PointerPrecision.Companion.m5702getCoarsefpxItnM();
                } else {
                    UiMediaScope.PointerPrecision.Companion companion = UiMediaScope.PointerPrecision.Companion;
                    if (UiMediaScope.PointerPrecision.m5697equalsimpl0(strM5704getNonefpxItnM, companion.m5704getNonefpxItnM()) && (hasValidPointerSource$default(inputDevice, InputDeviceCompat.SOURCE_JOYSTICK, 0, 2, null) || hasValidPointerSource$default(inputDevice, 1025, 0, 2, null))) {
                        strM5704getNonefpxItnM = companion.m5701getBluntfpxItnM();
                    }
                }
            }
        }
        return strM5704getNonefpxItnM;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String resolvePosture(WindowLayoutInfo windowLayoutInfo) {
        Object next;
        List<DisplayFeature> displayFeatures = windowLayoutInfo.getDisplayFeatures();
        ArrayList arrayList = new ArrayList();
        for (Object obj : displayFeatures) {
            if (obj instanceof FoldingFeature) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!aa4.e(((FoldingFeature) next).getState(), FoldingFeature.State.HALF_OPENED));
        FoldingFeature foldingFeature = (FoldingFeature) next;
        if (foldingFeature == null) {
            return UiMediaScope.Posture.Companion.m5713getFlatm18o9QQ();
        }
        return aa4.e(foldingFeature.getOrientation(), FoldingFeature.Orientation.HORIZONTAL) ? UiMediaScope.Posture.Companion.m5714getTabletopm18o9QQ() : UiMediaScope.Posture.Companion.m5712getBookm18o9QQ();
    }
}
