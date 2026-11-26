package defpackage;

import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.Typography;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.text.font.FontFamily;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes.dex */
public final class u49 {
    public static final u49 a = new u49();

    public static final void a(final bm3 bm3Var, Composer composer, final int i) {
        int i2;
        bm3Var.getClass();
        Composer composerStartRestartGroup = composer.startRestartGroup(1451531374);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1451531374, i2, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme (CheckscanTheme.kt:10)");
            }
            final mc1 mc1Var = oc1.a;
            final ed1 ed1Var = gd1.b;
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{oc1.b.provides(mc1Var), gd1.c.provides(ed1Var)}, ComposableLambdaKt.rememberComposableLambda(-2091495122, true, new bm3() { // from class: zc1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2091495122, iIntValue, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<anonymous> (CheckscanTheme.kt:17)");
                        }
                        mc1 mc1Var2 = mc1Var;
                        mc1Var2.getClass();
                        long j = mc1Var2.e;
                        long j2 = mc1Var2.z;
                        long j3 = mc1Var2.a;
                        long j4 = mc1Var2.f;
                        long j5 = mc1Var2.l;
                        long j6 = mc1Var2.g;
                        long j7 = mc1Var2.j;
                        long j8 = mc1Var2.h;
                        long j9 = mc1Var2.x;
                        ColorScheme colorSchemeM3287lightColorScheme_VG5OTI$default = ColorSchemeKt.m3287lightColorScheme_VG5OTI$default(j, j2, j3, j, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, j4, j5, j2, j5, j6, j7, 0L, 0L, 0L, j9, j2, mc1Var2.v, j9, j8, j6, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, -264757264, 65535, null);
                        FontFamily fontFamily = gd1.a;
                        ed1 ed1Var2 = ed1Var;
                        ed1Var2.getClass();
                        Typography typography = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                        FontFamily fontFamily2 = ed1Var2.a;
                        MaterialThemeKt.MaterialTheme(colorSchemeM3287lightColorScheme_VG5OTI$default, null, typography.copy(gd1.a(typography.getDisplayLarge(), fontFamily2), gd1.a(typography.getDisplayMedium(), fontFamily2), gd1.a(typography.getDisplaySmall(), fontFamily2), gd1.a(typography.getHeadlineLarge(), fontFamily2), gd1.a(typography.getHeadlineMedium(), fontFamily2), gd1.a(typography.getHeadlineSmall(), fontFamily2), gd1.a(typography.getTitleLarge(), fontFamily2), gd1.a(typography.getTitleMedium(), fontFamily2), gd1.a(typography.getTitleSmall(), fontFamily2), gd1.a(typography.getBodyLarge(), fontFamily2), gd1.a(typography.getBodyMedium(), fontFamily2), gd1.a(typography.getBodySmall(), fontFamily2), gd1.a(typography.getLabelLarge(), fontFamily2), gd1.a(typography.getLabelMedium(), fontFamily2), gd1.a(typography.getLabelSmall(), fontFamily2)), bm3Var, composer2, 0, 2);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composer2.skipToGroupEnd();
                    }
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ad1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i | 1);
                    u49.a(bm3Var, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }

    public static e49 b(HttpsURLConnection httpsURLConnection) throws IOException {
        if (httpsURLConnection.getResponseCode() >= 400) {
            InputStream errorStream = httpsURLConnection.getErrorStream();
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(errorStream);
                try {
                    String strB = z98.b(inputStreamReader);
                    inputStreamReader.close();
                    URL url = httpsURLConnection.getURL();
                    url.getClass();
                    e49 e49Var = new e49(url, httpsURLConnection.getResponseCode(), strB);
                    m96.c(errorStream, null);
                    return e49Var;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(inputStreamReader, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    m96.c(errorStream, th3);
                    throw th4;
                }
            }
        }
        InputStream inputStream = httpsURLConnection.getInputStream();
        try {
            InputStreamReader inputStreamReader2 = new InputStreamReader(inputStream);
            try {
                String strB2 = z98.b(inputStreamReader2);
                inputStreamReader2.close();
                URL url2 = httpsURLConnection.getURL();
                url2.getClass();
                e49 e49Var2 = new e49(url2, httpsURLConnection.getResponseCode(), strB2);
                m96.c(inputStream, null);
                return e49Var2;
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    m96.c(inputStreamReader2, th5);
                    throw th6;
                }
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                m96.c(inputStream, th7);
                throw th8;
            }
        }
    }
}
