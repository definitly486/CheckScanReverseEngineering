package androidx.compose.material3;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.ar2;
import defpackage.bm3;
import defpackage.gz1;
import defpackage.j59;
import defpackage.zq2;

/* JADX INFO: loaded from: classes2.dex */
public final class MaterialThemeKt {
    private static final ProvidableCompositionLocal<Boolean> LocalUsingExpressiveTheme;
    public static final float TextSelectionBackgroundOpacity = 0.4f;
    private static final ProvidableCompositionLocal<MotionScheme> _localMotionScheme;

    static {
        int i = 2;
        LocalUsingExpressiveTheme = CompositionLocalKt.staticCompositionLocalOf(new zq2(i));
        _localMotionScheme = CompositionLocalKt.staticCompositionLocalOf(new ar2(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean LocalUsingExpressiveTheme$lambda$3() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x019b  */
    /* JADX WARN: Code duplicated, block: B:103:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:72:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:75:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:78:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:87:0x0110  */
    /* JADX WARN: Code duplicated, block: B:89:0x011c  */
    /* JADX WARN: Code duplicated, block: B:90:0x012d  */
    /* JADX WARN: Code duplicated, block: B:92:0x013a  */
    /* JADX WARN: Code duplicated, block: B:93:0x014b  */
    /* JADX WARN: Code duplicated, block: B:95:0x0164  */
    /* JADX WARN: Code duplicated, block: B:98:0x0191  */
    public static final void MaterialExpressiveTheme(ColorScheme colorScheme, MotionScheme motionScheme, Shapes shapes, Typography typography, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        ColorScheme colorScheme2;
        int i3;
        MotionScheme motionScheme2;
        int i4;
        Shapes shapes2;
        int i5;
        int i6;
        Typography typography2;
        int i7;
        bm3<? super Composer, ? super Integer, j59> bm3Var2;
        int i8;
        boolean z;
        ColorScheme colorScheme3;
        MotionScheme motionScheme3;
        Shapes shapes3;
        Typography typography3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        final MotionScheme motionScheme4;
        final Shapes shapes4;
        final Typography typography4;
        ProvidableCompositionLocal<Boolean> providableCompositionLocal;
        final ColorScheme colorScheme4;
        ColorScheme colorScheme5;
        MotionScheme motionScheme5;
        Typography typography5;
        Shapes shapes5;
        Composer composerStartRestartGroup = composer.startRestartGroup(1317329884);
        int i9 = i2 & 1;
        if (i9 != 0) {
            i3 = i | 6;
            colorScheme2 = colorScheme;
        } else if ((i & 6) == 0) {
            colorScheme2 = colorScheme;
            i3 = (composerStartRestartGroup.changed(colorScheme2) ? 4 : 2) | i;
        } else {
            colorScheme2 = colorScheme;
            i3 = i;
        }
        int i10 = i2 & 2;
        if (i10 == 0) {
            if ((i & 48) == 0) {
                motionScheme2 = motionScheme;
                i3 |= composerStartRestartGroup.changed(motionScheme2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    shapes2 = shapes;
                    if (composerStartRestartGroup.changed(shapes2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        typography2 = typography;
                        if (composerStartRestartGroup.changed(typography2)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i2 & 16) != 0) {
                        if ((i & 24576) == 0) {
                            bm3Var2 = bm3Var;
                            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                                i8 = 16384;
                            } else {
                                i8 = 8192;
                            }
                            i3 |= i8;
                        }
                        if ((i3 & 9363) != 9362) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i9 != 0) {
                                colorScheme2 = null;
                            }
                            if (i10 != 0) {
                                motionScheme4 = null;
                            } else {
                                motionScheme4 = motionScheme2;
                            }
                            if (i4 != 0) {
                                shapes4 = null;
                            } else {
                                shapes4 = shapes2;
                            }
                            if (i6 != 0) {
                                typography4 = null;
                            } else {
                                typography4 = typography2;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                            }
                            providableCompositionLocal = LocalUsingExpressiveTheme;
                            if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                                composerStartRestartGroup.startReplaceGroup(1458674654);
                                if (colorScheme2 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-1061322393);
                                    ColorScheme colorScheme6 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                                    composerStartRestartGroup.endReplaceGroup();
                                    colorScheme5 = colorScheme6;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-1061323292);
                                    composerStartRestartGroup.endReplaceGroup();
                                    colorScheme5 = colorScheme2;
                                }
                                if (motionScheme4 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-1061320152);
                                    MotionScheme motionScheme6 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                                    composerStartRestartGroup.endReplaceGroup();
                                    motionScheme5 = motionScheme6;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-1061321082);
                                    composerStartRestartGroup.endReplaceGroup();
                                    motionScheme5 = motionScheme4;
                                }
                                if (typography4 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-1061318010);
                                    Typography typography6 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                                    composerStartRestartGroup.endReplaceGroup();
                                    typography5 = typography6;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-1061318878);
                                    composerStartRestartGroup.endReplaceGroup();
                                    typography5 = typography4;
                                }
                                if (shapes4 == null) {
                                    composerStartRestartGroup.startReplaceGroup(-1061316190);
                                    Shapes shapes6 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                                    composerStartRestartGroup.endReplaceGroup();
                                    shapes5 = shapes6;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(-1061316934);
                                    composerStartRestartGroup.endReplaceGroup();
                                    shapes5 = shapes4;
                                }
                                MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme4 = colorScheme2;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1459011221);
                                colorScheme4 = colorScheme2;
                                CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                                    public final void invoke(Composer composer2, int i11) {
                                        Shapes shapes7;
                                        Typography typography7;
                                        if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                        }
                                        ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                        if (colorSchemeExpressiveLightColorScheme == null) {
                                            colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                        }
                                        ColorScheme colorScheme7 = colorSchemeExpressiveLightColorScheme;
                                        MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                        if (motionSchemeExpressive$material3 == null) {
                                            motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                        }
                                        MotionScheme motionScheme7 = motionSchemeExpressive$material3;
                                        Shapes shapes8 = shapes4;
                                        if (shapes8 == null) {
                                            shapes7 = new Shapes(null, null, null, null, null, 31, null);
                                        } else {
                                            shapes7 = shapes8;
                                        }
                                        Typography typography8 = typography4;
                                        if (typography8 == null) {
                                            typography7 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                        } else {
                                            typography7 = typography8;
                                        }
                                        MaterialThemeKt.MaterialTheme(colorScheme7, motionScheme7, shapes7, typography7, bm3Var, composer2, 0, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                        invoke(composer2, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                                composerStartRestartGroup.endReplaceGroup();
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            colorScheme3 = colorScheme4;
                            motionScheme3 = motionScheme4;
                            shapes3 = shapes4;
                            typography3 = typography4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            colorScheme3 = colorScheme2;
                            motionScheme3 = motionScheme2;
                            shapes3 = shapes2;
                            typography3 = typography2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                        }
                    }
                    i3 |= 24576;
                    bm3Var2 = bm3Var;
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i9 != 0) {
                            colorScheme2 = null;
                        }
                        if (i10 != 0) {
                            motionScheme4 = null;
                        } else {
                            motionScheme4 = motionScheme2;
                        }
                        if (i4 != 0) {
                            shapes4 = null;
                        } else {
                            shapes4 = shapes2;
                        }
                        if (i6 != 0) {
                            typography4 = null;
                        } else {
                            typography4 = typography2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                        }
                        providableCompositionLocal = LocalUsingExpressiveTheme;
                        if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                            composerStartRestartGroup.startReplaceGroup(1458674654);
                            if (colorScheme2 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061322393);
                                ColorScheme colorScheme7 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme7;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061323292);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme2;
                            }
                            if (motionScheme4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061320152);
                                MotionScheme motionScheme7 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme7;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061321082);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme4;
                            }
                            if (typography4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061318010);
                                Typography typography7 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography7;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061318878);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography4;
                            }
                            if (shapes4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061316190);
                                Shapes shapes7 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes7;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061316934);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes4;
                            }
                            MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme4 = colorScheme2;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1459011221);
                            colorScheme4 = colorScheme2;
                            CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                                public final void invoke(Composer composer2, int i11) {
                                    Shapes shapes8;
                                    Typography typography8;
                                    if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                    }
                                    ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                    if (colorSchemeExpressiveLightColorScheme == null) {
                                        colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                    }
                                    ColorScheme colorScheme8 = colorSchemeExpressiveLightColorScheme;
                                    MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                    if (motionSchemeExpressive$material3 == null) {
                                        motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                    }
                                    MotionScheme motionScheme8 = motionSchemeExpressive$material3;
                                    Shapes shapes9 = shapes4;
                                    if (shapes9 == null) {
                                        shapes8 = new Shapes(null, null, null, null, null, 31, null);
                                    } else {
                                        shapes8 = shapes9;
                                    }
                                    Typography typography9 = typography4;
                                    if (typography9 == null) {
                                        typography8 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                    } else {
                                        typography8 = typography9;
                                    }
                                    MaterialThemeKt.MaterialTheme(colorScheme8, motionScheme8, shapes8, typography8, bm3Var, composer2, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorScheme3 = colorScheme4;
                        motionScheme3 = motionScheme4;
                        shapes3 = shapes4;
                        typography3 = typography4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        colorScheme3 = colorScheme2;
                        motionScheme3 = motionScheme2;
                        shapes3 = shapes2;
                        typography3 = typography2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                    }
                }
                i3 |= 3072;
                typography2 = typography;
                if ((i2 & 16) != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i9 != 0) {
                            colorScheme2 = null;
                        }
                        if (i10 != 0) {
                            motionScheme4 = null;
                        } else {
                            motionScheme4 = motionScheme2;
                        }
                        if (i4 != 0) {
                            shapes4 = null;
                        } else {
                            shapes4 = shapes2;
                        }
                        if (i6 != 0) {
                            typography4 = null;
                        } else {
                            typography4 = typography2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                        }
                        providableCompositionLocal = LocalUsingExpressiveTheme;
                        if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                            composerStartRestartGroup.startReplaceGroup(1458674654);
                            if (colorScheme2 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061322393);
                                ColorScheme colorScheme8 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme8;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061323292);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme2;
                            }
                            if (motionScheme4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061320152);
                                MotionScheme motionScheme8 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme8;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061321082);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme4;
                            }
                            if (typography4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061318010);
                                Typography typography8 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography8;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061318878);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography4;
                            }
                            if (shapes4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061316190);
                                Shapes shapes8 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes8;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061316934);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes4;
                            }
                            MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme4 = colorScheme2;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1459011221);
                            colorScheme4 = colorScheme2;
                            CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                                public final void invoke(Composer composer2, int i11) {
                                    Shapes shapes9;
                                    Typography typography9;
                                    if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                    }
                                    ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                    if (colorSchemeExpressiveLightColorScheme == null) {
                                        colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                    }
                                    ColorScheme colorScheme9 = colorSchemeExpressiveLightColorScheme;
                                    MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                    if (motionSchemeExpressive$material3 == null) {
                                        motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                    }
                                    MotionScheme motionScheme9 = motionSchemeExpressive$material3;
                                    Shapes shapes10 = shapes4;
                                    if (shapes10 == null) {
                                        shapes9 = new Shapes(null, null, null, null, null, 31, null);
                                    } else {
                                        shapes9 = shapes10;
                                    }
                                    Typography typography10 = typography4;
                                    if (typography10 == null) {
                                        typography9 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                    } else {
                                        typography9 = typography10;
                                    }
                                    MaterialThemeKt.MaterialTheme(colorScheme9, motionScheme9, shapes9, typography9, bm3Var, composer2, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorScheme3 = colorScheme4;
                        motionScheme3 = motionScheme4;
                        shapes3 = shapes4;
                        typography3 = typography4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        colorScheme3 = colorScheme2;
                        motionScheme3 = motionScheme2;
                        shapes3 = shapes2;
                        typography3 = typography2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                    }
                }
                i3 |= 24576;
                bm3Var2 = bm3Var;
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        colorScheme2 = null;
                    }
                    if (i10 != 0) {
                        motionScheme4 = null;
                    } else {
                        motionScheme4 = motionScheme2;
                    }
                    if (i4 != 0) {
                        shapes4 = null;
                    } else {
                        shapes4 = shapes2;
                    }
                    if (i6 != 0) {
                        typography4 = null;
                    } else {
                        typography4 = typography2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                    }
                    providableCompositionLocal = LocalUsingExpressiveTheme;
                    if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1458674654);
                        if (colorScheme2 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061322393);
                            ColorScheme colorScheme9 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme9;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061323292);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme2;
                        }
                        if (motionScheme4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061320152);
                            MotionScheme motionScheme9 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme9;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061321082);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme4;
                        }
                        if (typography4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061318010);
                            Typography typography9 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography9;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061318878);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography4;
                        }
                        if (shapes4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061316190);
                            Shapes shapes9 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes9;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061316934);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes4;
                        }
                        MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme4 = colorScheme2;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1459011221);
                        colorScheme4 = colorScheme2;
                        CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                            public final void invoke(Composer composer2, int i11) {
                                Shapes shapes10;
                                Typography typography10;
                                if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                }
                                ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                if (colorSchemeExpressiveLightColorScheme == null) {
                                    colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                }
                                ColorScheme colorScheme10 = colorSchemeExpressiveLightColorScheme;
                                MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                if (motionSchemeExpressive$material3 == null) {
                                    motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                }
                                MotionScheme motionScheme10 = motionSchemeExpressive$material3;
                                Shapes shapes11 = shapes4;
                                if (shapes11 == null) {
                                    shapes10 = new Shapes(null, null, null, null, null, 31, null);
                                } else {
                                    shapes10 = shapes11;
                                }
                                Typography typography11 = typography4;
                                if (typography11 == null) {
                                    typography10 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                } else {
                                    typography10 = typography11;
                                }
                                MaterialThemeKt.MaterialTheme(colorScheme10, motionScheme10, shapes10, typography10, bm3Var, composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorScheme3 = colorScheme4;
                    motionScheme3 = motionScheme4;
                    shapes3 = shapes4;
                    typography3 = typography4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    colorScheme3 = colorScheme2;
                    motionScheme3 = motionScheme2;
                    shapes3 = shapes2;
                    typography3 = typography2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            shapes2 = shapes;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    typography2 = typography;
                    if (composerStartRestartGroup.changed(typography2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i2 & 16) != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i9 != 0) {
                            colorScheme2 = null;
                        }
                        if (i10 != 0) {
                            motionScheme4 = null;
                        } else {
                            motionScheme4 = motionScheme2;
                        }
                        if (i4 != 0) {
                            shapes4 = null;
                        } else {
                            shapes4 = shapes2;
                        }
                        if (i6 != 0) {
                            typography4 = null;
                        } else {
                            typography4 = typography2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                        }
                        providableCompositionLocal = LocalUsingExpressiveTheme;
                        if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                            composerStartRestartGroup.startReplaceGroup(1458674654);
                            if (colorScheme2 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061322393);
                                ColorScheme colorScheme10 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme10;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061323292);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme2;
                            }
                            if (motionScheme4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061320152);
                                MotionScheme motionScheme10 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme10;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061321082);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme4;
                            }
                            if (typography4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061318010);
                                Typography typography10 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography10;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061318878);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography4;
                            }
                            if (shapes4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061316190);
                                Shapes shapes10 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes10;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061316934);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes4;
                            }
                            MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme4 = colorScheme2;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1459011221);
                            colorScheme4 = colorScheme2;
                            CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                                public final void invoke(Composer composer2, int i11) {
                                    Shapes shapes11;
                                    Typography typography11;
                                    if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                    }
                                    ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                    if (colorSchemeExpressiveLightColorScheme == null) {
                                        colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                    }
                                    ColorScheme colorScheme11 = colorSchemeExpressiveLightColorScheme;
                                    MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                    if (motionSchemeExpressive$material3 == null) {
                                        motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                    }
                                    MotionScheme motionScheme11 = motionSchemeExpressive$material3;
                                    Shapes shapes12 = shapes4;
                                    if (shapes12 == null) {
                                        shapes11 = new Shapes(null, null, null, null, null, 31, null);
                                    } else {
                                        shapes11 = shapes12;
                                    }
                                    Typography typography12 = typography4;
                                    if (typography12 == null) {
                                        typography11 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                    } else {
                                        typography11 = typography12;
                                    }
                                    MaterialThemeKt.MaterialTheme(colorScheme11, motionScheme11, shapes11, typography11, bm3Var, composer2, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorScheme3 = colorScheme4;
                        motionScheme3 = motionScheme4;
                        shapes3 = shapes4;
                        typography3 = typography4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        colorScheme3 = colorScheme2;
                        motionScheme3 = motionScheme2;
                        shapes3 = shapes2;
                        typography3 = typography2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                    }
                }
                i3 |= 24576;
                bm3Var2 = bm3Var;
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        colorScheme2 = null;
                    }
                    if (i10 != 0) {
                        motionScheme4 = null;
                    } else {
                        motionScheme4 = motionScheme2;
                    }
                    if (i4 != 0) {
                        shapes4 = null;
                    } else {
                        shapes4 = shapes2;
                    }
                    if (i6 != 0) {
                        typography4 = null;
                    } else {
                        typography4 = typography2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                    }
                    providableCompositionLocal = LocalUsingExpressiveTheme;
                    if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1458674654);
                        if (colorScheme2 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061322393);
                            ColorScheme colorScheme11 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme11;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061323292);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme2;
                        }
                        if (motionScheme4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061320152);
                            MotionScheme motionScheme11 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme11;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061321082);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme4;
                        }
                        if (typography4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061318010);
                            Typography typography11 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography11;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061318878);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography4;
                        }
                        if (shapes4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061316190);
                            Shapes shapes11 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes11;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061316934);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes4;
                        }
                        MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme4 = colorScheme2;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1459011221);
                        colorScheme4 = colorScheme2;
                        CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                            public final void invoke(Composer composer2, int i11) {
                                Shapes shapes12;
                                Typography typography12;
                                if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                }
                                ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                if (colorSchemeExpressiveLightColorScheme == null) {
                                    colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                }
                                ColorScheme colorScheme12 = colorSchemeExpressiveLightColorScheme;
                                MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                if (motionSchemeExpressive$material3 == null) {
                                    motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                }
                                MotionScheme motionScheme12 = motionSchemeExpressive$material3;
                                Shapes shapes13 = shapes4;
                                if (shapes13 == null) {
                                    shapes12 = new Shapes(null, null, null, null, null, 31, null);
                                } else {
                                    shapes12 = shapes13;
                                }
                                Typography typography13 = typography4;
                                if (typography13 == null) {
                                    typography12 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                } else {
                                    typography12 = typography13;
                                }
                                MaterialThemeKt.MaterialTheme(colorScheme12, motionScheme12, shapes12, typography12, bm3Var, composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorScheme3 = colorScheme4;
                    motionScheme3 = motionScheme4;
                    shapes3 = shapes4;
                    typography3 = typography4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    colorScheme3 = colorScheme2;
                    motionScheme3 = motionScheme2;
                    shapes3 = shapes2;
                    typography3 = typography2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                }
            }
            i3 |= 3072;
            typography2 = typography;
            if ((i2 & 16) != 0) {
                if ((i & 24576) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        colorScheme2 = null;
                    }
                    if (i10 != 0) {
                        motionScheme4 = null;
                    } else {
                        motionScheme4 = motionScheme2;
                    }
                    if (i4 != 0) {
                        shapes4 = null;
                    } else {
                        shapes4 = shapes2;
                    }
                    if (i6 != 0) {
                        typography4 = null;
                    } else {
                        typography4 = typography2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                    }
                    providableCompositionLocal = LocalUsingExpressiveTheme;
                    if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1458674654);
                        if (colorScheme2 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061322393);
                            ColorScheme colorScheme12 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme12;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061323292);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme2;
                        }
                        if (motionScheme4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061320152);
                            MotionScheme motionScheme12 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme12;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061321082);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme4;
                        }
                        if (typography4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061318010);
                            Typography typography12 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography12;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061318878);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography4;
                        }
                        if (shapes4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061316190);
                            Shapes shapes12 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes12;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061316934);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes4;
                        }
                        MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme4 = colorScheme2;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1459011221);
                        colorScheme4 = colorScheme2;
                        CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                            public final void invoke(Composer composer2, int i11) {
                                Shapes shapes13;
                                Typography typography13;
                                if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                }
                                ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                if (colorSchemeExpressiveLightColorScheme == null) {
                                    colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                }
                                ColorScheme colorScheme13 = colorSchemeExpressiveLightColorScheme;
                                MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                if (motionSchemeExpressive$material3 == null) {
                                    motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                }
                                MotionScheme motionScheme13 = motionSchemeExpressive$material3;
                                Shapes shapes14 = shapes4;
                                if (shapes14 == null) {
                                    shapes13 = new Shapes(null, null, null, null, null, 31, null);
                                } else {
                                    shapes13 = shapes14;
                                }
                                Typography typography14 = typography4;
                                if (typography14 == null) {
                                    typography13 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                } else {
                                    typography13 = typography14;
                                }
                                MaterialThemeKt.MaterialTheme(colorScheme13, motionScheme13, shapes13, typography13, bm3Var, composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorScheme3 = colorScheme4;
                    motionScheme3 = motionScheme4;
                    shapes3 = shapes4;
                    typography3 = typography4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    colorScheme3 = colorScheme2;
                    motionScheme3 = motionScheme2;
                    shapes3 = shapes2;
                    typography3 = typography2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                }
            }
            i3 |= 24576;
            bm3Var2 = bm3Var;
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    colorScheme2 = null;
                }
                if (i10 != 0) {
                    motionScheme4 = null;
                } else {
                    motionScheme4 = motionScheme2;
                }
                if (i4 != 0) {
                    shapes4 = null;
                } else {
                    shapes4 = shapes2;
                }
                if (i6 != 0) {
                    typography4 = null;
                } else {
                    typography4 = typography2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                }
                providableCompositionLocal = LocalUsingExpressiveTheme;
                if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1458674654);
                    if (colorScheme2 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061322393);
                        ColorScheme colorScheme13 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme13;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061323292);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme2;
                    }
                    if (motionScheme4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061320152);
                        MotionScheme motionScheme13 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme13;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061321082);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme4;
                    }
                    if (typography4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061318010);
                        Typography typography13 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography13;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061318878);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography4;
                    }
                    if (shapes4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061316190);
                        Shapes shapes13 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes13;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061316934);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes4;
                    }
                    MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    colorScheme4 = colorScheme2;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1459011221);
                    colorScheme4 = colorScheme2;
                    CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                        public final void invoke(Composer composer2, int i11) {
                            Shapes shapes14;
                            Typography typography14;
                            if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                            }
                            ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                            if (colorSchemeExpressiveLightColorScheme == null) {
                                colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                            }
                            ColorScheme colorScheme14 = colorSchemeExpressiveLightColorScheme;
                            MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                            if (motionSchemeExpressive$material3 == null) {
                                motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                            }
                            MotionScheme motionScheme14 = motionSchemeExpressive$material3;
                            Shapes shapes15 = shapes4;
                            if (shapes15 == null) {
                                shapes14 = new Shapes(null, null, null, null, null, 31, null);
                            } else {
                                shapes14 = shapes15;
                            }
                            Typography typography15 = typography4;
                            if (typography15 == null) {
                                typography14 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                            } else {
                                typography14 = typography15;
                            }
                            MaterialThemeKt.MaterialTheme(colorScheme14, motionScheme14, shapes14, typography14, bm3Var, composer2, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorScheme3 = colorScheme4;
                motionScheme3 = motionScheme4;
                shapes3 = shapes4;
                typography3 = typography4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                colorScheme3 = colorScheme2;
                motionScheme3 = motionScheme2;
                shapes3 = shapes2;
                typography3 = typography2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
            }
        }
        i3 |= 48;
        motionScheme2 = motionScheme;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                shapes2 = shapes;
                if (composerStartRestartGroup.changed(shapes2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    typography2 = typography;
                    if (composerStartRestartGroup.changed(typography2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i2 & 16) != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var2 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i9 != 0) {
                            colorScheme2 = null;
                        }
                        if (i10 != 0) {
                            motionScheme4 = null;
                        } else {
                            motionScheme4 = motionScheme2;
                        }
                        if (i4 != 0) {
                            shapes4 = null;
                        } else {
                            shapes4 = shapes2;
                        }
                        if (i6 != 0) {
                            typography4 = null;
                        } else {
                            typography4 = typography2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                        }
                        providableCompositionLocal = LocalUsingExpressiveTheme;
                        if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                            composerStartRestartGroup.startReplaceGroup(1458674654);
                            if (colorScheme2 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061322393);
                                ColorScheme colorScheme14 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme14;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061323292);
                                composerStartRestartGroup.endReplaceGroup();
                                colorScheme5 = colorScheme2;
                            }
                            if (motionScheme4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061320152);
                                MotionScheme motionScheme14 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme14;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061321082);
                                composerStartRestartGroup.endReplaceGroup();
                                motionScheme5 = motionScheme4;
                            }
                            if (typography4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061318010);
                                Typography typography14 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography14;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061318878);
                                composerStartRestartGroup.endReplaceGroup();
                                typography5 = typography4;
                            }
                            if (shapes4 == null) {
                                composerStartRestartGroup.startReplaceGroup(-1061316190);
                                Shapes shapes14 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes14;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-1061316934);
                                composerStartRestartGroup.endReplaceGroup();
                                shapes5 = shapes4;
                            }
                            MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme4 = colorScheme2;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1459011221);
                            colorScheme4 = colorScheme2;
                            CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                                public final void invoke(Composer composer2, int i11) {
                                    Shapes shapes15;
                                    Typography typography15;
                                    if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                    }
                                    ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                    if (colorSchemeExpressiveLightColorScheme == null) {
                                        colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                    }
                                    ColorScheme colorScheme15 = colorSchemeExpressiveLightColorScheme;
                                    MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                    if (motionSchemeExpressive$material3 == null) {
                                        motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                    }
                                    MotionScheme motionScheme15 = motionSchemeExpressive$material3;
                                    Shapes shapes16 = shapes4;
                                    if (shapes16 == null) {
                                        shapes15 = new Shapes(null, null, null, null, null, 31, null);
                                    } else {
                                        shapes15 = shapes16;
                                    }
                                    Typography typography16 = typography4;
                                    if (typography16 == null) {
                                        typography15 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                    } else {
                                        typography15 = typography16;
                                    }
                                    MaterialThemeKt.MaterialTheme(colorScheme15, motionScheme15, shapes15, typography15, bm3Var, composer2, 0, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorScheme3 = colorScheme4;
                        motionScheme3 = motionScheme4;
                        shapes3 = shapes4;
                        typography3 = typography4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        colorScheme3 = colorScheme2;
                        motionScheme3 = motionScheme2;
                        shapes3 = shapes2;
                        typography3 = typography2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                    }
                }
                i3 |= 24576;
                bm3Var2 = bm3Var;
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        colorScheme2 = null;
                    }
                    if (i10 != 0) {
                        motionScheme4 = null;
                    } else {
                        motionScheme4 = motionScheme2;
                    }
                    if (i4 != 0) {
                        shapes4 = null;
                    } else {
                        shapes4 = shapes2;
                    }
                    if (i6 != 0) {
                        typography4 = null;
                    } else {
                        typography4 = typography2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                    }
                    providableCompositionLocal = LocalUsingExpressiveTheme;
                    if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1458674654);
                        if (colorScheme2 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061322393);
                            ColorScheme colorScheme15 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme15;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061323292);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme2;
                        }
                        if (motionScheme4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061320152);
                            MotionScheme motionScheme15 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme15;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061321082);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme4;
                        }
                        if (typography4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061318010);
                            Typography typography15 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography15;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061318878);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography4;
                        }
                        if (shapes4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061316190);
                            Shapes shapes15 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes15;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061316934);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes4;
                        }
                        MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme4 = colorScheme2;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1459011221);
                        colorScheme4 = colorScheme2;
                        CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                            public final void invoke(Composer composer2, int i11) {
                                Shapes shapes16;
                                Typography typography16;
                                if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                }
                                ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                if (colorSchemeExpressiveLightColorScheme == null) {
                                    colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                }
                                ColorScheme colorScheme16 = colorSchemeExpressiveLightColorScheme;
                                MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                if (motionSchemeExpressive$material3 == null) {
                                    motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                }
                                MotionScheme motionScheme16 = motionSchemeExpressive$material3;
                                Shapes shapes17 = shapes4;
                                if (shapes17 == null) {
                                    shapes16 = new Shapes(null, null, null, null, null, 31, null);
                                } else {
                                    shapes16 = shapes17;
                                }
                                Typography typography17 = typography4;
                                if (typography17 == null) {
                                    typography16 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                } else {
                                    typography16 = typography17;
                                }
                                MaterialThemeKt.MaterialTheme(colorScheme16, motionScheme16, shapes16, typography16, bm3Var, composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorScheme3 = colorScheme4;
                    motionScheme3 = motionScheme4;
                    shapes3 = shapes4;
                    typography3 = typography4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    colorScheme3 = colorScheme2;
                    motionScheme3 = motionScheme2;
                    shapes3 = shapes2;
                    typography3 = typography2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                }
            }
            i3 |= 3072;
            typography2 = typography;
            if ((i2 & 16) != 0) {
                if ((i & 24576) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        colorScheme2 = null;
                    }
                    if (i10 != 0) {
                        motionScheme4 = null;
                    } else {
                        motionScheme4 = motionScheme2;
                    }
                    if (i4 != 0) {
                        shapes4 = null;
                    } else {
                        shapes4 = shapes2;
                    }
                    if (i6 != 0) {
                        typography4 = null;
                    } else {
                        typography4 = typography2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                    }
                    providableCompositionLocal = LocalUsingExpressiveTheme;
                    if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1458674654);
                        if (colorScheme2 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061322393);
                            ColorScheme colorScheme16 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme16;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061323292);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme2;
                        }
                        if (motionScheme4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061320152);
                            MotionScheme motionScheme16 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme16;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061321082);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme4;
                        }
                        if (typography4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061318010);
                            Typography typography16 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography16;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061318878);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography4;
                        }
                        if (shapes4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061316190);
                            Shapes shapes16 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes16;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061316934);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes4;
                        }
                        MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme4 = colorScheme2;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1459011221);
                        colorScheme4 = colorScheme2;
                        CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                            public final void invoke(Composer composer2, int i11) {
                                Shapes shapes17;
                                Typography typography17;
                                if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                }
                                ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                if (colorSchemeExpressiveLightColorScheme == null) {
                                    colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                }
                                ColorScheme colorScheme17 = colorSchemeExpressiveLightColorScheme;
                                MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                if (motionSchemeExpressive$material3 == null) {
                                    motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                }
                                MotionScheme motionScheme17 = motionSchemeExpressive$material3;
                                Shapes shapes18 = shapes4;
                                if (shapes18 == null) {
                                    shapes17 = new Shapes(null, null, null, null, null, 31, null);
                                } else {
                                    shapes17 = shapes18;
                                }
                                Typography typography18 = typography4;
                                if (typography18 == null) {
                                    typography17 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                } else {
                                    typography17 = typography18;
                                }
                                MaterialThemeKt.MaterialTheme(colorScheme17, motionScheme17, shapes17, typography17, bm3Var, composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorScheme3 = colorScheme4;
                    motionScheme3 = motionScheme4;
                    shapes3 = shapes4;
                    typography3 = typography4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    colorScheme3 = colorScheme2;
                    motionScheme3 = motionScheme2;
                    shapes3 = shapes2;
                    typography3 = typography2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                }
            }
            i3 |= 24576;
            bm3Var2 = bm3Var;
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    colorScheme2 = null;
                }
                if (i10 != 0) {
                    motionScheme4 = null;
                } else {
                    motionScheme4 = motionScheme2;
                }
                if (i4 != 0) {
                    shapes4 = null;
                } else {
                    shapes4 = shapes2;
                }
                if (i6 != 0) {
                    typography4 = null;
                } else {
                    typography4 = typography2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                }
                providableCompositionLocal = LocalUsingExpressiveTheme;
                if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1458674654);
                    if (colorScheme2 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061322393);
                        ColorScheme colorScheme17 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme17;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061323292);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme2;
                    }
                    if (motionScheme4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061320152);
                        MotionScheme motionScheme17 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme17;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061321082);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme4;
                    }
                    if (typography4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061318010);
                        Typography typography17 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography17;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061318878);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography4;
                    }
                    if (shapes4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061316190);
                        Shapes shapes17 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes17;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061316934);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes4;
                    }
                    MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    colorScheme4 = colorScheme2;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1459011221);
                    colorScheme4 = colorScheme2;
                    CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                        public final void invoke(Composer composer2, int i11) {
                            Shapes shapes18;
                            Typography typography18;
                            if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                            }
                            ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                            if (colorSchemeExpressiveLightColorScheme == null) {
                                colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                            }
                            ColorScheme colorScheme18 = colorSchemeExpressiveLightColorScheme;
                            MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                            if (motionSchemeExpressive$material3 == null) {
                                motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                            }
                            MotionScheme motionScheme18 = motionSchemeExpressive$material3;
                            Shapes shapes19 = shapes4;
                            if (shapes19 == null) {
                                shapes18 = new Shapes(null, null, null, null, null, 31, null);
                            } else {
                                shapes18 = shapes19;
                            }
                            Typography typography19 = typography4;
                            if (typography19 == null) {
                                typography18 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                            } else {
                                typography18 = typography19;
                            }
                            MaterialThemeKt.MaterialTheme(colorScheme18, motionScheme18, shapes18, typography18, bm3Var, composer2, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorScheme3 = colorScheme4;
                motionScheme3 = motionScheme4;
                shapes3 = shapes4;
                typography3 = typography4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                colorScheme3 = colorScheme2;
                motionScheme3 = motionScheme2;
                shapes3 = shapes2;
                typography3 = typography2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        shapes2 = shapes;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                typography2 = typography;
                if (composerStartRestartGroup.changed(typography2)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i2 & 16) != 0) {
                if ((i & 24576) == 0) {
                    bm3Var2 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i9 != 0) {
                        colorScheme2 = null;
                    }
                    if (i10 != 0) {
                        motionScheme4 = null;
                    } else {
                        motionScheme4 = motionScheme2;
                    }
                    if (i4 != 0) {
                        shapes4 = null;
                    } else {
                        shapes4 = shapes2;
                    }
                    if (i6 != 0) {
                        typography4 = null;
                    } else {
                        typography4 = typography2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                    }
                    providableCompositionLocal = LocalUsingExpressiveTheme;
                    if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1458674654);
                        if (colorScheme2 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061322393);
                            ColorScheme colorScheme18 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme18;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061323292);
                            composerStartRestartGroup.endReplaceGroup();
                            colorScheme5 = colorScheme2;
                        }
                        if (motionScheme4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061320152);
                            MotionScheme motionScheme18 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme18;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061321082);
                            composerStartRestartGroup.endReplaceGroup();
                            motionScheme5 = motionScheme4;
                        }
                        if (typography4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061318010);
                            Typography typography18 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography18;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061318878);
                            composerStartRestartGroup.endReplaceGroup();
                            typography5 = typography4;
                        }
                        if (shapes4 == null) {
                            composerStartRestartGroup.startReplaceGroup(-1061316190);
                            Shapes shapes18 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes18;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1061316934);
                            composerStartRestartGroup.endReplaceGroup();
                            shapes5 = shapes4;
                        }
                        MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme4 = colorScheme2;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1459011221);
                        colorScheme4 = colorScheme2;
                        CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                            public final void invoke(Composer composer2, int i11) {
                                Shapes shapes19;
                                Typography typography19;
                                if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                                }
                                ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                                if (colorSchemeExpressiveLightColorScheme == null) {
                                    colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                                }
                                ColorScheme colorScheme19 = colorSchemeExpressiveLightColorScheme;
                                MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                                if (motionSchemeExpressive$material3 == null) {
                                    motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                                }
                                MotionScheme motionScheme19 = motionSchemeExpressive$material3;
                                Shapes shapes110 = shapes4;
                                if (shapes110 == null) {
                                    shapes19 = new Shapes(null, null, null, null, null, 31, null);
                                } else {
                                    shapes19 = shapes110;
                                }
                                Typography typography110 = typography4;
                                if (typography110 == null) {
                                    typography19 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                                } else {
                                    typography19 = typography110;
                                }
                                MaterialThemeKt.MaterialTheme(colorScheme19, motionScheme19, shapes19, typography19, bm3Var, composer2, 0, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorScheme3 = colorScheme4;
                    motionScheme3 = motionScheme4;
                    shapes3 = shapes4;
                    typography3 = typography4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    colorScheme3 = colorScheme2;
                    motionScheme3 = motionScheme2;
                    shapes3 = shapes2;
                    typography3 = typography2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
                }
            }
            i3 |= 24576;
            bm3Var2 = bm3Var;
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    colorScheme2 = null;
                }
                if (i10 != 0) {
                    motionScheme4 = null;
                } else {
                    motionScheme4 = motionScheme2;
                }
                if (i4 != 0) {
                    shapes4 = null;
                } else {
                    shapes4 = shapes2;
                }
                if (i6 != 0) {
                    typography4 = null;
                } else {
                    typography4 = typography2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                }
                providableCompositionLocal = LocalUsingExpressiveTheme;
                if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1458674654);
                    if (colorScheme2 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061322393);
                        ColorScheme colorScheme19 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme19;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061323292);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme2;
                    }
                    if (motionScheme4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061320152);
                        MotionScheme motionScheme19 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme19;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061321082);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme4;
                    }
                    if (typography4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061318010);
                        Typography typography19 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography19;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061318878);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography4;
                    }
                    if (shapes4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061316190);
                        Shapes shapes19 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes19;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061316934);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes4;
                    }
                    MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    colorScheme4 = colorScheme2;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1459011221);
                    colorScheme4 = colorScheme2;
                    CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                        public final void invoke(Composer composer2, int i11) {
                            Shapes shapes110;
                            Typography typography110;
                            if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                            }
                            ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                            if (colorSchemeExpressiveLightColorScheme == null) {
                                colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                            }
                            ColorScheme colorScheme110 = colorSchemeExpressiveLightColorScheme;
                            MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                            if (motionSchemeExpressive$material3 == null) {
                                motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                            }
                            MotionScheme motionScheme110 = motionSchemeExpressive$material3;
                            Shapes shapes111 = shapes4;
                            if (shapes111 == null) {
                                shapes110 = new Shapes(null, null, null, null, null, 31, null);
                            } else {
                                shapes110 = shapes111;
                            }
                            Typography typography111 = typography4;
                            if (typography111 == null) {
                                typography110 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                            } else {
                                typography110 = typography111;
                            }
                            MaterialThemeKt.MaterialTheme(colorScheme110, motionScheme110, shapes110, typography110, bm3Var, composer2, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorScheme3 = colorScheme4;
                motionScheme3 = motionScheme4;
                shapes3 = shapes4;
                typography3 = typography4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                colorScheme3 = colorScheme2;
                motionScheme3 = motionScheme2;
                shapes3 = shapes2;
                typography3 = typography2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
            }
        }
        i3 |= 3072;
        typography2 = typography;
        if ((i2 & 16) != 0) {
            if ((i & 24576) == 0) {
                bm3Var2 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i3 |= i8;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i9 != 0) {
                    colorScheme2 = null;
                }
                if (i10 != 0) {
                    motionScheme4 = null;
                } else {
                    motionScheme4 = motionScheme2;
                }
                if (i4 != 0) {
                    shapes4 = null;
                } else {
                    shapes4 = shapes2;
                }
                if (i6 != 0) {
                    typography4 = null;
                } else {
                    typography4 = typography2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
                }
                providableCompositionLocal = LocalUsingExpressiveTheme;
                if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1458674654);
                    if (colorScheme2 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061322393);
                        ColorScheme colorScheme110 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme110;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061323292);
                        composerStartRestartGroup.endReplaceGroup();
                        colorScheme5 = colorScheme2;
                    }
                    if (motionScheme4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061320152);
                        MotionScheme motionScheme110 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme110;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061321082);
                        composerStartRestartGroup.endReplaceGroup();
                        motionScheme5 = motionScheme4;
                    }
                    if (typography4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061318010);
                        Typography typography110 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography110;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061318878);
                        composerStartRestartGroup.endReplaceGroup();
                        typography5 = typography4;
                    }
                    if (shapes4 == null) {
                        composerStartRestartGroup.startReplaceGroup(-1061316190);
                        Shapes shapes110 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes110;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1061316934);
                        composerStartRestartGroup.endReplaceGroup();
                        shapes5 = shapes4;
                    }
                    MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    colorScheme4 = colorScheme2;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1459011221);
                    colorScheme4 = colorScheme2;
                    CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                        public final void invoke(Composer composer2, int i11) {
                            Shapes shapes111;
                            Typography typography111;
                            if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                            }
                            ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                            if (colorSchemeExpressiveLightColorScheme == null) {
                                colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                            }
                            ColorScheme colorScheme111 = colorSchemeExpressiveLightColorScheme;
                            MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                            if (motionSchemeExpressive$material3 == null) {
                                motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                            }
                            MotionScheme motionScheme111 = motionSchemeExpressive$material3;
                            Shapes shapes112 = shapes4;
                            if (shapes112 == null) {
                                shapes111 = new Shapes(null, null, null, null, null, 31, null);
                            } else {
                                shapes111 = shapes112;
                            }
                            Typography typography112 = typography4;
                            if (typography112 == null) {
                                typography111 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                            } else {
                                typography111 = typography112;
                            }
                            MaterialThemeKt.MaterialTheme(colorScheme111, motionScheme111, shapes111, typography111, bm3Var, composer2, 0, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorScheme3 = colorScheme4;
                motionScheme3 = motionScheme4;
                shapes3 = shapes4;
                typography3 = typography4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                colorScheme3 = colorScheme2;
                motionScheme3 = motionScheme2;
                shapes3 = shapes2;
                typography3 = typography2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
            }
        }
        i3 |= 24576;
        bm3Var2 = bm3Var;
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i9 != 0) {
                colorScheme2 = null;
            }
            if (i10 != 0) {
                motionScheme4 = null;
            } else {
                motionScheme4 = motionScheme2;
            }
            if (i4 != 0) {
                shapes4 = null;
            } else {
                shapes4 = shapes2;
            }
            if (i6 != 0) {
                typography4 = null;
            } else {
                typography4 = typography2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1317329884, i3, -1, "androidx.compose.material3.MaterialExpressiveTheme (MaterialTheme.kt:190)");
            }
            providableCompositionLocal = LocalUsingExpressiveTheme;
            if (((Boolean) composerStartRestartGroup.consume(providableCompositionLocal)).booleanValue()) {
                composerStartRestartGroup.startReplaceGroup(1458674654);
                if (colorScheme2 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1061322393);
                    ColorScheme colorScheme111 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                    colorScheme5 = colorScheme111;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1061323292);
                    composerStartRestartGroup.endReplaceGroup();
                    colorScheme5 = colorScheme2;
                }
                if (motionScheme4 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1061320152);
                    MotionScheme motionScheme111 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                    motionScheme5 = motionScheme111;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1061321082);
                    composerStartRestartGroup.endReplaceGroup();
                    motionScheme5 = motionScheme4;
                }
                if (typography4 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1061318010);
                    Typography typography111 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                    typography5 = typography111;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1061318878);
                    composerStartRestartGroup.endReplaceGroup();
                    typography5 = typography4;
                }
                if (shapes4 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1061316190);
                    Shapes shapes111 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                    composerStartRestartGroup.endReplaceGroup();
                    shapes5 = shapes111;
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1061316934);
                    composerStartRestartGroup.endReplaceGroup();
                    shapes5 = shapes4;
                }
                MaterialTheme(colorScheme5, motionScheme5, shapes5, typography5, bm3Var2, composerStartRestartGroup, i3 & 57344, 0);
                composerStartRestartGroup.endReplaceGroup();
                colorScheme4 = colorScheme2;
            } else {
                composerStartRestartGroup.startReplaceGroup(1459011221);
                colorScheme4 = colorScheme2;
                CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(Boolean.TRUE), ComposableLambdaKt.rememberComposableLambda(1535649272, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialExpressiveTheme.1
                    public final void invoke(Composer composer2, int i11) {
                        Shapes shapes112;
                        Typography typography112;
                        if (!composer2.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1535649272, i11, -1, "androidx.compose.material3.MaterialExpressiveTheme.<anonymous> (MaterialTheme.kt:201)");
                        }
                        ColorScheme colorSchemeExpressiveLightColorScheme = colorScheme4;
                        if (colorSchemeExpressiveLightColorScheme == null) {
                            colorSchemeExpressiveLightColorScheme = ColorSchemeKt.expressiveLightColorScheme();
                        }
                        ColorScheme colorScheme112 = colorSchemeExpressiveLightColorScheme;
                        MotionScheme motionSchemeExpressive$material3 = motionScheme4;
                        if (motionSchemeExpressive$material3 == null) {
                            motionSchemeExpressive$material3 = MotionScheme.Companion.expressive$material3();
                        }
                        MotionScheme motionScheme112 = motionSchemeExpressive$material3;
                        Shapes shapes113 = shapes4;
                        if (shapes113 == null) {
                            shapes112 = new Shapes(null, null, null, null, null, 31, null);
                        } else {
                            shapes112 = shapes113;
                        }
                        Typography typography113 = typography4;
                        if (typography113 == null) {
                            typography112 = new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 32767, null);
                        } else {
                            typography112 = typography113;
                        }
                        MaterialThemeKt.MaterialTheme(colorScheme112, motionScheme112, shapes112, typography112, bm3Var, composer2, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            colorScheme3 = colorScheme4;
            motionScheme3 = motionScheme4;
            shapes3 = shapes4;
            typography3 = typography4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            colorScheme3 = colorScheme2;
            motionScheme3 = motionScheme2;
            shapes3 = shapes2;
            typography3 = typography2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new gz1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MaterialExpressiveTheme$lambda$2(ColorScheme colorScheme, MotionScheme motionScheme, Shapes shapes, Typography typography, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        MaterialExpressiveTheme(colorScheme, motionScheme, shapes, typography, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final void MaterialTheme(ColorScheme colorScheme, MotionScheme motionScheme, Shapes shapes, Typography typography, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        ColorScheme colorScheme2;
        int i3;
        MotionScheme motionScheme2;
        Shapes shapes2;
        final Typography typography2;
        Composer composerStartRestartGroup = composer.startRestartGroup(904511636);
        if ((i & 6) == 0) {
            if ((i2 & 1) == 0) {
                colorScheme2 = colorScheme;
                int i4 = composerStartRestartGroup.changed(colorScheme2) ? 4 : 2;
                i3 = i4 | i;
            } else {
                colorScheme2 = colorScheme;
            }
            i3 = i4 | i;
        } else {
            colorScheme2 = colorScheme;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                motionScheme2 = motionScheme;
                int i5 = composerStartRestartGroup.changed(motionScheme2) ? 32 : 16;
                i3 |= i5;
            } else {
                motionScheme2 = motionScheme;
            }
            i3 |= i5;
        } else {
            motionScheme2 = motionScheme;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                shapes2 = shapes;
                int i6 = composerStartRestartGroup.changed(shapes2) ? 256 : 128;
                i3 |= i6;
            } else {
                shapes2 = shapes;
            }
            i3 |= i6;
        } else {
            shapes2 = shapes;
        }
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                typography2 = typography;
                int i7 = composerStartRestartGroup.changed(typography2) ? 2048 : 1024;
                i3 |= i7;
            } else {
                typography2 = typography;
            }
            i3 |= i7;
        } else {
            typography2 = typography;
        }
        if ((i2 & 16) != 0) {
            i3 |= 24576;
        } else if ((i & 24576) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 16384 : 8192;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 9363) != 9362, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                if ((i2 & 1) != 0) {
                    colorScheme2 = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                    i3 &= -15;
                }
                if ((i2 & 2) != 0) {
                    motionScheme2 = MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    shapes2 = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                    i3 &= -897;
                }
                if ((i2 & 8) != 0) {
                    typography2 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                    i3 &= -7169;
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i2 & 1) != 0) {
                    i3 &= -15;
                }
                if ((i2 & 2) != 0) {
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(904511636, i3, -1, "androidx.compose.material3.MaterialTheme (MaterialTheme.kt:95)");
            }
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ColorSchemeKt.getLocalColorScheme().provides(colorScheme2), _localMotionScheme.provides(motionScheme2), IndicationKt.getLocalIndication().provides(RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), ShapesKt.getLocalShapes().provides(shapes2), TextSelectionColorsKt.getLocalTextSelectionColors().provides(rememberTextSelectionColors(colorScheme2, composerStartRestartGroup, i3 & 14)), TypographyKt.getLocalTypography().provides(typography2)}, ComposableLambdaKt.rememberComposableLambda(-1750539308, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.MaterialThemeKt.MaterialTheme.2
                public final void invoke(Composer composer2, int i8) {
                    if (!composer2.shouldExecute((i8 & 3) != 2, i8 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1750539308, i8, -1, "androidx.compose.material3.MaterialTheme.<anonymous> (MaterialTheme.kt:106)");
                    }
                    TextKt.ProvideTextStyle(typography2.getBodyLarge(), bm3Var, composer2, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        final Shapes shapes3 = shapes2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final ColorScheme colorScheme3 = colorScheme2;
            final MotionScheme motionScheme3 = motionScheme2;
            final Typography typography3 = typography2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: q65
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return MaterialThemeKt.MaterialTheme$lambda$1(colorScheme3, motionScheme3, shapes3, typography3, bm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MaterialTheme$lambda$0(ColorScheme colorScheme, Shapes shapes, Typography typography, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        MaterialTheme(colorScheme, shapes, typography, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MaterialTheme$lambda$1(ColorScheme colorScheme, MotionScheme motionScheme, Shapes shapes, Typography typography, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        MaterialTheme(colorScheme, motionScheme, shapes, typography, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MotionScheme _localMotionScheme$lambda$5() {
        return MotionScheme.Companion.standard$material3();
    }

    public static final ProvidableCompositionLocal<Boolean> getLocalUsingExpressiveTheme() {
        return LocalUsingExpressiveTheme;
    }

    private static /* synthetic */ void get_localMotionScheme$annotations() {
    }

    public static final TextSelectionColors rememberTextSelectionColors(ColorScheme colorScheme, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1866455512, i, -1, "androidx.compose.material3.rememberTextSelectionColors (MaterialTheme.kt:217)");
        }
        long jM3250getPrimary0d7_KjU = colorScheme.m3250getPrimary0d7_KjU();
        boolean zChanged = composer.changed(jM3250getPrimary0d7_KjU);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            TextSelectionColors textSelectionColors = new TextSelectionColors(jM3250getPrimary0d7_KjU, Color.m6231copywmQWz5c$default(jM3250getPrimary0d7_KjU, 0.4f, 0.0f, 0.0f, 0.0f, 14, null), null);
            composer.updateRememberedValue(textSelectionColors);
            objRememberedValue = textSelectionColors;
        }
        TextSelectionColors textSelectionColors2 = (TextSelectionColors) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return textSelectionColors2;
    }

    public static final void MaterialTheme(ColorScheme colorScheme, Shapes shapes, Typography typography, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        int i3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var2;
        final Typography typography2;
        final Shapes shapes2;
        final ColorScheme colorScheme2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-449719819);
        if ((i & 6) == 0) {
            i3 = (((i2 & 1) == 0 && composerStartRestartGroup.changed(colorScheme)) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= ((i2 & 2) == 0 && composerStartRestartGroup.changed(shapes)) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= ((i2 & 4) == 0 && composerStartRestartGroup.changed(typography)) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                if ((i2 & 1) != 0) {
                    colorScheme = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6);
                    i3 &= -15;
                }
                if ((i2 & 2) != 0) {
                    shapes = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    typography = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6);
                    i3 &= -897;
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i2 & 1) != 0) {
                    i3 &= -15;
                }
                if ((i2 & 2) != 0) {
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
            }
            ColorScheme colorScheme3 = colorScheme;
            Shapes shapes3 = shapes;
            Typography typography3 = typography;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-449719819, i3, -1, "androidx.compose.material3.MaterialTheme (MaterialTheme.kt:59)");
            }
            int i4 = i3 << 3;
            MaterialTheme(colorScheme3, MaterialTheme.INSTANCE.getMotionScheme(composerStartRestartGroup, 6), shapes3, typography3, bm3Var, composerStartRestartGroup, (i3 & 14) | (i4 & 896) | (i4 & 7168) | (i4 & 57344), 0);
            bm3Var2 = bm3Var;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            colorScheme2 = colorScheme3;
            shapes2 = shapes3;
            typography2 = typography3;
        } else {
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
            typography2 = typography;
            shapes2 = shapes;
            colorScheme2 = colorScheme;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: r65
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return MaterialThemeKt.MaterialTheme$lambda$0(colorScheme2, shapes2, typography2, bm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
