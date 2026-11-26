package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DatePickerDialog_androidKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.DialogTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerDialog_androidKt {
    private static final PaddingValues DialogButtonsPadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(0.0f, 0.0f, Dp.m9042constructorimpl(6.0f), Dp.m9042constructorimpl(8.0f), 3, null);
    private static final float DialogButtonsMainAxisSpacing = Dp.m9042constructorimpl(8.0f);
    private static final float DialogButtonsCrossAxisSpacing = Dp.m9042constructorimpl(12.0f);

    /* JADX WARN: Code duplicated, block: B:102:0x0117  */
    /* JADX WARN: Code duplicated, block: B:103:0x0119  */
    /* JADX WARN: Code duplicated, block: B:106:0x0122  */
    /* JADX WARN: Code duplicated, block: B:108:0x0130  */
    /* JADX WARN: Code duplicated, block: B:118:0x0149 A[PHI: r0 r6 r8 r9 r13 r14
      0x0149: PHI (r0v28 int) = (r0v16 int), (r0v33 int), (r0v34 int) binds: [B:133:0x0186, B:116:0x0145, B:117:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r6v14 androidx.compose.ui.Modifier) = (r6v5 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier), (r6v2 androidx.compose.ui.Modifier) binds: [B:133:0x0186, B:116:0x0145, B:117:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r8v9 bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>) = 
      (r8v5 bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>)
      (r8v2 bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>)
      (r8v2 bm3<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, j59>)
     binds: [B:133:0x0186, B:116:0x0145, B:117:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r9v11 androidx.compose.ui.graphics.Shape) = 
      (r9v8 androidx.compose.ui.graphics.Shape)
      (r9v6 androidx.compose.ui.graphics.Shape)
      (r9v6 androidx.compose.ui.graphics.Shape)
     binds: [B:133:0x0186, B:116:0x0145, B:117:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r13v8 float) = (r13v4 float), (r13v3 float), (r13v3 float) binds: [B:133:0x0186, B:116:0x0145, B:117:0x0147] A[DONT_GENERATE, DONT_INLINE]
      0x0149: PHI (r14v12 androidx.compose.material3.DatePickerColors) = 
      (r14v9 androidx.compose.material3.DatePickerColors)
      (r14v7 androidx.compose.material3.DatePickerColors)
      (r14v7 androidx.compose.material3.DatePickerColors)
     binds: [B:133:0x0186, B:116:0x0145, B:117:0x0147] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x0154 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0156  */
    /* JADX WARN: Code duplicated, block: B:122:0x015b  */
    /* JADX WARN: Code duplicated, block: B:125:0x0161  */
    /* JADX WARN: Code duplicated, block: B:126:0x016b  */
    /* JADX WARN: Code duplicated, block: B:128:0x016f  */
    /* JADX WARN: Code duplicated, block: B:131:0x017a  */
    /* JADX WARN: Code duplicated, block: B:132:0x0185  */
    /* JADX WARN: Code duplicated, block: B:134:0x0188  */
    /* JADX WARN: Code duplicated, block: B:137:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:140:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:143:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:146:0x0205  */
    /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00df  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:95:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:97:0x0103  */
    /* JADX WARN: Code duplicated, block: B:98:0x0106  */
    /* JADX INFO: renamed from: DatePickerDialog-GmEhDVc, reason: not valid java name */
    public static final void m3359DatePickerDialogGmEhDVc(final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var2, Shape shape, float f, DatePickerColors datePickerColors, DialogProperties dialogProperties, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i7;
        Shape shape2;
        int i8;
        float fM3358getTonalElevationD9Ej5fM;
        int i9;
        final DatePickerColors datePickerColorsColors;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z;
        final Modifier modifier3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var4;
        final Shape shape3;
        final float f2;
        final DialogProperties dialogProperties2;
        final DatePickerColors datePickerColors2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i14;
        int i15;
        DialogProperties dialogProperties3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        final float f3;
        int i16;
        Modifier modifier4;
        final Shape shape4;
        boolean z2;
        Composer composerStartRestartGroup = composer.startRestartGroup(219718641);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        bm3Var3 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i & 24576) == 0) {
                        if ((i2 & 16) == 0) {
                            shape2 = shape;
                            int i17 = composerStartRestartGroup.changed(shape2) ? 16384 : 8192;
                            i3 |= i17;
                        } else {
                            shape2 = shape;
                        }
                        i3 |= i17;
                    } else {
                        shape2 = shape;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        if ((196608 & i) == 0) {
                            fM3358getTonalElevationD9Ej5fM = f;
                            if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                        if ((1572864 & i) == 0) {
                            if ((i2 & 64) == 0) {
                                datePickerColorsColors = datePickerColors;
                                int i18 = composerStartRestartGroup.changed(datePickerColorsColors) ? 1048576 : 524288;
                                i3 |= i18;
                            } else {
                                datePickerColorsColors = datePickerColors;
                            }
                            i3 |= i18;
                        } else {
                            datePickerColorsColors = datePickerColors;
                        }
                        i10 = i2 & 128;
                        if (i10 != 0) {
                            i3 |= 12582912;
                        } else if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(dialogProperties)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                        if ((i2 & 256) != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                    i12 = 67108864;
                                } else {
                                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i12;
                            }
                            i13 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i4 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i6 != 0) {
                                        bm3Var3 = null;
                                    }
                                    if ((i2 & 16) != 0) {
                                        i14 = i13 & (-57345);
                                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                    } else {
                                        i14 = i13;
                                    }
                                    if (i8 != 0) {
                                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                    }
                                    if ((i2 & 64) != 0) {
                                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                        i15 = i14 & (-3670017);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                        bm3Var5 = bm3Var3;
                                        f3 = fM3358getTonalElevationD9Ej5fM;
                                        i16 = i15;
                                        modifier4 = modifier2;
                                        shape4 = shape2;
                                        z2 = false;
                                    }
                                    composerStartRestartGroup.endDefaults();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                                    }
                                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                        public final void invoke(Composer composer2, int i19) {
                                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                                composer2.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                            }
                                            Modifier.Companion companion = Modifier.Companion;
                                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                            Shape shape5 = shape4;
                                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                            float f4 = f3;
                                            final dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                            final bm3<Composer, Integer, j59> bm3Var6 = bm3Var5;
                                            final bm3<Composer, Integer, j59> bm3Var7 = bm3Var;
                                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                                public final void invoke(Composer composer3, int i20) {
                                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                        composer3.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                                    }
                                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                                    final bm3<Composer, Integer, j59> bm3Var8 = bm3Var6;
                                                    final bm3<Composer, Integer, j59> bm3Var9 = bm3Var7;
                                                    Modifier.Companion companion2 = Modifier.Companion;
                                                    Alignment.Companion companion3 = Alignment.Companion;
                                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                                    if (composer3.getApplier() == null) {
                                                        ComposablesKt.invalidApplier();
                                                    }
                                                    composer3.startReusableNode();
                                                    if (composer3.getInserting()) {
                                                        composer3.createNode(constructor);
                                                    } else {
                                                        composer3.useNode();
                                                    }
                                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                                    }
                                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                                    if (composer3.getApplier() == null) {
                                                        ComposablesKt.invalidApplier();
                                                    }
                                                    composer3.startReusableNode();
                                                    if (composer3.getInserting()) {
                                                        composer3.createNode(constructor2);
                                                    } else {
                                                        composer3.useNode();
                                                    }
                                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                                    }
                                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                                    composer3.endNode();
                                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                                    if (composer3.getApplier() == null) {
                                                        ComposablesKt.invalidApplier();
                                                    }
                                                    composer3.startReusableNode();
                                                    if (composer3.getInserting()) {
                                                        composer3.createNode(constructor3);
                                                    } else {
                                                        composer3.useNode();
                                                    }
                                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                                    }
                                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                        public final void invoke(Composer composer4, int i21) {
                                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                                composer4.skipToGroupEnd();
                                                                return;
                                                            }
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                            }
                                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                            final bm3<Composer, Integer, j59> bm3Var10 = bm3Var8;
                                                            final bm3<Composer, Integer, j59> bm3Var11 = bm3Var9;
                                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                                public final void invoke(Composer composer5, int i22) {
                                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                        composer5.skipToGroupEnd();
                                                                        return;
                                                                    }
                                                                    if (ComposerKt.isTraceInProgress()) {
                                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                                    }
                                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                                    if (bm3Var12 == null) {
                                                                        composer5.startReplaceGroup(322524505);
                                                                    } else {
                                                                        composer5.startReplaceGroup(-266690648);
                                                                        bm3Var12.invoke(composer5, 0);
                                                                    }
                                                                    composer5.endReplaceGroup();
                                                                    bm3Var11.invoke(composer5, 0);
                                                                    if (ComposerKt.isTraceInProgress()) {
                                                                        ComposerKt.traceEventEnd();
                                                                    }
                                                                }

                                                                @Override // defpackage.bm3
                                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                                    invoke(composer5, num.intValue());
                                                                    return j59.a;
                                                                }
                                                            }, composer4, 54), composer4, 438);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                            }
                                                        }

                                                        @Override // defpackage.bm3
                                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                            invoke(composer4, num.intValue());
                                                            return j59.a;
                                                        }
                                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                                    composer3.endNode();
                                                    composer3.endNode();
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                                    invoke(composer3, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer2, 54), composer2, 12582918, 104);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                            invoke(composer2, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    dialogProperties2 = dialogProperties3;
                                    f2 = f3;
                                    bm3Var4 = bm3Var5;
                                    modifier3 = modifier4;
                                    shape3 = shape4;
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    i15 = (i2 & 16) != 0 ? i13 & (-57345) : i13;
                                    if ((i2 & 64) != 0) {
                                        i15 &= -3670017;
                                    }
                                }
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                                }
                                AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                    public final void invoke(Composer composer2, int i19) {
                                        if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                        }
                                        Modifier.Companion companion = Modifier.Companion;
                                        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                        Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                        Shape shape5 = shape4;
                                        long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                        float f4 = f3;
                                        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                        SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                            public final void invoke(Composer composer3, int i20) {
                                                if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                    composer3.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                                }
                                                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                                dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                                Modifier.Companion companion2 = Modifier.Companion;
                                                Alignment.Companion companion3 = Alignment.Companion;
                                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                                CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                                ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                                if (composer3.getApplier() == null) {
                                                    ComposablesKt.invalidApplier();
                                                }
                                                composer3.startReusableNode();
                                                if (composer3.getInserting()) {
                                                    composer3.createNode(constructor);
                                                } else {
                                                    composer3.useNode();
                                                }
                                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                                bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                                }
                                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                                Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                                if (composer3.getApplier() == null) {
                                                    ComposablesKt.invalidApplier();
                                                }
                                                composer3.startReusableNode();
                                                if (composer3.getInserting()) {
                                                    composer3.createNode(constructor2);
                                                } else {
                                                    composer3.useNode();
                                                }
                                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                                }
                                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                                dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                                composer3.endNode();
                                                Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                                if (composer3.getApplier() == null) {
                                                    ComposablesKt.invalidApplier();
                                                }
                                                composer3.startReusableNode();
                                                if (composer3.getInserting()) {
                                                    composer3.createNode(constructor3);
                                                } else {
                                                    composer3.useNode();
                                                }
                                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                                }
                                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                                DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                    public final void invoke(Composer composer4, int i21) {
                                                        if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                            composer4.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                        }
                                                        float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                        float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                        final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                        AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                            public final void invoke(Composer composer5, int i22) {
                                                                if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                    composer5.skipToGroupEnd();
                                                                    return;
                                                                }
                                                                if (ComposerKt.isTraceInProgress()) {
                                                                    ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                                }
                                                                bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                                if (bm3Var12 == null) {
                                                                    composer5.startReplaceGroup(322524505);
                                                                } else {
                                                                    composer5.startReplaceGroup(-266690648);
                                                                    bm3Var12.invoke(composer5, 0);
                                                                }
                                                                composer5.endReplaceGroup();
                                                                bm3Var11.invoke(composer5, 0);
                                                                if (ComposerKt.isTraceInProgress()) {
                                                                    ComposerKt.traceEventEnd();
                                                                }
                                                            }

                                                            @Override // defpackage.bm3
                                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                                invoke(composer5, num.intValue());
                                                                return j59.a;
                                                            }
                                                        }, composer4, 54), composer4, 438);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                        invoke(composer4, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                                composer3.endNode();
                                                composer3.endNode();
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                                invoke(composer3, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer2, 54), composer2, 12582918, 104);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                        invoke(composer2, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                dialogProperties2 = dialogProperties3;
                                f2 = f3;
                                bm3Var4 = bm3Var5;
                                modifier3 = modifier4;
                                shape3 = shape4;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                modifier3 = modifier2;
                                bm3Var4 = bm3Var3;
                                shape3 = shape2;
                                f2 = fM3358getTonalElevationD9Ej5fM;
                                dialogProperties2 = dialogProperties;
                            }
                            datePickerColors2 = datePickerColorsColors;
                            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        i13 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                            }
                            AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                public final void invoke(Composer composer2, int i19) {
                                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                    Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                    Shape shape5 = shape4;
                                    long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                    float f4 = f3;
                                    final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                    SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                        public final void invoke(Composer composer3, int i20) {
                                            if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                            }
                                            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                            dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                            Modifier.Companion companion2 = Modifier.Companion;
                                            Alignment.Companion companion3 = Alignment.Companion;
                                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor2);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                            composer3.endNode();
                                            Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor3);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                            DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                public final void invoke(Composer composer4, int i21) {
                                                    if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                        composer4.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                    }
                                                    float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                    float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                    AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                        public final void invoke(Composer composer5, int i22) {
                                                            if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                composer5.skipToGroupEnd();
                                                                return;
                                                            }
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                            }
                                                            bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                            if (bm3Var12 == null) {
                                                                composer5.startReplaceGroup(322524505);
                                                            } else {
                                                                composer5.startReplaceGroup(-266690648);
                                                                bm3Var12.invoke(composer5, 0);
                                                            }
                                                            composer5.endReplaceGroup();
                                                            bm3Var11.invoke(composer5, 0);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                            }
                                                        }

                                                        @Override // defpackage.bm3
                                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                            invoke(composer5, num.intValue());
                                                            return j59.a;
                                                        }
                                                    }, composer4, 54), composer4, 438);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                    invoke(composer4, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            composer3.endNode();
                                            composer3.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer2, 54), composer2, 12582918, 104);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties2 = dialogProperties3;
                            f2 = f3;
                            bm3Var4 = bm3Var5;
                            modifier3 = modifier4;
                            shape3 = shape4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            bm3Var4 = bm3Var3;
                            shape3 = shape2;
                            f2 = fM3358getTonalElevationD9Ej5fM;
                            dialogProperties2 = dialogProperties;
                        }
                        datePickerColors2 = datePickerColorsColors;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    fM3358getTonalElevationD9Ej5fM = f;
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            datePickerColorsColors = datePickerColors;
                            if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                            }
                            i3 |= i18;
                        } else {
                            datePickerColorsColors = datePickerColors;
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(dialogProperties)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i12 = 67108864;
                            } else {
                                i12 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i12;
                        }
                        i13 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                            }
                            AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                public final void invoke(Composer composer2, int i19) {
                                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                    Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                    Shape shape5 = shape4;
                                    long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                    float f4 = f3;
                                    final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                    SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                        public final void invoke(Composer composer3, int i20) {
                                            if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                            }
                                            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                            dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                            Modifier.Companion companion2 = Modifier.Companion;
                                            Alignment.Companion companion3 = Alignment.Companion;
                                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor2);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                            composer3.endNode();
                                            Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor3);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                            DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                public final void invoke(Composer composer4, int i21) {
                                                    if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                        composer4.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                    }
                                                    float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                    float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                    AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                        public final void invoke(Composer composer5, int i22) {
                                                            if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                composer5.skipToGroupEnd();
                                                                return;
                                                            }
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                            }
                                                            bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                            if (bm3Var12 == null) {
                                                                composer5.startReplaceGroup(322524505);
                                                            } else {
                                                                composer5.startReplaceGroup(-266690648);
                                                                bm3Var12.invoke(composer5, 0);
                                                            }
                                                            composer5.endReplaceGroup();
                                                            bm3Var11.invoke(composer5, 0);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                            }
                                                        }

                                                        @Override // defpackage.bm3
                                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                            invoke(composer5, num.intValue());
                                                            return j59.a;
                                                        }
                                                    }, composer4, 54), composer4, 438);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                    invoke(composer4, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            composer3.endNode();
                                            composer3.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer2, 54), composer2, 12582918, 104);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties2 = dialogProperties3;
                            f2 = f3;
                            bm3Var4 = bm3Var5;
                            modifier3 = modifier4;
                            shape3 = shape4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            bm3Var4 = bm3Var3;
                            shape3 = shape2;
                            f2 = fM3358getTonalElevationD9Ej5fM;
                            dialogProperties2 = dialogProperties;
                        }
                        datePickerColors2 = datePickerColorsColors;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 3072;
                bm3Var3 = bm3Var2;
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i17;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        fM3358getTonalElevationD9Ej5fM = f;
                        if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            datePickerColorsColors = datePickerColors;
                            if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                            }
                            i3 |= i18;
                        } else {
                            datePickerColorsColors = datePickerColors;
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(dialogProperties)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i12 = 67108864;
                            } else {
                                i12 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i12;
                        }
                        i13 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                            }
                            AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                public final void invoke(Composer composer2, int i19) {
                                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                    Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                    Shape shape5 = shape4;
                                    long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                    float f4 = f3;
                                    final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                    SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                        public final void invoke(Composer composer3, int i20) {
                                            if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                            }
                                            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                            dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                            Modifier.Companion companion2 = Modifier.Companion;
                                            Alignment.Companion companion3 = Alignment.Companion;
                                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor2);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                            composer3.endNode();
                                            Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor3);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                            DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                public final void invoke(Composer composer4, int i21) {
                                                    if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                        composer4.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                    }
                                                    float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                    float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                    AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                        public final void invoke(Composer composer5, int i22) {
                                                            if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                composer5.skipToGroupEnd();
                                                                return;
                                                            }
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                            }
                                                            bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                            if (bm3Var12 == null) {
                                                                composer5.startReplaceGroup(322524505);
                                                            } else {
                                                                composer5.startReplaceGroup(-266690648);
                                                                bm3Var12.invoke(composer5, 0);
                                                            }
                                                            composer5.endReplaceGroup();
                                                            bm3Var11.invoke(composer5, 0);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                            }
                                                        }

                                                        @Override // defpackage.bm3
                                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                            invoke(composer5, num.intValue());
                                                            return j59.a;
                                                        }
                                                    }, composer4, 54), composer4, 438);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                    invoke(composer4, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            composer3.endNode();
                                            composer3.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer2, 54), composer2, 12582918, 104);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties2 = dialogProperties3;
                            f2 = f3;
                            bm3Var4 = bm3Var5;
                            modifier3 = modifier4;
                            shape3 = shape4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            bm3Var4 = bm3Var3;
                            shape3 = shape2;
                            f2 = fM3358getTonalElevationD9Ej5fM;
                            dialogProperties2 = dialogProperties;
                        }
                        datePickerColors2 = datePickerColorsColors;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                fM3358getTonalElevationD9Ej5fM = f;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        datePickerColorsColors = datePickerColors;
                        if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(dialogProperties)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i12;
                    }
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    bm3Var3 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i17;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        fM3358getTonalElevationD9Ej5fM = f;
                        if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            datePickerColorsColors = datePickerColors;
                            if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                            }
                            i3 |= i18;
                        } else {
                            datePickerColorsColors = datePickerColors;
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(dialogProperties)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i12 = 67108864;
                            } else {
                                i12 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i12;
                        }
                        i13 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                            }
                            AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                public final void invoke(Composer composer2, int i19) {
                                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                    Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                    Shape shape5 = shape4;
                                    long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                    float f4 = f3;
                                    final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                    SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                        public final void invoke(Composer composer3, int i20) {
                                            if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                            }
                                            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                            dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                            Modifier.Companion companion2 = Modifier.Companion;
                                            Alignment.Companion companion3 = Alignment.Companion;
                                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor2);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                            composer3.endNode();
                                            Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor3);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                            DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                public final void invoke(Composer composer4, int i21) {
                                                    if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                        composer4.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                    }
                                                    float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                    float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                    AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                        public final void invoke(Composer composer5, int i22) {
                                                            if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                composer5.skipToGroupEnd();
                                                                return;
                                                            }
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                            }
                                                            bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                            if (bm3Var12 == null) {
                                                                composer5.startReplaceGroup(322524505);
                                                            } else {
                                                                composer5.startReplaceGroup(-266690648);
                                                                bm3Var12.invoke(composer5, 0);
                                                            }
                                                            composer5.endReplaceGroup();
                                                            bm3Var11.invoke(composer5, 0);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                            }
                                                        }

                                                        @Override // defpackage.bm3
                                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                            invoke(composer5, num.intValue());
                                                            return j59.a;
                                                        }
                                                    }, composer4, 54), composer4, 438);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                    invoke(composer4, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            composer3.endNode();
                                            composer3.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer2, 54), composer2, 12582918, 104);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties2 = dialogProperties3;
                            f2 = f3;
                            bm3Var4 = bm3Var5;
                            modifier3 = modifier4;
                            shape3 = shape4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            bm3Var4 = bm3Var3;
                            shape3 = shape2;
                            f2 = fM3358getTonalElevationD9Ej5fM;
                            dialogProperties2 = dialogProperties;
                        }
                        datePickerColors2 = datePickerColorsColors;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                fM3358getTonalElevationD9Ej5fM = f;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        datePickerColorsColors = datePickerColors;
                        if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(dialogProperties)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i12;
                    }
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var3 = bm3Var2;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                i3 |= i17;
            } else {
                shape2 = shape;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    fM3358getTonalElevationD9Ej5fM = f;
                    if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        datePickerColorsColors = datePickerColors;
                        if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(dialogProperties)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i12;
                    }
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fM3358getTonalElevationD9Ej5fM = f;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    datePickerColorsColors = datePickerColors;
                    if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i3 |= i18;
            } else {
                datePickerColorsColors = datePickerColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(dialogProperties)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i12;
                }
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i13 = i3;
            if ((i3 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                }
                AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                    public final void invoke(Composer composer2, int i19) {
                        if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                        }
                        Modifier.Companion companion = Modifier.Companion;
                        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                        Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                        Shape shape5 = shape4;
                        long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                        float f4 = f3;
                        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                            public final void invoke(Composer composer3, int i20) {
                                if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                }
                                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                Modifier.Companion companion2 = Modifier.Companion;
                                Alignment.Companion companion3 = Alignment.Companion;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor2);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                composer3.endNode();
                                Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor3);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                    public final void invoke(Composer composer4, int i21) {
                                        if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                        }
                                        float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                        float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                        AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                            public final void invoke(Composer composer5, int i22) {
                                                if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                    composer5.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                }
                                                bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                if (bm3Var12 == null) {
                                                    composer5.startReplaceGroup(322524505);
                                                } else {
                                                    composer5.startReplaceGroup(-266690648);
                                                    bm3Var12.invoke(composer5, 0);
                                                }
                                                composer5.endReplaceGroup();
                                                bm3Var11.invoke(composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                invoke(composer5, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer4, 54), composer4, 438);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                composer3.endNode();
                                composer3.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 12582918, 104);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties2 = dialogProperties3;
                f2 = f3;
                bm3Var4 = bm3Var5;
                modifier3 = modifier4;
                shape3 = shape4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var4 = bm3Var3;
                shape3 = shape2;
                f2 = fM3358getTonalElevationD9Ej5fM;
                dialogProperties2 = dialogProperties;
            }
            datePickerColors2 = datePickerColorsColors;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    bm3Var3 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        shape2 = shape;
                        if (composerStartRestartGroup.changed(shape2)) {
                        }
                        i3 |= i17;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        fM3358getTonalElevationD9Ej5fM = f;
                        if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            datePickerColorsColors = datePickerColors;
                            if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                            }
                            i3 |= i18;
                        } else {
                            datePickerColorsColors = datePickerColors;
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(dialogProperties)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i12 = 67108864;
                            } else {
                                i12 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i12;
                        }
                        i13 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if ((i2 & 16) != 0) {
                                    i14 = i13 & (-57345);
                                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                } else {
                                    i14 = i13;
                                }
                                if (i8 != 0) {
                                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                                }
                                if ((i2 & 64) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i15 = i14 & (-3670017);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    shape4 = shape2;
                                    z2 = false;
                                } else {
                                    dialogProperties3 = dialogProperties;
                                    i16 = i15;
                                    modifier4 = modifier2;
                                    bm3Var5 = bm3Var3;
                                    f3 = fM3358getTonalElevationD9Ej5fM;
                                    z2 = false;
                                    shape4 = shape2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                            }
                            AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                                public final void invoke(Composer composer2, int i19) {
                                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                    }
                                    Modifier.Companion companion = Modifier.Companion;
                                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                    Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                    Shape shape5 = shape4;
                                    long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                    float f4 = f3;
                                    final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                    SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                        public final void invoke(Composer composer3, int i20) {
                                            if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                            }
                                            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                            dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                            Modifier.Companion companion2 = Modifier.Companion;
                                            Alignment.Companion companion3 = Alignment.Companion;
                                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                            ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                            Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor2);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                            composer3.endNode();
                                            Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                            CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                            if (composer3.getApplier() == null) {
                                                ComposablesKt.invalidApplier();
                                            }
                                            composer3.startReusableNode();
                                            if (composer3.getInserting()) {
                                                composer3.createNode(constructor3);
                                            } else {
                                                composer3.useNode();
                                            }
                                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                            }
                                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                            DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                                public final void invoke(Composer composer4, int i21) {
                                                    if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                        composer4.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                    }
                                                    float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                    float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                    AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                        public final void invoke(Composer composer5, int i22) {
                                                            if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                                composer5.skipToGroupEnd();
                                                                return;
                                                            }
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                            }
                                                            bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                            if (bm3Var12 == null) {
                                                                composer5.startReplaceGroup(322524505);
                                                            } else {
                                                                composer5.startReplaceGroup(-266690648);
                                                                bm3Var12.invoke(composer5, 0);
                                                            }
                                                            composer5.endReplaceGroup();
                                                            bm3Var11.invoke(composer5, 0);
                                                            if (ComposerKt.isTraceInProgress()) {
                                                                ComposerKt.traceEventEnd();
                                                            }
                                                        }

                                                        @Override // defpackage.bm3
                                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                            invoke(composer5, num.intValue());
                                                            return j59.a;
                                                        }
                                                    }, composer4, 54), composer4, 438);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                    invoke(composer4, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            composer3.endNode();
                                            composer3.endNode();
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer2, 54), composer2, 12582918, 104);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            dialogProperties2 = dialogProperties3;
                            f2 = f3;
                            bm3Var4 = bm3Var5;
                            modifier3 = modifier4;
                            shape3 = shape4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            bm3Var4 = bm3Var3;
                            shape3 = shape2;
                            f2 = fM3358getTonalElevationD9Ej5fM;
                            dialogProperties2 = dialogProperties;
                        }
                        datePickerColors2 = datePickerColorsColors;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                fM3358getTonalElevationD9Ej5fM = f;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        datePickerColorsColors = datePickerColors;
                        if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(dialogProperties)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i12;
                    }
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var3 = bm3Var2;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                i3 |= i17;
            } else {
                shape2 = shape;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    fM3358getTonalElevationD9Ej5fM = f;
                    if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        datePickerColorsColors = datePickerColors;
                        if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(dialogProperties)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i12;
                    }
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fM3358getTonalElevationD9Ej5fM = f;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    datePickerColorsColors = datePickerColors;
                    if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i3 |= i18;
            } else {
                datePickerColorsColors = datePickerColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(dialogProperties)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i12;
                }
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i13 = i3;
            if ((i3 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                }
                AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                    public final void invoke(Composer composer2, int i19) {
                        if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                        }
                        Modifier.Companion companion = Modifier.Companion;
                        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                        Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                        Shape shape5 = shape4;
                        long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                        float f4 = f3;
                        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                            public final void invoke(Composer composer3, int i20) {
                                if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                }
                                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                Modifier.Companion companion2 = Modifier.Companion;
                                Alignment.Companion companion3 = Alignment.Companion;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor2);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                composer3.endNode();
                                Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor3);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                    public final void invoke(Composer composer4, int i21) {
                                        if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                        }
                                        float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                        float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                        AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                            public final void invoke(Composer composer5, int i22) {
                                                if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                    composer5.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                }
                                                bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                if (bm3Var12 == null) {
                                                    composer5.startReplaceGroup(322524505);
                                                } else {
                                                    composer5.startReplaceGroup(-266690648);
                                                    bm3Var12.invoke(composer5, 0);
                                                }
                                                composer5.endReplaceGroup();
                                                bm3Var11.invoke(composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                invoke(composer5, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer4, 54), composer4, 438);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                composer3.endNode();
                                composer3.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 12582918, 104);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties2 = dialogProperties3;
                f2 = f3;
                bm3Var4 = bm3Var5;
                modifier3 = modifier4;
                shape3 = shape4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var4 = bm3Var3;
                shape3 = shape2;
                f2 = fM3358getTonalElevationD9Ej5fM;
                dialogProperties2 = dialogProperties;
            }
            datePickerColors2 = datePickerColorsColors;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                bm3Var3 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                i3 |= i17;
            } else {
                shape2 = shape;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    fM3358getTonalElevationD9Ej5fM = f;
                    if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        datePickerColorsColors = datePickerColors;
                        if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                        }
                        i3 |= i18;
                    } else {
                        datePickerColorsColors = datePickerColors;
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(dialogProperties)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i12;
                    }
                    i13 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if ((i2 & 16) != 0) {
                                i14 = i13 & (-57345);
                                shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            } else {
                                i14 = i13;
                            }
                            if (i8 != 0) {
                                fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                            }
                            if ((i2 & 64) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i15 = i14 & (-3670017);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                i16 = i15;
                                modifier4 = modifier2;
                                shape4 = shape2;
                                z2 = false;
                            } else {
                                dialogProperties3 = dialogProperties;
                                i16 = i15;
                                modifier4 = modifier2;
                                bm3Var5 = bm3Var3;
                                f3 = fM3358getTonalElevationD9Ej5fM;
                                z2 = false;
                                shape4 = shape2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                        }
                        AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                                Shape shape5 = shape4;
                                long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                                float f4 = f3;
                                final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                                SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                    public final void invoke(Composer composer3, int i20) {
                                        if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                        }
                                        Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                        Modifier.Companion companion2 = Modifier.Companion;
                                        Alignment.Companion companion3 = Alignment.Companion;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                        Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                        ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor2);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                        composer3.endNode();
                                        Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                        ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                        if (composer3.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer3.startReusableNode();
                                        if (composer3.getInserting()) {
                                            composer3.createNode(constructor3);
                                        } else {
                                            composer3.useNode();
                                        }
                                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                        bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                        if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                        DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                        ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                            public final void invoke(Composer composer4, int i21) {
                                                if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                    composer4.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                                }
                                                float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                                float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                                final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                                AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    public final void invoke(Composer composer5, int i22) {
                                                        if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                            composer5.skipToGroupEnd();
                                                            return;
                                                        }
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                        }
                                                        bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                        if (bm3Var12 == null) {
                                                            composer5.startReplaceGroup(322524505);
                                                        } else {
                                                            composer5.startReplaceGroup(-266690648);
                                                            bm3Var12.invoke(composer5, 0);
                                                        }
                                                        composer5.endReplaceGroup();
                                                        bm3Var11.invoke(composer5, 0);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                        }
                                                    }

                                                    @Override // defpackage.bm3
                                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                        invoke(composer5, num.intValue());
                                                        return j59.a;
                                                    }
                                                }, composer4, 54), composer4, 438);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                                invoke(composer4, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                        composer3.endNode();
                                        composer3.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 12582918, 104);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        dialogProperties2 = dialogProperties3;
                        f2 = f3;
                        bm3Var4 = bm3Var5;
                        modifier3 = modifier4;
                        shape3 = shape4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        bm3Var4 = bm3Var3;
                        shape3 = shape2;
                        f2 = fM3358getTonalElevationD9Ej5fM;
                        dialogProperties2 = dialogProperties;
                    }
                    datePickerColors2 = datePickerColorsColors;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            fM3358getTonalElevationD9Ej5fM = f;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    datePickerColorsColors = datePickerColors;
                    if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i3 |= i18;
            } else {
                datePickerColorsColors = datePickerColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(dialogProperties)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i12;
                }
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i13 = i3;
            if ((i3 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                }
                AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                    public final void invoke(Composer composer2, int i19) {
                        if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                        }
                        Modifier.Companion companion = Modifier.Companion;
                        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                        Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                        Shape shape5 = shape4;
                        long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                        float f4 = f3;
                        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                            public final void invoke(Composer composer3, int i20) {
                                if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                }
                                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                Modifier.Companion companion2 = Modifier.Companion;
                                Alignment.Companion companion3 = Alignment.Companion;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor2);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                composer3.endNode();
                                Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor3);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                    public final void invoke(Composer composer4, int i21) {
                                        if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                        }
                                        float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                        float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                        AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                            public final void invoke(Composer composer5, int i22) {
                                                if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                    composer5.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                }
                                                bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                if (bm3Var12 == null) {
                                                    composer5.startReplaceGroup(322524505);
                                                } else {
                                                    composer5.startReplaceGroup(-266690648);
                                                    bm3Var12.invoke(composer5, 0);
                                                }
                                                composer5.endReplaceGroup();
                                                bm3Var11.invoke(composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                invoke(composer5, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer4, 54), composer4, 438);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                composer3.endNode();
                                composer3.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 12582918, 104);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties2 = dialogProperties3;
                f2 = f3;
                bm3Var4 = bm3Var5;
                modifier3 = modifier4;
                shape3 = shape4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var4 = bm3Var3;
                shape3 = shape2;
                f2 = fM3358getTonalElevationD9Ej5fM;
                dialogProperties2 = dialogProperties;
            }
            datePickerColors2 = datePickerColorsColors;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        bm3Var3 = bm3Var2;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                shape2 = shape;
                if (composerStartRestartGroup.changed(shape2)) {
                }
                i3 |= i17;
            } else {
                shape2 = shape;
            }
            i3 |= i17;
        } else {
            shape2 = shape;
        }
        i8 = i2 & 32;
        if (i8 != 0) {
            if ((196608 & i) == 0) {
                fM3358getTonalElevationD9Ej5fM = f;
                if (composerStartRestartGroup.changed(fM3358getTonalElevationD9Ej5fM)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    datePickerColorsColors = datePickerColors;
                    if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                    }
                    i3 |= i18;
                } else {
                    datePickerColorsColors = datePickerColors;
                }
                i3 |= i18;
            } else {
                datePickerColorsColors = datePickerColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(dialogProperties)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i2 & 256) != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i12;
                }
                i13 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if ((i2 & 16) != 0) {
                            i14 = i13 & (-57345);
                            shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        } else {
                            i14 = i13;
                        }
                        if (i8 != 0) {
                            fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                        }
                        if ((i2 & 64) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i15 = i14 & (-3670017);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            i16 = i15;
                            modifier4 = modifier2;
                            shape4 = shape2;
                            z2 = false;
                        } else {
                            dialogProperties3 = dialogProperties;
                            i16 = i15;
                            modifier4 = modifier2;
                            bm3Var5 = bm3Var3;
                            f3 = fM3358getTonalElevationD9Ej5fM;
                            z2 = false;
                            shape4 = shape2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                    }
                    AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                        public final void invoke(Composer composer2, int i19) {
                            if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                            }
                            Modifier.Companion companion = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                            Shape shape5 = shape4;
                            long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                            float f4 = f3;
                            final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                                public final void invoke(Composer composer3, int i20) {
                                    if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                    }
                                    Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                    Modifier.Companion companion2 = Modifier.Companion;
                                    Alignment.Companion companion3 = Alignment.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                    Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                    composer3.endNode();
                                    Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                    if (composer3.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                    DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        public final void invoke(Composer composer4, int i21) {
                                            if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                                composer4.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                            }
                                            float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                            float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                            final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                            AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                public final void invoke(Composer composer5, int i22) {
                                                    if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                        composer5.skipToGroupEnd();
                                                        return;
                                                    }
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                    }
                                                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                    if (bm3Var12 == null) {
                                                        composer5.startReplaceGroup(322524505);
                                                    } else {
                                                        composer5.startReplaceGroup(-266690648);
                                                        bm3Var12.invoke(composer5, 0);
                                                    }
                                                    composer5.endReplaceGroup();
                                                    bm3Var11.invoke(composer5, 0);
                                                    if (ComposerKt.isTraceInProgress()) {
                                                        ComposerKt.traceEventEnd();
                                                    }
                                                }

                                                @Override // defpackage.bm3
                                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                    invoke(composer5, num.intValue());
                                                    return j59.a;
                                                }
                                            }, composer4, 54), composer4, 438);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                            invoke(composer4, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                    composer3.endNode();
                                    composer3.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 12582918, 104);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    dialogProperties2 = dialogProperties3;
                    f2 = f3;
                    bm3Var4 = bm3Var5;
                    modifier3 = modifier4;
                    shape3 = shape4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    bm3Var4 = bm3Var3;
                    shape3 = shape2;
                    f2 = fM3358getTonalElevationD9Ej5fM;
                    dialogProperties2 = dialogProperties;
                }
                datePickerColors2 = datePickerColorsColors;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i13 = i3;
            if ((i3 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                }
                AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                    public final void invoke(Composer composer2, int i19) {
                        if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                        }
                        Modifier.Companion companion = Modifier.Companion;
                        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                        Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                        Shape shape5 = shape4;
                        long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                        float f4 = f3;
                        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                            public final void invoke(Composer composer3, int i20) {
                                if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                }
                                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                Modifier.Companion companion2 = Modifier.Companion;
                                Alignment.Companion companion3 = Alignment.Companion;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor2);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                composer3.endNode();
                                Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor3);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                    public final void invoke(Composer composer4, int i21) {
                                        if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                        }
                                        float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                        float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                        AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                            public final void invoke(Composer composer5, int i22) {
                                                if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                    composer5.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                }
                                                bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                if (bm3Var12 == null) {
                                                    composer5.startReplaceGroup(322524505);
                                                } else {
                                                    composer5.startReplaceGroup(-266690648);
                                                    bm3Var12.invoke(composer5, 0);
                                                }
                                                composer5.endReplaceGroup();
                                                bm3Var11.invoke(composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                invoke(composer5, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer4, 54), composer4, 438);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                composer3.endNode();
                                composer3.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 12582918, 104);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties2 = dialogProperties3;
                f2 = f3;
                bm3Var4 = bm3Var5;
                modifier3 = modifier4;
                shape3 = shape4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var4 = bm3Var3;
                shape3 = shape2;
                f2 = fM3358getTonalElevationD9Ej5fM;
                dialogProperties2 = dialogProperties;
            }
            datePickerColors2 = datePickerColorsColors;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        fM3358getTonalElevationD9Ej5fM = f;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                datePickerColorsColors = datePickerColors;
                if (composerStartRestartGroup.changed(datePickerColorsColors)) {
                }
                i3 |= i18;
            } else {
                datePickerColorsColors = datePickerColors;
            }
            i3 |= i18;
        } else {
            datePickerColorsColors = datePickerColors;
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(dialogProperties)) {
                i11 = 8388608;
            } else {
                i11 = 4194304;
            }
            i3 |= i11;
        }
        if ((i2 & 256) != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i12;
            }
            i13 = i3;
            if ((i3 & 38347923) != 38347922) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if ((i2 & 16) != 0) {
                        i14 = i13 & (-57345);
                        shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    } else {
                        i14 = i13;
                    }
                    if (i8 != 0) {
                        fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                    }
                    if ((i2 & 64) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i15 = i14 & (-3670017);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        i16 = i15;
                        modifier4 = modifier2;
                        shape4 = shape2;
                        z2 = false;
                    } else {
                        dialogProperties3 = dialogProperties;
                        i16 = i15;
                        modifier4 = modifier2;
                        bm3Var5 = bm3Var3;
                        f3 = fM3358getTonalElevationD9Ej5fM;
                        z2 = false;
                        shape4 = shape2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
                }
                AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                    public final void invoke(Composer composer2, int i19) {
                        if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                        }
                        Modifier.Companion companion = Modifier.Companion;
                        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                        Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                        Shape shape5 = shape4;
                        long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                        float f4 = f3;
                        final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                        final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                            public final void invoke(Composer composer3, int i20) {
                                if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                                }
                                Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                                final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                                Modifier.Companion companion2 = Modifier.Companion;
                                Alignment.Companion companion3 = Alignment.Companion;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                                Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                                ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor2);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                dm3Var3.invoke(columnScopeInstance, composer3, 6);
                                composer3.endNode();
                                Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                                ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                                if (composer3.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor3);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                                bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                                DialogTokens dialogTokens = DialogTokens.INSTANCE;
                                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                    public final void invoke(Composer composer4, int i21) {
                                        if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                            composer4.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                        }
                                        float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                        float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                        final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                        AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                            public final void invoke(Composer composer5, int i22) {
                                                if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                    composer5.skipToGroupEnd();
                                                    return;
                                                }
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                                }
                                                bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                                if (bm3Var12 == null) {
                                                    composer5.startReplaceGroup(322524505);
                                                } else {
                                                    composer5.startReplaceGroup(-266690648);
                                                    bm3Var12.invoke(composer5, 0);
                                                }
                                                composer5.endReplaceGroup();
                                                bm3Var11.invoke(composer5, 0);
                                                if (ComposerKt.isTraceInProgress()) {
                                                    ComposerKt.traceEventEnd();
                                                }
                                            }

                                            @Override // defpackage.bm3
                                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                                invoke(composer5, num.intValue());
                                                return j59.a;
                                            }
                                        }, composer4, 54), composer4, 438);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                        invoke(composer4, num.intValue());
                                        return j59.a;
                                    }
                                }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                composer3.endNode();
                                composer3.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 12582918, 104);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                dialogProperties2 = dialogProperties3;
                f2 = f3;
                bm3Var4 = bm3Var5;
                modifier3 = modifier4;
                shape3 = shape4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                bm3Var4 = bm3Var3;
                shape3 = shape2;
                f2 = fM3358getTonalElevationD9Ej5fM;
                dialogProperties2 = dialogProperties;
            }
            datePickerColors2 = datePickerColorsColors;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        i13 = i3;
        if ((i3 & 38347923) != 38347922) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i13 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    bm3Var3 = null;
                }
                if ((i2 & 16) != 0) {
                    i14 = i13 & (-57345);
                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                } else {
                    i14 = i13;
                }
                if (i8 != 0) {
                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                }
                if ((i2 & 64) != 0) {
                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i15 = i14 & (-3670017);
                } else {
                    i15 = i14;
                }
                if (i10 != 0) {
                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                    bm3Var5 = bm3Var3;
                    f3 = fM3358getTonalElevationD9Ej5fM;
                    i16 = i15;
                    modifier4 = modifier2;
                    shape4 = shape2;
                    z2 = false;
                } else {
                    dialogProperties3 = dialogProperties;
                    i16 = i15;
                    modifier4 = modifier2;
                    bm3Var5 = bm3Var3;
                    f3 = fM3358getTonalElevationD9Ej5fM;
                    z2 = false;
                    shape4 = shape2;
                }
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    bm3Var3 = null;
                }
                if ((i2 & 16) != 0) {
                    i14 = i13 & (-57345);
                    shape2 = DatePickerDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                } else {
                    i14 = i13;
                }
                if (i8 != 0) {
                    fM3358getTonalElevationD9Ej5fM = DatePickerDefaults.INSTANCE.m3358getTonalElevationD9Ej5fM();
                }
                if ((i2 & 64) != 0) {
                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i15 = i14 & (-3670017);
                } else {
                    i15 = i14;
                }
                if (i10 != 0) {
                    dialogProperties3 = new DialogProperties(false, false, false, 3, (jh2) null);
                    bm3Var5 = bm3Var3;
                    f3 = fM3358getTonalElevationD9Ej5fM;
                    i16 = i15;
                    modifier4 = modifier2;
                    shape4 = shape2;
                    z2 = false;
                } else {
                    dialogProperties3 = dialogProperties;
                    i16 = i15;
                    modifier4 = modifier2;
                    bm3Var5 = bm3Var3;
                    f3 = fM3358getTonalElevationD9Ej5fM;
                    z2 = false;
                    shape4 = shape2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(219718641, i16, -1, "androidx.compose.material3.DatePickerDialog (DatePickerDialog.android.kt:74)");
            }
            AlertDialogKt.BasicAlertDialog(ll3Var, SizeKt.wrapContentHeight$default(modifier4, null, z2, 3, null), dialogProperties3, ComposableLambdaKt.rememberComposableLambda(1108953335, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                public final void invoke(Composer composer2, int i19) {
                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1108953335, i19, -1, "androidx.compose.material3.DatePickerDialog.<anonymous> (DatePickerDialog.android.kt:80)");
                    }
                    Modifier.Companion companion = Modifier.Companion;
                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                    Modifier modifierM2087heightInVpY3zN4$default = SizeKt.m2087heightInVpY3zN4$default(SizeKt.m2096requiredWidth3ABfNKs(companion, datePickerModalTokens.m4687getContainerWidthD9Ej5fM()), 0.0f, datePickerModalTokens.m4686getContainerHeightD9Ej5fM(), 1, null);
                    Shape shape5 = shape4;
                    long jM3331getContainerColor0d7_KjU = datePickerColorsColors.m3331getContainerColor0d7_KjU();
                    float f4 = f3;
                    final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var2 = dm3Var;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var5;
                    final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierM2087heightInVpY3zN4$default, shape5, jM3331getContainerColor0d7_KjU, 0L, f4, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1782015378, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                        public final void invoke(Composer composer3, int i20) {
                            if (!composer3.shouldExecute((i20 & 3) != 2, i20 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1782015378, i20, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous> (DatePickerDialog.android.kt:88)");
                            }
                            Arrangement.HorizontalOrVertical spaceBetween = Arrangement.INSTANCE.getSpaceBetween();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var3 = dm3Var2;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var6;
                            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var7;
                            Modifier.Companion companion2 = Modifier.Companion;
                            Alignment.Companion companion3 = Alignment.Companion;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(spaceBetween, companion3.getStart(), composer3, 6);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion2);
                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion4.getConstructor();
                            if (composer3.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer3.startReusableNode();
                            if (composer3.getInserting()) {
                                composer3.createNode(constructor);
                            } else {
                                composer3.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
                            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                            Modifier modifierWeight = columnScopeInstance.weight(companion2, 1.0f, false);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                            CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierWeight);
                            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                            if (composer3.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer3.startReusableNode();
                            if (composer3.getInserting()) {
                                composer3.createNode(constructor2);
                            } else {
                                composer3.useNode();
                            }
                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            dm3Var3.invoke(columnScopeInstance, composer3, 6);
                            composer3.endNode();
                            Modifier modifierPadding = PaddingKt.padding(columnScopeInstance.align(companion2, companion3.getEnd()), DatePickerDialog_androidKt.DialogButtonsPadding);
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                            CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierPadding);
                            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                            if (composer3.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer3.startReusableNode();
                            if (composer3.getInserting()) {
                                composer3.createNode(constructor3);
                            } else {
                                composer3.useNode();
                            }
                            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                            DialogTokens dialogTokens = DialogTokens.INSTANCE;
                            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(ColorSchemeKt.getValue(dialogTokens.getActionLabelTextColor(), composer3, 6), TypographyKt.getValue(dialogTokens.getActionLabelTextFont(), composer3, 6), ComposableLambdaKt.rememberComposableLambda(-1103927529, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                public final void invoke(Composer composer4, int i21) {
                                    if (!composer4.shouldExecute((i21 & 3) != 2, i21 & 1)) {
                                        composer4.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1103927529, i21, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:101)");
                                    }
                                    float f5 = DatePickerDialog_androidKt.DialogButtonsMainAxisSpacing;
                                    float f6 = DatePickerDialog_androidKt.DialogButtonsCrossAxisSpacing;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                                    final bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var9;
                                    AlertDialogKt.m3072AlertDialogFlowRowixp7dh8(f5, f6, ComposableLambdaKt.rememberComposableLambda(-1980163584, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                        public final void invoke(Composer composer5, int i22) {
                                            if (!composer5.shouldExecute((i22 & 3) != 2, i22 & 1)) {
                                                composer5.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1980163584, i22, -1, "androidx.compose.material3.DatePickerDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePickerDialog.android.kt:105)");
                                            }
                                            bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                                            if (bm3Var12 == null) {
                                                composer5.startReplaceGroup(322524505);
                                            } else {
                                                composer5.startReplaceGroup(-266690648);
                                                bm3Var12.invoke(composer5, 0);
                                            }
                                            composer5.endReplaceGroup();
                                            bm3Var11.invoke(composer5, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer5, Integer num) {
                                            invoke(composer5, num.intValue());
                                            return j59.a;
                                        }
                                    }, composer4, 54), composer4, 438);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return j59.a;
                                }
                            }, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                            composer3.endNode();
                            composer3.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composer2, 54), composer2, 12582918, 104);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 14) | 3072 | ((i16 >> 15) & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            dialogProperties2 = dialogProperties3;
            f2 = f3;
            bm3Var4 = bm3Var5;
            modifier3 = modifier4;
            shape3 = shape4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            bm3Var4 = bm3Var3;
            shape3 = shape2;
            f2 = fM3358getTonalElevationD9Ej5fM;
            dialogProperties2 = dialogProperties;
        }
        datePickerColors2 = datePickerColorsColors;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x92
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerDialog_androidKt.DatePickerDialog_GmEhDVc$lambda$0(ll3Var, bm3Var, modifier3, bm3Var4, shape3, f2, datePickerColors2, dialogProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerDialog_GmEhDVc$lambda$0(ll3 ll3Var, bm3 bm3Var, Modifier modifier, bm3 bm3Var2, Shape shape, float f, DatePickerColors datePickerColors, DialogProperties dialogProperties, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m3359DatePickerDialogGmEhDVc(ll3Var, bm3Var, modifier, bm3Var2, shape, f, datePickerColors, dialogProperties, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}
