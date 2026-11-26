package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material3.CheckboxKt;
import androidx.compose.material3.tokens.CheckboxTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.state.ToggleableStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.sc3;
import defpackage.se0;

/* JADX INFO: loaded from: classes2.dex */
public final class CheckboxKt {
    private static final float CheckboxDefaultPadding = Dp.m9042constructorimpl(2.0f);
    private static final float CheckboxSize = Dp.m9042constructorimpl(20.0f);
    private static final float RadiusSize = Dp.m9042constructorimpl(2.0f);
    private static final int SnapAnimationDelay = 100;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            try {
                iArr[ToggleableState.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleableState.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011f A[PHI: r6 r8 r12 r15
      0x011f: PHI (r6v28 int) = (r6v22 int), (r6v30 int) binds: [B:112:0x0154, B:99:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x011f: PHI (r8v11 androidx.compose.ui.Modifier) = (r8v5 androidx.compose.ui.Modifier), (r8v2 androidx.compose.ui.Modifier) binds: [B:112:0x0154, B:99:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x011f: PHI (r12v8 boolean) = (r12v4 boolean), (r12v3 boolean) binds: [B:112:0x0154, B:99:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x011f: PHI (r15v12 androidx.compose.material3.CheckboxColors) = (r15v8 androidx.compose.material3.CheckboxColors), (r15v7 androidx.compose.material3.CheckboxColors) binds: [B:112:0x0154, B:99:0x011c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:104:0x013a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:105:0x013c  */
    /* JADX WARN: Code duplicated, block: B:107:0x0141  */
    /* JADX WARN: Code duplicated, block: B:110:0x0147  */
    /* JADX WARN: Code duplicated, block: B:111:0x0152  */
    /* JADX WARN: Code duplicated, block: B:113:0x0156  */
    /* JADX WARN: Code duplicated, block: B:116:0x0162  */
    /* JADX WARN: Code duplicated, block: B:119:0x016e  */
    /* JADX WARN: Code duplicated, block: B:121:0x0178  */
    /* JADX WARN: Code duplicated, block: B:122:0x017b  */
    /* JADX WARN: Code duplicated, block: B:125:0x0182  */
    /* JADX WARN: Code duplicated, block: B:128:0x018c  */
    /* JADX WARN: Code duplicated, block: B:130:0x0194  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:136:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:141:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0096  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:83:0x00df  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:92:0x0103  */
    /* JADX WARN: Code duplicated, block: B:94:0x010e  */
    public static final void Checkbox(final boolean z, final nl3<? super Boolean, j59> nl3Var, final Stroke stroke, final Stroke stroke2, Modifier modifier, boolean z2, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) throws Throwable {
        int i3;
        Stroke stroke3;
        Stroke stroke4;
        Modifier modifier2;
        int i4;
        boolean z3;
        int i5;
        CheckboxColors checkboxColorsColors;
        int i6;
        MutableInteractionSource mutableInteractionSource2;
        int i7;
        int i8;
        boolean z4;
        Composer composer2;
        final Modifier modifier3;
        final boolean z5;
        final MutableInteractionSource mutableInteractionSource3;
        final CheckboxColors checkboxColors2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        ll3 ll3Var;
        int i9;
        MutableInteractionSource mutableInteractionSource4;
        CheckboxColors checkboxColors3;
        boolean z6;
        int i10;
        int i11;
        boolean z7;
        boolean z8;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(534932591);
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
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            stroke3 = stroke;
        } else {
            stroke3 = stroke;
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(stroke3) ? 256 : 128;
            }
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
            stroke4 = stroke2;
        } else {
            stroke4 = stroke2;
            if ((i & 3072) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(stroke4) ? 2048 : 1024;
            }
        }
        int i12 = i2 & 16;
        if (i12 == 0) {
            if ((i & 24576) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 16384 : 8192;
            }
            i4 = i2 & 32;
            if (i4 != 0) {
                if ((196608 & i) == 0) {
                    z3 = z2;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 131072;
                    } else {
                        i5 = 65536;
                    }
                    i3 |= i5;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        checkboxColorsColors = checkboxColors;
                        int i13 = composerStartRestartGroup.changed(checkboxColorsColors) ? 1048576 : 524288;
                        i3 |= i13;
                    } else {
                        checkboxColorsColors = checkboxColors;
                    }
                    i3 |= i13;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i6 = i2 & 128;
                if (i6 != 0) {
                    i3 |= 12582912;
                    mutableInteractionSource2 = mutableInteractionSource;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                            i7 = 8388608;
                        } else {
                            i7 = 4194304;
                        }
                        i3 |= i7;
                    }
                }
                i8 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i8 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    ll3Var = null;
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i9 = i8 & (-3670017);
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        } else {
                            i9 = i8;
                        }
                        if (i6 != 0) {
                            mutableInteractionSource4 = null;
                        }
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        i11 = 32;
                        i10 = 534932591;
                        Modifier modifier4 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i9, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:161)");
                        }
                        ToggleableState ToggleableState = ToggleableStateKt.ToggleableState(z);
                        if (nl3Var != null) {
                            composerStartRestartGroup.startReplaceGroup(1848599606);
                            if ((i9 & 112) == i11) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            z8 = z7 | ((i9 & 14) == 4);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z8 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new ll3() { // from class: qa1
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            ll3Var = (ll3) objRememberedValue;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1848665295);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composer2 = composerStartRestartGroup;
                        TriStateCheckbox(ToggleableState, ll3Var, stroke3, stroke4, modifier4, z6, checkboxColors3, mutableInteractionSource4, composer2, i9 & 33554304, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        z5 = z6;
                        checkboxColors2 = checkboxColors3;
                        mutableInteractionSource3 = mutableInteractionSource4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 64) != 0) {
                            i9 = i8 & (-3670017);
                        } else {
                            mutableInteractionSource4 = mutableInteractionSource2;
                            z6 = z3;
                            i9 = i8;
                            i11 = 32;
                            i10 = 534932591;
                            checkboxColors3 = checkboxColorsColors;
                        }
                        Modifier modifier5 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i9, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:161)");
                        }
                        ToggleableState ToggleableState2 = ToggleableStateKt.ToggleableState(z);
                        if (nl3Var != null) {
                            composerStartRestartGroup.startReplaceGroup(1848599606);
                            if ((i9 & 112) == i11) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            z8 = z7 | ((i9 & 14) == 4);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z8) {
                                objRememberedValue = new ll3() { // from class: qa1
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new ll3() { // from class: qa1
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            ll3Var = (ll3) objRememberedValue;
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1848665295);
                            composerStartRestartGroup.endReplaceGroup();
                        }
                        composer2 = composerStartRestartGroup;
                        TriStateCheckbox(ToggleableState2, ll3Var, stroke3, stroke4, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i9 & 33554304, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        z5 = z6;
                        checkboxColors2 = checkboxColors3;
                        mutableInteractionSource3 = mutableInteractionSource4;
                    }
                    mutableInteractionSource4 = mutableInteractionSource2;
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    i11 = 32;
                    i10 = 534932591;
                    Modifier modifier6 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i9, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:161)");
                    }
                    ToggleableState ToggleableState3 = ToggleableStateKt.ToggleableState(z);
                    if (nl3Var != null) {
                        composerStartRestartGroup.startReplaceGroup(1848599606);
                        if ((i9 & 112) == i11) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z7 | ((i9 & 14) == 4);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z8) {
                            objRememberedValue = new ll3() { // from class: qa1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: qa1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        ll3Var = (ll3) objRememberedValue;
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1848665295);
                        composerStartRestartGroup.endReplaceGroup();
                    }
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(ToggleableState3, ll3Var, stroke3, stroke4, modifier6, z6, checkboxColors3, mutableInteractionSource4, composer2, i9 & 33554304, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier6;
                    z5 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    checkboxColors2 = checkboxColorsColors;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ra1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.Checkbox$lambda$6(z, nl3Var, stroke, stroke2, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z3 = z2;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i13;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i13;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i6 = i2 & 128;
            if (i6 != 0) {
                i3 |= 12582912;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i7 = 8388608;
                    } else {
                        i7 = 4194304;
                    }
                    i3 |= i7;
                }
            }
            i8 = i3;
            if ((i3 & 4793491) != 4793490) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i8 & 1)) {
                composerStartRestartGroup.startDefaults();
                ll3Var = null;
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i9 = i8 & (-3670017);
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i9 = i8;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    i11 = 32;
                    i10 = 534932591;
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i9 = i8 & (-3670017);
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i9 = i8;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    i11 = 32;
                    i10 = 534932591;
                }
                Modifier modifier7 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i9, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:161)");
                }
                ToggleableState ToggleableState4 = ToggleableStateKt.ToggleableState(z);
                if (nl3Var != null) {
                    composerStartRestartGroup.startReplaceGroup(1848599606);
                    if ((i9 & 112) == i11) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i9 & 14) == 4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z8) {
                        objRememberedValue = new ll3() { // from class: qa1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: qa1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    ll3Var = (ll3) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1848665295);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(ToggleableState4, ll3Var, stroke3, stroke4, modifier7, z6, checkboxColors3, mutableInteractionSource4, composer2, i9 & 33554304, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier7;
                z5 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                mutableInteractionSource3 = mutableInteractionSource2;
                checkboxColors2 = checkboxColorsColors;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ra1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.Checkbox$lambda$6(z, nl3Var, stroke, stroke2, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        modifier2 = modifier;
        i4 = i2 & 32;
        if (i4 != 0) {
            if ((196608 & i) == 0) {
                z3 = z2;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i3 |= i5;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i13;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i13;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i6 = i2 & 128;
            if (i6 != 0) {
                i3 |= 12582912;
                mutableInteractionSource2 = mutableInteractionSource;
            } else {
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i7 = 8388608;
                    } else {
                        i7 = 4194304;
                    }
                    i3 |= i7;
                }
            }
            i8 = i3;
            if ((i3 & 4793491) != 4793490) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i8 & 1)) {
                composerStartRestartGroup.startDefaults();
                ll3Var = null;
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i9 = i8 & (-3670017);
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i9 = i8;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    i11 = 32;
                    i10 = 534932591;
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i9 = i8 & (-3670017);
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    } else {
                        i9 = i8;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource4 = null;
                    } else {
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    i11 = 32;
                    i10 = 534932591;
                }
                Modifier modifier8 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i9, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:161)");
                }
                ToggleableState ToggleableState5 = ToggleableStateKt.ToggleableState(z);
                if (nl3Var != null) {
                    composerStartRestartGroup.startReplaceGroup(1848599606);
                    if ((i9 & 112) == i11) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i9 & 14) == 4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z8) {
                        objRememberedValue = new ll3() { // from class: qa1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: qa1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    ll3Var = (ll3) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1848665295);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(ToggleableState5, ll3Var, stroke3, stroke4, modifier8, z6, checkboxColors3, mutableInteractionSource4, composer2, i9 & 33554304, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier8;
                z5 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                mutableInteractionSource3 = mutableInteractionSource2;
                checkboxColors2 = checkboxColorsColors;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ra1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.Checkbox$lambda$6(z, nl3Var, stroke, stroke2, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z3 = z2;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                checkboxColorsColors = checkboxColors;
                if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                }
                i3 |= i13;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i3 |= i13;
        } else {
            checkboxColorsColors = checkboxColors;
        }
        i6 = i2 & 128;
        if (i6 != 0) {
            i3 |= 12582912;
            mutableInteractionSource2 = mutableInteractionSource;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                    i7 = 8388608;
                } else {
                    i7 = 4194304;
                }
                i3 |= i7;
            }
        }
        i8 = i3;
        if ((i3 & 4793491) != 4793490) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i8 & 1)) {
            composerStartRestartGroup.startDefaults();
            ll3Var = null;
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if ((i2 & 64) != 0) {
                    i9 = i8 & (-3670017);
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    i9 = i8;
                }
                if (i6 != 0) {
                    mutableInteractionSource4 = null;
                } else {
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                z6 = z3;
                checkboxColors3 = checkboxColorsColors;
                i11 = 32;
                i10 = 534932591;
            } else {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if ((i2 & 64) != 0) {
                    i9 = i8 & (-3670017);
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                } else {
                    i9 = i8;
                }
                if (i6 != 0) {
                    mutableInteractionSource4 = null;
                } else {
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                z6 = z3;
                checkboxColors3 = checkboxColorsColors;
                i11 = 32;
                i10 = 534932591;
            }
            Modifier modifier9 = modifier2;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i10, i9, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:161)");
            }
            ToggleableState ToggleableState6 = ToggleableStateKt.ToggleableState(z);
            if (nl3Var != null) {
                composerStartRestartGroup.startReplaceGroup(1848599606);
                if ((i9 & 112) == i11) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z7 | ((i9 & 14) == 4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z8) {
                    objRememberedValue = new ll3() { // from class: qa1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: qa1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CheckboxKt.Checkbox$lambda$5$lambda$4(nl3Var, z);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3Var = (ll3) objRememberedValue;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1848665295);
                composerStartRestartGroup.endReplaceGroup();
            }
            composer2 = composerStartRestartGroup;
            TriStateCheckbox(ToggleableState6, ll3Var, stroke3, stroke4, modifier9, z6, checkboxColors3, mutableInteractionSource4, composer2, i9 & 33554304, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier9;
            z5 = z6;
            checkboxColors2 = checkboxColors3;
            mutableInteractionSource3 = mutableInteractionSource4;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            z5 = z3;
            mutableInteractionSource3 = mutableInteractionSource2;
            checkboxColors2 = checkboxColorsColors;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ra1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CheckboxKt.Checkbox$lambda$6(z, nl3Var, stroke, stroke2, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Checkbox$lambda$2$lambda$1(nl3 nl3Var, boolean z) {
        nl3Var.invoke(Boolean.valueOf(!z));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Checkbox$lambda$3(boolean z, nl3 nl3Var, Modifier modifier, boolean z2, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) throws Throwable {
        Checkbox(z, nl3Var, modifier, z2, checkboxColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Checkbox$lambda$5$lambda$4(nl3 nl3Var, boolean z) {
        nl3Var.invoke(Boolean.valueOf(!z));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Checkbox$lambda$6(boolean z, nl3 nl3Var, Stroke stroke, Stroke stroke2, Modifier modifier, boolean z2, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) throws Throwable {
        Checkbox(z, nl3Var, stroke, stroke2, modifier, z2, checkboxColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final void CheckboxImpl(final boolean z, final ToggleableState toggleableState, final Modifier modifier, final CheckboxColors checkboxColors, final Stroke stroke, final Stroke stroke2, Composer composer, final int i) throws Throwable {
        int i2;
        Composer composer2;
        float f;
        float f2;
        float f3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-891330208);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(toggleableState.ordinal()) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(checkboxColors) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(stroke) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(stroke2) ? 131072 : 65536;
        }
        if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-891330208, i2, -1, "androidx.compose.material3.CheckboxImpl (Checkbox.kt:401)");
            }
            int i3 = i2 >> 3;
            int i4 = i3 & 14;
            Transition transitionUpdateTransition = TransitionKt.updateTransition(toggleableState, (String) null, composerStartRestartGroup, i4, 2);
            final FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composerStartRestartGroup, 6);
            dm3<Transition.Segment<ToggleableState>, Composer, Integer, FiniteAnimationSpec<Float>> dm3Var = new dm3<Transition.Segment<ToggleableState>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.CheckboxKt$CheckboxImpl$checkDrawFraction$1
                public final FiniteAnimationSpec<Float> invoke(Transition.Segment<ToggleableState> segment, Composer composer3, int i5) {
                    composer3.startReplaceGroup(1780794470);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1780794470, i5, -1, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:407)");
                    }
                    ToggleableState initialState = segment.getInitialState();
                    ToggleableState toggleableState2 = ToggleableState.Off;
                    FiniteAnimationSpec<Float> finiteAnimationSpecSnap = (initialState != toggleableState2 && segment.getTargetState() == toggleableState2) ? AnimationSpecKt.snap(100) : finiteAnimationSpecValue;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer3.endReplaceGroup();
                    return finiteAnimationSpecSnap;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<ToggleableState> segment, Composer composer3, Integer num) {
                    return invoke(segment, composer3, num.intValue());
                }
            };
            sc3 sc3Var = sc3.a;
            TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(sc3Var);
            ToggleableState toggleableState2 = (ToggleableState) transitionUpdateTransition.getCurrentState();
            composerStartRestartGroup.startReplaceGroup(-768316570);
            int i5 = i2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-768316570, 0, -1, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:415)");
            }
            int[] iArr = WhenMappings.$EnumSwitchMapping$0;
            int i6 = iArr[toggleableState2.ordinal()];
            float f4 = 0.0f;
            if (i6 == 1) {
                f = 1.0f;
            } else if (i6 != 2) {
                if (i6 != 3) {
                    me0.e();
                    return;
                }
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Float fValueOf = Float.valueOf(f);
            ToggleableState toggleableState3 = (ToggleableState) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(-768316570);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-768316570, 0, -1, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:415)");
            }
            int i7 = iArr[toggleableState3.ordinal()];
            if (i7 == 1) {
                f2 = 1.0f;
            } else if (i7 != 2) {
                if (i7 != 3) {
                    me0.e();
                    return;
                }
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            final State stateCreateTransitionAnimation = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf, Float.valueOf(f2), dm3Var.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), vectorConverter, "FloatAnimation", composerStartRestartGroup, 0);
            dm3<Transition.Segment<ToggleableState>, Composer, Integer, FiniteAnimationSpec<Float>> dm3Var2 = new dm3<Transition.Segment<ToggleableState>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$1
                public final FiniteAnimationSpec<Float> invoke(Transition.Segment<ToggleableState> segment, Composer composer3, int i8) {
                    FiniteAnimationSpec<Float> finiteAnimationSpecSnap;
                    composer3.startReplaceGroup(630790831);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(630790831, i8, -1, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:425)");
                    }
                    ToggleableState initialState = segment.getInitialState();
                    ToggleableState toggleableState4 = ToggleableState.Off;
                    if (initialState == toggleableState4) {
                        finiteAnimationSpecSnap = AnimationSpecKt.snap$default(0, 1, null);
                    } else {
                        finiteAnimationSpecSnap = segment.getTargetState() == toggleableState4 ? AnimationSpecKt.snap(100) : finiteAnimationSpecValue;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer3.endReplaceGroup();
                    return finiteAnimationSpecSnap;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<ToggleableState> segment, Composer composer3, Integer num) {
                    return invoke(segment, composer3, num.intValue());
                }
            };
            TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(sc3Var);
            ToggleableState toggleableState4 = (ToggleableState) transitionUpdateTransition.getCurrentState();
            composerStartRestartGroup.startReplaceGroup(1840054703);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1840054703, 0, -1, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:433)");
            }
            int i8 = iArr[toggleableState4.ordinal()];
            if (i8 == 1 || i8 == 2) {
                f3 = 0.0f;
            } else {
                if (i8 != 3) {
                    me0.e();
                    return;
                }
                f3 = 1.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Float fValueOf2 = Float.valueOf(f3);
            ToggleableState toggleableState5 = (ToggleableState) transitionUpdateTransition.getTargetState();
            composerStartRestartGroup.startReplaceGroup(1840054703);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1840054703, 0, -1, "androidx.compose.material3.CheckboxImpl.<anonymous> (Checkbox.kt:433)");
            }
            int i9 = iArr[toggleableState5.ordinal()];
            if (i9 != 1 && i9 != 2) {
                if (i9 != 3) {
                    me0.e();
                    return;
                }
                f4 = 1.0f;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            final State stateCreateTransitionAnimation2 = TransitionKt.createTransitionAnimation(transitionUpdateTransition, fValueOf2, Float.valueOf(f4), dm3Var2.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), vectorConverter2, "FloatAnimation", composerStartRestartGroup, 0);
            composer2 = composerStartRestartGroup;
            Object objRememberedValue = composer2.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                Object checkDrawingCache = new CheckDrawingCache(null, null, null, 7, null);
                composer2.updateRememberedValue(checkDrawingCache);
                objRememberedValue = checkDrawingCache;
            }
            final CheckDrawingCache checkDrawingCache2 = (CheckDrawingCache) objRememberedValue;
            final State<Color> stateCheckmarkColor$material3 = checkboxColors.checkmarkColor$material3(toggleableState, composer2, i4 | ((i5 >> 6) & 112));
            int i10 = (i5 & 126) | (i3 & 896);
            final State<Color> stateBoxColor$material3 = checkboxColors.boxColor$material3(z, toggleableState, composer2, i10);
            final State<Color> stateBorderColor$material3 = checkboxColors.borderColor$material3(z, toggleableState, composer2, i10);
            Modifier modifierM2091requiredSize3ABfNKs = SizeKt.m2091requiredSize3ABfNKs(SizeKt.wrapContentSize$default(modifier, Alignment.Companion.getCenter(), false, 2, null), CheckboxSize);
            boolean zChanged = composer2.changed(stateBoxColor$material3) | composer2.changed(stateBorderColor$material3) | composer2.changedInstance(stroke2) | composer2.changed(stateCheckmarkColor$material3) | composer2.changed(stateCreateTransitionAnimation) | composer2.changed(stateCreateTransitionAnimation2) | composer2.changedInstance(stroke);
            Object objRememberedValue2 = composer2.rememberedValue();
            if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                Object obj = new nl3() { // from class: androidx.compose.material3.p
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return CheckboxKt.CheckboxImpl$lambda$14$lambda$13(stateBoxColor$material3, stateBorderColor$material3, stroke2, stateCheckmarkColor$material3, stateCreateTransitionAnimation, stateCreateTransitionAnimation2, stroke, checkDrawingCache2, (DrawScope) obj2);
                    }
                };
                composer2.updateRememberedValue(obj);
                objRememberedValue2 = obj;
            }
            CanvasKt.Canvas(modifierM2091requiredSize3ABfNKs, (nl3) objRememberedValue2, composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oa1
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return CheckboxKt.CheckboxImpl$lambda$15(z, toggleableState, modifier, checkboxColors, stroke, stroke2, i, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CheckboxImpl$lambda$14$lambda$13(State state, State state2, Stroke stroke, State state3, State state4, State state5, Stroke stroke2, CheckDrawingCache checkDrawingCache, DrawScope drawScope) {
        m3178drawBox1wkBAMs(drawScope, ((Color) state.getValue()).m6242unboximpl(), ((Color) state2.getValue()).m6242unboximpl(), drawScope.mo1434toPx0680j_4(RadiusSize), stroke);
        m3179drawCheck3IgeMak(drawScope, ((Color) state3.getValue()).m6242unboximpl(), ((Number) state4.getValue()).floatValue(), ((Number) state5.getValue()).floatValue(), stroke2, checkDrawingCache);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CheckboxImpl$lambda$15(boolean z, ToggleableState toggleableState, Modifier modifier, CheckboxColors checkboxColors, Stroke stroke, Stroke stroke2, int i, Composer composer, int i2) throws Throwable {
        CheckboxImpl(z, toggleableState, modifier, checkboxColors, stroke, stroke2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x011c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:104:0x011e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0121  */
    /* JADX WARN: Code duplicated, block: B:107:0x0124  */
    /* JADX WARN: Code duplicated, block: B:110:0x012a  */
    /* JADX WARN: Code duplicated, block: B:112:0x0135  */
    /* JADX WARN: Code duplicated, block: B:113:0x013b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0149  */
    /* JADX WARN: Code duplicated, block: B:118:0x0154  */
    /* JADX WARN: Code duplicated, block: B:119:0x0185  */
    /* JADX WARN: Code duplicated, block: B:121:0x018c  */
    /* JADX WARN: Code duplicated, block: B:124:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:126:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:129:0x01de  */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0098  */
    /* JADX WARN: Code duplicated, block: B:58:0x009c  */
    /* JADX WARN: Code duplicated, block: B:60:0x009f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00be  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:84:0x00de  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:95:0x0106  */
    public static final void TriStateCheckbox(final ToggleableState toggleableState, final ll3<j59> ll3Var, final Stroke stroke, final Stroke stroke2, Modifier modifier, boolean z, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) throws Throwable {
        int i3;
        Stroke stroke3;
        Stroke stroke4;
        Modifier modifier2;
        int i4;
        boolean z2;
        int i5;
        CheckboxColors checkboxColorsColors;
        int i6;
        MutableInteractionSource mutableInteractionSource2;
        int i7;
        boolean z3;
        final boolean z4;
        final CheckboxColors checkboxColors2;
        final MutableInteractionSource mutableInteractionSource3;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        CheckboxColors checkboxColors3;
        Modifier modifier5;
        int i8;
        boolean z5;
        Modifier modifierMinimumInteractiveComponentSize;
        Modifier modifierM2325triStateToggleableO2vRcR0;
        Composer composerStartRestartGroup = composer.startRestartGroup(-406243761);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(toggleableState.ordinal()) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            stroke3 = stroke;
        } else {
            stroke3 = stroke;
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(stroke3) ? 256 : 128;
            }
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
            stroke4 = stroke2;
        } else {
            stroke4 = stroke2;
            if ((i & 3072) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(stroke4) ? 2048 : 1024;
            }
        }
        int i9 = i2 & 16;
        if (i9 == 0) {
            if ((i & 24576) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 16384 : 8192;
            }
            i4 = i2 & 32;
            if (i4 != 0) {
                if ((196608 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 131072;
                    } else {
                        i5 = 65536;
                    }
                    i3 |= i5;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        checkboxColorsColors = checkboxColors;
                        int i10 = composerStartRestartGroup.changed(checkboxColorsColors) ? 1048576 : 524288;
                        i3 |= i10;
                    } else {
                        checkboxColorsColors = checkboxColors;
                    }
                    i3 |= i10;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i6 = i2 & 128;
                if (i6 != 0) {
                    if ((12582912 & i) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                            i7 = 8388608;
                        } else {
                            i7 = 4194304;
                        }
                        i3 |= i7;
                    }
                    if ((4793491 & i3) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i9 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            if (i6 != 0) {
                                mutableInteractionSource2 = null;
                                i8 = i3;
                                z5 = z2;
                                checkboxColors3 = checkboxColorsColors;
                                modifier5 = modifier4;
                            } else {
                                checkboxColors3 = checkboxColorsColors;
                                modifier5 = modifier4;
                                i8 = i3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                            }
                            if (ll3Var != null) {
                                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                                boolean z6 = z5;
                                modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z6, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                                z5 = z6;
                            } else {
                                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                                modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                            }
                            if (ll3Var != null) {
                                modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                            }
                            int i11 = i8 << 6;
                            CheckboxColors checkboxColors4 = checkboxColors3;
                            CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors4, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i11) | (i11 & 458752));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z4 = z5;
                            modifier3 = modifier5;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            checkboxColors2 = checkboxColors4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                            }
                            checkboxColors3 = checkboxColorsColors;
                            i8 = i3;
                            modifier5 = modifier2;
                        }
                        z5 = z2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                        }
                        if (ll3Var != null) {
                            modifierMinimumInteractiveComponentSize = Modifier.Companion;
                            boolean z7 = z5;
                            modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z7, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                            z5 = z7;
                        } else {
                            modifierMinimumInteractiveComponentSize = Modifier.Companion;
                            modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                        }
                        if (ll3Var != null) {
                            modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                        }
                        int i12 = i8 << 6;
                        CheckboxColors checkboxColors5 = checkboxColors3;
                        CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors5, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i12) | (i12 & 458752));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z4 = z5;
                        modifier3 = modifier5;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        checkboxColors2 = checkboxColors5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z4 = z2;
                        checkboxColors2 = checkboxColorsColors;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier3 = modifier2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((4793491 & i3) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            mutableInteractionSource2 = null;
                            i8 = i3;
                            z5 = z2;
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                        } else {
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                            i8 = i3;
                            z5 = z2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            mutableInteractionSource2 = null;
                            i8 = i3;
                            z5 = z2;
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                        } else {
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                            i8 = i3;
                            z5 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        boolean z8 = z5;
                        modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z8, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                        z5 = z8;
                    } else {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                    }
                    int i13 = i8 << 6;
                    CheckboxColors checkboxColors6 = checkboxColors3;
                    CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors6, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i13) | (i13 & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    modifier3 = modifier5;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    checkboxColors2 = checkboxColors6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z4 = z2;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z2 = z;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i10;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i10;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i6 = i2 & 128;
            if (i6 != 0) {
                if ((12582912 & i) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i7 = 8388608;
                    } else {
                        i7 = 4194304;
                    }
                    i3 |= i7;
                }
                if ((4793491 & i3) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            mutableInteractionSource2 = null;
                            i8 = i3;
                            z5 = z2;
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                        } else {
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                            i8 = i3;
                            z5 = z2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            mutableInteractionSource2 = null;
                            i8 = i3;
                            z5 = z2;
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                        } else {
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                            i8 = i3;
                            z5 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        boolean z9 = z5;
                        modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z9, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                        z5 = z9;
                    } else {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                    }
                    int i14 = i8 << 6;
                    CheckboxColors checkboxColors7 = checkboxColors3;
                    CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors7, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i14) | (i14 & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    modifier3 = modifier5;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    checkboxColors2 = checkboxColors7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z4 = z2;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((4793491 & i3) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        mutableInteractionSource2 = null;
                        i8 = i3;
                        z5 = z2;
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                    } else {
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                        i8 = i3;
                        z5 = z2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        mutableInteractionSource2 = null;
                        i8 = i3;
                        z5 = z2;
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                    } else {
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                        i8 = i3;
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    boolean z10 = z5;
                    modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z10, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                    z5 = z10;
                } else {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                }
                int i15 = i8 << 6;
                CheckboxColors checkboxColors8 = checkboxColors3;
                CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors8, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i15) | (i15 & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier5;
                mutableInteractionSource3 = mutableInteractionSource2;
                checkboxColors2 = checkboxColors8;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z4 = z2;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        modifier2 = modifier;
        i4 = i2 & 32;
        if (i4 != 0) {
            if ((196608 & i) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i3 |= i5;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i10;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i10;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i6 = i2 & 128;
            if (i6 != 0) {
                if ((12582912 & i) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                        i7 = 8388608;
                    } else {
                        i7 = 4194304;
                    }
                    i3 |= i7;
                }
                if ((4793491 & i3) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            mutableInteractionSource2 = null;
                            i8 = i3;
                            z5 = z2;
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                        } else {
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                            i8 = i3;
                            z5 = z2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            mutableInteractionSource2 = null;
                            i8 = i3;
                            z5 = z2;
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                        } else {
                            checkboxColors3 = checkboxColorsColors;
                            modifier5 = modifier4;
                            i8 = i3;
                            z5 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        boolean z11 = z5;
                        modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z11, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                        z5 = z11;
                    } else {
                        modifierMinimumInteractiveComponentSize = Modifier.Companion;
                        modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                    }
                    if (ll3Var != null) {
                        modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                    }
                    int i16 = i8 << 6;
                    CheckboxColors checkboxColors9 = checkboxColors3;
                    CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors9, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i16) | (i16 & 458752));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    modifier3 = modifier5;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    checkboxColors2 = checkboxColors9;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z4 = z2;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier3 = modifier2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((4793491 & i3) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        mutableInteractionSource2 = null;
                        i8 = i3;
                        z5 = z2;
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                    } else {
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                        i8 = i3;
                        z5 = z2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        mutableInteractionSource2 = null;
                        i8 = i3;
                        z5 = z2;
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                    } else {
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                        i8 = i3;
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    boolean z12 = z5;
                    modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z12, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                    z5 = z12;
                } else {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                }
                int i17 = i8 << 6;
                CheckboxColors checkboxColors10 = checkboxColors3;
                CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors10, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i17) | (i17 & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier5;
                mutableInteractionSource3 = mutableInteractionSource2;
                checkboxColors2 = checkboxColors10;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z4 = z2;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z2 = z;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                checkboxColorsColors = checkboxColors;
                if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                }
                i3 |= i10;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i3 |= i10;
        } else {
            checkboxColorsColors = checkboxColors;
        }
        i6 = i2 & 128;
        if (i6 != 0) {
            if ((12582912 & i) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerStartRestartGroup.changed(mutableInteractionSource2)) {
                    i7 = 8388608;
                } else {
                    i7 = 4194304;
                }
                i3 |= i7;
            }
            if ((4793491 & i3) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        mutableInteractionSource2 = null;
                        i8 = i3;
                        z5 = z2;
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                    } else {
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                        i8 = i3;
                        z5 = z2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        mutableInteractionSource2 = null;
                        i8 = i3;
                        z5 = z2;
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                    } else {
                        checkboxColors3 = checkboxColorsColors;
                        modifier5 = modifier4;
                        i8 = i3;
                        z5 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    boolean z13 = z5;
                    modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z13, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                    z5 = z13;
                } else {
                    modifierMinimumInteractiveComponentSize = Modifier.Companion;
                    modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
                }
                if (ll3Var != null) {
                    modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
                }
                int i18 = i8 << 6;
                CheckboxColors checkboxColors11 = checkboxColors3;
                CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors11, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i18) | (i18 & 458752));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                modifier3 = modifier5;
                mutableInteractionSource3 = mutableInteractionSource2;
                checkboxColors2 = checkboxColors11;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z4 = z2;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((4793491 & i3) != 4793490) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i6 != 0) {
                    mutableInteractionSource2 = null;
                    i8 = i3;
                    z5 = z2;
                    checkboxColors3 = checkboxColorsColors;
                    modifier5 = modifier4;
                } else {
                    checkboxColors3 = checkboxColorsColors;
                    modifier5 = modifier4;
                    i8 = i3;
                    z5 = z2;
                }
            } else {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    z2 = true;
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i6 != 0) {
                    mutableInteractionSource2 = null;
                    i8 = i3;
                    z5 = z2;
                    checkboxColors3 = checkboxColorsColors;
                    modifier5 = modifier4;
                } else {
                    checkboxColors3 = checkboxColorsColors;
                    modifier5 = modifier4;
                    i8 = i3;
                    z5 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-406243761, i8, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:275)");
            }
            if (ll3Var != null) {
                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                boolean z14 = z5;
                modifierM2325triStateToggleableO2vRcR0 = ToggleableKt.m2325triStateToggleableO2vRcR0(modifierMinimumInteractiveComponentSize, toggleableState, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, Dp.m9042constructorimpl(CheckboxTokens.INSTANCE.m4566getStateLayerSizeD9Ej5fM() / 2.0f), 0L, 4, null), z14, Role.m8254boximpl(Role.Companion.m8263getCheckboxo7Vup1c()), ll3Var);
                z5 = z14;
            } else {
                modifierMinimumInteractiveComponentSize = Modifier.Companion;
                modifierM2325triStateToggleableO2vRcR0 = modifierMinimumInteractiveComponentSize;
            }
            if (ll3Var != null) {
                modifierMinimumInteractiveComponentSize = InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifierMinimumInteractiveComponentSize);
            }
            int i19 = i8 << 6;
            CheckboxColors checkboxColors12 = checkboxColors3;
            CheckboxImpl(z5, toggleableState, PaddingKt.m2033padding3ABfNKs(modifier5.then(modifierMinimumInteractiveComponentSize).then(modifierM2325triStateToggleableO2vRcR0), CheckboxDefaultPadding), checkboxColors12, stroke3, stroke4, composerStartRestartGroup, ((i8 >> 15) & 14) | ((i8 << 3) & 112) | ((i8 >> 9) & 7168) | (57344 & i19) | (i19 & 458752));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z4 = z5;
            modifier3 = modifier5;
            mutableInteractionSource3 = mutableInteractionSource2;
            checkboxColors2 = checkboxColors12;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            z4 = z2;
            checkboxColors2 = checkboxColorsColors;
            mutableInteractionSource3 = mutableInteractionSource2;
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pa1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CheckboxKt.TriStateCheckbox$lambda$9(toggleableState, ll3Var, stroke, stroke2, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TriStateCheckbox$lambda$8(ToggleableState toggleableState, ll3 ll3Var, Modifier modifier, boolean z, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) throws Throwable {
        TriStateCheckbox(toggleableState, ll3Var, modifier, z, checkboxColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TriStateCheckbox$lambda$9(ToggleableState toggleableState, ll3 ll3Var, Stroke stroke, Stroke stroke2, Modifier modifier, boolean z, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) throws Throwable {
        TriStateCheckbox(toggleableState, ll3Var, stroke, stroke2, modifier, z, checkboxColors, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: renamed from: drawBox-1wkBAMs, reason: not valid java name */
    private static final void m3178drawBox1wkBAMs(DrawScope drawScope, long j, long j2, float f, Stroke stroke) {
        float width = stroke.getWidth() / 2.0f;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32));
        if (Color.m6233equalsimpl0(j, j2)) {
            DrawScope.m6802drawRoundRectuAw5IA$default(drawScope, j, 0L, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Fill.INSTANCE, 0.0f, null, 0, 226, null);
            return;
        }
        long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(stroke.getWidth())) << 32) | (((long) Float.floatToRawIntBits(stroke.getWidth())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat - (stroke.getWidth() * 2.0f))) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat - (stroke.getWidth() * 2.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fMax = Math.max(0.0f, f - stroke.getWidth());
        DrawScope.m6802drawRoundRectuAw5IA$default(drawScope, j, jM5979constructorimpl, jM6047constructorimpl, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(fMax)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Fill.INSTANCE, 0.0f, null, 0, 224, null);
        long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(width)) << 32) | (((long) Float.floatToRawIntBits(width)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float width2 = fIntBitsToFloat - stroke.getWidth();
        float f2 = f - width;
        DrawScope.m6802drawRoundRectuAw5IA$default(drawScope, j2, jM5979constructorimpl2, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat - stroke.getWidth())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width2) << 32)), CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(f2)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), stroke, 0.0f, null, 0, 224, null);
    }

    /* JADX INFO: renamed from: drawCheck-3IgeMak, reason: not valid java name */
    private static final void m3179drawCheck3IgeMak(DrawScope drawScope, long j, float f, float f2, Stroke stroke, CheckDrawingCache checkDrawingCache) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32));
        float fLerp = MathHelpersKt.lerp(0.4f, 0.5f, f2);
        float fLerp2 = MathHelpersKt.lerp(0.7f, 0.5f, f2);
        float fLerp3 = MathHelpersKt.lerp(0.5f, 0.5f, f2);
        float fLerp4 = MathHelpersKt.lerp(0.3f, 0.5f, f2);
        checkDrawingCache.getCheckPath().rewind();
        checkDrawingCache.getCheckPath().moveTo(0.2f * fIntBitsToFloat, fLerp3 * fIntBitsToFloat);
        checkDrawingCache.getCheckPath().lineTo(fLerp * fIntBitsToFloat, fLerp2 * fIntBitsToFloat);
        checkDrawingCache.getCheckPath().lineTo(0.8f * fIntBitsToFloat, fIntBitsToFloat * fLerp4);
        checkDrawingCache.getPathMeasure().setPath(checkDrawingCache.getCheckPath(), false);
        checkDrawingCache.getPathToDraw().rewind();
        checkDrawingCache.getPathMeasure().getSegment(0.0f, checkDrawingCache.getPathMeasure().getLength() * f, checkDrawingCache.getPathToDraw(), true);
        DrawScope.m6796drawPathLG529CI$default(drawScope, checkDrawingCache.getPathToDraw(), j, 0.0f, stroke, null, 0, 52, null);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x013e  */
    /* JADX WARN: Code duplicated, block: B:103:0x0145  */
    /* JADX WARN: Code duplicated, block: B:106:0x014f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0157  */
    /* JADX WARN: Code duplicated, block: B:110:0x0167  */
    /* JADX WARN: Code duplicated, block: B:113:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:118:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x0066  */
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:47:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x007c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:55:0x008d  */
    /* JADX WARN: Code duplicated, block: B:58:0x0095  */
    /* JADX WARN: Code duplicated, block: B:60:0x0099  */
    /* JADX WARN: Code duplicated, block: B:62:0x009c  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:81:0x00df A[PHI: r4 r9 r11 r12
      0x00df: PHI (r4v25 int) = (r4v20 int), (r4v17 int), (r4v26 int) binds: [B:90:0x00fb, B:79:0x00db, B:80:0x00dd] A[DONT_GENERATE, DONT_INLINE]
      0x00df: PHI (r9v19 androidx.compose.ui.Modifier) = (r9v4 androidx.compose.ui.Modifier), (r9v2 androidx.compose.ui.Modifier), (r9v2 androidx.compose.ui.Modifier) binds: [B:90:0x00fb, B:79:0x00db, B:80:0x00dd] A[DONT_GENERATE, DONT_INLINE]
      0x00df: PHI (r11v6 boolean) = (r11v3 boolean), (r11v2 boolean), (r11v2 boolean) binds: [B:90:0x00fb, B:79:0x00db, B:80:0x00dd] A[DONT_GENERATE, DONT_INLINE]
      0x00df: PHI (r12v10 androidx.compose.material3.CheckboxColors) = 
      (r12v7 androidx.compose.material3.CheckboxColors)
      (r12v6 androidx.compose.material3.CheckboxColors)
      (r12v6 androidx.compose.material3.CheckboxColors)
     binds: [B:90:0x00fb, B:79:0x00db, B:80:0x00dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:94:0x010b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0131  */
    /* JADX WARN: Code duplicated, block: B:99:0x013b  */
    public static final void Checkbox(final boolean z, final nl3<? super Boolean, j59> nl3Var, Modifier modifier, boolean z2, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, Composer composer, int i, int i2) throws Throwable {
        int i3;
        Modifier modifier2;
        int i4;
        boolean z3;
        int i5;
        CheckboxColors checkboxColorsColors;
        int i6;
        MutableInteractionSource mutableInteractionSource2;
        int i7;
        boolean z4;
        Composer composer2;
        Modifier modifier3;
        boolean z5;
        CheckboxColors checkboxColors2;
        MutableInteractionSource mutableInteractionSource3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        boolean z6;
        CheckboxColors checkboxColors3;
        MutableInteractionSource mutableInteractionSource4;
        ll3 ll3Var;
        boolean z7;
        boolean z8;
        Object objRememberedValue;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1406741137);
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
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        int i8 = i2 & 4;
        if (i8 == 0) {
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
                        checkboxColorsColors = checkboxColors;
                        int i9 = composerStartRestartGroup.changed(checkboxColorsColors) ? 16384 : 8192;
                        i3 |= i9;
                    } else {
                        checkboxColorsColors = checkboxColors;
                    }
                    i3 |= i9;
                } else {
                    checkboxColorsColors = checkboxColors;
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
                        if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                            }
                        } else {
                            if (i8 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                                checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            if (i6 != 0) {
                                z6 = z3;
                                checkboxColors3 = checkboxColorsColors;
                                mutableInteractionSource4 = null;
                            }
                            Modifier modifier4 = modifier2;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                            }
                            float fFloor = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                            ToggleableState ToggleableState = ToggleableStateKt.ToggleableState(z);
                            if (nl3Var != null) {
                                composerStartRestartGroup.startReplaceGroup(2066152950);
                                if ((i3 & 112) == 32) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                z8 = z7 | ((i3 & 14) == 4);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (!z8 || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new ll3() { // from class: ta1
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                ll3Var = (ll3) objRememberedValue;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(2066218639);
                                composerStartRestartGroup.endReplaceGroup();
                                ll3Var = null;
                            }
                            composer2 = composerStartRestartGroup;
                            TriStateCheckbox(ToggleableState, ll3Var, new Stroke(fFloor, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor, 0.0f, 0, 0, null, 30, null), modifier4, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            z5 = z6;
                            checkboxColors2 = checkboxColors3;
                            mutableInteractionSource3 = mutableInteractionSource4;
                        }
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                        Modifier modifier5 = modifier2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                        }
                        float fFloor2 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                        ToggleableState ToggleableState2 = ToggleableStateKt.ToggleableState(z);
                        if (nl3Var != null) {
                            composerStartRestartGroup.startReplaceGroup(2066152950);
                            if ((i3 & 112) == 32) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            z8 = z7 | ((i3 & 14) == 4);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (!z8) {
                                objRememberedValue = new ll3() { // from class: ta1
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new ll3() { // from class: ta1
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            ll3Var = (ll3) objRememberedValue;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(2066218639);
                            composerStartRestartGroup.endReplaceGroup();
                            ll3Var = null;
                        }
                        composer2 = composerStartRestartGroup;
                        TriStateCheckbox(ToggleableState2, ll3Var, new Stroke(fFloor2, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor2, 0.0f, 0, 0, null, 30, null), modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        z5 = z6;
                        checkboxColors2 = checkboxColors3;
                        mutableInteractionSource3 = mutableInteractionSource4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z5 = z3;
                        checkboxColors2 = checkboxColorsColors;
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
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
                    if ((i & 1) == 0) {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            z6 = z3;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = null;
                        } else {
                            z6 = z3;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            checkboxColors3 = checkboxColorsColors;
                        }
                    } else {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            z6 = z3;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = null;
                        } else {
                            z6 = z3;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            checkboxColors3 = checkboxColorsColors;
                        }
                    }
                    Modifier modifier6 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                    }
                    float fFloor3 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                    ToggleableState ToggleableState3 = ToggleableStateKt.ToggleableState(z);
                    if (nl3Var != null) {
                        composerStartRestartGroup.startReplaceGroup(2066152950);
                        if ((i3 & 112) == 32) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z7 | ((i3 & 14) == 4);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (!z8) {
                            objRememberedValue = new ll3() { // from class: ta1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: ta1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        ll3Var = (ll3) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(2066218639);
                        composerStartRestartGroup.endReplaceGroup();
                        ll3Var = null;
                    }
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(ToggleableState3, ll3Var, new Stroke(fFloor3, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor3, 0.0f, 0, 0, null, 30, null), modifier6, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier6;
                    z5 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
                }
            }
            i3 |= 3072;
            z3 = z2;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i9;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i9;
            } else {
                checkboxColorsColors = checkboxColors;
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
                    if ((i & 1) == 0) {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            z6 = z3;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = null;
                        } else {
                            z6 = z3;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            checkboxColors3 = checkboxColorsColors;
                        }
                    } else {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            z6 = z3;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = null;
                        } else {
                            z6 = z3;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            checkboxColors3 = checkboxColorsColors;
                        }
                    }
                    Modifier modifier7 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                    }
                    float fFloor4 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                    ToggleableState ToggleableState4 = ToggleableStateKt.ToggleableState(z);
                    if (nl3Var != null) {
                        composerStartRestartGroup.startReplaceGroup(2066152950);
                        if ((i3 & 112) == 32) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z7 | ((i3 & 14) == 4);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (!z8) {
                            objRememberedValue = new ll3() { // from class: ta1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: ta1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        ll3Var = (ll3) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(2066218639);
                        composerStartRestartGroup.endReplaceGroup();
                        ll3Var = null;
                    }
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(ToggleableState4, ll3Var, new Stroke(fFloor4, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor4, 0.0f, 0, 0, null, 30, null), modifier7, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier7;
                    z5 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
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
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = null;
                    } else {
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                    }
                } else {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = null;
                    } else {
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                    }
                }
                Modifier modifier8 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                }
                float fFloor5 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                ToggleableState ToggleableState5 = ToggleableStateKt.ToggleableState(z);
                if (nl3Var != null) {
                    composerStartRestartGroup.startReplaceGroup(2066152950);
                    if ((i3 & 112) == 32) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i3 & 14) == 4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z8) {
                        objRememberedValue = new ll3() { // from class: ta1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: ta1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    ll3Var = (ll3) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(2066218639);
                    composerStartRestartGroup.endReplaceGroup();
                    ll3Var = null;
                }
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(ToggleableState5, ll3Var, new Stroke(fFloor5, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor5, 0.0f, 0, 0, null, 30, null), modifier8, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier8;
                z5 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
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
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i9;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i9;
            } else {
                checkboxColorsColors = checkboxColors;
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
                    if ((i & 1) == 0) {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            z6 = z3;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = null;
                        } else {
                            z6 = z3;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            checkboxColors3 = checkboxColorsColors;
                        }
                    } else {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            z6 = z3;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = null;
                        } else {
                            z6 = z3;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            checkboxColors3 = checkboxColorsColors;
                        }
                    }
                    Modifier modifier9 = modifier2;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                    }
                    float fFloor6 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                    ToggleableState ToggleableState6 = ToggleableStateKt.ToggleableState(z);
                    if (nl3Var != null) {
                        composerStartRestartGroup.startReplaceGroup(2066152950);
                        if ((i3 & 112) == 32) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z7 | ((i3 & 14) == 4);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (!z8) {
                            objRememberedValue = new ll3() { // from class: ta1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: ta1
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        ll3Var = (ll3) objRememberedValue;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(2066218639);
                        composerStartRestartGroup.endReplaceGroup();
                        ll3Var = null;
                    }
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(ToggleableState6, ll3Var, new Stroke(fFloor6, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor6, 0.0f, 0, 0, null, 30, null), modifier9, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier9;
                    z5 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z5 = z3;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
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
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = null;
                    } else {
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                    }
                } else {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = null;
                    } else {
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                    }
                }
                Modifier modifier10 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                }
                float fFloor7 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                ToggleableState ToggleableState7 = ToggleableStateKt.ToggleableState(z);
                if (nl3Var != null) {
                    composerStartRestartGroup.startReplaceGroup(2066152950);
                    if ((i3 & 112) == 32) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i3 & 14) == 4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z8) {
                        objRememberedValue = new ll3() { // from class: ta1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: ta1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    ll3Var = (ll3) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(2066218639);
                    composerStartRestartGroup.endReplaceGroup();
                    ll3Var = null;
                }
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(ToggleableState7, ll3Var, new Stroke(fFloor7, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor7, 0.0f, 0, 0, null, 30, null), modifier10, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier10;
                z5 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
            }
        }
        i3 |= 3072;
        z3 = z2;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                checkboxColorsColors = checkboxColors;
                if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                }
                i3 |= i9;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i3 |= i9;
        } else {
            checkboxColorsColors = checkboxColors;
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
                if ((i & 1) == 0) {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = null;
                    } else {
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                    }
                } else {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        z6 = z3;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = null;
                    } else {
                        z6 = z3;
                        mutableInteractionSource4 = mutableInteractionSource2;
                        checkboxColors3 = checkboxColorsColors;
                    }
                }
                Modifier modifier11 = modifier2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
                }
                float fFloor8 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                ToggleableState ToggleableState8 = ToggleableStateKt.ToggleableState(z);
                if (nl3Var != null) {
                    composerStartRestartGroup.startReplaceGroup(2066152950);
                    if ((i3 & 112) == 32) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z7 | ((i3 & 14) == 4);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z8) {
                        objRememberedValue = new ll3() { // from class: ta1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: ta1
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    ll3Var = (ll3) objRememberedValue;
                } else {
                    composerStartRestartGroup.startReplaceGroup(2066218639);
                    composerStartRestartGroup.endReplaceGroup();
                    ll3Var = null;
                }
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(ToggleableState8, ll3Var, new Stroke(fFloor8, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor8, 0.0f, 0, 0, null, 30, null), modifier11, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier11;
                z5 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z5 = z3;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
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
            if ((i & 1) == 0) {
                if (i8 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i6 != 0) {
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    mutableInteractionSource4 = null;
                } else {
                    z6 = z3;
                    mutableInteractionSource4 = mutableInteractionSource2;
                    checkboxColors3 = checkboxColorsColors;
                }
            } else {
                if (i8 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i6 != 0) {
                    z6 = z3;
                    checkboxColors3 = checkboxColorsColors;
                    mutableInteractionSource4 = null;
                } else {
                    z6 = z3;
                    mutableInteractionSource4 = mutableInteractionSource2;
                    checkboxColors3 = checkboxColorsColors;
                }
            }
            Modifier modifier12 = modifier2;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1406741137, i3, -1, "androidx.compose.material3.Checkbox (Checkbox.kt:97)");
            }
            float fFloor9 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
            ToggleableState ToggleableState9 = ToggleableStateKt.ToggleableState(z);
            if (nl3Var != null) {
                composerStartRestartGroup.startReplaceGroup(2066152950);
                if ((i3 & 112) == 32) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z7 | ((i3 & 14) == 4);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!z8) {
                    objRememberedValue = new ll3() { // from class: ta1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: ta1
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return CheckboxKt.Checkbox$lambda$2$lambda$1(nl3Var, z);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                ll3Var = (ll3) objRememberedValue;
            } else {
                composerStartRestartGroup.startReplaceGroup(2066218639);
                composerStartRestartGroup.endReplaceGroup();
                ll3Var = null;
            }
            composer2 = composerStartRestartGroup;
            TriStateCheckbox(ToggleableState9, ll3Var, new Stroke(fFloor9, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null), new Stroke(fFloor9, 0.0f, 0, 0, null, 30, null), modifier12, z6, checkboxColors3, mutableInteractionSource4, composer2, (i3 << 6) & 33546240, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier12;
            z5 = z6;
            checkboxColors2 = checkboxColors3;
            mutableInteractionSource3 = mutableInteractionSource4;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            z5 = z3;
            checkboxColors2 = checkboxColorsColors;
            mutableInteractionSource3 = mutableInteractionSource2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new se0(z, nl3Var, modifier3, z5, checkboxColors2, mutableInteractionSource3, i, i2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0177  */
    /* JADX WARN: Code duplicated, block: B:102:0x017f  */
    /* JADX WARN: Code duplicated, block: B:105:0x018e  */
    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x009f  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:88:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:94:0x0101  */
    /* JADX WARN: Code duplicated, block: B:97:0x010f  */
    public static final void TriStateCheckbox(final ToggleableState toggleableState, final ll3<j59> ll3Var, Modifier modifier, boolean z, CheckboxColors checkboxColors, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) throws Throwable {
        int i3;
        ll3<j59> ll3Var2;
        Modifier modifier2;
        int i4;
        boolean z2;
        int i5;
        CheckboxColors checkboxColorsColors;
        int i6;
        MutableInteractionSource mutableInteractionSource2;
        int i7;
        boolean z3;
        Composer composer2;
        final Modifier modifier3;
        final boolean z4;
        final CheckboxColors checkboxColors2;
        final MutableInteractionSource mutableInteractionSource3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i8;
        Modifier modifier4;
        boolean z5;
        Modifier modifier5;
        boolean z6;
        CheckboxColors checkboxColors3;
        MutableInteractionSource mutableInteractionSource4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1608358065);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(toggleableState.ordinal()) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
            }
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
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        checkboxColorsColors = checkboxColors;
                        int i10 = composerStartRestartGroup.changed(checkboxColorsColors) ? 16384 : 8192;
                        i3 |= i10;
                    } else {
                        checkboxColorsColors = checkboxColors;
                    }
                    i3 |= i10;
                } else {
                    checkboxColorsColors = checkboxColors;
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
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        i8 = 6;
                        if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                            }
                            modifier5 = modifier2;
                            z6 = z2;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            if (i9 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            z5 = i4 == 0 ? z2 : true;
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                                checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            }
                            if (i6 != 0) {
                                modifier5 = modifier4;
                                z6 = z5;
                                i8 = 6;
                                mutableInteractionSource4 = null;
                                checkboxColors3 = checkboxColorsColors;
                            } else {
                                modifier5 = modifier4;
                                z6 = z5;
                                checkboxColors3 = checkboxColorsColors;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                            }
                            float fFloor = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                            Stroke stroke = new Stroke(fFloor, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                            Stroke stroke2 = new Stroke(fFloor, 0.0f, 0, 0, null, 30, null);
                            int i11 = i3 & 126;
                            int i12 = i3 << i8;
                            composer2 = composerStartRestartGroup;
                            TriStateCheckbox(toggleableState, ll3Var2, stroke, stroke2, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i11 | (57344 & i12) | (458752 & i12) | (3670016 & i12) | (i12 & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier5;
                            z4 = z6;
                            checkboxColors2 = checkboxColors3;
                            mutableInteractionSource3 = mutableInteractionSource4;
                        }
                        mutableInteractionSource4 = mutableInteractionSource2;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                        }
                        float fFloor2 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                        Stroke stroke3 = new Stroke(fFloor2, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                        Stroke stroke4 = new Stroke(fFloor2, 0.0f, 0, 0, null, 30, null);
                        int i13 = i3 & 126;
                        int i14 = i3 << i8;
                        composer2 = composerStartRestartGroup;
                        TriStateCheckbox(toggleableState, ll3Var2, stroke3, stroke4, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i13 | (57344 & i14) | (458752 & i14) | (3670016 & i14) | (i14 & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        z4 = z6;
                        checkboxColors2 = checkboxColors3;
                        mutableInteractionSource3 = mutableInteractionSource4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        z4 = z2;
                        checkboxColors2 = checkboxColorsColors;
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((74899 & i3) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    i8 = 6;
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            modifier5 = modifier4;
                            z6 = z5;
                            i8 = 6;
                            mutableInteractionSource4 = null;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            modifier5 = modifier4;
                            z6 = z5;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            modifier5 = modifier4;
                            z6 = z5;
                            i8 = 6;
                            mutableInteractionSource4 = null;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            modifier5 = modifier4;
                            z6 = z5;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                    }
                    float fFloor3 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                    Stroke stroke5 = new Stroke(fFloor3, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                    Stroke stroke6 = new Stroke(fFloor3, 0.0f, 0, 0, null, 30, null);
                    int i15 = i3 & 126;
                    int i16 = i3 << i8;
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(toggleableState, ll3Var2, stroke5, stroke6, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i15 | (57344 & i16) | (458752 & i16) | (3670016 & i16) | (i16 & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    z4 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i10;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i10;
            } else {
                checkboxColorsColors = checkboxColors;
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
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    i8 = 6;
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            modifier5 = modifier4;
                            z6 = z5;
                            i8 = 6;
                            mutableInteractionSource4 = null;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            modifier5 = modifier4;
                            z6 = z5;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            modifier5 = modifier4;
                            z6 = z5;
                            i8 = 6;
                            mutableInteractionSource4 = null;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            modifier5 = modifier4;
                            z6 = z5;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                    }
                    float fFloor4 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                    Stroke stroke7 = new Stroke(fFloor4, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                    Stroke stroke8 = new Stroke(fFloor4, 0.0f, 0, 0, null, 30, null);
                    int i17 = i3 & 126;
                    int i18 = i3 << i8;
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(toggleableState, ll3Var2, stroke7, stroke8, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i17 | (57344 & i18) | (458752 & i18) | (3670016 & i18) | (i18 & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    z4 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((74899 & i3) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                i8 = 6;
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        modifier5 = modifier4;
                        z6 = z5;
                        i8 = 6;
                        mutableInteractionSource4 = null;
                        checkboxColors3 = checkboxColorsColors;
                    } else {
                        modifier5 = modifier4;
                        z6 = z5;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        modifier5 = modifier4;
                        z6 = z5;
                        i8 = 6;
                        mutableInteractionSource4 = null;
                        checkboxColors3 = checkboxColorsColors;
                    } else {
                        modifier5 = modifier4;
                        z6 = z5;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                }
                float fFloor5 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                Stroke stroke9 = new Stroke(fFloor5, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                Stroke stroke10 = new Stroke(fFloor5, 0.0f, 0, 0, null, 30, null);
                int i19 = i3 & 126;
                int i110 = i3 << i8;
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(toggleableState, ll3Var2, stroke9, stroke10, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i19 | (57344 & i110) | (458752 & i110) | (3670016 & i110) | (i110 & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                z4 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    checkboxColorsColors = checkboxColors;
                    if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                    }
                    i3 |= i10;
                } else {
                    checkboxColorsColors = checkboxColors;
                }
                i3 |= i10;
            } else {
                checkboxColorsColors = checkboxColors;
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
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    i8 = 6;
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            modifier5 = modifier4;
                            z6 = z5;
                            i8 = 6;
                            mutableInteractionSource4 = null;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            modifier5 = modifier4;
                            z6 = z5;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 == 0) {
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                            checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        if (i6 != 0) {
                            modifier5 = modifier4;
                            z6 = z5;
                            i8 = 6;
                            mutableInteractionSource4 = null;
                            checkboxColors3 = checkboxColorsColors;
                        } else {
                            modifier5 = modifier4;
                            z6 = z5;
                            checkboxColors3 = checkboxColorsColors;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                    }
                    float fFloor6 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                    Stroke stroke11 = new Stroke(fFloor6, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                    Stroke stroke12 = new Stroke(fFloor6, 0.0f, 0, 0, null, 30, null);
                    int i111 = i3 & 126;
                    int i112 = i3 << i8;
                    composer2 = composerStartRestartGroup;
                    TriStateCheckbox(toggleableState, ll3Var2, stroke11, stroke12, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i111 | (57344 & i112) | (458752 & i112) | (3670016 & i112) | (i112 & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    z4 = z6;
                    checkboxColors2 = checkboxColors3;
                    mutableInteractionSource3 = mutableInteractionSource4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                    checkboxColors2 = checkboxColorsColors;
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((74899 & i3) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                i8 = 6;
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        modifier5 = modifier4;
                        z6 = z5;
                        i8 = 6;
                        mutableInteractionSource4 = null;
                        checkboxColors3 = checkboxColorsColors;
                    } else {
                        modifier5 = modifier4;
                        z6 = z5;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        modifier5 = modifier4;
                        z6 = z5;
                        i8 = 6;
                        mutableInteractionSource4 = null;
                        checkboxColors3 = checkboxColorsColors;
                    } else {
                        modifier5 = modifier4;
                        z6 = z5;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                }
                float fFloor7 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                Stroke stroke13 = new Stroke(fFloor7, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                Stroke stroke14 = new Stroke(fFloor7, 0.0f, 0, 0, null, 30, null);
                int i113 = i3 & 126;
                int i114 = i3 << i8;
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(toggleableState, ll3Var2, stroke13, stroke14, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i113 | (57344 & i114) | (458752 & i114) | (3670016 & i114) | (i114 & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                z4 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                checkboxColorsColors = checkboxColors;
                if (composerStartRestartGroup.changed(checkboxColorsColors)) {
                }
                i3 |= i10;
            } else {
                checkboxColorsColors = checkboxColors;
            }
            i3 |= i10;
        } else {
            checkboxColorsColors = checkboxColors;
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
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                i8 = 6;
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        modifier5 = modifier4;
                        z6 = z5;
                        i8 = 6;
                        mutableInteractionSource4 = null;
                        checkboxColors3 = checkboxColorsColors;
                    } else {
                        modifier5 = modifier4;
                        z6 = z5;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                } else {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 == 0) {
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                        checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if (i6 != 0) {
                        modifier5 = modifier4;
                        z6 = z5;
                        i8 = 6;
                        mutableInteractionSource4 = null;
                        checkboxColors3 = checkboxColorsColors;
                    } else {
                        modifier5 = modifier4;
                        z6 = z5;
                        checkboxColors3 = checkboxColorsColors;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
                }
                float fFloor8 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
                Stroke stroke15 = new Stroke(fFloor8, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
                Stroke stroke16 = new Stroke(fFloor8, 0.0f, 0, 0, null, 30, null);
                int i115 = i3 & 126;
                int i116 = i3 << i8;
                composer2 = composerStartRestartGroup;
                TriStateCheckbox(toggleableState, ll3Var2, stroke15, stroke16, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i115 | (57344 & i116) | (458752 & i116) | (3670016 & i116) | (i116 & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                z4 = z6;
                checkboxColors2 = checkboxColors3;
                mutableInteractionSource3 = mutableInteractionSource4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
                checkboxColors2 = checkboxColorsColors;
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((74899 & i3) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            i8 = 6;
            if ((i & 1) == 0) {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 == 0) {
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i6 != 0) {
                    modifier5 = modifier4;
                    z6 = z5;
                    i8 = 6;
                    mutableInteractionSource4 = null;
                    checkboxColors3 = checkboxColorsColors;
                } else {
                    modifier5 = modifier4;
                    z6 = z5;
                    checkboxColors3 = checkboxColorsColors;
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
            } else {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 == 0) {
                }
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                    checkboxColorsColors = CheckboxDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if (i6 != 0) {
                    modifier5 = modifier4;
                    z6 = z5;
                    i8 = 6;
                    mutableInteractionSource4 = null;
                    checkboxColors3 = checkboxColorsColors;
                } else {
                    modifier5 = modifier4;
                    z6 = z5;
                    checkboxColors3 = checkboxColorsColors;
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1608358065, i3, -1, "androidx.compose.material3.TriStateCheckbox (Checkbox.kt:214)");
            }
            float fFloor9 = (float) Math.floor(((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(CheckboxDefaults.INSTANCE.m3177getStrokeWidthD9Ej5fM()));
            Stroke stroke17 = new Stroke(fFloor9, 0.0f, StrokeCap.Companion.m6608getSquareKaPHkGw(), 0, null, 26, null);
            Stroke stroke18 = new Stroke(fFloor9, 0.0f, 0, 0, null, 30, null);
            int i117 = i3 & 126;
            int i118 = i3 << i8;
            composer2 = composerStartRestartGroup;
            TriStateCheckbox(toggleableState, ll3Var2, stroke17, stroke18, modifier5, z6, checkboxColors3, mutableInteractionSource4, composer2, i117 | (57344 & i118) | (458752 & i118) | (3670016 & i118) | (i118 & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            z4 = z6;
            checkboxColors2 = checkboxColors3;
            mutableInteractionSource3 = mutableInteractionSource4;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            z4 = z2;
            checkboxColors2 = checkboxColorsColors;
            mutableInteractionSource3 = mutableInteractionSource2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CheckboxKt.TriStateCheckbox$lambda$8(toggleableState, ll3Var, modifier3, z4, checkboxColors2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
