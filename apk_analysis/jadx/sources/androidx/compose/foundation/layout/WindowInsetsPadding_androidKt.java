package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.dh0;
import defpackage.ec9;
import defpackage.fc9;
import defpackage.ii3;
import defpackage.j59;
import defpackage.jy2;
import defpackage.ki3;
import defpackage.ly2;
import defpackage.nl3;
import defpackage.si1;
import defpackage.u00;
import defpackage.uu2;
import defpackage.vu2;
import defpackage.wu2;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsPadding_androidKt {
    private static final nl3<WindowInsetsHolder, WindowInsets> captionBarLambda;
    private static final nl3<WindowInsetsHolder, WindowInsets> waterfallLambda;
    private static final nl3<WindowInsetsHolder, WindowInsets> safeDrawingLambda = new ii3(3);
    private static final nl3<WindowInsetsHolder, WindowInsets> safeGesturesLambda = new u00(7);
    private static final nl3<WindowInsetsHolder, WindowInsets> safeContentLambda = new dh0(3);
    private static final nl3<WindowInsetsHolder, WindowInsets> systemBarsLambda = new si1(4);
    private static final nl3<WindowInsetsHolder, WindowInsets> displayCutoutLambda = new ly2(5);
    private static final nl3<WindowInsetsHolder, WindowInsets> statusBarsLambda = new uu2(1);
    private static final nl3<WindowInsetsHolder, WindowInsets> imeLambda = new vu2(7);
    private static final nl3<WindowInsetsHolder, WindowInsets> navigationBarsLambda = new wu2(8);
    private static final nl3<WindowInsetsHolder, WindowInsets> systemGesturesLambda = new jy2(4);
    private static final nl3<WindowInsetsHolder, WindowInsets> mandatorySystemGesturesLambda = new ki3(3);

    static {
        int i = 1;
        captionBarLambda = new ec9(i);
        waterfallLambda = new fc9(i);
    }

    public static final Modifier captionBarPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$captionBarPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), captionBarLambda);
    }

    public static final Modifier displayCutoutPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$displayCutoutPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), displayCutoutLambda);
    }

    public static final Modifier imePadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$imePadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), imeLambda);
    }

    public static final Modifier mandatorySystemGesturesPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), mandatorySystemGesturesLambda);
    }

    public static final Modifier navigationBarsPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), navigationBarsLambda);
    }

    public static final Modifier safeContentPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$safeContentPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), safeContentLambda);
    }

    public static final Modifier safeDrawingPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), safeDrawingLambda);
    }

    public static final Modifier safeGesturesPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$safeGesturesPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), safeGesturesLambda);
    }

    public static final Modifier statusBarsPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$statusBarsPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), statusBarsLambda);
    }

    public static final Modifier systemBarsPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$systemBarsPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), systemBarsLambda);
    }

    public static final Modifier systemGesturesPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$systemGesturesPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), systemGesturesLambda);
    }

    public static final Modifier waterfallPadding(Modifier modifier) {
        return windowInsetsPadding(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPadding_androidKt$waterfallPadding$$inlined$debugInspectorInfo$1() : InspectableValueKt.getNoInspectorInfo(), waterfallLambda);
    }

    private static final Modifier windowInsetsPadding(Modifier modifier, nl3<? super InspectorInfo, j59> nl3Var, nl3<? super WindowInsetsHolder, ? extends WindowInsets> nl3Var2) {
        return modifier.then(new SystemInsetsPaddingModifierElement(nl3Var, nl3Var2));
    }
}
