package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TimePickerDialogDefaults;
import androidx.compose.material3.internal.Icons;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DialogTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerDialogDefaults {
    public static final int $stable = 0;
    public static final TimePickerDialogDefaults INSTANCE = new TimePickerDialogDefaults();
    private static final float MinHeightForTimePicker = Dp.m9042constructorimpl(300.0f);

    private TimePickerDialogDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DisplayModeToggle_S7Bxtbk$lambda$0(TimePickerDialogDefaults timePickerDialogDefaults, ll3 ll3Var, int i, Modifier modifier, int i2, int i3, Composer composer, int i4) {
        timePickerDialogDefaults.m4111DisplayModeToggleS7Bxtbk(ll3Var, i, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Title_pK_nZyw$lambda$1(TimePickerDialogDefaults timePickerDialogDefaults, int i, Modifier modifier, int i2, int i3, Composer composer, int i4) {
        timePickerDialogDefaults.m4112TitlepK_nZyw(i, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: DisplayModeToggle-S7Bxtbk, reason: not valid java name */
    public final void m4111DisplayModeToggleS7Bxtbk(final ll3<j59> ll3Var, final int i, Modifier modifier, Composer composer, final int i2, final int i3) {
        ll3<j59> ll3Var2;
        int i4;
        Modifier modifier2;
        boolean z;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1283607635);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i2 & 6) == 0) {
                i4 = (composerStartRestartGroup.changedInstance(ll3Var2) ? 4 : 2) | i2;
            } else {
                i4 = i2;
            }
        }
        if ((i3 & 2) != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 32 : 16;
        }
        int i5 = i3 & 4;
        if (i5 == 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            if ((i4 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1283607635, i4, -1, "androidx.compose.material3.TimePickerDialogDefaults.DisplayModeToggle (TimePickerDialog.kt:264)");
                }
                IconButtonKt.IconButton(ll3Var2, modifier4, false, null, null, null, ComposableLambdaKt.rememberComposableLambda(-698026161, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogDefaults$DisplayModeToggle$1
                    public final void invoke(Composer composer2, int i6) {
                        int iM4382constructorimpl;
                        if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-698026161, i6, -1, "androidx.compose.material3.TimePickerDialogDefaults.DisplayModeToggle.<anonymous> (TimePickerDialog.kt:266)");
                        }
                        int i7 = i;
                        TimePickerDisplayMode.Companion companion = TimePickerDisplayMode.Companion;
                        ImageVector keyboard = TimePickerDisplayMode.m4119equalsimpl0(i7, companion.m4124getPickerONbchU()) ? Icons.Outlined.INSTANCE.getKeyboard() : Icons.Outlined.INSTANCE.getSchedule();
                        if (TimePickerDisplayMode.m4119equalsimpl0(i, companion.m4124getPickerONbchU())) {
                            Strings.Companion companion2 = Strings.Companion;
                            iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_toggle_touch);
                        } else {
                            Strings.Companion companion3 = Strings.Companion;
                            iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_toggle_keyboard);
                        }
                        IconKt.m3533Iconww6aTOc(keyboard, Strings_androidKt.m4461getString2EP1pXo(iM4382constructorimpl, composer2, 0), (Modifier) null, 0L, composer2, 0, 12);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 14) | 1572864 | ((i4 >> 3) & 112), 60);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ou8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogDefaults.DisplayModeToggle_S7Bxtbk$lambda$0(this.b, ll3Var, i, modifier3, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        if ((i4 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            if (i5 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1283607635, i4, -1, "androidx.compose.material3.TimePickerDialogDefaults.DisplayModeToggle (TimePickerDialog.kt:264)");
            }
            IconButtonKt.IconButton(ll3Var2, modifier4, false, null, null, null, ComposableLambdaKt.rememberComposableLambda(-698026161, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TimePickerDialogDefaults$DisplayModeToggle$1
                public final void invoke(Composer composer2, int i6) {
                    int iM4382constructorimpl;
                    if (!composer2.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-698026161, i6, -1, "androidx.compose.material3.TimePickerDialogDefaults.DisplayModeToggle.<anonymous> (TimePickerDialog.kt:266)");
                    }
                    int i7 = i;
                    TimePickerDisplayMode.Companion companion = TimePickerDisplayMode.Companion;
                    ImageVector keyboard = TimePickerDisplayMode.m4119equalsimpl0(i7, companion.m4124getPickerONbchU()) ? Icons.Outlined.INSTANCE.getKeyboard() : Icons.Outlined.INSTANCE.getSchedule();
                    if (TimePickerDisplayMode.m4119equalsimpl0(i, companion.m4124getPickerONbchU())) {
                        Strings.Companion companion2 = Strings.Companion;
                        iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_toggle_touch);
                    } else {
                        Strings.Companion companion3 = Strings.Companion;
                        iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_toggle_keyboard);
                    }
                    IconKt.m3533Iconww6aTOc(keyboard, Strings_androidKt.m4461getString2EP1pXo(iM4382constructorimpl, composer2, 0), (Modifier) null, 0L, composer2, 0, 12);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 14) | 1572864 | ((i4 >> 3) & 112), 60);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ou8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerDialogDefaults.DisplayModeToggle_S7Bxtbk$lambda$0(this.b, ll3Var, i, modifier3, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    /* JADX WARN: Code duplicated, block: B:27:0x0048  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:0x008b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0094  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: Title-pK_nZyw, reason: not valid java name */
    public final void m4112TitlepK_nZyw(final int i, Modifier modifier, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        boolean z;
        Composer composer2;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int iM4382constructorimpl;
        Composer composerStartRestartGroup = composer.startRestartGroup(1546564986);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = i2 | (composerStartRestartGroup.changed(i) ? 4 : 2);
        } else {
            i4 = i2;
        }
        int i5 = i3 & 2;
        if (i5 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i4 & 19) != 18) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1546564986, i4, -1, "androidx.compose.material3.TimePickerDialogDefaults.Title (TimePickerDialog.kt:294)");
                }
                Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(modifier4, 0.0f, 0.0f, 0.0f, Dp.m9042constructorimpl(20.0f), 7, null);
                Modifier modifier5 = modifier4;
                TextStyle labelMedium = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6).getLabelMedium();
                if (TimePickerDisplayMode.m4119equalsimpl0(i, TimePickerDisplayMode.Companion.m4124getPickerONbchU())) {
                    Strings.Companion companion = Strings.Companion;
                    iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_dialog_title);
                } else {
                    Strings.Companion companion2 = Strings.Companion;
                    iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_input_dialog_title);
                }
                composer2 = composerStartRestartGroup;
                TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(iM4382constructorimpl, composerStartRestartGroup, 0), modifierM2037paddingqDBjuR0$default, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, labelMedium, composer2, 0, 0, 131068);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nu8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TimePickerDialogDefaults.Title_pK_nZyw$lambda$1(this.b, i, modifier3, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i4 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            if (i5 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1546564986, i4, -1, "androidx.compose.material3.TimePickerDialogDefaults.Title (TimePickerDialog.kt:294)");
            }
            Modifier modifierM2037paddingqDBjuR0$default2 = PaddingKt.m2037paddingqDBjuR0$default(modifier4, 0.0f, 0.0f, 0.0f, Dp.m9042constructorimpl(20.0f), 7, null);
            Modifier modifier6 = modifier4;
            TextStyle labelMedium2 = MaterialTheme.INSTANCE.getTypography(composerStartRestartGroup, 6).getLabelMedium();
            if (TimePickerDisplayMode.m4119equalsimpl0(i, TimePickerDisplayMode.Companion.m4124getPickerONbchU())) {
                Strings.Companion companion3 = Strings.Companion;
                iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_picker_dialog_title);
            } else {
                Strings.Companion companion4 = Strings.Companion;
                iM4382constructorimpl = Strings.m4382constructorimpl(R.string.m3c_time_input_dialog_title);
            }
            composer2 = composerStartRestartGroup;
            TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(iM4382constructorimpl, composerStartRestartGroup, 0), modifierM2037paddingqDBjuR0$default2, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, labelMedium2, composer2, 0, 0, 131068);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier6;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nu8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TimePickerDialogDefaults.Title_pK_nZyw$lambda$1(this.b, i, modifier3, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final long getContainerColor(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-443775449, i, -1, "androidx.compose.material3.TimePickerDialogDefaults.<get-containerColor> (TimePickerDialog.kt:242)");
        }
        long value = ColorSchemeKt.getValue(DialogTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getMinHeightForTimePicker-D9Ej5fM, reason: not valid java name */
    public final float m4113getMinHeightForTimePickerD9Ej5fM() {
        return MinHeightForTimePicker;
    }

    public final Shape getShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1241096723, i, -1, "androidx.compose.material3.TimePickerDialogDefaults.<get-shape> (TimePickerDialog.kt:246)");
        }
        Shape value = ShapesKt.getValue(DialogTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }
}
