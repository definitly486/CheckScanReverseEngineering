package androidx.compose.foundation.style;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface StyleScope extends CompositionLocalAccessorScope, Density {
    static /* synthetic */ void clip$default(StyleScope styleScope, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clip");
            return;
        }
        if ((i & 1) != 0) {
            z = true;
        }
        styleScope.clip(z);
    }

    void alpha(float f);

    void animate(AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2, Style style);

    void animate(AnimationSpec<Float> animationSpec, Style style);

    void animate(Style style);

    void background(Brush brush);

    /* JADX INFO: renamed from: background-8_81llA */
    void mo2353background8_81llA(long j);

    /* JADX INFO: renamed from: baselineShift-4Dl_Bck */
    void mo2354baselineShift4Dl_Bck(float f);

    /* JADX INFO: renamed from: border-D5KLDUw */
    void mo2355borderD5KLDUw(float f, Brush brush);

    /* JADX INFO: renamed from: border-cXLIe8U */
    void mo2356bordercXLIe8U(float f, long j);

    void borderBrush(Brush brush);

    /* JADX INFO: renamed from: borderColor-8_81llA */
    void mo2357borderColor8_81llA(long j);

    /* JADX INFO: renamed from: borderWidth-0680j_4 */
    void mo2358borderWidth0680j_4(float f);

    /* JADX INFO: renamed from: bottom-0680j_4 */
    void mo2359bottom0680j_4(float f);

    void clip(boolean z);

    void contentBrush(Brush brush);

    /* JADX INFO: renamed from: contentColor-8_81llA */
    void mo2360contentColor8_81llA(long j);

    /* JADX INFO: renamed from: contentPadding-0680j_4 */
    void mo2361contentPadding0680j_4(float f);

    /* JADX INFO: renamed from: contentPadding-YgX7TsA */
    void mo2362contentPaddingYgX7TsA(float f, float f2);

    /* JADX INFO: renamed from: contentPadding-a9UjIt4 */
    void mo2363contentPaddinga9UjIt4(float f, float f2, float f3, float f4);

    /* JADX INFO: renamed from: contentPaddingBottom-0680j_4 */
    void mo2364contentPaddingBottom0680j_4(float f);

    /* JADX INFO: renamed from: contentPaddingEnd-0680j_4 */
    void mo2365contentPaddingEnd0680j_4(float f);

    /* JADX INFO: renamed from: contentPaddingHorizontal-0680j_4 */
    void mo2366contentPaddingHorizontal0680j_4(float f);

    /* JADX INFO: renamed from: contentPaddingStart-0680j_4 */
    void mo2367contentPaddingStart0680j_4(float f);

    /* JADX INFO: renamed from: contentPaddingTop-0680j_4 */
    void mo2368contentPaddingTop0680j_4(float f);

    /* JADX INFO: renamed from: contentPaddingVertical-0680j_4 */
    void mo2369contentPaddingVertical0680j_4(float f);

    void dropShadow(Shadow shadow);

    void dropShadow(Shadow... shadowArr);

    /* JADX INFO: renamed from: externalPadding-0680j_4 */
    void mo2370externalPadding0680j_4(float f);

    /* JADX INFO: renamed from: externalPadding-YgX7TsA */
    void mo2371externalPaddingYgX7TsA(float f, float f2);

    /* JADX INFO: renamed from: externalPadding-a9UjIt4 */
    void mo2372externalPaddinga9UjIt4(float f, float f2, float f3, float f4);

    /* JADX INFO: renamed from: externalPaddingBottom-0680j_4 */
    void mo2373externalPaddingBottom0680j_4(float f);

    /* JADX INFO: renamed from: externalPaddingEnd-0680j_4 */
    void mo2374externalPaddingEnd0680j_4(float f);

    /* JADX INFO: renamed from: externalPaddingHorizontal-0680j_4 */
    void mo2375externalPaddingHorizontal0680j_4(float f);

    /* JADX INFO: renamed from: externalPaddingStart-0680j_4 */
    void mo2376externalPaddingStart0680j_4(float f);

    /* JADX INFO: renamed from: externalPaddingTop-0680j_4 */
    void mo2377externalPaddingTop0680j_4(float f);

    /* JADX INFO: renamed from: externalPaddingVertical-0680j_4 */
    void mo2378externalPaddingVertical0680j_4(float f);

    void fontFamily(FontFamily fontFamily);

    /* JADX INFO: renamed from: fontSize--R2X_6o */
    void mo2379fontSizeR2X_6o(long j);

    /* JADX INFO: renamed from: fontStyle-nzbMABs */
    void mo2380fontStylenzbMABs(int i);

    /* JADX INFO: renamed from: fontSynthesis-6p3vJLY */
    void mo2381fontSynthesis6p3vJLY(int i);

    void fontWeight(FontWeight fontWeight);

    void foreground(Brush brush);

    /* JADX INFO: renamed from: foreground-8_81llA */
    void mo2382foreground8_81llA(long j);

    StyleState getState();

    void height(float f);

    /* JADX INFO: renamed from: height-0680j_4 */
    void mo2398height0680j_4(float f);

    /* JADX INFO: renamed from: hyphens--3fSNIE */
    void mo2399hyphens3fSNIE(int i);

    void innerShadow(Shadow shadow);

    void innerShadow(Shadow... shadowArr);

    /* JADX INFO: renamed from: left-0680j_4 */
    void mo2400left0680j_4(float f);

    /* JADX INFO: renamed from: letterSpacing--R2X_6o */
    void mo2401letterSpacingR2X_6o(long j);

    /* JADX INFO: renamed from: lineBreak-CZqVlQI */
    void mo2402lineBreakCZqVlQI(int i);

    /* JADX INFO: renamed from: lineHeight--R2X_6o */
    void mo2403lineHeightR2X_6o(long j);

    /* JADX INFO: renamed from: maxHeight-0680j_4 */
    void mo2404maxHeight0680j_4(float f);

    /* JADX INFO: renamed from: maxSize-EaSLcWc */
    void mo2405maxSizeEaSLcWc(long j);

    /* JADX INFO: renamed from: maxSize-YgX7TsA */
    void mo2406maxSizeYgX7TsA(float f, float f2);

    /* JADX INFO: renamed from: maxWidth-0680j_4 */
    void mo2407maxWidth0680j_4(float f);

    /* JADX INFO: renamed from: minHeight-0680j_4 */
    void mo2408minHeight0680j_4(float f);

    /* JADX INFO: renamed from: minSize-EaSLcWc */
    void mo2409minSizeEaSLcWc(long j);

    /* JADX INFO: renamed from: minSize-YgX7TsA */
    void mo2410minSizeYgX7TsA(float f, float f2);

    /* JADX INFO: renamed from: minWidth-0680j_4 */
    void mo2411minWidth0680j_4(float f);

    /* JADX INFO: renamed from: right-0680j_4 */
    void mo2412right0680j_4(float f);

    void rotationX(float f);

    void rotationY(float f);

    void rotationZ(float f);

    void scale(float f);

    void scaleX(float f);

    void scaleY(float f);

    void shape(Shape shape);

    /* JADX INFO: renamed from: size-0680j_4 */
    void mo2423size0680j_4(float f);

    /* JADX INFO: renamed from: size-EaSLcWc */
    void mo2424sizeEaSLcWc(long j);

    /* JADX INFO: renamed from: size-YgX7TsA */
    void mo2425sizeYgX7TsA(float f, float f2);

    <T> void state(StyleStateKey<T> styleStateKey, Style style, bm3<? super StyleStateKey<T>, ? super StyleState, Boolean> bm3Var);

    /* JADX INFO: renamed from: textAlign-aXe7zB0 */
    void mo2426textAlignaXe7zB0(int i);

    void textDecoration(TextDecoration textDecoration);

    /* JADX INFO: renamed from: textDirection-Hejc4pk */
    void mo2427textDirectionHejc4pk(int i);

    void textIndent(TextIndent textIndent);

    void textStyle(TextStyle textStyle);

    /* JADX INFO: renamed from: top-0680j_4 */
    void mo2428top0680j_4(float f);

    /* JADX INFO: renamed from: transformOrigin-__ExYCQ */
    void mo2429transformOrigin__ExYCQ(long j);

    void translation(float f, float f2);

    /* JADX INFO: renamed from: translation-k-4lQ0M */
    void mo2430translationk4lQ0M(long j);

    void translationX(float f);

    void translationY(float f);

    void width(float f);

    /* JADX INFO: renamed from: width-0680j_4 */
    void mo2431width0680j_4(float f);

    void zIndex(float f);
}
