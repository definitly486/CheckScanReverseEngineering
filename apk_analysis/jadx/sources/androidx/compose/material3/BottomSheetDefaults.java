package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.ScrimTokens;
import androidx.compose.material3.tokens.SheetBottomTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.xs0;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomSheetDefaults {
    public static final int $stable = 0;
    public static final BottomSheetDefaults INSTANCE = new BottomSheetDefaults();
    private static final float Elevation = SheetBottomTokens.INSTANCE.m5088getDockedModalContainerElevationD9Ej5fM();
    private static final float SheetPeekHeight = Dp.m9042constructorimpl(56.0f);
    private static final float SheetMaxWidth = Dp.m9042constructorimpl(640.0f);
    private static final float PositionalThreshold = Dp.m9042constructorimpl(56.0f);
    private static final float VelocityThreshold = Dp.m9042constructorimpl(125.0f);

    private BottomSheetDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DragHandle_lgZ2HuY$lambda$1$lambda$0(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DragHandle_lgZ2HuY$lambda$2(BottomSheetDefaults bottomSheetDefaults, Modifier modifier, float f, float f2, Shape shape, long j, int i, int i2, Composer composer, int i3) {
        bottomSheetDefaults.m3119DragHandlelgZ2HuY(modifier, f, f2, shape, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0184  */
    /* JADX WARN: Code duplicated, block: B:107:0x0192  */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:91:0x010e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0135  */
    /* JADX WARN: Code duplicated, block: B:98:0x0140  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: DragHandle-lgZ2HuY, reason: not valid java name */
    public final void m3119DragHandlelgZ2HuY(Modifier modifier, float f, float f2, Shape shape, long j, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        final float fM5087getDockedDragHandleWidthD9Ej5fM;
        int i4;
        float fM5086getDockedDragHandleHeightD9Ej5fM;
        int i5;
        Shape extraLarge;
        long value;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        final float f3;
        final float f4;
        final Shape shape2;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        String strM4461getString2EP1pXo;
        boolean zChanged;
        Object objRememberedValue;
        boolean z2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1364277227);
        int i6 = i2 & 1;
        if (i6 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i7 = i2 & 2;
        if (i7 == 0) {
            if ((i & 48) == 0) {
                fM5087getDockedDragHandleWidthD9Ej5fM = f;
                i3 |= composerStartRestartGroup.changed(fM5087getDockedDragHandleWidthD9Ej5fM) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    fM5086getDockedDragHandleHeightD9Ej5fM = f2;
                    if (composerStartRestartGroup.changed(fM5086getDockedDragHandleHeightD9Ej5fM)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        extraLarge = shape;
                        int i8 = composerStartRestartGroup.changed(extraLarge) ? 2048 : 1024;
                        i3 |= i8;
                    } else {
                        extraLarge = shape;
                    }
                    i3 |= i8;
                } else {
                    extraLarge = shape;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        value = j;
                        int i9 = composerStartRestartGroup.changed(value) ? 16384 : 8192;
                        i3 |= i9;
                    } else {
                        value = j;
                    }
                    i3 |= i9;
                } else {
                    value = j;
                }
                if ((i3 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i6 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i7 != 0) {
                            fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                        }
                        if (i4 != 0) {
                            fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                        }
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                            extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                        }
                        if ((i2 & 16) != 0) {
                            value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                            i3 &= -57345;
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                        }
                        modifier3 = modifier2;
                    }
                    final float f5 = fM5086getDockedDragHandleHeightD9Ej5fM;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1364277227, i3, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle (SheetDefaults.kt:415)");
                    }
                    Strings.Companion companion = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_drag_handle_description), composerStartRestartGroup, 0);
                    Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(modifier3, 0.0f, SheetDefaultsKt.DragHandleVerticalPadding, 1, null);
                    zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                        z2 = false;
                        objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        z2 = false;
                    }
                    int i10 = i3 >> 6;
                    composer2 = composerStartRestartGroup;
                    SurfaceKt.m3942SurfaceT9BRK9s(SemanticsModifierKt.semantics$default(modifierM2035paddingVpY3zN4$default, z2, (nl3) objRememberedValue, 1, null), extraLarge, value, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1039573072, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetDefaults$DragHandle$2
                        public final void invoke(Composer composer3, int i11) {
                            if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1039573072, i11, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle.<anonymous> (SheetDefaults.kt:425)");
                            }
                            BoxKt.Box(SizeKt.m2101sizeVpY3zN4(Modifier.Companion, fM5087getDockedDragHandleWidthD9Ej5fM, f5), composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composer2, (i10 & 112) | 12582912 | (i10 & 896), 120);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f3 = f5;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    f3 = fM5086getDockedDragHandleHeightD9Ej5fM;
                }
                f4 = fM5087getDockedDragHandleWidthD9Ej5fM;
                shape2 = extraLarge;
                j2 = value;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ys0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetDefaults.DragHandle_lgZ2HuY$lambda$2(this.b, modifier3, f4, f3, shape2, j2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            fM5086getDockedDragHandleHeightD9Ej5fM = f2;
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    extraLarge = shape;
                    if (composerStartRestartGroup.changed(extraLarge)) {
                    }
                    i3 |= i8;
                } else {
                    extraLarge = shape;
                }
                i3 |= i8;
            } else {
                extraLarge = shape;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    value = j;
                    if (composerStartRestartGroup.changed(value)) {
                    }
                    i3 |= i9;
                } else {
                    value = j;
                }
                i3 |= i9;
            } else {
                value = j;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i6 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i7 != 0) {
                        fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                    }
                    if (i4 != 0) {
                        fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                    }
                    if ((i2 & 16) != 0) {
                        value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                } else {
                    if (i6 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i7 != 0) {
                        fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                    }
                    if (i4 != 0) {
                        fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                    }
                    if ((i2 & 16) != 0) {
                        value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                }
                final float f6 = fM5086getDockedDragHandleHeightD9Ej5fM;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1364277227, i3, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle (SheetDefaults.kt:415)");
                }
                Strings.Companion companion2 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_drag_handle_description), composerStartRestartGroup, 0);
                Modifier modifierM2035paddingVpY3zN4$default2 = PaddingKt.m2035paddingVpY3zN4$default(modifier3, 0.0f, SheetDefaultsKt.DragHandleVerticalPadding, 1, null);
                zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z2 = false;
                    objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    z2 = false;
                    objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                int i11 = i3 >> 6;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(SemanticsModifierKt.semantics$default(modifierM2035paddingVpY3zN4$default2, z2, (nl3) objRememberedValue, 1, null), extraLarge, value, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1039573072, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetDefaults$DragHandle$2
                    public final void invoke(Composer composer3, int i12) {
                        if (!composer3.shouldExecute((i12 & 3) != 2, i12 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1039573072, i12, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle.<anonymous> (SheetDefaults.kt:425)");
                        }
                        BoxKt.Box(SizeKt.m2101sizeVpY3zN4(Modifier.Companion, fM5087getDockedDragHandleWidthD9Ej5fM, f6), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, (i11 & 112) | 12582912 | (i11 & 896), 120);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = f6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                f3 = fM5086getDockedDragHandleHeightD9Ej5fM;
            }
            f4 = fM5087getDockedDragHandleWidthD9Ej5fM;
            shape2 = extraLarge;
            j2 = value;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ys0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BottomSheetDefaults.DragHandle_lgZ2HuY$lambda$2(this.b, modifier3, f4, f3, shape2, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        fM5087getDockedDragHandleWidthD9Ej5fM = f;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                fM5086getDockedDragHandleHeightD9Ej5fM = f2;
                if (composerStartRestartGroup.changed(fM5086getDockedDragHandleHeightD9Ej5fM)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    extraLarge = shape;
                    if (composerStartRestartGroup.changed(extraLarge)) {
                    }
                    i3 |= i8;
                } else {
                    extraLarge = shape;
                }
                i3 |= i8;
            } else {
                extraLarge = shape;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    value = j;
                    if (composerStartRestartGroup.changed(value)) {
                    }
                    i3 |= i9;
                } else {
                    value = j;
                }
                i3 |= i9;
            } else {
                value = j;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i6 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i7 != 0) {
                        fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                    }
                    if (i4 != 0) {
                        fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                    }
                    if ((i2 & 16) != 0) {
                        value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                } else {
                    if (i6 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i7 != 0) {
                        fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                    }
                    if (i4 != 0) {
                        fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                    }
                    if ((i2 & 16) != 0) {
                        value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                }
                final float f7 = fM5086getDockedDragHandleHeightD9Ej5fM;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1364277227, i3, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle (SheetDefaults.kt:415)");
                }
                Strings.Companion companion3 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_drag_handle_description), composerStartRestartGroup, 0);
                Modifier modifierM2035paddingVpY3zN4$default3 = PaddingKt.m2035paddingVpY3zN4$default(modifier3, 0.0f, SheetDefaultsKt.DragHandleVerticalPadding, 1, null);
                zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z2 = false;
                    objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    z2 = false;
                    objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                int i12 = i3 >> 6;
                composer2 = composerStartRestartGroup;
                SurfaceKt.m3942SurfaceT9BRK9s(SemanticsModifierKt.semantics$default(modifierM2035paddingVpY3zN4$default3, z2, (nl3) objRememberedValue, 1, null), extraLarge, value, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1039573072, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetDefaults$DragHandle$2
                    public final void invoke(Composer composer3, int i13) {
                        if (!composer3.shouldExecute((i13 & 3) != 2, i13 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1039573072, i13, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle.<anonymous> (SheetDefaults.kt:425)");
                        }
                        BoxKt.Box(SizeKt.m2101sizeVpY3zN4(Modifier.Companion, fM5087getDockedDragHandleWidthD9Ej5fM, f7), composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composer2, (i12 & 112) | 12582912 | (i12 & 896), 120);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = f7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                f3 = fM5086getDockedDragHandleHeightD9Ej5fM;
            }
            f4 = fM5087getDockedDragHandleWidthD9Ej5fM;
            shape2 = extraLarge;
            j2 = value;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ys0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BottomSheetDefaults.DragHandle_lgZ2HuY$lambda$2(this.b, modifier3, f4, f3, shape2, j2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        fM5086getDockedDragHandleHeightD9Ej5fM = f2;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                extraLarge = shape;
                if (composerStartRestartGroup.changed(extraLarge)) {
                }
                i3 |= i8;
            } else {
                extraLarge = shape;
            }
            i3 |= i8;
        } else {
            extraLarge = shape;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                value = j;
                if (composerStartRestartGroup.changed(value)) {
                }
                i3 |= i9;
            } else {
                value = j;
            }
            i3 |= i9;
        } else {
            value = j;
        }
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i6 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i7 != 0) {
                    fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                }
                if (i4 != 0) {
                    fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                }
                if ((i2 & 16) != 0) {
                    value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                    i3 &= -57345;
                }
            } else {
                if (i6 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i7 != 0) {
                    fM5087getDockedDragHandleWidthD9Ej5fM = SheetBottomTokens.INSTANCE.m5087getDockedDragHandleWidthD9Ej5fM();
                }
                if (i4 != 0) {
                    fM5086getDockedDragHandleHeightD9Ej5fM = SheetBottomTokens.INSTANCE.m5086getDockedDragHandleHeightD9Ej5fM();
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    extraLarge = MaterialTheme.INSTANCE.getShapes(composerStartRestartGroup, 6).getExtraLarge();
                }
                if ((i2 & 16) != 0) {
                    value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedDragHandleColor(), composerStartRestartGroup, 6);
                    i3 &= -57345;
                }
            }
            final float f8 = fM5086getDockedDragHandleHeightD9Ej5fM;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1364277227, i3, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle (SheetDefaults.kt:415)");
            }
            Strings.Companion companion4 = Strings.Companion;
            strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_drag_handle_description), composerStartRestartGroup, 0);
            Modifier modifierM2035paddingVpY3zN4$default4 = PaddingKt.m2035paddingVpY3zN4$default(modifier3, 0.0f, SheetDefaultsKt.DragHandleVerticalPadding, 1, null);
            zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                z2 = false;
                objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                z2 = false;
                objRememberedValue = new xs0(strM4461getString2EP1pXo, 0 == true ? 1 : 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            int i13 = i3 >> 6;
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3942SurfaceT9BRK9s(SemanticsModifierKt.semantics$default(modifierM2035paddingVpY3zN4$default4, z2, (nl3) objRememberedValue, 1, null), extraLarge, value, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1039573072, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetDefaults$DragHandle$2
                public final void invoke(Composer composer3, int i14) {
                    if (!composer3.shouldExecute((i14 & 3) != 2, i14 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1039573072, i14, -1, "androidx.compose.material3.BottomSheetDefaults.DragHandle.<anonymous> (SheetDefaults.kt:425)");
                    }
                    BoxKt.Box(SizeKt.m2101sizeVpY3zN4(Modifier.Companion, fM5087getDockedDragHandleWidthD9Ej5fM, f8), composer3, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composer2, (i13 & 112) | 12582912 | (i13 & 896), 120);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f3 = f8;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            f3 = fM5086getDockedDragHandleHeightD9Ej5fM;
        }
        f4 = fM5087getDockedDragHandleWidthD9Ej5fM;
        shape2 = extraLarge;
        j2 = value;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ys0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BottomSheetDefaults.DragHandle_lgZ2HuY$lambda$2(this.b, modifier3, f4, f3, shape2, j2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final long getContainerColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(433375448, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-ContainerColor> (SheetDefaults.kt:383)");
        }
        long value = ColorSchemeKt.getValue(SheetBottomTokens.INSTANCE.getDockedContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m3120getElevationD9Ej5fM() {
        return Elevation;
    }

    public final Shape getExpandedShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1683783414, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-ExpandedShape> (SheetDefaults.kt:379)");
        }
        Shape value = ShapesKt.getValue(SheetBottomTokens.INSTANCE.getDockedContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    public final Shape getHiddenShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1971658024, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-HiddenShape> (SheetDefaults.kt:375)");
        }
        Shape value = ShapesKt.getValue(SheetBottomTokens.INSTANCE.getDockedMinimizedContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getPositionalThreshold-D9Ej5fM$material3, reason: not valid java name */
    public final float m3121getPositionalThresholdD9Ej5fM$material3() {
        return PositionalThreshold;
    }

    public final long getScrimColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2040719176, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-ScrimColor> (SheetDefaults.kt:390)");
        }
        long jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(ColorSchemeKt.getValue(ScrimTokens.INSTANCE.getContainerColor(), composer, 6), 0.32f, 0.0f, 0.0f, 0.0f, 14, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return jM6231copywmQWz5c$default;
    }

    /* JADX INFO: renamed from: getSheetMaxWidth-D9Ej5fM, reason: not valid java name */
    public final float m3122getSheetMaxWidthD9Ej5fM() {
        return SheetMaxWidth;
    }

    /* JADX INFO: renamed from: getSheetPeekHeight-D9Ej5fM, reason: not valid java name */
    public final float m3123getSheetPeekHeightD9Ej5fM() {
        return SheetPeekHeight;
    }

    /* JADX INFO: renamed from: getVelocityThreshold-D9Ej5fM$material3, reason: not valid java name */
    public final float m3124getVelocityThresholdD9Ej5fM$material3() {
        return VelocityThreshold;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-511309409, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-windowInsets> (SheetDefaults.kt:401)");
        }
        WindowInsets safeDrawing = WindowInsets_androidKt.getSafeDrawing(WindowInsets.Companion, composer, 6);
        WindowInsetsSides.Companion companion = WindowInsetsSides.Companion;
        WindowInsets windowInsetsM2126onlybOOhFvg = WindowInsetsKt.m2126onlybOOhFvg(safeDrawing, WindowInsetsSides.m2138plusgK_yJZ4(companion.m2146getBottomJoeWqyM(), companion.m2152getTopJoeWqyM()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return windowInsetsM2126onlybOOhFvg;
    }
}
