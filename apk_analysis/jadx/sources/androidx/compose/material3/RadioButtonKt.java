package androidx.compose.material3;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.rl2;
import defpackage.yh0;

/* JADX INFO: loaded from: classes2.dex */
public final class RadioButtonKt {
    private static final float RadioButtonPadding = Dp.m9042constructorimpl(2.0f);
    private static final float RadioButtonDotSize = Dp.m9042constructorimpl(12.0f);
    private static final float RadioStrokeWidth = Dp.m9042constructorimpl(2.0f);

    /* JADX WARN: Code duplicated, block: B:100:0x0116  */
    /* JADX WARN: Code duplicated, block: B:103:0x0146  */
    /* JADX WARN: Code duplicated, block: B:104:0x0177  */
    /* JADX WARN: Code duplicated, block: B:106:0x017f  */
    /* JADX WARN: Code duplicated, block: B:109:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:111:0x01be  */
    /* JADX WARN: Code duplicated, block: B:114:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:116:0x01da  */
    /* JADX WARN: Code duplicated, block: B:119:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:121:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0061  */
    /* JADX WARN: Code duplicated, block: B:40:0x0065  */
    /* JADX WARN: Code duplicated, block: B:42:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:47:0x0077  */
    /* JADX WARN: Code duplicated, block: B:49:0x007b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:55:0x008c  */
    /* JADX WARN: Code duplicated, block: B:58:0x0094  */
    /* JADX WARN: Code duplicated, block: B:60:0x0098  */
    /* JADX WARN: Code duplicated, block: B:62:0x009b  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dd A[PHI: r3 r4 r5 r6
      0x00dd: PHI (r3v36 boolean) = (r3v22 boolean), (r3v38 boolean) binds: [B:92:0x00f8, B:81:0x00d9] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r4v16 androidx.compose.ui.Modifier) = (r4v10 androidx.compose.ui.Modifier), (r4v18 androidx.compose.ui.Modifier) binds: [B:92:0x00f8, B:81:0x00d9] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r5v13 androidx.compose.material3.RadioButtonColors) = (r5v6 androidx.compose.material3.RadioButtonColors), (r5v14 androidx.compose.material3.RadioButtonColors) binds: [B:92:0x00f8, B:81:0x00d9] A[DONT_GENERATE, DONT_INLINE]
      0x00dd: PHI (r6v16 int) = (r6v7 int), (r6v17 int) binds: [B:92:0x00f8, B:81:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x00df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:96:0x0104  */
    /* JADX WARN: Code duplicated, block: B:99:0x010e  */
    public static final void RadioButton(boolean z, ll3<j59> ll3Var, Modifier modifier, boolean z2, RadioButtonColors radioButtonColors, MutableInteractionSource mutableInteractionSource, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        boolean z3;
        int i5;
        RadioButtonColors radioButtonColorsColors;
        int i6;
        MutableInteractionSource mutableInteractionSource2;
        int i7;
        boolean z4;
        Modifier modifier3;
        boolean z5;
        RadioButtonColors radioButtonColors2;
        MutableInteractionSource mutableInteractionSource3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i8;
        boolean z6;
        RadioButtonColors radioButtonColors3;
        MutableInteractionSource mutableInteractionSource4;
        float fM9042constructorimpl;
        State<Dp> stateM1188animateDpAsStateAjpBEmI;
        State<Color> stateRadioColor$material3;
        Modifier modifierMinimumInteractiveComponentSize;
        Modifier modifierM2312selectableO2vRcR0;
        boolean zChanged;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(408580840);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        int i9 = i2 & 4;
        if (i9 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z3 = z2;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        radioButtonColorsColors = radioButtonColors;
                        int i10 = composerStartRestartGroup.changed(radioButtonColorsColors) ? 16384 : 8192;
                        i3 |= i10;
                    } else {
                        radioButtonColorsColors = radioButtonColors;
                    }
                    i3 |= i10;
                } else {
                    radioButtonColorsColors = radioButtonColors;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((74899 & i3) != 74898) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i9 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                                radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            i8 = i3;
                            z6 = z3;
                            radioButtonColors3 = radioButtonColorsColors;
                            if (i6 != 0) {
                                mutableInteractionSource4 = null;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                            }
                            if (z) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                            } else {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                            stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                            if (ll3Var != null) {
                                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                                z5 = z6;
                                modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                            } else {
                                z5 = z6;
                                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                                modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                            }
                            if (ll3Var != null) {
                                modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                            }
                            Modifier modifierM2091requiredSize3ABfNKs = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                            zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            mutableInteractionSource3 = mutableInteractionSource4;
                            radioButtonColors2 = radioButtonColors3;
                            modifier3 = modifier4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                            }
                            i8 = i3;
                            modifier4 = modifier2;
                            z6 = z3;
                            radioButtonColors3 = radioButtonColorsColors;
                        }
                        mutableInteractionSource4 = mutableInteractionSource2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                        }
                        if (z) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                        } else {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                        stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                        if (ll3Var != null) {
                            modifierMinimumInteractiveComponentSize = Modifier.Companion;
                            z5 = z6;
                            modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                        } else {
                            z5 = z6;
                            modifierMinimumInteractiveComponentSize = Modifier.Companion;
                            modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                        }
                        if (ll3Var != null) {
                            modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                        }
                        Modifier modifierM2091requiredSize3ABfNKs2 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                        zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs2, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        mutableInteractionSource3 = mutableInteractionSource4;
                        radioButtonColors2 = radioButtonColors3;
                        modifier3 = modifier4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z5 = z3;
                        radioButtonColors2 = radioButtonColorsColors;
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((74899 & i3) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i8 = i3;
                        z6 = z3;
                        radioButtonColors3 = radioButtonColorsColors;
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i8 = i3;
                        z6 = z3;
                        radioButtonColors3 = radioButtonColorsColors;
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                    }
                    if (z) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                    } else {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                    stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        z5 = z6;
                        modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                    } else {
                        z5 = z6;
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                    }
                    Modifier modifierM2091requiredSize3ABfNKs3 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                    zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs3, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource3 = mutableInteractionSource4;
                    radioButtonColors2 = radioButtonColors3;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    radioButtonColors2 = radioButtonColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
                }
            }
            i3 |= 3072;
            z3 = z2;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    radioButtonColorsColors = radioButtonColors;
                    if (composerStartRestartGroup.changed(radioButtonColorsColors)) {
                    }
                    i3 |= i10;
                } else {
                    radioButtonColorsColors = radioButtonColors;
                }
                i3 |= i10;
            } else {
                radioButtonColorsColors = radioButtonColors;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((74899 & i3) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i8 = i3;
                        z6 = z3;
                        radioButtonColors3 = radioButtonColorsColors;
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i8 = i3;
                        z6 = z3;
                        radioButtonColors3 = radioButtonColorsColors;
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                    }
                    if (z) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                    } else {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                    stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        z5 = z6;
                        modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                    } else {
                        z5 = z6;
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                    }
                    Modifier modifierM2091requiredSize3ABfNKs4 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                    zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs4, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource3 = mutableInteractionSource4;
                    radioButtonColors2 = radioButtonColors3;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    radioButtonColors2 = radioButtonColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((74899 & i3) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i8 = i3;
                    z6 = z3;
                    radioButtonColors3 = radioButtonColorsColors;
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i8 = i3;
                    z6 = z3;
                    radioButtonColors3 = radioButtonColorsColors;
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                }
                if (z) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                } else {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                }
                stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    z5 = z6;
                    modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                } else {
                    z5 = z6;
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                }
                Modifier modifierM2091requiredSize3ABfNKs5 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs5, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource3 = mutableInteractionSource4;
                radioButtonColors2 = radioButtonColors3;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                radioButtonColors2 = radioButtonColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z3 = z2;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    radioButtonColorsColors = radioButtonColors;
                    if (composerStartRestartGroup.changed(radioButtonColorsColors)) {
                    }
                    i3 |= i10;
                } else {
                    radioButtonColorsColors = radioButtonColors;
                }
                i3 |= i10;
            } else {
                radioButtonColorsColors = radioButtonColors;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((74899 & i3) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i8 = i3;
                        z6 = z3;
                        radioButtonColors3 = radioButtonColorsColors;
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        i8 = i3;
                        z6 = z3;
                        radioButtonColors3 = radioButtonColorsColors;
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                    }
                    if (z) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                    } else {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                    stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        z5 = z6;
                        modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                    } else {
                        z5 = z6;
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                    }
                    Modifier modifierM2091requiredSize3ABfNKs6 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                    zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs6, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    mutableInteractionSource3 = mutableInteractionSource4;
                    radioButtonColors2 = radioButtonColors3;
                    modifier3 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    radioButtonColors2 = radioButtonColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((74899 & i3) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i8 = i3;
                    z6 = z3;
                    radioButtonColors3 = radioButtonColorsColors;
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i8 = i3;
                    z6 = z3;
                    radioButtonColors3 = radioButtonColorsColors;
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                }
                if (z) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                } else {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                }
                stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    z5 = z6;
                    modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                } else {
                    z5 = z6;
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                }
                Modifier modifierM2091requiredSize3ABfNKs7 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs7, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource3 = mutableInteractionSource4;
                radioButtonColors2 = radioButtonColors3;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                radioButtonColors2 = radioButtonColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
            }
        }
        i3 |= 3072;
        z3 = z2;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                radioButtonColorsColors = radioButtonColors;
                if (composerStartRestartGroup.changed(radioButtonColorsColors)) {
                }
                i3 |= i10;
            } else {
                radioButtonColorsColors = radioButtonColors;
            }
            i3 |= i10;
        } else {
            radioButtonColorsColors = radioButtonColors;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((74899 & i3) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i8 = i3;
                    z6 = z3;
                    radioButtonColors3 = radioButtonColorsColors;
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    i8 = i3;
                    z6 = z3;
                    radioButtonColors3 = radioButtonColorsColors;
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
                }
                if (z) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
                } else {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                }
                stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    z5 = z6;
                    modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
                } else {
                    z5 = z6;
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                }
                Modifier modifierM2091requiredSize3ABfNKs8 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
                zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs8, (nl3) objRememberedValue, composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                mutableInteractionSource3 = mutableInteractionSource4;
                radioButtonColors2 = radioButtonColors3;
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                radioButtonColors2 = radioButtonColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((74899 & i3) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                i8 = i3;
                z6 = z3;
                radioButtonColors3 = radioButtonColorsColors;
                if (i6 != 0) {
                    mutableInteractionSource4 = null;
                } else {
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
            } else {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    radioButtonColorsColors = RadioButtonDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                i8 = i3;
                z6 = z3;
                radioButtonColors3 = radioButtonColorsColors;
                if (i6 != 0) {
                    mutableInteractionSource4 = null;
                } else {
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(408580840, i8, -1, "androidx.compose.material3.RadioButton (RadioButton.kt:80)");
            }
            if (z) {
                fM9042constructorimpl = Dp.m9042constructorimpl(RadioButtonDotSize / 2.0f);
            } else {
                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
            }
            stateM1188animateDpAsStateAjpBEmI = AnimateAsStateKt.m1188animateDpAsStateAjpBEmI(fM9042constructorimpl, MotionSchemeKt.value(MotionSchemeKeyTokens.FastSpatial, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
            stateRadioColor$material3 = radioButtonColors3.radioColor$material3(z6, z, composerStartRestartGroup, ((i8 >> 6) & 896) | ((i8 >> 9) & 14) | ((i8 << 3) & 112));
            if (ll3Var != null) {
                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                z5 = z6;
                modifierM2312selectableO2vRcR0 = SelectableKt.m2312selectableO2vRcR0(modifierMinimumInteractiveComponentSize, z, mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5074getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z5, Role.m8254boximpl(Role.Companion.m8266getRadioButtono7Vup1c()), ll3Var);
            } else {
                z5 = z6;
                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                modifierM2312selectableO2vRcR0 = modifierMinimumInteractiveComponentSize;
            }
            if (ll3Var != null) {
                modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
            }
            Modifier modifierM2091requiredSize3ABfNKs9 = SizeKt.m2091requiredSize3ABfNKs(PaddingKt.m2033padding3ABfNKs(SizeKt.wrapContentSize$default(modifier4.then(modifierMinimumInteractiveComponentSize).then(modifierM2312selectableO2vRcR0), Alignment.Companion.getCenter(), false, 2, null), RadioButtonPadding), RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM());
            zChanged = composerStartRestartGroup.changed(stateRadioColor$material3) | composerStartRestartGroup.changed(stateM1188animateDpAsStateAjpBEmI);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new rl2(1, stateRadioColor$material3, stateM1188animateDpAsStateAjpBEmI);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs9, (nl3) objRememberedValue, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            mutableInteractionSource3 = mutableInteractionSource4;
            radioButtonColors2 = radioButtonColors3;
            modifier3 = modifier4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            z5 = z3;
            radioButtonColors2 = radioButtonColorsColors;
            mutableInteractionSource3 = mutableInteractionSource2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new yh0(z, ll3Var, modifier3, z5, radioButtonColors2, mutableInteractionSource3, i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 RadioButton$lambda$1$lambda$0(State state, State state2, DrawScope drawScope) {
        float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(RadioStrokeWidth);
        float f = fMo1434toPx0680j_4 / 2.0f;
        DrawScope.m6787drawCircleVaOC9Bg$default(drawScope, ((Color) state.getValue()).m6242unboximpl(), drawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(RadioButtonTokens.INSTANCE.m5073getIconSizeD9Ej5fM() / 2.0f)) - f, 0L, 0.0f, new Stroke(fMo1434toPx0680j_4, 0.0f, 0, 0, null, 30, null), null, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, null);
        if (Dp.m9041compareTo0680j_4(((Dp) state2.getValue()).m9056unboximpl(), Dp.m9042constructorimpl(0.0f)) > 0) {
            DrawScope.m6787drawCircleVaOC9Bg$default(drawScope, ((Color) state.getValue()).m6242unboximpl(), drawScope.mo1434toPx0680j_4(((Dp) state2.getValue()).m9056unboximpl()) - f, 0L, 0.0f, Fill.INSTANCE, null, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 RadioButton$lambda$2(boolean z, ll3 ll3Var, Modifier modifier, boolean z2, RadioButtonColors radioButtonColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        RadioButton(z, ll3Var, modifier, z2, radioButtonColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}
