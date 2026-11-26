package defpackage;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyKt;
import androidx.compose.ui.text.font.FontKt;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnitKt;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes2.dex */
public final class gd1 {
    public static final FontFamily a;
    public static final ed1 b;
    public static final ProvidableCompositionLocal<ed1> c;

    static {
        FontWeight.Companion companion = FontWeight.Companion;
        FontFamily FontFamily = FontFamilyKt.FontFamily(FontKt.m8584FontYpTlLL0$default(R.font.roboto_reg, companion.getNormal(), 0, 0, 12, null), FontKt.m8584FontYpTlLL0$default(R.font.roboto_medium, companion.getMedium(), 0, 0, 12, null), FontKt.m8584FontYpTlLL0$default(R.font.roboto_bold, companion.getBold(), 0, 0, 12, null));
        a = FontFamily;
        FontFamilyKt.FontFamily(FontKt.m8584FontYpTlLL0$default(R.font.manrope_regular, companion.getNormal(), 0, 0, 12, null), FontKt.m8584FontYpTlLL0$default(R.font.manrope_medium, companion.getMedium(), 0, 0, 12, null), FontKt.m8584FontYpTlLL0$default(R.font.manrope_bold, companion.getBold(), 0, 0, 12, null));
        int i = 16646105;
        jh2 jh2Var = null;
        long j = 0;
        FontStyle fontStyle = null;
        FontSynthesis fontSynthesis = null;
        String str = null;
        long j2 = 0;
        BaselineShift baselineShift = null;
        TextGeometricTransform textGeometricTransform = null;
        LocaleList localeList = null;
        long j3 = 0;
        TextDecoration textDecoration = null;
        Shadow shadow = null;
        DrawStyle drawStyle = null;
        int i2 = 0;
        int i3 = 0;
        TextIndent textIndent = null;
        PlatformTextStyle platformTextStyle = null;
        LineHeightStyle lineHeightStyle = null;
        int i4 = 0;
        int i5 = 0;
        TextMotion textMotion = null;
        b = new ed1(FontFamily, new TextStyle(j, TextUnitKt.getSp(16), companion.getMedium(), fontStyle, fontSynthesis, FontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i2, i3, TextUnitKt.getSp(24), textIndent, platformTextStyle, lineHeightStyle, i4, i5, textMotion, i, jh2Var), new TextStyle(j, TextUnitKt.getSp(18), companion.getMedium(), fontStyle, fontSynthesis, FontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i2, i3, TextUnitKt.getSp(24), textIndent, platformTextStyle, lineHeightStyle, i4, i5, textMotion, i, jh2Var), new TextStyle(j, TextUnitKt.getSp(22), companion.getMedium(), fontStyle, fontSynthesis, FontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i2, i3, TextUnitKt.getSp(28), textIndent, platformTextStyle, lineHeightStyle, i4, i5, textMotion, i, jh2Var), new TextStyle(j, TextUnitKt.getSp(14), companion.getNormal(), fontStyle, fontSynthesis, FontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i2, i3, TextUnitKt.getSp(14), textIndent, platformTextStyle, lineHeightStyle, i4, i5, textMotion, i, jh2Var), new TextStyle(j, TextUnitKt.getSp(12), companion.getNormal(), fontStyle, fontSynthesis, FontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i2, i3, TextUnitKt.getSp(20), textIndent, platformTextStyle, lineHeightStyle, i4, i5, textMotion, i, jh2Var), new TextStyle(j, TextUnitKt.getSp(16), companion.getNormal(), fontStyle, fontSynthesis, FontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i2, i3, TextUnitKt.getSp(24), textIndent, platformTextStyle, lineHeightStyle, i4, i5, textMotion, i, jh2Var));
        c = CompositionLocalKt.staticCompositionLocalOf(new fd1(0));
    }

    public static final TextStyle a(TextStyle textStyle, FontFamily fontFamily) {
        return TextStyle.m8504copyp1EtxEg$default(textStyle, 0L, 0L, null, null, null, fontFamily, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777183, null);
    }
}
