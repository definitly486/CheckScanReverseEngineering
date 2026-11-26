package androidx.compose.foundation.contextmenu;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuUi_androidKt {
    public static final ContextMenuColors computeContextMenuColors(int i, int i2, Composer composer, int i3) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1689505294, i3, -1, "androidx.compose.foundation.contextmenu.computeContextMenuColors (ContextMenuUi.android.kt:41)");
        }
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        Object obj = (Configuration) composer.consume(AndroidCompositionLocals_androidKt.getLocalConfiguration());
        boolean zChanged = composer.changed(obj) | composer.changed(context);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            long jM1421resolveColorg2O1Hgs = m1421resolveColorg2O1Hgs(context, i, R.attr.colorBackground, ContextMenuUiKt.getDefaultContextMenuColors().m1397getBackgroundColor0d7_KjU());
            ColorStateList colorStateListResolveColorStateList = resolveColorStateList(context, i2, R.attr.textColorPrimary);
            long jM1420enabledColor4WTKRHQ = m1420enabledColor4WTKRHQ(colorStateListResolveColorStateList, ContextMenuUiKt.getDefaultContextMenuColors().m1401getTextColor0d7_KjU());
            long jM1419disabledColor4WTKRHQ = m1419disabledColor4WTKRHQ(colorStateListResolveColorStateList, ContextMenuUiKt.getDefaultContextMenuColors().m1399getDisabledTextColor0d7_KjU());
            Object contextMenuColors = new ContextMenuColors(jM1421resolveColorg2O1Hgs, jM1420enabledColor4WTKRHQ, jM1420enabledColor4WTKRHQ, jM1419disabledColor4WTKRHQ, jM1419disabledColor4WTKRHQ, null);
            composer.updateRememberedValue(contextMenuColors);
            objRememberedValue = contextMenuColors;
        }
        ContextMenuColors contextMenuColors2 = (ContextMenuColors) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return contextMenuColors2;
    }

    /* JADX INFO: renamed from: disabledColor-4WTKRHQ, reason: not valid java name */
    private static final long m1419disabledColor4WTKRHQ(ColorStateList colorStateList, long j) {
        int iM6286toArgb8_81llA = ColorKt.m6286toArgb8_81llA(j);
        Integer numValueOf = colorStateList != null ? Integer.valueOf(colorStateList.getColorForState(new int[]{-16842910}, iM6286toArgb8_81llA)) : null;
        return (numValueOf == null || numValueOf.intValue() == iM6286toArgb8_81llA) ? j : ColorKt.Color(numValueOf.intValue());
    }

    /* JADX INFO: renamed from: enabledColor-4WTKRHQ, reason: not valid java name */
    private static final long m1420enabledColor4WTKRHQ(ColorStateList colorStateList, long j) {
        int iM6286toArgb8_81llA = ColorKt.m6286toArgb8_81llA(j);
        Integer numValueOf = colorStateList != null ? Integer.valueOf(colorStateList.getColorForState(new int[]{R.attr.state_enabled}, iM6286toArgb8_81llA)) : null;
        return (numValueOf == null || numValueOf.intValue() == iM6286toArgb8_81llA) ? j : ColorKt.Color(numValueOf.intValue());
    }

    /* JADX INFO: renamed from: resolveColor-g2O1Hgs, reason: not valid java name */
    private static final long m1421resolveColorg2O1Hgs(Context context, int i, int i2, long j) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
        int iM6286toArgb8_81llA = ColorKt.m6286toArgb8_81llA(j);
        int color = typedArrayObtainStyledAttributes.getColor(0, iM6286toArgb8_81llA);
        typedArrayObtainStyledAttributes.recycle();
        return color == iM6286toArgb8_81llA ? j : ColorKt.Color(color);
    }

    private static final ColorStateList resolveColorStateList(Context context, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{i2});
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(0);
        typedArrayObtainStyledAttributes.recycle();
        return colorStateList;
    }

    public static final ContextMenuColors computeContextMenuColors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1428061410, i, -1, "androidx.compose.foundation.contextmenu.computeContextMenuColors (ContextMenuUi.android.kt:32)");
        }
        ContextMenuColors contextMenuColorsComputeContextMenuColors = computeContextMenuColors(R.style.Widget.PopupMenu, R.style.TextAppearance.Widget.PopupMenu.Large, composer, 54);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return contextMenuColorsComputeContextMenuColors;
    }
}
