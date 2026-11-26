package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class DividerKt {
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f2  */
    @ul2
    /* JADX INFO: renamed from: Divider-9IZ8Weo, reason: not valid java name */
    public static final void m3411Divider9IZ8Weo(Modifier modifier, float f, long j, Composer composer, final int i, final int i2) {
        int i3;
        final long color;
        int i4;
        float fM9042constructorimpl;
        Composer composerStartRestartGroup = composer.startRestartGroup(1562471785);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= ((i2 & 4) == 0 && composerStartRestartGroup.changed(j)) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                if (i5 != 0) {
                    modifier = Modifier.Companion;
                }
                if (i6 != 0) {
                    f = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                }
                if ((i2 & 4) != 0) {
                    i4 = i3 & (-897);
                    color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1562471785, i4, -1, "androidx.compose.material3.Divider (Divider.kt:99)");
                }
                if (Dp.m9047equalsimpl0(f, Dp.Companion.m9060getHairlineD9Ej5fM())) {
                    composerStartRestartGroup.startReplaceGroup(-1258250053);
                    fM9042constructorimpl = Dp.m9042constructorimpl(1.0f / ((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).getDensity());
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1258183496);
                    composerStartRestartGroup.endReplaceGroup();
                    fM9042constructorimpl = f;
                }
                BoxKt.Box(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), fM9042constructorimpl), color, null, 2, null), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
            }
            i4 = i3;
            color = j;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1562471785, i4, -1, "androidx.compose.material3.Divider (Divider.kt:99)");
            }
            if (Dp.m9047equalsimpl0(f, Dp.Companion.m9060getHairlineD9Ej5fM())) {
                composerStartRestartGroup.startReplaceGroup(-1258250053);
                fM9042constructorimpl = Dp.m9042constructorimpl(1.0f / ((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).getDensity());
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1258183496);
                composerStartRestartGroup.endReplaceGroup();
                fM9042constructorimpl = f;
            }
            BoxKt.Box(BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), fM9042constructorimpl), color, null, 2, null), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            color = j;
        }
        final Modifier modifier2 = modifier;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final float f2 = f;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qp2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DividerKt.Divider_9IZ8Weo$lambda$6(modifier2, f2, color, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Divider_9IZ8Weo$lambda$6(Modifier modifier, float f, long j, int i, int i2, Composer composer, int i3) {
        m3411Divider9IZ8Weo(modifier, f, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0067  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    /* JADX WARN: Code duplicated, block: B:40:0x0072  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:54:0x009b  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:83:0x0107  */
    /* JADX WARN: Code duplicated, block: B:86:0x0114  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: HorizontalDivider-9IZ8Weo, reason: not valid java name */
    public static final void m3412HorizontalDivider9IZ8Weo(Modifier modifier, float f, long j, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        float f2;
        final long color;
        boolean z;
        boolean z2;
        final Modifier modifier3;
        final float f3;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        final float fM3410getThicknessD9Ej5fM;
        boolean z3;
        boolean z4;
        Object objRememberedValue;
        int i4;
        Composer composerStartRestartGroup = composer.startRestartGroup(75144485);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 == 0) {
            if ((i & 48) == 0) {
                f2 = f;
                i3 |= composerStartRestartGroup.changed(f2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                color = j;
                if ((i2 & 4) == 0 || !composerStartRestartGroup.changed(color)) {
                    i4 = 128;
                } else {
                    i4 = 256;
                }
                i3 |= i4;
            } else {
                color = j;
            }
            z = true;
            if ((i3 & 147) != 146) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i6 != 0) {
                        fM3410getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                    } else {
                        fM3410getThicknessD9Ej5fM = f2;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                    }
                    modifier4 = modifier2;
                    fM3410getThicknessD9Ej5fM = f2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(75144485, i3, -1, "androidx.compose.material3.HorizontalDivider (Divider.kt:53)");
                }
                Modifier modifierM2085height3ABfNKs = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), fM3410getThicknessD9Ej5fM);
                if ((i3 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(color)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                }
                z4 = z3 | z;
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z4 || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new nl3() { // from class: tp2
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return DividerKt.HorizontalDivider_9IZ8Weo$lambda$1$lambda$0(fM3410getThicknessD9Ej5fM, color, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2085height3ABfNKs, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                f3 = fM3410getThicknessD9Ej5fM;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                f3 = f2;
            }
            j2 = color;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: up2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DividerKt.HorizontalDivider_9IZ8Weo$lambda$2(modifier3, f3, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        f2 = f;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            color = j;
            if ((i2 & 4) == 0) {
                i4 = 128;
            } else {
                i4 = 128;
            }
            i3 |= i4;
        } else {
            color = j;
        }
        z = true;
        if ((i3 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i6 != 0) {
                    fM3410getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                } else {
                    fM3410getThicknessD9Ej5fM = f2;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                }
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i6 != 0) {
                    fM3410getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                } else {
                    fM3410getThicknessD9Ej5fM = f2;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(75144485, i3, -1, "androidx.compose.material3.HorizontalDivider (Divider.kt:53)");
            }
            Modifier modifierM2085height3ABfNKs2 = SizeKt.m2085height3ABfNKs(SizeKt.fillMaxWidth$default(modifier4, 0.0f, 1, null), fM3410getThicknessD9Ej5fM);
            if ((i3 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            z = ((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 ? false : false;
            z4 = z3 | z;
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z4) {
                objRememberedValue = new nl3() { // from class: tp2
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DividerKt.HorizontalDivider_9IZ8Weo$lambda$1$lambda$0(fM3410getThicknessD9Ej5fM, color, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new nl3() { // from class: tp2
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DividerKt.HorizontalDivider_9IZ8Weo$lambda$1$lambda$0(fM3410getThicknessD9Ej5fM, color, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            CanvasKt.Canvas(modifierM2085height3ABfNKs2, (nl3) objRememberedValue, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            f3 = fM3410getThicknessD9Ej5fM;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            f3 = f2;
        }
        j2 = color;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: up2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DividerKt.HorizontalDivider_9IZ8Weo$lambda$2(modifier3, f3, j2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalDivider_9IZ8Weo$lambda$1$lambda$0(float f, long j, DrawScope drawScope) {
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(f);
        float fMo1434toPx0680j_5 = drawScope.mo1434toPx0680j_4(f) / 2.0f;
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_5)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32));
        float fMo1434toPx0680j_6 = drawScope.mo1434toPx0680j_4(f) / 2.0f;
        DrawScope.m6792drawLineNGM6Ib0$default(drawScope, j, jM5979constructorimpl, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), fMo1434toPx0680j_4, 0, null, 0.0f, null, 0, 496, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalDivider_9IZ8Weo$lambda$2(Modifier modifier, float f, long j, int i, int i2, Composer composer, int i3) {
        m3412HorizontalDivider9IZ8Weo(modifier, f, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0067  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    /* JADX WARN: Code duplicated, block: B:40:0x0072  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:54:0x009b  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:83:0x0107  */
    /* JADX WARN: Code duplicated, block: B:86:0x0114  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: VerticalDivider-9IZ8Weo, reason: not valid java name */
    public static final void m3413VerticalDivider9IZ8Weo(Modifier modifier, float f, long j, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        float f2;
        final long color;
        boolean z;
        boolean z2;
        final Modifier modifier3;
        final float f3;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        final float fM3410getThicknessD9Ej5fM;
        boolean z3;
        boolean z4;
        Object objRememberedValue;
        int i4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1534852205);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 == 0) {
            if ((i & 48) == 0) {
                f2 = f;
                i3 |= composerStartRestartGroup.changed(f2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                color = j;
                if ((i2 & 4) == 0 || !composerStartRestartGroup.changed(color)) {
                    i4 = 128;
                } else {
                    i4 = 256;
                }
                i3 |= i4;
            } else {
                color = j;
            }
            z = true;
            if ((i3 & 147) != 146) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i6 != 0) {
                        fM3410getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                    } else {
                        fM3410getThicknessD9Ej5fM = f2;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                    }
                    modifier4 = modifier2;
                    fM3410getThicknessD9Ej5fM = f2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1534852205, i3, -1, "androidx.compose.material3.VerticalDivider (Divider.kt:81)");
                }
                Modifier modifierM2104width3ABfNKs = SizeKt.m2104width3ABfNKs(SizeKt.fillMaxHeight$default(modifier4, 0.0f, 1, null), fM3410getThicknessD9Ej5fM);
                if ((i3 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(color)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                }
                z4 = z3 | z;
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z4 || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new nl3() { // from class: rp2
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return DividerKt.VerticalDivider_9IZ8Weo$lambda$4$lambda$3(fM3410getThicknessD9Ej5fM, color, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2104width3ABfNKs, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                f3 = fM3410getThicknessD9Ej5fM;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                f3 = f2;
            }
            j2 = color;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sp2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DividerKt.VerticalDivider_9IZ8Weo$lambda$5(modifier3, f3, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        f2 = f;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            color = j;
            if ((i2 & 4) == 0) {
                i4 = 128;
            } else {
                i4 = 128;
            }
            i3 |= i4;
        } else {
            color = j;
        }
        z = true;
        if ((i3 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i6 != 0) {
                    fM3410getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                } else {
                    fM3410getThicknessD9Ej5fM = f2;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                }
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i6 != 0) {
                    fM3410getThicknessD9Ej5fM = DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM();
                } else {
                    fM3410getThicknessD9Ej5fM = f2;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    color = DividerDefaults.INSTANCE.getColor(composerStartRestartGroup, 6);
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1534852205, i3, -1, "androidx.compose.material3.VerticalDivider (Divider.kt:81)");
            }
            Modifier modifierM2104width3ABfNKs2 = SizeKt.m2104width3ABfNKs(SizeKt.fillMaxHeight$default(modifier4, 0.0f, 1, null), fM3410getThicknessD9Ej5fM);
            if ((i3 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            z = ((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 ? false : false;
            z4 = z3 | z;
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z4) {
                objRememberedValue = new nl3() { // from class: rp2
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DividerKt.VerticalDivider_9IZ8Weo$lambda$4$lambda$3(fM3410getThicknessD9Ej5fM, color, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new nl3() { // from class: rp2
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DividerKt.VerticalDivider_9IZ8Weo$lambda$4$lambda$3(fM3410getThicknessD9Ej5fM, color, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            CanvasKt.Canvas(modifierM2104width3ABfNKs2, (nl3) objRememberedValue, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            f3 = fM3410getThicknessD9Ej5fM;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            f3 = f2;
        }
        j2 = color;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sp2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DividerKt.VerticalDivider_9IZ8Weo$lambda$5(modifier3, f3, j2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDivider_9IZ8Weo$lambda$4$lambda$3(float f, long j, DrawScope drawScope) {
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(f);
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(drawScope.mo1434toPx0680j_4(f) / 2.0f)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fMo1434toPx0680j_5 = drawScope.mo1434toPx0680j_4(f) / 2.0f;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        DrawScope.m6792drawLineNGM6Ib0$default(drawScope, j, jM5979constructorimpl, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_5)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), fMo1434toPx0680j_4, 0, null, 0.0f, null, 0, 496, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDivider_9IZ8Weo$lambda$5(Modifier modifier, float f, long j, int i, int i2, Composer composer, int i3) {
        m3413VerticalDivider9IZ8Weo(modifier, f, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}
