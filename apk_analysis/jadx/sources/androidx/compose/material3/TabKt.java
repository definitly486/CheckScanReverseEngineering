package androidx.compose.material3;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.TabKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.PrimaryNavigationTabTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.js2;
import defpackage.ll3;
import defpackage.tg;
import defpackage.ug;

/* JADX INFO: loaded from: classes2.dex */
public final class TabKt {
    private static final float SmallTabHeight = PrimaryNavigationTabTokens.INSTANCE.m5070getContainerHeightD9Ej5fM();
    private static final float LargeTabHeight = Dp.m9042constructorimpl(72.0f);
    private static final float HorizontalTextPadding = Dp.m9042constructorimpl(16.0f);
    private static final float SingleLineTextBaselineWithIcon = Dp.m9042constructorimpl(14.0f);
    private static final float DoubleLineTextBaselineWithIcon = Dp.m9042constructorimpl(6.0f);
    private static final long IconDistanceFromBaseline = TextUnitKt.getSp(20);
    private static final float TextDistanceFromLeadingIcon = Dp.m9042constructorimpl(8.0f);

    /* JADX WARN: Code duplicated, block: B:102:0x0119  */
    /* JADX WARN: Code duplicated, block: B:104:0x0126  */
    /* JADX WARN: Code duplicated, block: B:115:0x0145 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0147  */
    /* JADX WARN: Code duplicated, block: B:118:0x014c  */
    /* JADX WARN: Code duplicated, block: B:121:0x0151  */
    /* JADX WARN: Code duplicated, block: B:122:0x0162  */
    /* JADX WARN: Code duplicated, block: B:125:0x0168  */
    /* JADX WARN: Code duplicated, block: B:126:0x016c  */
    /* JADX WARN: Code duplicated, block: B:128:0x0171  */
    /* JADX WARN: Code duplicated, block: B:130:0x0176  */
    /* JADX WARN: Code duplicated, block: B:133:0x0183  */
    /* JADX WARN: Code duplicated, block: B:136:0x01db  */
    /* JADX WARN: Code duplicated, block: B:138:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:141:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:143:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00df  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:94:0x0100  */
    /* JADX WARN: Code duplicated, block: B:98:0x010e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0110  */
    /* JADX INFO: renamed from: LeadingIconTab-wqdebIU, reason: not valid java name */
    public static final void m3974LeadingIconTabwqdebIU(final boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Modifier modifier, boolean z2, long j, long j2, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        final boolean z3;
        int i3;
        final ll3<j59> ll3Var2;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        final Modifier modifier2;
        int i4;
        boolean z4;
        int i5;
        long jM6242unboximpl;
        int i6;
        int i7;
        int i8;
        boolean z5;
        Composer composer2;
        final MutableInteractionSource mutableInteractionSource2;
        final Modifier modifier3;
        final long j3;
        final long j4;
        final boolean z6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i9;
        int i10;
        long j5;
        final MutableInteractionSource mutableInteractionSource3;
        final boolean z7;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(-611535578);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            z3 = z;
        } else {
            z3 = z;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(z3) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
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
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
            bm3Var3 = bm3Var2;
        } else {
            bm3Var3 = bm3Var2;
            if ((i & 3072) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 2048 : 1024;
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
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i5 = 131072;
                    } else {
                        i5 = 65536;
                    }
                    i3 |= i5;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        jM6242unboximpl = j;
                        int i13 = composerStartRestartGroup.changed(jM6242unboximpl) ? 1048576 : 524288;
                        i3 |= i13;
                    } else {
                        jM6242unboximpl = j;
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                if ((12582912 & i) != 0) {
                    if ((i2 & 128) == 0 || !composerStartRestartGroup.changed(j2)) {
                        i11 = 4194304;
                    } else {
                        i11 = 8388608;
                    }
                    i3 |= i11;
                }
                i6 = i2 & 256;
                if (i6 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i7 = 67108864;
                    } else {
                        i7 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i7;
                }
                i8 = i3;
                if ((38347923 & i3) != 38347922) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i8 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i9 = i8 & (-3670017);
                        } else {
                            i9 = i8;
                        }
                        if ((i2 & 128) != 0) {
                            i10 = i9 & (-29360129);
                            j5 = jM6242unboximpl;
                        } else {
                            i10 = i9;
                            j5 = j2;
                        }
                        if (i6 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        z7 = z4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        int i14 = (i2 & 64) != 0 ? i8 & (-3670017) : i8;
                        if ((i2 & 128) != 0) {
                            i14 &= -29360129;
                        }
                        mutableInteractionSource3 = mutableInteractionSource;
                        i10 = i14;
                        z7 = z4;
                        j5 = j2;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-611535578, i10, -1, "androidx.compose.material3.LeadingIconTab (Tab.kt:164)");
                    }
                    long j6 = jM6242unboximpl;
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, j6, 2, null);
                    final bm3<? super Composer, ? super Integer, j59> bm3Var4 = bm3Var3;
                    int i15 = i10 >> 18;
                    long j7 = j5;
                    m3977TabTransitionKlgxPg(j6, j7, z, ComposableLambdaKt.rememberComposableLambda(1831009258, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$LeadingIconTab$1
                        public final void invoke(Composer composer3, int i16) {
                            if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1831009258, i16, -1, "androidx.compose.material3.LeadingIconTab.<anonymous> (Tab.kt:171)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(PaddingKt.m2035paddingVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(SizeKt.m2085height3ABfNKs(modifier2, TabKt.SmallTabHeight), z3, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default, z7, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), TabKt.getHorizontalTextPadding(), 0.0f, 2, null), 0.0f, 1, null);
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                            bm3<Composer, Integer, j59> bm3Var5 = bm3Var4;
                            bm3<Composer, Integer, j59> bm3Var6 = bm3Var;
                            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer3, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
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
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                            bm3Var5.invoke(composer3, 0);
                            SpacerKt.Spacer(SizeKt.m2096requiredWidth3ABfNKs(Modifier.Companion, TabKt.TextDistanceFromLeadingIcon), composer3, 6);
                            TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer3, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var6, composer3, 0);
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
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i15 & 112) | (i15 & 14) | 3072 | ((i10 << 6) & 896));
                    composer2 = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier2;
                    z6 = z7;
                    j4 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j3 = j6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    j3 = jM6242unboximpl;
                    j4 = j2;
                    z6 = z4;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.LeadingIconTab_wqdebIU$lambda$2(z, ll3Var, bm3Var, bm3Var2, modifier3, z6, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z4 = z2;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    jM6242unboximpl = j;
                    if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            if ((12582912 & i) != 0) {
                if ((i2 & 128) == 0) {
                    i11 = 4194304;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            i6 = i2 & 256;
            if (i6 != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i7 = 67108864;
                } else {
                    i7 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i7;
            }
            i8 = i3;
            if ((38347923 & i3) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i8 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i9 = i8 & (-3670017);
                    } else {
                        i9 = i8;
                    }
                    if ((i2 & 128) != 0) {
                        i10 = i9 & (-29360129);
                        j5 = jM6242unboximpl;
                    } else {
                        i10 = i9;
                        j5 = j2;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z7 = z4;
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i9 = i8 & (-3670017);
                    } else {
                        i9 = i8;
                    }
                    if ((i2 & 128) != 0) {
                        i10 = i9 & (-29360129);
                        j5 = jM6242unboximpl;
                    } else {
                        i10 = i9;
                        j5 = j2;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z7 = z4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-611535578, i10, -1, "androidx.compose.material3.LeadingIconTab (Tab.kt:164)");
                }
                long j8 = jM6242unboximpl;
                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default2 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, j8, 2, null);
                final bm3<? super Composer, ? super Integer, j59> bm3Var5 = bm3Var3;
                int i16 = i10 >> 18;
                long j9 = j5;
                m3977TabTransitionKlgxPg(j8, j9, z, ComposableLambdaKt.rememberComposableLambda(1831009258, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$LeadingIconTab$1
                    public final void invoke(Composer composer3, int i17) {
                        if (!composer3.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1831009258, i17, -1, "androidx.compose.material3.LeadingIconTab.<anonymous> (Tab.kt:171)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(PaddingKt.m2035paddingVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(SizeKt.m2085height3ABfNKs(modifier2, TabKt.SmallTabHeight), z3, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default2, z7, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), TabKt.getHorizontalTextPadding(), 0.0f, 2, null), 0.0f, 1, null);
                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                        Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                        bm3<Composer, Integer, j59> bm3Var6 = bm3Var5;
                        bm3<Composer, Integer, j59> bm3Var7 = bm3Var;
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer3, 54);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion.getConstructor();
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
                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                        bm3Var6.invoke(composer3, 0);
                        SpacerKt.Spacer(SizeKt.m2096requiredWidth3ABfNKs(Modifier.Companion, TabKt.TextDistanceFromLeadingIcon), composer3, 6);
                        TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer3, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer3, 0);
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
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 112) | (i16 & 14) | 3072 | ((i10 << 6) & 896));
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier2;
                z6 = z7;
                j4 = j9;
                mutableInteractionSource2 = mutableInteractionSource3;
                j3 = j8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                j3 = jM6242unboximpl;
                j4 = j2;
                z6 = z4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oi8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TabKt.LeadingIconTab_wqdebIU$lambda$2(z, ll3Var, bm3Var, bm3Var2, modifier3, z6, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        modifier2 = modifier;
        i4 = i2 & 32;
        if (i4 != 0) {
            if ((196608 & i) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i3 |= i5;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    jM6242unboximpl = j;
                    if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            if ((12582912 & i) != 0) {
                if ((i2 & 128) == 0) {
                    i11 = 4194304;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            i6 = i2 & 256;
            if (i6 != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i7 = 67108864;
                } else {
                    i7 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i7;
            }
            i8 = i3;
            if ((38347923 & i3) != 38347922) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i8 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i9 = i8 & (-3670017);
                    } else {
                        i9 = i8;
                    }
                    if ((i2 & 128) != 0) {
                        i10 = i9 & (-29360129);
                        j5 = jM6242unboximpl;
                    } else {
                        i10 = i9;
                        j5 = j2;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z7 = z4;
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i9 = i8 & (-3670017);
                    } else {
                        i9 = i8;
                    }
                    if ((i2 & 128) != 0) {
                        i10 = i9 & (-29360129);
                        j5 = jM6242unboximpl;
                    } else {
                        i10 = i9;
                        j5 = j2;
                    }
                    if (i6 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    z7 = z4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-611535578, i10, -1, "androidx.compose.material3.LeadingIconTab (Tab.kt:164)");
                }
                long j10 = jM6242unboximpl;
                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default3 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, j10, 2, null);
                final bm3<? super Composer, ? super Integer, j59> bm3Var6 = bm3Var3;
                int i17 = i10 >> 18;
                long j11 = j5;
                m3977TabTransitionKlgxPg(j10, j11, z, ComposableLambdaKt.rememberComposableLambda(1831009258, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$LeadingIconTab$1
                    public final void invoke(Composer composer3, int i18) {
                        if (!composer3.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1831009258, i18, -1, "androidx.compose.material3.LeadingIconTab.<anonymous> (Tab.kt:171)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(PaddingKt.m2035paddingVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(SizeKt.m2085height3ABfNKs(modifier2, TabKt.SmallTabHeight), z3, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default3, z7, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), TabKt.getHorizontalTextPadding(), 0.0f, 2, null), 0.0f, 1, null);
                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                        Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                        bm3<Composer, Integer, j59> bm3Var7 = bm3Var6;
                        bm3<Composer, Integer, j59> bm3Var8 = bm3Var;
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer3, 54);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion.getConstructor();
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
                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                        bm3Var7.invoke(composer3, 0);
                        SpacerKt.Spacer(SizeKt.m2096requiredWidth3ABfNKs(Modifier.Companion, TabKt.TextDistanceFromLeadingIcon), composer3, 6);
                        TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer3, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var8, composer3, 0);
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
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i17 & 112) | (i17 & 14) | 3072 | ((i10 << 6) & 896));
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier2;
                z6 = z7;
                j4 = j11;
                mutableInteractionSource2 = mutableInteractionSource3;
                j3 = j10;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                j3 = jM6242unboximpl;
                j4 = j2;
                z6 = z4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oi8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TabKt.LeadingIconTab_wqdebIU$lambda$2(z, ll3Var, bm3Var, bm3Var2, modifier3, z6, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z4 = z2;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                jM6242unboximpl = j;
                if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            i3 |= i13;
        } else {
            jM6242unboximpl = j;
        }
        if ((12582912 & i) != 0) {
            if ((i2 & 128) == 0) {
                i11 = 4194304;
            } else {
                i11 = 4194304;
            }
            i3 |= i11;
        }
        i6 = i2 & 256;
        if (i6 != 0) {
            i3 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                i7 = 67108864;
            } else {
                i7 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i7;
        }
        i8 = i3;
        if ((38347923 & i3) != 38347922) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i8 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z4 = true;
                }
                if ((i2 & 64) != 0) {
                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                    i9 = i8 & (-3670017);
                } else {
                    i9 = i8;
                }
                if ((i2 & 128) != 0) {
                    i10 = i9 & (-29360129);
                    j5 = jM6242unboximpl;
                } else {
                    i10 = i9;
                    j5 = j2;
                }
                if (i6 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                z7 = z4;
            } else {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z4 = true;
                }
                if ((i2 & 64) != 0) {
                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                    i9 = i8 & (-3670017);
                } else {
                    i9 = i8;
                }
                if ((i2 & 128) != 0) {
                    i10 = i9 & (-29360129);
                    j5 = jM6242unboximpl;
                } else {
                    i10 = i9;
                    j5 = j2;
                }
                if (i6 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                z7 = z4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-611535578, i10, -1, "androidx.compose.material3.LeadingIconTab (Tab.kt:164)");
            }
            long j12 = jM6242unboximpl;
            final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default4 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, j12, 2, null);
            final bm3<? super Composer, ? super Integer, j59> bm3Var7 = bm3Var3;
            int i18 = i10 >> 18;
            long j13 = j5;
            m3977TabTransitionKlgxPg(j12, j13, z, ComposableLambdaKt.rememberComposableLambda(1831009258, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$LeadingIconTab$1
                public final void invoke(Composer composer3, int i19) {
                    if (!composer3.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1831009258, i19, -1, "androidx.compose.material3.LeadingIconTab.<anonymous> (Tab.kt:171)");
                    }
                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(PaddingKt.m2035paddingVpY3zN4$default(SelectableKt.m2312selectableO2vRcR0(SizeKt.m2085height3ABfNKs(modifier2, TabKt.SmallTabHeight), z3, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default4, z7, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), TabKt.getHorizontalTextPadding(), 0.0f, 2, null), 0.0f, 1, null);
                    Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                    Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                    bm3<Composer, Integer, j59> bm3Var8 = bm3Var7;
                    bm3<Composer, Integer, j59> bm3Var9 = bm3Var;
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, centerVertically, composer3, 54);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default);
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion.getConstructor();
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
                    bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                    bm3Var8.invoke(composer3, 0);
                    SpacerKt.Spacer(SizeKt.m2096requiredWidth3ABfNKs(Modifier.Companion, TabKt.TextDistanceFromLeadingIcon), composer3, 6);
                    TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer3, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var9, composer3, 0);
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
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 112) | (i18 & 14) | 3072 | ((i10 << 6) & 896));
            composer2 = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier2;
            z6 = z7;
            j4 = j13;
            mutableInteractionSource2 = mutableInteractionSource3;
            j3 = j12;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            mutableInteractionSource2 = mutableInteractionSource;
            modifier3 = modifier2;
            j3 = jM6242unboximpl;
            j4 = j2;
            z6 = z4;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oi8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TabKt.LeadingIconTab_wqdebIU$lambda$2(z, ll3Var, bm3Var, bm3Var2, modifier3, z6, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LeadingIconTab_wqdebIU$lambda$2(boolean z, ll3 ll3Var, bm3 bm3Var, bm3 bm3Var2, Modifier modifier, boolean z2, long j, long j2, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        m3974LeadingIconTabwqdebIU(z, ll3Var, bm3Var, bm3Var2, modifier, z2, j, j2, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0129 A[PHI: r0 r4 r8 r9 r13
      0x0129: PHI (r0v28 int) = (r0v16 int), (r0v32 int), (r0v33 int) binds: [B:120:0x015b, B:105:0x0126, B:106:0x0128] A[DONT_GENERATE, DONT_INLINE]
      0x0129: PHI (r4v8 androidx.compose.ui.Modifier) = (r4v5 androidx.compose.ui.Modifier), (r4v2 androidx.compose.ui.Modifier), (r4v2 androidx.compose.ui.Modifier) binds: [B:120:0x015b, B:105:0x0126, B:106:0x0128] A[DONT_GENERATE, DONT_INLINE]
      0x0129: PHI (r8v9 boolean) = (r8v3 boolean), (r8v2 boolean), (r8v2 boolean) binds: [B:120:0x015b, B:105:0x0126, B:106:0x0128] A[DONT_GENERATE, DONT_INLINE]
      0x0129: PHI (r9v13 long) = (r9v9 long), (r9v6 long), (r9v6 long) binds: [B:120:0x015b, B:105:0x0126, B:106:0x0128] A[DONT_GENERATE, DONT_INLINE]
      0x0129: PHI (r13v9 long) = (r13v5 long), (r13v3 long), (r13v3 long) binds: [B:120:0x015b, B:105:0x0126, B:106:0x0128] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:109:0x0136 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x0138  */
    /* JADX WARN: Code duplicated, block: B:112:0x013d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0142  */
    /* JADX WARN: Code duplicated, block: B:116:0x0153  */
    /* JADX WARN: Code duplicated, block: B:119:0x0159  */
    /* JADX WARN: Code duplicated, block: B:121:0x015d  */
    /* JADX WARN: Code duplicated, block: B:124:0x016f  */
    /* JADX WARN: Code duplicated, block: B:127:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:129:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:132:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:28:0x004c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:32:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:39:0x0067  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0081  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x0099  */
    /* JADX WARN: Code duplicated, block: B:61:0x009d  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:95:0x0104  */
    /* JADX WARN: Code duplicated, block: B:97:0x0111  */
    /* JADX INFO: renamed from: Tab-bogVsAg, reason: not valid java name */
    public static final void m3975TabbogVsAg(final boolean z, final ll3<j59> ll3Var, Modifier modifier, boolean z2, long j, long j2, MutableInteractionSource mutableInteractionSource, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        boolean z3;
        int i3;
        int i4;
        Modifier modifier2;
        int i5;
        int i6;
        boolean z4;
        int i7;
        long jM6242unboximpl;
        long j3;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z5;
        final Modifier modifier3;
        final boolean z6;
        final long j4;
        final long j5;
        final MutableInteractionSource mutableInteractionSource2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i12;
        final Modifier modifier4;
        long j6;
        final MutableInteractionSource mutableInteractionSource3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1573136853);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            z3 = z;
        } else {
            z3 = z;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(z3) ? 4 : 2) | i;
            } else {
                i3 = i;
            }
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
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
                        z4 = z2;
                        if (composerStartRestartGroup.changed(z4)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    if ((i & 24576) == 0) {
                        if ((i2 & 16) == 0) {
                            jM6242unboximpl = j;
                            int i13 = composerStartRestartGroup.changed(jM6242unboximpl) ? 16384 : 8192;
                            i3 |= i13;
                        } else {
                            jM6242unboximpl = j;
                        }
                        i3 |= i13;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            j3 = j2;
                            int i14 = composerStartRestartGroup.changed(j3) ? 131072 : 65536;
                            i3 |= i14;
                        } else {
                            j3 = j2;
                        }
                        i3 |= i14;
                    } else {
                        j3 = j2;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i2 & 128) != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i10 = 8388608;
                            } else {
                                i10 = 4194304;
                            }
                            i3 |= i10;
                        }
                        i11 = i3;
                        if ((i3 & 4793491) != 4793490) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i6 != 0) {
                                    z4 = true;
                                }
                                if ((i2 & 16) != 0) {
                                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                    i12 = i11 & (-57345);
                                } else {
                                    i12 = i11;
                                }
                                if ((i2 & 32) != 0) {
                                    i12 &= -458753;
                                    j3 = jM6242unboximpl;
                                }
                                if (i8 != 0) {
                                    modifier4 = modifier2;
                                    j6 = j3;
                                    mutableInteractionSource3 = null;
                                }
                                final boolean z7 = z4;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                                }
                                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                                final boolean z8 = z3;
                                int i15 = i12 >> 12;
                                m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                                    public final void invoke(Composer composer2, int i16) {
                                        if (!composer2.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1128552423, i16, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                                        }
                                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z8, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default, z7, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                                        Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                                        dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                        ll3<ComposeUiNode> constructor = companion.getConstructor();
                                        if (composer2.getApplier() == null) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer2.startReusableNode();
                                        if (composer2.getInserting()) {
                                            composer2.createNode(constructor);
                                        } else {
                                            composer2.useNode();
                                        }
                                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                        }
                                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                        dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                                        composer2.endNode();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                        invoke(composer2, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i15 & 112) | (i15 & 14) | 3072 | ((i12 << 6) & 896));
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                j4 = jM6242unboximpl;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                j5 = j6;
                                modifier3 = modifier4;
                                z6 = z7;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                i12 = (i2 & 16) != 0 ? i11 & (-57345) : i11;
                                if ((i2 & 32) != 0) {
                                    i12 &= -458753;
                                }
                            }
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                            final boolean z9 = z4;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                            }
                            final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default2 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                            final boolean z10 = z3;
                            int i16 = i12 >> 12;
                            m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                                public final void invoke(Composer composer2, int i17) {
                                    if (!composer2.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1128552423, i17, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                                    }
                                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z10, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default2, z9, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                                    Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                                    Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                                    dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                    CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                    ll3<ComposeUiNode> constructor = companion.getConstructor();
                                    if (composer2.getApplier() == null) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer2.startReusableNode();
                                    if (composer2.getInserting()) {
                                        composer2.createNode(constructor);
                                    } else {
                                        composer2.useNode();
                                    }
                                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                                    bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                    dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                                    composer2.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i16 & 112) | (i16 & 14) | 3072 | ((i12 << 6) & 896));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            j4 = jM6242unboximpl;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            j5 = j6;
                            modifier3 = modifier4;
                            z6 = z9;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            z6 = z4;
                            j4 = jM6242unboximpl;
                            j5 = j3;
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        final boolean z11 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                        }
                        final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default3 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                        final boolean z12 = z3;
                        int i17 = i12 >> 12;
                        m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                            public final void invoke(Composer composer2, int i18) {
                                if (!composer2.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1128552423, i18, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                                }
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z12, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default3, z11, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                                Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                                Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion.getConstructor();
                                if (composer2.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer2.startReusableNode();
                                if (composer2.getInserting()) {
                                    composer2.createNode(constructor);
                                } else {
                                    composer2.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                                composer2.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i17 & 112) | (i17 & 14) | 3072 | ((i12 << 6) & 896));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j4 = jM6242unboximpl;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        j5 = j6;
                        modifier3 = modifier4;
                        z6 = z11;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z6 = z4;
                        j4 = jM6242unboximpl;
                        j5 = j3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 3072;
                z4 = z2;
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        jM6242unboximpl = j;
                        if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                        }
                        i3 |= i13;
                    } else {
                        jM6242unboximpl = j;
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        j3 = j2;
                        if (composerStartRestartGroup.changed(j3)) {
                        }
                        i3 |= i14;
                    } else {
                        j3 = j2;
                    }
                    i3 |= i14;
                } else {
                    j3 = j2;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        final boolean z13 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                        }
                        final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default4 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                        final boolean z14 = z3;
                        int i18 = i12 >> 12;
                        m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                            public final void invoke(Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1128552423, i19, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                                }
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z14, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default4, z13, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                                Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                                Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion.getConstructor();
                                if (composer2.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer2.startReusableNode();
                                if (composer2.getInserting()) {
                                    composer2.createNode(constructor);
                                } else {
                                    composer2.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                                composer2.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 112) | (i18 & 14) | 3072 | ((i12 << 6) & 896));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j4 = jM6242unboximpl;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        j5 = j6;
                        modifier3 = modifier4;
                        z6 = z13;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z6 = z4;
                        j4 = jM6242unboximpl;
                        j5 = j3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    final boolean z15 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                    }
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default5 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                    final boolean z16 = z3;
                    int i19 = i12 >> 12;
                    m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                        public final void invoke(Composer composer2, int i110) {
                            if (!composer2.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1128552423, i110, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z16, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default5, z15, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                            composer2.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i19 & 112) | (i19 & 14) | 3072 | ((i12 << 6) & 896));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j4 = jM6242unboximpl;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j5 = j6;
                    modifier3 = modifier4;
                    z6 = z15;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z4;
                    j4 = jM6242unboximpl;
                    j5 = j3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        jM6242unboximpl = j;
                        if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                        }
                        i3 |= i13;
                    } else {
                        jM6242unboximpl = j;
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        j3 = j2;
                        if (composerStartRestartGroup.changed(j3)) {
                        }
                        i3 |= i14;
                    } else {
                        j3 = j2;
                    }
                    i3 |= i14;
                } else {
                    j3 = j2;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        final boolean z17 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                        }
                        final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default6 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                        final boolean z18 = z3;
                        int i110 = i12 >> 12;
                        m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                            public final void invoke(Composer composer2, int i111) {
                                if (!composer2.shouldExecute((i111 & 3) != 2, i111 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1128552423, i111, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                                }
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z18, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default6, z17, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                                Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                                Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion.getConstructor();
                                if (composer2.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer2.startReusableNode();
                                if (composer2.getInserting()) {
                                    composer2.createNode(constructor);
                                } else {
                                    composer2.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                                composer2.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i110 & 112) | (i110 & 14) | 3072 | ((i12 << 6) & 896));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j4 = jM6242unboximpl;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        j5 = j6;
                        modifier3 = modifier4;
                        z6 = z17;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z6 = z4;
                        j4 = jM6242unboximpl;
                        j5 = j3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    final boolean z19 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                    }
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default7 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                    final boolean z110 = z3;
                    int i111 = i12 >> 12;
                    m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                        public final void invoke(Composer composer2, int i112) {
                            if (!composer2.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1128552423, i112, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z110, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default7, z19, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                            composer2.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i111 & 112) | (i111 & 14) | 3072 | ((i12 << 6) & 896));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j4 = jM6242unboximpl;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j5 = j6;
                    modifier3 = modifier4;
                    z6 = z19;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z4;
                    j4 = jM6242unboximpl;
                    j5 = j3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z4 = z2;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    jM6242unboximpl = j;
                    if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    j3 = j2;
                    if (composerStartRestartGroup.changed(j3)) {
                    }
                    i3 |= i14;
                } else {
                    j3 = j2;
                }
                i3 |= i14;
            } else {
                j3 = j2;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    final boolean z111 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                    }
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default8 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                    final boolean z112 = z3;
                    int i112 = i12 >> 12;
                    m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                        public final void invoke(Composer composer2, int i113) {
                            if (!composer2.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1128552423, i113, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z112, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default8, z111, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                            composer2.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i112 & 112) | (i112 & 14) | 3072 | ((i12 << 6) & 896));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j4 = jM6242unboximpl;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j5 = j6;
                    modifier3 = modifier4;
                    z6 = z111;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z4;
                    j4 = jM6242unboximpl;
                    j5 = j3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                final boolean z113 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                }
                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default9 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                final boolean z114 = z3;
                int i113 = i12 >> 12;
                m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                    public final void invoke(Composer composer2, int i114) {
                        if (!composer2.shouldExecute((i114 & 3) != 2, i114 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1128552423, i114, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z114, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default9, z113, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                        Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                        dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i113 & 112) | (i113 & 14) | 3072 | ((i12 << 6) & 896));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j4 = jM6242unboximpl;
                mutableInteractionSource2 = mutableInteractionSource3;
                j5 = j6;
                modifier3 = modifier4;
                z6 = z113;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z4;
                j4 = jM6242unboximpl;
                j5 = j3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
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
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        jM6242unboximpl = j;
                        if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                        }
                        i3 |= i13;
                    } else {
                        jM6242unboximpl = j;
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        j3 = j2;
                        if (composerStartRestartGroup.changed(j3)) {
                        }
                        i3 |= i14;
                    } else {
                        j3 = j2;
                    }
                    i3 |= i14;
                } else {
                    j3 = j2;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i2 & 128) != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i3 |= i10;
                    }
                    i11 = i3;
                    if ((i3 & 4793491) != 4793490) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                z4 = true;
                            }
                            if ((i2 & 16) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i12 = i11 & (-57345);
                            } else {
                                i12 = i11;
                            }
                            if ((i2 & 32) != 0) {
                                i12 &= -458753;
                                j3 = jM6242unboximpl;
                            }
                            if (i8 != 0) {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = null;
                            } else {
                                modifier4 = modifier2;
                                j6 = j3;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        final boolean z115 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                        }
                        final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default10 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                        final boolean z116 = z3;
                        int i114 = i12 >> 12;
                        m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                            public final void invoke(Composer composer2, int i115) {
                                if (!composer2.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1128552423, i115, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                                }
                                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z116, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default10, z115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                                Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                                Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                                dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion.getConstructor();
                                if (composer2.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer2.startReusableNode();
                                if (composer2.getInserting()) {
                                    composer2.createNode(constructor);
                                } else {
                                    composer2.useNode();
                                }
                                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                                dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                                composer2.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i114 & 112) | (i114 & 14) | 3072 | ((i12 << 6) & 896));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j4 = jM6242unboximpl;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        j5 = j6;
                        modifier3 = modifier4;
                        z6 = z115;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z6 = z4;
                        j4 = jM6242unboximpl;
                        j5 = j3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    final boolean z117 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                    }
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default11 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                    final boolean z118 = z3;
                    int i115 = i12 >> 12;
                    m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                        public final void invoke(Composer composer2, int i116) {
                            if (!composer2.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1128552423, i116, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z118, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default11, z117, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                            composer2.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i115 & 112) | (i115 & 14) | 3072 | ((i12 << 6) & 896));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j4 = jM6242unboximpl;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j5 = j6;
                    modifier3 = modifier4;
                    z6 = z117;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z4;
                    j4 = jM6242unboximpl;
                    j5 = j3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z4 = z2;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    jM6242unboximpl = j;
                    if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    j3 = j2;
                    if (composerStartRestartGroup.changed(j3)) {
                    }
                    i3 |= i14;
                } else {
                    j3 = j2;
                }
                i3 |= i14;
            } else {
                j3 = j2;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    final boolean z119 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                    }
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default12 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                    final boolean z1110 = z3;
                    int i116 = i12 >> 12;
                    m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                        public final void invoke(Composer composer2, int i117) {
                            if (!composer2.shouldExecute((i117 & 3) != 2, i117 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1128552423, i117, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z1110, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default12, z119, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                            composer2.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i116 & 112) | (i116 & 14) | 3072 | ((i12 << 6) & 896));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j4 = jM6242unboximpl;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j5 = j6;
                    modifier3 = modifier4;
                    z6 = z119;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z4;
                    j4 = jM6242unboximpl;
                    j5 = j3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                final boolean z1111 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                }
                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default13 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                final boolean z1112 = z3;
                int i117 = i12 >> 12;
                m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                    public final void invoke(Composer composer2, int i118) {
                        if (!composer2.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1128552423, i118, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z1112, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default13, z1111, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                        Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                        dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i117 & 112) | (i117 & 14) | 3072 | ((i12 << 6) & 896));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j4 = jM6242unboximpl;
                mutableInteractionSource2 = mutableInteractionSource3;
                j5 = j6;
                modifier3 = modifier4;
                z6 = z1111;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z4;
                j4 = jM6242unboximpl;
                j5 = j3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    jM6242unboximpl = j;
                    if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                    }
                    i3 |= i13;
                } else {
                    jM6242unboximpl = j;
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    j3 = j2;
                    if (composerStartRestartGroup.changed(j3)) {
                    }
                    i3 |= i14;
                } else {
                    j3 = j2;
                }
                i3 |= i14;
            } else {
                j3 = j2;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i2 & 128) != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i3 |= i10;
                }
                i11 = i3;
                if ((i3 & 4793491) != 4793490) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            z4 = true;
                        }
                        if ((i2 & 16) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i12 = i11 & (-57345);
                        } else {
                            i12 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i12 &= -458753;
                            j3 = jM6242unboximpl;
                        }
                        if (i8 != 0) {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = null;
                        } else {
                            modifier4 = modifier2;
                            j6 = j3;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    final boolean z1113 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                    }
                    final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default14 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                    final boolean z1114 = z3;
                    int i118 = i12 >> 12;
                    m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                        public final void invoke(Composer composer2, int i119) {
                            if (!composer2.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1128552423, i119, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                            }
                            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z1114, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default14, z1113, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                            Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                            dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor = companion.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                            composer2.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i118 & 112) | (i118 & 14) | 3072 | ((i12 << 6) & 896));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j4 = jM6242unboximpl;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    j5 = j6;
                    modifier3 = modifier4;
                    z6 = z1113;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z4;
                    j4 = jM6242unboximpl;
                    j5 = j3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                final boolean z1115 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                }
                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default15 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                final boolean z1116 = z3;
                int i119 = i12 >> 12;
                m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                    public final void invoke(Composer composer2, int i1110) {
                        if (!composer2.shouldExecute((i1110 & 3) != 2, i1110 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1128552423, i1110, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z1116, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default15, z1115, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                        Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                        dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i119 & 112) | (i119 & 14) | 3072 | ((i12 << 6) & 896));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j4 = jM6242unboximpl;
                mutableInteractionSource2 = mutableInteractionSource3;
                j5 = j6;
                modifier3 = modifier4;
                z6 = z1115;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z4;
                j4 = jM6242unboximpl;
                j5 = j3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z4 = z2;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                jM6242unboximpl = j;
                if (composerStartRestartGroup.changed(jM6242unboximpl)) {
                }
                i3 |= i13;
            } else {
                jM6242unboximpl = j;
            }
            i3 |= i13;
        } else {
            jM6242unboximpl = j;
        }
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                j3 = j2;
                if (composerStartRestartGroup.changed(j3)) {
                }
                i3 |= i14;
            } else {
                j3 = j2;
            }
            i3 |= i14;
        } else {
            j3 = j2;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i3 |= i9;
        }
        if ((i2 & 128) != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i3 |= i10;
            }
            i11 = i3;
            if ((i3 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i4 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        z4 = true;
                    }
                    if ((i2 & 16) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i12 = i11 & (-57345);
                    } else {
                        i12 = i11;
                    }
                    if ((i2 & 32) != 0) {
                        i12 &= -458753;
                        j3 = jM6242unboximpl;
                    }
                    if (i8 != 0) {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = null;
                    } else {
                        modifier4 = modifier2;
                        j6 = j3;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                final boolean z1117 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
                }
                final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default16 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
                final boolean z1118 = z3;
                int i1110 = i12 >> 12;
                m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                    public final void invoke(Composer composer2, int i1111) {
                        if (!composer2.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1128552423, i1111, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                        }
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z1118, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default16, z1117, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                        Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                        Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                        dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor = companion.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i1110 & 112) | (i1110 & 14) | 3072 | ((i12 << 6) & 896));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j4 = jM6242unboximpl;
                mutableInteractionSource2 = mutableInteractionSource3;
                j5 = j6;
                modifier3 = modifier4;
                z6 = z1117;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z4;
                j4 = jM6242unboximpl;
                j5 = j3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        i11 = i3;
        if ((i3 & 4793491) != 4793490) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i11 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    z4 = true;
                }
                if ((i2 & 16) != 0) {
                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                    i12 = i11 & (-57345);
                } else {
                    i12 = i11;
                }
                if ((i2 & 32) != 0) {
                    i12 &= -458753;
                    j3 = jM6242unboximpl;
                }
                if (i8 != 0) {
                    modifier4 = modifier2;
                    j6 = j3;
                    mutableInteractionSource3 = null;
                } else {
                    modifier4 = modifier2;
                    j6 = j3;
                    mutableInteractionSource3 = mutableInteractionSource;
                }
            } else {
                if (i4 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    z4 = true;
                }
                if ((i2 & 16) != 0) {
                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                    i12 = i11 & (-57345);
                } else {
                    i12 = i11;
                }
                if ((i2 & 32) != 0) {
                    i12 &= -458753;
                    j3 = jM6242unboximpl;
                }
                if (i8 != 0) {
                    modifier4 = modifier2;
                    j6 = j3;
                    mutableInteractionSource3 = null;
                } else {
                    modifier4 = modifier2;
                    j6 = j3;
                    mutableInteractionSource3 = mutableInteractionSource;
                }
            }
            final boolean z1119 = z4;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1573136853, i12, -1, "androidx.compose.material3.Tab (Tab.kt:237)");
            }
            final IndicationNodeFactory indicationNodeFactoryM3775rippleH2RKhps$default17 = RippleKt.m3775rippleH2RKhps$default(true, 0.0f, jM6242unboximpl, 2, null);
            final boolean z11110 = z3;
            int i1111 = i12 >> 12;
            m3977TabTransitionKlgxPg(jM6242unboximpl, j6, z, ComposableLambdaKt.rememberComposableLambda(1128552423, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$3
                public final void invoke(Composer composer2, int i1112) {
                    if (!composer2.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1128552423, i1112, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:244)");
                    }
                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SelectableKt.m2312selectableO2vRcR0(modifier4, z11110, mutableInteractionSource3, indicationNodeFactoryM3775rippleH2RKhps$default17, z1119, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), 0.0f, 1, null);
                    Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                    Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
                    dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center, centerHorizontally, composer2, 54);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierFillMaxWidth$default);
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                    bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                    dm3Var2.invoke(ColumnScopeInstance.INSTANCE, composer2, 6);
                    composer2.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i1111 & 112) | (i1111 & 14) | 3072 | ((i12 << 6) & 896));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j4 = jM6242unboximpl;
            mutableInteractionSource2 = mutableInteractionSource3;
            j5 = j6;
            modifier3 = modifier4;
            z6 = z1119;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            z6 = z4;
            j4 = jM6242unboximpl;
            j5 = j3;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mi8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TabKt.Tab_bogVsAg$lambda$3(z, ll3Var, modifier3, z6, j4, j5, mutableInteractionSource2, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0111  */
    /* JADX WARN: Code duplicated, block: B:103:0x011a  */
    /* JADX WARN: Code duplicated, block: B:105:0x0129  */
    /* JADX WARN: Code duplicated, block: B:116:0x014a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x014c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0151  */
    /* JADX WARN: Code duplicated, block: B:121:0x0154  */
    /* JADX WARN: Code duplicated, block: B:123:0x0158  */
    /* JADX WARN: Code duplicated, block: B:126:0x015e  */
    /* JADX WARN: Code duplicated, block: B:127:0x016f  */
    /* JADX WARN: Code duplicated, block: B:130:0x0175  */
    /* JADX WARN: Code duplicated, block: B:131:0x017b  */
    /* JADX WARN: Code duplicated, block: B:134:0x0186  */
    /* JADX WARN: Code duplicated, block: B:135:0x018b  */
    /* JADX WARN: Code duplicated, block: B:138:0x0197  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:143:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:146:0x0200  */
    /* JADX WARN: Code duplicated, block: B:148:0x020e  */
    /* JADX WARN: Code duplicated, block: B:151:0x0222  */
    /* JADX WARN: Code duplicated, block: B:153:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006a  */
    /* JADX WARN: Code duplicated, block: B:40:0x006e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:43:0x0079  */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:65:0x00af  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:89:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:95:0x0102  */
    /* JADX WARN: Code duplicated, block: B:99:0x010f  */
    /* JADX INFO: renamed from: Tab-wqdebIU, reason: not valid java name */
    public static final void m3976TabwqdebIU(final boolean z, final ll3<j59> ll3Var, Modifier modifier, boolean z2, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, long j, long j2, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        boolean z3;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i7;
        int i8;
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        int i9;
        int i10;
        int i11;
        boolean z4;
        final long j3;
        final MutableInteractionSource mutableInteractionSource2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        final Modifier modifier3;
        final boolean z5;
        final bm3<? super Composer, ? super Integer, j59> bm3Var6;
        final long j4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        ComposableLambda composableLambdaRememberComposableLambda;
        long jM6242unboximpl;
        long j5;
        Modifier modifier4;
        boolean z6;
        long j6;
        int i12;
        final bm3<? super Composer, ? super Integer, j59> bm3Var7;
        final bm3<? super Composer, ? super Integer, j59> bm3Var8;
        long j7;
        MutableInteractionSource mutableInteractionSource3;
        int i13;
        int i14;
        Composer composerStartRestartGroup = composer.startRestartGroup(1015017965);
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
        int i15 = i2 & 4;
        if (i15 == 0) {
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
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var3 = bm3Var;
                        if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        if ((196608 & i) == 0) {
                            bm3Var4 = bm3Var2;
                            if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                        if ((1572864 & i) != 0) {
                            if ((i2 & 64) == 0 || !composerStartRestartGroup.changed(j)) {
                                i14 = 524288;
                            } else {
                                i14 = 1048576;
                            }
                            i3 |= i14;
                        }
                        if ((i & 12582912) != 0) {
                            if ((i2 & 128) == 0 || !composerStartRestartGroup.changed(j2)) {
                                i13 = 4194304;
                            } else {
                                i13 = 8388608;
                            }
                            i3 |= i13;
                        }
                        i10 = i2 & 256;
                        if (i10 != 0) {
                            i3 |= 100663296;
                        } else if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((38347923 & i3) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            composableLambdaRememberComposableLambda = null;
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i15 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    z3 = true;
                                }
                                if (i6 != 0) {
                                    bm3Var3 = null;
                                }
                                if (i8 != 0) {
                                    bm3Var4 = null;
                                }
                                if ((i2 & 64) != 0) {
                                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                    i3 &= -3670017;
                                } else {
                                    jM6242unboximpl = j;
                                }
                                if ((i2 & 128) != 0) {
                                    i3 &= -29360129;
                                    j5 = jM6242unboximpl;
                                } else {
                                    j5 = j2;
                                }
                                long j8 = j5;
                                modifier4 = modifier2;
                                z6 = z3;
                                j6 = j8;
                                i12 = i3;
                                bm3Var7 = bm3Var3;
                                bm3Var8 = bm3Var4;
                                if (i10 != 0) {
                                    mutableInteractionSource3 = null;
                                    j7 = jM6242unboximpl;
                                } else {
                                    j7 = jM6242unboximpl;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                                }
                                if (bm3Var7 == null) {
                                    composerStartRestartGroup.startReplaceGroup(1830899669);
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(1830899670);
                                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                                        public final void invoke(Composer composer2, int i16) {
                                            if (!composer2.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                                                composer2.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1745256900, i16, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                            }
                                            TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                            invoke(composer2, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, 54);
                                }
                                composerStartRestartGroup.endReplaceGroup();
                                final ComposableLambda composableLambda = composableLambdaRememberComposableLambda;
                                Modifier modifier5 = modifier4;
                                int i16 = i12 >> 6;
                                bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var8;
                                m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                                    public final void invoke(ColumnScope columnScope, Composer composer2, int i17) {
                                        if (!composer2.shouldExecute((i17 & 17) != 16, i17 & 1)) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-906085472, i17, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                                        }
                                        TabKt.TabBaselineLayout(composableLambda, bm3Var8, composer2, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                                        invoke(columnScope, composer2, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i16) | (458752 & i16) | (i16 & 3670016), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                long j9 = j6;
                                bm3Var6 = bm3Var9;
                                z5 = z6;
                                j4 = j9;
                                j3 = j7;
                                mutableInteractionSource2 = mutableInteractionSource3;
                                modifier3 = modifier5;
                                bm3Var5 = bm3Var7;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                }
                                if ((i2 & 128) != 0) {
                                    i3 &= -29360129;
                                }
                                j7 = j;
                                i12 = i3;
                                modifier4 = modifier2;
                                z6 = z3;
                                bm3Var7 = bm3Var3;
                                bm3Var8 = bm3Var4;
                                j6 = j2;
                            }
                            mutableInteractionSource3 = mutableInteractionSource;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                            }
                            if (bm3Var7 == null) {
                                composerStartRestartGroup.startReplaceGroup(1830899669);
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1830899670);
                                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                                    public final void invoke(Composer composer2, int i17) {
                                        if (!composer2.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1745256900, i17, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                        }
                                        TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                        invoke(composer2, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            final bm3<? super Composer, ? super Integer, j59> composableLambda2 = composableLambdaRememberComposableLambda;
                            Modifier modifier6 = modifier4;
                            int i17 = i12 >> 6;
                            bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var8;
                            m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                                public final void invoke(ColumnScope columnScope, Composer composer2, int i18) {
                                    if (!composer2.shouldExecute((i18 & 17) != 16, i18 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-906085472, i18, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                                    }
                                    TabKt.TabBaselineLayout(composableLambda2, bm3Var8, composer2, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                                    invoke(columnScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i17) | (458752 & i17) | (i17 & 3670016), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            long j10 = j6;
                            bm3Var6 = bm3Var10;
                            z5 = z6;
                            j4 = j10;
                            j3 = j7;
                            mutableInteractionSource2 = mutableInteractionSource3;
                            modifier3 = modifier6;
                            bm3Var5 = bm3Var7;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            j3 = j;
                            mutableInteractionSource2 = mutableInteractionSource;
                            bm3Var5 = bm3Var3;
                            modifier3 = modifier2;
                            z5 = z3;
                            bm3Var6 = bm3Var4;
                            j4 = j2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    boolean z7 = z;
                                    ll3 ll3Var2 = ll3Var;
                                    bm3 bm3Var11 = bm3Var5;
                                    bm3 bm3Var12 = bm3Var6;
                                    return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var11, bm3Var12, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    bm3Var4 = bm3Var2;
                    if ((1572864 & i) != 0) {
                        if ((i2 & 64) == 0) {
                            i14 = 524288;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    }
                    if ((i & 12582912) != 0) {
                        if ((i2 & 128) == 0) {
                            i13 = 4194304;
                        } else {
                            i13 = 4194304;
                        }
                        i3 |= i13;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        i3 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((38347923 & i3) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        composableLambdaRememberComposableLambda = null;
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j11 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j11;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j12 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j12;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                        }
                        if (bm3Var7 == null) {
                            composerStartRestartGroup.startReplaceGroup(1830899669);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1830899670);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                                public final void invoke(Composer composer2, int i18) {
                                    if (!composer2.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1745256900, i18, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                    }
                                    TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        final bm3<? super Composer, ? super Integer, j59> composableLambda3 = composableLambdaRememberComposableLambda;
                        Modifier modifier7 = modifier4;
                        int i18 = i12 >> 6;
                        bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var8;
                        m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                            public final void invoke(ColumnScope columnScope, Composer composer2, int i19) {
                                if (!composer2.shouldExecute((i19 & 17) != 16, i19 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-906085472, i19, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                                }
                                TabKt.TabBaselineLayout(composableLambda3, bm3Var8, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                                invoke(columnScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i18) | (458752 & i18) | (i18 & 3670016), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j13 = j6;
                        bm3Var6 = bm3Var11;
                        z5 = z6;
                        j4 = j13;
                        j3 = j7;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier3 = modifier7;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        j3 = j;
                        mutableInteractionSource2 = mutableInteractionSource;
                        bm3Var5 = bm3Var3;
                        modifier3 = modifier2;
                        z5 = z3;
                        bm3Var6 = bm3Var4;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                boolean z7 = z;
                                ll3 ll3Var2 = ll3Var;
                                bm3 bm3Var12 = bm3Var5;
                                bm3 bm3Var13 = bm3Var6;
                                return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var12, bm3Var13, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                bm3Var3 = bm3Var;
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var4 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) != 0) {
                        if ((i2 & 64) == 0) {
                            i14 = 524288;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    }
                    if ((i & 12582912) != 0) {
                        if ((i2 & 128) == 0) {
                            i13 = 4194304;
                        } else {
                            i13 = 4194304;
                        }
                        i3 |= i13;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        i3 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((38347923 & i3) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        composableLambdaRememberComposableLambda = null;
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j14 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j14;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j15 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j15;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                        }
                        if (bm3Var7 == null) {
                            composerStartRestartGroup.startReplaceGroup(1830899669);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1830899670);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                                public final void invoke(Composer composer2, int i19) {
                                    if (!composer2.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1745256900, i19, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                    }
                                    TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        final bm3<? super Composer, ? super Integer, j59> composableLambda4 = composableLambdaRememberComposableLambda;
                        Modifier modifier8 = modifier4;
                        int i19 = i12 >> 6;
                        bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var8;
                        m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                            public final void invoke(ColumnScope columnScope, Composer composer2, int i110) {
                                if (!composer2.shouldExecute((i110 & 17) != 16, i110 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-906085472, i110, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                                }
                                TabKt.TabBaselineLayout(composableLambda4, bm3Var8, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                                invoke(columnScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i19) | (458752 & i19) | (i19 & 3670016), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j16 = j6;
                        bm3Var6 = bm3Var12;
                        z5 = z6;
                        j4 = j16;
                        j3 = j7;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier3 = modifier8;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        j3 = j;
                        mutableInteractionSource2 = mutableInteractionSource;
                        bm3Var5 = bm3Var3;
                        modifier3 = modifier2;
                        z5 = z3;
                        bm3Var6 = bm3Var4;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                boolean z7 = z;
                                ll3 ll3Var2 = ll3Var;
                                bm3 bm3Var13 = bm3Var5;
                                bm3 bm3Var14 = bm3Var6;
                                return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var13, bm3Var14, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var4 = bm3Var2;
                if ((1572864 & i) != 0) {
                    if ((i2 & 64) == 0) {
                        i14 = 524288;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                }
                if ((i & 12582912) != 0) {
                    if ((i2 & 128) == 0) {
                        i13 = 4194304;
                    } else {
                        i13 = 4194304;
                    }
                    i3 |= i13;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((38347923 & i3) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    composableLambdaRememberComposableLambda = null;
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j17 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j17;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j18 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j18;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                    }
                    if (bm3Var7 == null) {
                        composerStartRestartGroup.startReplaceGroup(1830899669);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1830899670);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                            public final void invoke(Composer composer2, int i110) {
                                if (!composer2.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1745256900, i110, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                }
                                TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    final bm3<? super Composer, ? super Integer, j59> composableLambda5 = composableLambdaRememberComposableLambda;
                    Modifier modifier9 = modifier4;
                    int i110 = i12 >> 6;
                    bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var8;
                    m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                        public final void invoke(ColumnScope columnScope, Composer composer2, int i111) {
                            if (!composer2.shouldExecute((i111 & 17) != 16, i111 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-906085472, i111, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                            }
                            TabKt.TabBaselineLayout(composableLambda5, bm3Var8, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                            invoke(columnScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i110) | (458752 & i110) | (i110 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j19 = j6;
                    bm3Var6 = bm3Var13;
                    z5 = z6;
                    j4 = j19;
                    j3 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier3 = modifier9;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j;
                    mutableInteractionSource2 = mutableInteractionSource;
                    bm3Var5 = bm3Var3;
                    modifier3 = modifier2;
                    z5 = z3;
                    bm3Var6 = bm3Var4;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            boolean z7 = z;
                            ll3 ll3Var2 = ll3Var;
                            bm3 bm3Var14 = bm3Var5;
                            bm3 bm3Var15 = bm3Var6;
                            return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var14, bm3Var15, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z3 = z2;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var3 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var4 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) != 0) {
                        if ((i2 & 64) == 0) {
                            i14 = 524288;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    }
                    if ((i & 12582912) != 0) {
                        if ((i2 & 128) == 0) {
                            i13 = 4194304;
                        } else {
                            i13 = 4194304;
                        }
                        i3 |= i13;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        i3 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((38347923 & i3) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        composableLambdaRememberComposableLambda = null;
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j110 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j110;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j111 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j111;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                        }
                        if (bm3Var7 == null) {
                            composerStartRestartGroup.startReplaceGroup(1830899669);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1830899670);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                                public final void invoke(Composer composer2, int i111) {
                                    if (!composer2.shouldExecute((i111 & 3) != 2, i111 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1745256900, i111, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                    }
                                    TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        final bm3<? super Composer, ? super Integer, j59> composableLambda6 = composableLambdaRememberComposableLambda;
                        Modifier modifier10 = modifier4;
                        int i111 = i12 >> 6;
                        bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var8;
                        m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                            public final void invoke(ColumnScope columnScope, Composer composer2, int i112) {
                                if (!composer2.shouldExecute((i112 & 17) != 16, i112 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-906085472, i112, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                                }
                                TabKt.TabBaselineLayout(composableLambda6, bm3Var8, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                                invoke(columnScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i111) | (458752 & i111) | (i111 & 3670016), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j112 = j6;
                        bm3Var6 = bm3Var14;
                        z5 = z6;
                        j4 = j112;
                        j3 = j7;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier3 = modifier10;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        j3 = j;
                        mutableInteractionSource2 = mutableInteractionSource;
                        bm3Var5 = bm3Var3;
                        modifier3 = modifier2;
                        z5 = z3;
                        bm3Var6 = bm3Var4;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                boolean z7 = z;
                                ll3 ll3Var2 = ll3Var;
                                bm3 bm3Var15 = bm3Var5;
                                bm3 bm3Var16 = bm3Var6;
                                return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var15, bm3Var16, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var4 = bm3Var2;
                if ((1572864 & i) != 0) {
                    if ((i2 & 64) == 0) {
                        i14 = 524288;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                }
                if ((i & 12582912) != 0) {
                    if ((i2 & 128) == 0) {
                        i13 = 4194304;
                    } else {
                        i13 = 4194304;
                    }
                    i3 |= i13;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((38347923 & i3) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    composableLambdaRememberComposableLambda = null;
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j113 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j113;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j114 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j114;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                    }
                    if (bm3Var7 == null) {
                        composerStartRestartGroup.startReplaceGroup(1830899669);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1830899670);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                            public final void invoke(Composer composer2, int i112) {
                                if (!composer2.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1745256900, i112, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                }
                                TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    final bm3<? super Composer, ? super Integer, j59> composableLambda7 = composableLambdaRememberComposableLambda;
                    Modifier modifier11 = modifier4;
                    int i112 = i12 >> 6;
                    bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var8;
                    m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                        public final void invoke(ColumnScope columnScope, Composer composer2, int i113) {
                            if (!composer2.shouldExecute((i113 & 17) != 16, i113 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-906085472, i113, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                            }
                            TabKt.TabBaselineLayout(composableLambda7, bm3Var8, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                            invoke(columnScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i112) | (458752 & i112) | (i112 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j115 = j6;
                    bm3Var6 = bm3Var15;
                    z5 = z6;
                    j4 = j115;
                    j3 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier3 = modifier11;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j;
                    mutableInteractionSource2 = mutableInteractionSource;
                    bm3Var5 = bm3Var3;
                    modifier3 = modifier2;
                    z5 = z3;
                    bm3Var6 = bm3Var4;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            boolean z7 = z;
                            ll3 ll3Var2 = ll3Var;
                            bm3 bm3Var16 = bm3Var5;
                            bm3 bm3Var17 = bm3Var6;
                            return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var16, bm3Var17, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var3 = bm3Var;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) != 0) {
                    if ((i2 & 64) == 0) {
                        i14 = 524288;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                }
                if ((i & 12582912) != 0) {
                    if ((i2 & 128) == 0) {
                        i13 = 4194304;
                    } else {
                        i13 = 4194304;
                    }
                    i3 |= i13;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((38347923 & i3) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    composableLambdaRememberComposableLambda = null;
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j116 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j116;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j117 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j117;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                    }
                    if (bm3Var7 == null) {
                        composerStartRestartGroup.startReplaceGroup(1830899669);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1830899670);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                            public final void invoke(Composer composer2, int i113) {
                                if (!composer2.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1745256900, i113, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                }
                                TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    final bm3<? super Composer, ? super Integer, j59> composableLambda8 = composableLambdaRememberComposableLambda;
                    Modifier modifier12 = modifier4;
                    int i113 = i12 >> 6;
                    bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var8;
                    m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                        public final void invoke(ColumnScope columnScope, Composer composer2, int i114) {
                            if (!composer2.shouldExecute((i114 & 17) != 16, i114 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-906085472, i114, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                            }
                            TabKt.TabBaselineLayout(composableLambda8, bm3Var8, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                            invoke(columnScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i113) | (458752 & i113) | (i113 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j118 = j6;
                    bm3Var6 = bm3Var16;
                    z5 = z6;
                    j4 = j118;
                    j3 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier3 = modifier12;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j;
                    mutableInteractionSource2 = mutableInteractionSource;
                    bm3Var5 = bm3Var3;
                    modifier3 = modifier2;
                    z5 = z3;
                    bm3Var6 = bm3Var4;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            boolean z7 = z;
                            ll3 ll3Var2 = ll3Var;
                            bm3 bm3Var17 = bm3Var5;
                            bm3 bm3Var18 = bm3Var6;
                            return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var17, bm3Var18, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var4 = bm3Var2;
            if ((1572864 & i) != 0) {
                if ((i2 & 64) == 0) {
                    i14 = 524288;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            }
            if ((i & 12582912) != 0) {
                if ((i2 & 128) == 0) {
                    i13 = 4194304;
                } else {
                    i13 = 4194304;
                }
                i3 |= i13;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((38347923 & i3) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                composableLambdaRememberComposableLambda = null;
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j119 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j119;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j1110 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j1110;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                }
                if (bm3Var7 == null) {
                    composerStartRestartGroup.startReplaceGroup(1830899669);
                } else {
                    composerStartRestartGroup.startReplaceGroup(1830899670);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                        public final void invoke(Composer composer2, int i114) {
                            if (!composer2.shouldExecute((i114 & 3) != 2, i114 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1745256900, i114, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                            }
                            TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                }
                composerStartRestartGroup.endReplaceGroup();
                final bm3<? super Composer, ? super Integer, j59> composableLambda9 = composableLambdaRememberComposableLambda;
                Modifier modifier13 = modifier4;
                int i114 = i12 >> 6;
                bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var8;
                m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                    public final void invoke(ColumnScope columnScope, Composer composer2, int i115) {
                        if (!composer2.shouldExecute((i115 & 17) != 16, i115 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-906085472, i115, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                        }
                        TabKt.TabBaselineLayout(composableLambda9, bm3Var8, composer2, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                        invoke(columnScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i114) | (458752 & i114) | (i114 & 3670016), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j1111 = j6;
                bm3Var6 = bm3Var17;
                z5 = z6;
                j4 = j1111;
                j3 = j7;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier3 = modifier13;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j;
                mutableInteractionSource2 = mutableInteractionSource;
                bm3Var5 = bm3Var3;
                modifier3 = modifier2;
                z5 = z3;
                bm3Var6 = bm3Var4;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        boolean z7 = z;
                        ll3 ll3Var2 = ll3Var;
                        bm3 bm3Var18 = bm3Var5;
                        bm3 bm3Var19 = bm3Var6;
                        return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var18, bm3Var19, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
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
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var3 = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var4 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) != 0) {
                        if ((i2 & 64) == 0) {
                            i14 = 524288;
                        } else {
                            i14 = 524288;
                        }
                        i3 |= i14;
                    }
                    if ((i & 12582912) != 0) {
                        if ((i2 & 128) == 0) {
                            i13 = 4194304;
                        } else {
                            i13 = 4194304;
                        }
                        i3 |= i13;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        i3 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((38347923 & i3) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        composableLambdaRememberComposableLambda = null;
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j1112 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j1112;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                z3 = true;
                            }
                            if (i6 != 0) {
                                bm3Var3 = null;
                            }
                            if (i8 != 0) {
                                bm3Var4 = null;
                            }
                            if ((i2 & 64) != 0) {
                                jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                                i3 &= -3670017;
                            } else {
                                jM6242unboximpl = j;
                            }
                            if ((i2 & 128) != 0) {
                                i3 &= -29360129;
                                j5 = jM6242unboximpl;
                            } else {
                                j5 = j2;
                            }
                            long j1113 = j5;
                            modifier4 = modifier2;
                            z6 = z3;
                            j6 = j1113;
                            i12 = i3;
                            bm3Var7 = bm3Var3;
                            bm3Var8 = bm3Var4;
                            if (i10 != 0) {
                                mutableInteractionSource3 = null;
                                j7 = jM6242unboximpl;
                            } else {
                                j7 = jM6242unboximpl;
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                        }
                        if (bm3Var7 == null) {
                            composerStartRestartGroup.startReplaceGroup(1830899669);
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1830899670);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                                public final void invoke(Composer composer2, int i115) {
                                    if (!composer2.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1745256900, i115, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                    }
                                    TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        final bm3<? super Composer, ? super Integer, j59> composableLambda10 = composableLambdaRememberComposableLambda;
                        Modifier modifier14 = modifier4;
                        int i115 = i12 >> 6;
                        bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var8;
                        m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                            public final void invoke(ColumnScope columnScope, Composer composer2, int i116) {
                                if (!composer2.shouldExecute((i116 & 17) != 16, i116 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-906085472, i116, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                                }
                                TabKt.TabBaselineLayout(composableLambda10, bm3Var8, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                                invoke(columnScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i115) | (458752 & i115) | (i115 & 3670016), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j1114 = j6;
                        bm3Var6 = bm3Var18;
                        z5 = z6;
                        j4 = j1114;
                        j3 = j7;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        modifier3 = modifier14;
                        bm3Var5 = bm3Var7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        j3 = j;
                        mutableInteractionSource2 = mutableInteractionSource;
                        bm3Var5 = bm3Var3;
                        modifier3 = modifier2;
                        z5 = z3;
                        bm3Var6 = bm3Var4;
                        j4 = j2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                boolean z7 = z;
                                ll3 ll3Var2 = ll3Var;
                                bm3 bm3Var19 = bm3Var5;
                                bm3 bm3Var110 = bm3Var6;
                                return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var19, bm3Var110, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var4 = bm3Var2;
                if ((1572864 & i) != 0) {
                    if ((i2 & 64) == 0) {
                        i14 = 524288;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                }
                if ((i & 12582912) != 0) {
                    if ((i2 & 128) == 0) {
                        i13 = 4194304;
                    } else {
                        i13 = 4194304;
                    }
                    i3 |= i13;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((38347923 & i3) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    composableLambdaRememberComposableLambda = null;
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j1115 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j1115;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j1116 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j1116;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                    }
                    if (bm3Var7 == null) {
                        composerStartRestartGroup.startReplaceGroup(1830899669);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1830899670);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                            public final void invoke(Composer composer2, int i116) {
                                if (!composer2.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1745256900, i116, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                }
                                TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    final bm3<? super Composer, ? super Integer, j59> composableLambda11 = composableLambdaRememberComposableLambda;
                    Modifier modifier15 = modifier4;
                    int i116 = i12 >> 6;
                    bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var8;
                    m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                        public final void invoke(ColumnScope columnScope, Composer composer2, int i117) {
                            if (!composer2.shouldExecute((i117 & 17) != 16, i117 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-906085472, i117, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                            }
                            TabKt.TabBaselineLayout(composableLambda11, bm3Var8, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                            invoke(columnScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i116) | (458752 & i116) | (i116 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j1117 = j6;
                    bm3Var6 = bm3Var19;
                    z5 = z6;
                    j4 = j1117;
                    j3 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier3 = modifier15;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j;
                    mutableInteractionSource2 = mutableInteractionSource;
                    bm3Var5 = bm3Var3;
                    modifier3 = modifier2;
                    z5 = z3;
                    bm3Var6 = bm3Var4;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            boolean z7 = z;
                            ll3 ll3Var2 = ll3Var;
                            bm3 bm3Var110 = bm3Var5;
                            bm3 bm3Var111 = bm3Var6;
                            return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var110, bm3Var111, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var3 = bm3Var;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) != 0) {
                    if ((i2 & 64) == 0) {
                        i14 = 524288;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                }
                if ((i & 12582912) != 0) {
                    if ((i2 & 128) == 0) {
                        i13 = 4194304;
                    } else {
                        i13 = 4194304;
                    }
                    i3 |= i13;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((38347923 & i3) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    composableLambdaRememberComposableLambda = null;
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j1118 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j1118;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j1119 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j1119;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                    }
                    if (bm3Var7 == null) {
                        composerStartRestartGroup.startReplaceGroup(1830899669);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1830899670);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                            public final void invoke(Composer composer2, int i117) {
                                if (!composer2.shouldExecute((i117 & 3) != 2, i117 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1745256900, i117, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                }
                                TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    final bm3<? super Composer, ? super Integer, j59> composableLambda12 = composableLambdaRememberComposableLambda;
                    Modifier modifier16 = modifier4;
                    int i117 = i12 >> 6;
                    bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var8;
                    m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                        public final void invoke(ColumnScope columnScope, Composer composer2, int i118) {
                            if (!composer2.shouldExecute((i118 & 17) != 16, i118 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-906085472, i118, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                            }
                            TabKt.TabBaselineLayout(composableLambda12, bm3Var8, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                            invoke(columnScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i117) | (458752 & i117) | (i117 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j11110 = j6;
                    bm3Var6 = bm3Var110;
                    z5 = z6;
                    j4 = j11110;
                    j3 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier3 = modifier16;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j;
                    mutableInteractionSource2 = mutableInteractionSource;
                    bm3Var5 = bm3Var3;
                    modifier3 = modifier2;
                    z5 = z3;
                    bm3Var6 = bm3Var4;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            boolean z7 = z;
                            ll3 ll3Var2 = ll3Var;
                            bm3 bm3Var111 = bm3Var5;
                            bm3 bm3Var112 = bm3Var6;
                            return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var111, bm3Var112, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var4 = bm3Var2;
            if ((1572864 & i) != 0) {
                if ((i2 & 64) == 0) {
                    i14 = 524288;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            }
            if ((i & 12582912) != 0) {
                if ((i2 & 128) == 0) {
                    i13 = 4194304;
                } else {
                    i13 = 4194304;
                }
                i3 |= i13;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((38347923 & i3) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                composableLambdaRememberComposableLambda = null;
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j11111 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j11111;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j11112 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j11112;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                }
                if (bm3Var7 == null) {
                    composerStartRestartGroup.startReplaceGroup(1830899669);
                } else {
                    composerStartRestartGroup.startReplaceGroup(1830899670);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                        public final void invoke(Composer composer2, int i118) {
                            if (!composer2.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1745256900, i118, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                            }
                            TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                }
                composerStartRestartGroup.endReplaceGroup();
                final bm3<? super Composer, ? super Integer, j59> composableLambda13 = composableLambdaRememberComposableLambda;
                Modifier modifier17 = modifier4;
                int i118 = i12 >> 6;
                bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var8;
                m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                    public final void invoke(ColumnScope columnScope, Composer composer2, int i119) {
                        if (!composer2.shouldExecute((i119 & 17) != 16, i119 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-906085472, i119, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                        }
                        TabKt.TabBaselineLayout(composableLambda13, bm3Var8, composer2, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                        invoke(columnScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i118) | (458752 & i118) | (i118 & 3670016), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j11113 = j6;
                bm3Var6 = bm3Var111;
                z5 = z6;
                j4 = j11113;
                j3 = j7;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier3 = modifier17;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j;
                mutableInteractionSource2 = mutableInteractionSource;
                bm3Var5 = bm3Var3;
                modifier3 = modifier2;
                z5 = z3;
                bm3Var6 = bm3Var4;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        boolean z7 = z;
                        ll3 ll3Var2 = ll3Var;
                        bm3 bm3Var112 = bm3Var5;
                        bm3 bm3Var113 = bm3Var6;
                        return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var112, bm3Var113, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z3 = z2;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                bm3Var3 = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var4 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) != 0) {
                    if ((i2 & 64) == 0) {
                        i14 = 524288;
                    } else {
                        i14 = 524288;
                    }
                    i3 |= i14;
                }
                if ((i & 12582912) != 0) {
                    if ((i2 & 128) == 0) {
                        i13 = 4194304;
                    } else {
                        i13 = 4194304;
                    }
                    i3 |= i13;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((38347923 & i3) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    composableLambdaRememberComposableLambda = null;
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j11114 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j11114;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            z3 = true;
                        }
                        if (i6 != 0) {
                            bm3Var3 = null;
                        }
                        if (i8 != 0) {
                            bm3Var4 = null;
                        }
                        if ((i2 & 64) != 0) {
                            jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                            i3 &= -3670017;
                        } else {
                            jM6242unboximpl = j;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                            j5 = jM6242unboximpl;
                        } else {
                            j5 = j2;
                        }
                        long j11115 = j5;
                        modifier4 = modifier2;
                        z6 = z3;
                        j6 = j11115;
                        i12 = i3;
                        bm3Var7 = bm3Var3;
                        bm3Var8 = bm3Var4;
                        if (i10 != 0) {
                            mutableInteractionSource3 = null;
                            j7 = jM6242unboximpl;
                        } else {
                            j7 = jM6242unboximpl;
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                    }
                    if (bm3Var7 == null) {
                        composerStartRestartGroup.startReplaceGroup(1830899669);
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1830899670);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                            public final void invoke(Composer composer2, int i119) {
                                if (!composer2.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1745256900, i119, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                                }
                                TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    final bm3<? super Composer, ? super Integer, j59> composableLambda14 = composableLambdaRememberComposableLambda;
                    Modifier modifier18 = modifier4;
                    int i119 = i12 >> 6;
                    bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var8;
                    m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                        public final void invoke(ColumnScope columnScope, Composer composer2, int i1110) {
                            if (!composer2.shouldExecute((i1110 & 17) != 16, i1110 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-906085472, i1110, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                            }
                            TabKt.TabBaselineLayout(composableLambda14, bm3Var8, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                            invoke(columnScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i119) | (458752 & i119) | (i119 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j11116 = j6;
                    bm3Var6 = bm3Var112;
                    z5 = z6;
                    j4 = j11116;
                    j3 = j7;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier3 = modifier18;
                    bm3Var5 = bm3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    j3 = j;
                    mutableInteractionSource2 = mutableInteractionSource;
                    bm3Var5 = bm3Var3;
                    modifier3 = modifier2;
                    z5 = z3;
                    bm3Var6 = bm3Var4;
                    j4 = j2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            boolean z7 = z;
                            ll3 ll3Var2 = ll3Var;
                            bm3 bm3Var113 = bm3Var5;
                            bm3 bm3Var114 = bm3Var6;
                            return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var113, bm3Var114, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var4 = bm3Var2;
            if ((1572864 & i) != 0) {
                if ((i2 & 64) == 0) {
                    i14 = 524288;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            }
            if ((i & 12582912) != 0) {
                if ((i2 & 128) == 0) {
                    i13 = 4194304;
                } else {
                    i13 = 4194304;
                }
                i3 |= i13;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((38347923 & i3) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                composableLambdaRememberComposableLambda = null;
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j11117 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j11117;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j11118 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j11118;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                }
                if (bm3Var7 == null) {
                    composerStartRestartGroup.startReplaceGroup(1830899669);
                } else {
                    composerStartRestartGroup.startReplaceGroup(1830899670);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                        public final void invoke(Composer composer2, int i1110) {
                            if (!composer2.shouldExecute((i1110 & 3) != 2, i1110 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1745256900, i1110, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                            }
                            TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                }
                composerStartRestartGroup.endReplaceGroup();
                final bm3<? super Composer, ? super Integer, j59> composableLambda15 = composableLambdaRememberComposableLambda;
                Modifier modifier19 = modifier4;
                int i1110 = i12 >> 6;
                bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var8;
                m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                    public final void invoke(ColumnScope columnScope, Composer composer2, int i1111) {
                        if (!composer2.shouldExecute((i1111 & 17) != 16, i1111 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-906085472, i1111, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                        }
                        TabKt.TabBaselineLayout(composableLambda15, bm3Var8, composer2, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                        invoke(columnScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i1110) | (458752 & i1110) | (i1110 & 3670016), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j11119 = j6;
                bm3Var6 = bm3Var113;
                z5 = z6;
                j4 = j11119;
                j3 = j7;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier3 = modifier19;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j;
                mutableInteractionSource2 = mutableInteractionSource;
                bm3Var5 = bm3Var3;
                modifier3 = modifier2;
                z5 = z3;
                bm3Var6 = bm3Var4;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        boolean z7 = z;
                        ll3 ll3Var2 = ll3Var;
                        bm3 bm3Var114 = bm3Var5;
                        bm3 bm3Var115 = bm3Var6;
                        return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var114, bm3Var115, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        bm3Var3 = bm3Var;
        i8 = i2 & 32;
        if (i8 != 0) {
            if ((196608 & i) == 0) {
                bm3Var4 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((1572864 & i) != 0) {
                if ((i2 & 64) == 0) {
                    i14 = 524288;
                } else {
                    i14 = 524288;
                }
                i3 |= i14;
            }
            if ((i & 12582912) != 0) {
                if ((i2 & 128) == 0) {
                    i13 = 4194304;
                } else {
                    i13 = 4194304;
                }
                i3 |= i13;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((38347923 & i3) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                composableLambdaRememberComposableLambda = null;
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j111110 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j111110;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        z3 = true;
                    }
                    if (i6 != 0) {
                        bm3Var3 = null;
                    }
                    if (i8 != 0) {
                        bm3Var4 = null;
                    }
                    if ((i2 & 64) != 0) {
                        jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                        i3 &= -3670017;
                    } else {
                        jM6242unboximpl = j;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                        j5 = jM6242unboximpl;
                    } else {
                        j5 = j2;
                    }
                    long j111111 = j5;
                    modifier4 = modifier2;
                    z6 = z3;
                    j6 = j111111;
                    i12 = i3;
                    bm3Var7 = bm3Var3;
                    bm3Var8 = bm3Var4;
                    if (i10 != 0) {
                        mutableInteractionSource3 = null;
                        j7 = jM6242unboximpl;
                    } else {
                        j7 = jM6242unboximpl;
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
                }
                if (bm3Var7 == null) {
                    composerStartRestartGroup.startReplaceGroup(1830899669);
                } else {
                    composerStartRestartGroup.startReplaceGroup(1830899670);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                        public final void invoke(Composer composer2, int i1111) {
                            if (!composer2.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1745256900, i1111, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                            }
                            TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                }
                composerStartRestartGroup.endReplaceGroup();
                final bm3<? super Composer, ? super Integer, j59> composableLambda16 = composableLambdaRememberComposableLambda;
                Modifier modifier110 = modifier4;
                int i1111 = i12 >> 6;
                bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var8;
                m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                    public final void invoke(ColumnScope columnScope, Composer composer2, int i1112) {
                        if (!composer2.shouldExecute((i1112 & 17) != 16, i1112 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-906085472, i1112, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                        }
                        TabKt.TabBaselineLayout(composableLambda16, bm3Var8, composer2, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                        invoke(columnScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i1111) | (458752 & i1111) | (i1111 & 3670016), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j111112 = j6;
                bm3Var6 = bm3Var114;
                z5 = z6;
                j4 = j111112;
                j3 = j7;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier3 = modifier110;
                bm3Var5 = bm3Var7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                j3 = j;
                mutableInteractionSource2 = mutableInteractionSource;
                bm3Var5 = bm3Var3;
                modifier3 = modifier2;
                z5 = z3;
                bm3Var6 = bm3Var4;
                j4 = j2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        boolean z7 = z;
                        ll3 ll3Var2 = ll3Var;
                        bm3 bm3Var115 = bm3Var5;
                        bm3 bm3Var116 = bm3Var6;
                        return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var115, bm3Var116, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        bm3Var4 = bm3Var2;
        if ((1572864 & i) != 0) {
            if ((i2 & 64) == 0) {
                i14 = 524288;
            } else {
                i14 = 524288;
            }
            i3 |= i14;
        }
        if ((i & 12582912) != 0) {
            if ((i2 & 128) == 0) {
                i13 = 4194304;
            } else {
                i13 = 4194304;
            }
            i3 |= i13;
        }
        i10 = i2 & 256;
        if (i10 != 0) {
            i3 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                i11 = 67108864;
            } else {
                i11 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i11;
        }
        if ((38347923 & i3) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            composableLambdaRememberComposableLambda = null;
            if ((i & 1) != 0) {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if (i6 != 0) {
                    bm3Var3 = null;
                }
                if (i8 != 0) {
                    bm3Var4 = null;
                }
                if ((i2 & 64) != 0) {
                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                    i3 &= -3670017;
                } else {
                    jM6242unboximpl = j;
                }
                if ((i2 & 128) != 0) {
                    i3 &= -29360129;
                    j5 = jM6242unboximpl;
                } else {
                    j5 = j2;
                }
                long j111113 = j5;
                modifier4 = modifier2;
                z6 = z3;
                j6 = j111113;
                i12 = i3;
                bm3Var7 = bm3Var3;
                bm3Var8 = bm3Var4;
                if (i10 != 0) {
                    mutableInteractionSource3 = null;
                    j7 = jM6242unboximpl;
                } else {
                    j7 = jM6242unboximpl;
                    mutableInteractionSource3 = mutableInteractionSource;
                }
            } else {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    z3 = true;
                }
                if (i6 != 0) {
                    bm3Var3 = null;
                }
                if (i8 != 0) {
                    bm3Var4 = null;
                }
                if ((i2 & 64) != 0) {
                    jM6242unboximpl = ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl();
                    i3 &= -3670017;
                } else {
                    jM6242unboximpl = j;
                }
                if ((i2 & 128) != 0) {
                    i3 &= -29360129;
                    j5 = jM6242unboximpl;
                } else {
                    j5 = j2;
                }
                long j111114 = j5;
                modifier4 = modifier2;
                z6 = z3;
                j6 = j111114;
                i12 = i3;
                bm3Var7 = bm3Var3;
                bm3Var8 = bm3Var4;
                if (i10 != 0) {
                    mutableInteractionSource3 = null;
                    j7 = jM6242unboximpl;
                } else {
                    j7 = jM6242unboximpl;
                    mutableInteractionSource3 = mutableInteractionSource;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1015017965, i12, -1, "androidx.compose.material3.Tab (Tab.kt:100)");
            }
            if (bm3Var7 == null) {
                composerStartRestartGroup.startReplaceGroup(1830899669);
            } else {
                composerStartRestartGroup.startReplaceGroup(1830899670);
                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1745256900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$styledText$1$1
                    public final void invoke(Composer composer2, int i1112) {
                        if (!composer2.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1745256900, i1112, -1, "androidx.compose.material3.Tab.<anonymous>.<anonymous> (Tab.kt:104)");
                        }
                        TextKt.ProvideTextStyle(TextStyle.m8504copyp1EtxEg$default(TypographyKt.getValue(PrimaryNavigationTabTokens.INSTANCE.getLabelTextFont(), composer2, 6), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, TextAlign.Companion.m8920getCentere0LSkKk(), 0, 0L, null, null, null, 0, 0, null, 16744447, null), bm3Var7, composer2, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
            }
            composerStartRestartGroup.endReplaceGroup();
            final bm3<? super Composer, ? super Integer, j59> composableLambda17 = composableLambdaRememberComposableLambda;
            Modifier modifier111 = modifier4;
            int i1112 = i12 >> 6;
            bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var8;
            m3975TabbogVsAg(z, ll3Var, BadgeKt.badgeBounds(modifier4), z6, j7, j6, mutableInteractionSource3, ComposableLambdaKt.rememberComposableLambda(-906085472, true, new dm3<ColumnScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.TabKt$Tab$1
                public final void invoke(ColumnScope columnScope, Composer composer2, int i1113) {
                    if (!composer2.shouldExecute((i1113 & 17) != 16, i1113 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-906085472, i1113, -1, "androidx.compose.material3.Tab.<anonymous> (Tab.kt:120)");
                    }
                    TabKt.TabBaselineLayout(composableLambda17, bm3Var8, composer2, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(ColumnScope columnScope, Composer composer2, Integer num) {
                    invoke(columnScope, composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 7168) | (57344 & i1112) | (458752 & i1112) | (i1112 & 3670016), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            long j111115 = j6;
            bm3Var6 = bm3Var115;
            z5 = z6;
            j4 = j111115;
            j3 = j7;
            mutableInteractionSource2 = mutableInteractionSource3;
            modifier3 = modifier111;
            bm3Var5 = bm3Var7;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            j3 = j;
            mutableInteractionSource2 = mutableInteractionSource;
            bm3Var5 = bm3Var3;
            modifier3 = modifier2;
            z5 = z3;
            bm3Var6 = bm3Var4;
            j4 = j2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ni8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    boolean z7 = z;
                    ll3 ll3Var2 = ll3Var;
                    bm3 bm3Var116 = bm3Var5;
                    bm3 bm3Var117 = bm3Var6;
                    return TabKt.Tab_wqdebIU$lambda$1(z7, ll3Var2, modifier3, z5, bm3Var116, bm3Var117, j3, j4, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void TabBaselineLayout(final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1349901398);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1349901398, i2, -1, "androidx.compose.material3.TabBaselineLayout (Tab.kt:300)");
            }
            int i3 = i2 & 14;
            boolean z = (i3 == 4) | ((i2 & 112) == 32);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new TabKt$TabBaselineLayout$2$1(bm3Var, bm3Var2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            Modifier.Companion companion = Modifier.Companion;
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            if (bm3Var != null) {
                composerStartRestartGroup.startReplaceGroup(870361332);
                Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(LayoutIdKt.layoutId(companion, "text"), HorizontalTextPadding, 0.0f, 2, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default);
                ll3<ComposeUiNode> constructor2 = companion2.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB2 = cc.b(companion2, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion2.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                js2.d(bm3Var, composerStartRestartGroup, i3);
            } else {
                composerStartRestartGroup.startReplaceGroup(870466081);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (bm3Var2 != null) {
                composerStartRestartGroup.startReplaceGroup(870494880);
                Modifier modifierLayoutId = LayoutIdKt.layoutId(companion, "icon");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId);
                ll3<ComposeUiNode> constructor3 = companion2.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor3);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3 bm3VarB3 = cc.b(companion2, composerM5355constructorimpl3, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
                if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion2.getSetModifier());
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                js2.d(bm3Var2, composerStartRestartGroup, (i2 >> 3) & 14);
            } else {
                composerStartRestartGroup.startReplaceGroup(870557345);
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qi8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TabKt.TabBaselineLayout$lambda$11(bm3Var, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TabBaselineLayout$lambda$11(bm3 bm3Var, bm3 bm3Var2, int i, Composer composer, int i2) {
        TabBaselineLayout(bm3Var, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: TabTransition-Klgx-Pg, reason: not valid java name */
    private static final void m3977TabTransitionKlgxPg(final long j, final long j2, boolean z, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        final boolean z2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-833145221);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z2 = z;
            i2 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
        } else {
            z2 = z;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-833145221, i2, -1, "androidx.compose.material3.TabTransition (Tab.kt:274)");
            }
            int i3 = i2 >> 6;
            Transition transitionUpdateTransition = TransitionKt.updateTransition(Boolean.valueOf(z2), (String) null, composerStartRestartGroup, i3 & 14, 2);
            TabKt$TabTransition$color$2 tabKt$TabTransition$color$2 = new dm3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material3.TabKt$TabTransition$color$2
                public final FiniteAnimationSpec<Color> invoke(Transition.Segment<Boolean> segment, Composer composer2, int i4) {
                    FiniteAnimationSpec<Color> finiteAnimationSpecValue;
                    composer2.startReplaceGroup(1058649156);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1058649156, i4, -1, "androidx.compose.material3.TabTransition.<anonymous> (Tab.kt:280)");
                    }
                    if (segment.isTransitioningTo(Boolean.FALSE, Boolean.TRUE)) {
                        composer2.startReplaceGroup(272207019);
                        finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer2, 6);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(272326989);
                        finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composer2, 6);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2.endReplaceGroup();
                    return finiteAnimationSpecValue;
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Color> invoke(Transition.Segment<Boolean> segment, Composer composer2, Integer num) {
                    return invoke(segment, composer2, num.intValue());
                }
            };
            boolean zBooleanValue = ((Boolean) transitionUpdateTransition.getTargetState()).booleanValue();
            composerStartRestartGroup.startReplaceGroup(-1069234984);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1069234984, 0, -1, "androidx.compose.material3.TabTransition.<anonymous> (Tab.kt:289)");
            }
            long j3 = zBooleanValue ? j : j2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            ColorSpace colorSpaceM6236getColorSpaceimpl = Color.m6236getColorSpaceimpl(j3);
            boolean zChanged = composerStartRestartGroup.changed(colorSpaceM6236getColorSpaceimpl);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = (TwoWayConverter) ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(colorSpaceM6236getColorSpaceimpl);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            TwoWayConverter twoWayConverter = (TwoWayConverter) objRememberedValue;
            boolean zBooleanValue2 = ((Boolean) transitionUpdateTransition.getCurrentState()).booleanValue();
            composerStartRestartGroup.startReplaceGroup(-1069234984);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1069234984, 0, -1, "androidx.compose.material3.TabTransition.<anonymous> (Tab.kt:289)");
            }
            long j4 = zBooleanValue2 ? j : j2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            Color colorM6222boximpl = Color.m6222boximpl(j4);
            boolean zBooleanValue3 = ((Boolean) transitionUpdateTransition.getTargetState()).booleanValue();
            composerStartRestartGroup.startReplaceGroup(-1069234984);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1069234984, 0, -1, "androidx.compose.material3.TabTransition.<anonymous> (Tab.kt:289)");
            }
            long j5 = zBooleanValue3 ? j : j2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composerStartRestartGroup.endReplaceGroup();
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(TabTransition_Klgx_Pg$lambda$5(TransitionKt.createTransitionAnimation(transitionUpdateTransition, colorM6222boximpl, Color.m6222boximpl(j5), tabKt$TabTransition$color$2.invoke(transitionUpdateTransition.getSegment(), composerStartRestartGroup, 0), twoWayConverter, "ColorAnimation", composerStartRestartGroup, 0)))), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | (i3 & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pi8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TabKt.TabTransition_Klgx_Pg$lambda$6(j, j2, z2, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    private static final long TabTransition_Klgx_Pg$lambda$5(State<Color> state) {
        return state.getValue().m6242unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TabTransition_Klgx_Pg$lambda$6(long j, long j2, boolean z, bm3 bm3Var, int i, Composer composer, int i2) {
        m3977TabTransitionKlgxPg(j, j2, z, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Tab_bogVsAg$lambda$3(boolean z, ll3 ll3Var, Modifier modifier, boolean z2, long j, long j2, MutableInteractionSource mutableInteractionSource, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m3975TabbogVsAg(z, ll3Var, modifier, z2, j, j2, mutableInteractionSource, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Tab_wqdebIU$lambda$1(boolean z, ll3 ll3Var, Modifier modifier, boolean z2, bm3 bm3Var, bm3 bm3Var2, long j, long j2, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        m3976TabwqdebIU(z, ll3Var, modifier, z2, bm3Var, bm3Var2, j, j2, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final float getHorizontalTextPadding() {
        return HorizontalTextPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeTextAndIcon(Placeable.PlacementScope placementScope, Density density, Placeable placeable, Placeable placeable2, int i, int i2, int i3, int i4) {
        int iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(PrimaryNavigationTabTokens.INSTANCE.m5068getActiveIndicatorHeightD9Ej5fM()) + density.mo1428roundToPx0680j_4(i3 == i4 ? SingleLineTextBaselineWithIcon : DoubleLineTextBaselineWithIcon);
        int iMo1427roundToPxR2X_6o = (density.mo1427roundToPxR2X_6o(IconDistanceFromBaseline) + placeable2.getHeight()) - i3;
        int i5 = (i2 - i4) - iMo1428roundToPx0680j_4;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, ug.b(i, 2, placeable), i5, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, ug.b(i, 2, placeable2), i5 - iMo1427roundToPxR2X_6o, 0.0f, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void placeTextOrIcon(Placeable.PlacementScope placementScope, Placeable placeable, int i) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, tg.b(i, 2, placeable), 0.0f, 4, null);
    }
}
