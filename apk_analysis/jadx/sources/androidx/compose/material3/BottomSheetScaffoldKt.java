package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.at0;
import defpackage.av0;
import defpackage.b36;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.dt0;
import defpackage.et0;
import defpackage.gx2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.oh0;
import defpackage.u96;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomSheetScaffoldKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SheetValue.values().length];
            try {
                iArr[SheetValue.Hidden.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SheetValue.Expanded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0128  */
    /* JADX WARN: Code duplicated, block: B:102:0x012e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0134  */
    /* JADX WARN: Code duplicated, block: B:105:0x0137  */
    /* JADX WARN: Code duplicated, block: B:109:0x013f  */
    /* JADX WARN: Code duplicated, block: B:110:0x0146  */
    /* JADX WARN: Code duplicated, block: B:112:0x014a  */
    /* JADX WARN: Code duplicated, block: B:114:0x0154  */
    /* JADX WARN: Code duplicated, block: B:115:0x0157  */
    /* JADX WARN: Code duplicated, block: B:117:0x015c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0166  */
    /* JADX WARN: Code duplicated, block: B:122:0x016d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0171  */
    /* JADX WARN: Code duplicated, block: B:126:0x017b  */
    /* JADX WARN: Code duplicated, block: B:127:0x017e  */
    /* JADX WARN: Code duplicated, block: B:129:0x0183  */
    /* JADX WARN: Code duplicated, block: B:132:0x018e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0191  */
    /* JADX WARN: Code duplicated, block: B:135:0x0197  */
    /* JADX WARN: Code duplicated, block: B:137:0x019f  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:154:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:159:0x01e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:161:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:164:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:166:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:169:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:171:0x0200  */
    /* JADX WARN: Code duplicated, block: B:174:0x0206  */
    /* JADX WARN: Code duplicated, block: B:175:0x020b  */
    /* JADX WARN: Code duplicated, block: B:177:0x0211  */
    /* JADX WARN: Code duplicated, block: B:179:0x0217  */
    /* JADX WARN: Code duplicated, block: B:183:0x0226  */
    /* JADX WARN: Code duplicated, block: B:187:0x0233  */
    /* JADX WARN: Code duplicated, block: B:190:0x023c  */
    /* JADX WARN: Code duplicated, block: B:192:0x0252  */
    /* JADX WARN: Code duplicated, block: B:214:0x0297 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:215:0x0299  */
    /* JADX WARN: Code duplicated, block: B:216:0x029c  */
    /* JADX WARN: Code duplicated, block: B:219:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:220:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:222:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:223:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:225:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:228:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:231:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:234:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:236:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:238:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:239:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:241:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:242:0x0302  */
    /* JADX WARN: Code duplicated, block: B:244:0x0306  */
    /* JADX WARN: Code duplicated, block: B:245:0x0309  */
    /* JADX WARN: Code duplicated, block: B:247:0x030d  */
    /* JADX WARN: Code duplicated, block: B:248:0x0310  */
    /* JADX WARN: Code duplicated, block: B:250:0x0314  */
    /* JADX WARN: Code duplicated, block: B:251:0x031b  */
    /* JADX WARN: Code duplicated, block: B:254:0x0321  */
    /* JADX WARN: Code duplicated, block: B:255:0x0331  */
    /* JADX WARN: Code duplicated, block: B:258:0x0339  */
    /* JADX WARN: Code duplicated, block: B:260:0x034a  */
    /* JADX WARN: Code duplicated, block: B:263:0x0356  */
    /* JADX WARN: Code duplicated, block: B:265:0x0365  */
    /* JADX WARN: Code duplicated, block: B:268:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:271:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:272:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:275:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:277:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:280:0x042a  */
    /* JADX WARN: Code duplicated, block: B:282:0x044b  */
    /* JADX WARN: Code duplicated, block: B:285:0x046e  */
    /* JADX WARN: Code duplicated, block: B:287:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x0050  */
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:31:0x005b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x008c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0091  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:54:0x009d  */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:89:0x0105  */
    /* JADX WARN: Code duplicated, block: B:90:0x010a  */
    /* JADX WARN: Code duplicated, block: B:92:0x0110  */
    /* JADX WARN: Code duplicated, block: B:94:0x0116  */
    /* JADX WARN: Code duplicated, block: B:95:0x0119  */
    /* JADX WARN: Code duplicated, block: B:99:0x0123  */
    /* JADX INFO: renamed from: BottomSheetScaffold-sdMYb0k, reason: not valid java name */
    public static final void m3125BottomSheetScaffoldsdMYb0k(final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Modifier modifier, BottomSheetScaffoldState bottomSheetScaffoldState, float f, float f2, Shape shape, long j, long j2, float f3, float f4, bm3<? super Composer, ? super Integer, j59> bm3Var, boolean z, bm3<? super Composer, ? super Integer, j59> bm3Var2, dm3<? super SnackbarHostState, ? super Composer, ? super Integer, j59> dm3Var2, long j3, long j4, final dm3<? super PaddingValues, ? super Composer, ? super Integer, j59> dm3Var3, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        BottomSheetScaffoldState bottomSheetScaffoldState2;
        int i5;
        int i6;
        int i7;
        int i8;
        float fM3122getSheetMaxWidthD9Ej5fM;
        int i9;
        Shape expandedShape;
        long containerColor;
        long jM3275contentColorForek8zF_U;
        int i10;
        float fM9042constructorimpl;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        boolean z2;
        final Shape shape2;
        final long j5;
        final Modifier modifier2;
        final boolean z3;
        final dm3<? super SnackbarHostState, ? super Composer, ? super Integer, j59> dm3Var4;
        final long j6;
        final long j7;
        final float f5;
        final long j8;
        final BottomSheetScaffoldState bottomSheetScaffoldState3;
        final float f6;
        final float f7;
        final float f8;
        final bm3<? super Composer, ? super Integer, j59> bm3Var3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        BottomSheetScaffoldState bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
        float fM3123getSheetPeekHeightD9Ej5fM;
        float fM3120getElevationD9Ej5fM;
        bm3<? super Composer, ? super Integer, j59> lambda$1392012807$material3;
        boolean z4;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        dm3<? super SnackbarHostState, ? super Composer, ? super Integer, j59> lambda$1768941633$material3;
        long jM3259getSurface0d7_KjU;
        long jM3275contentColorForek8zF_U2;
        long j9;
        Modifier modifier4;
        int i26;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        int i27;
        int i28;
        int i29;
        Composer composerStartRestartGroup = composer.startRestartGroup(920075480);
        if ((i3 & 1) != 0) {
            i4 = i | 6;
        } else if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changedInstance(dm3Var) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        int i30 = i3 & 2;
        if (i30 == 0) {
            if ((i & 48) == 0) {
                i4 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                    int i31 = composerStartRestartGroup.changed(bottomSheetScaffoldState2) ? 256 : 128;
                    i4 |= i31;
                } else {
                    bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                }
                i4 |= i31;
            } else {
                bottomSheetScaffoldState2 = bottomSheetScaffoldState;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(f)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                i8 = 8192;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = f2;
                        if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i4 |= i9;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        expandedShape = shape;
                        if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(expandedShape)) {
                            i29 = 65536;
                        } else {
                            i29 = 131072;
                        }
                        i4 |= i29;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i & 1572864) == 0) {
                        containerColor = j;
                        if ((i3 & 64) == 0 || !composerStartRestartGroup.changed(containerColor)) {
                            i28 = 524288;
                        } else {
                            i28 = 1048576;
                        }
                        i4 |= i28;
                    } else {
                        containerColor = j;
                    }
                    if ((i & 12582912) == 0) {
                        jM3275contentColorForek8zF_U = j2;
                        if ((i3 & 128) == 0 || !composerStartRestartGroup.changed(jM3275contentColorForek8zF_U)) {
                            i27 = 4194304;
                        } else {
                            i27 = 8388608;
                        }
                        i4 |= i27;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    i10 = i3 & 256;
                    if (i10 != 0) {
                        i4 |= 100663296;
                        fM9042constructorimpl = f3;
                    } else {
                        fM9042constructorimpl = f3;
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i4 |= i11;
                        }
                    }
                    i12 = i3 & 512;
                    if (i12 != 0) {
                        i4 |= 805306368;
                    } else if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(f4)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i4 |= i13;
                    }
                    i14 = i3 & 1024;
                    if (i14 != 0) {
                        i15 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i16 = 4;
                        } else {
                            i16 = 2;
                        }
                        i15 = i2 | i16;
                    } else {
                        i15 = i2;
                    }
                    i17 = i3 & 2048;
                    if (i17 != 0) {
                        i15 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changed(z)) {
                            i18 = 32;
                        } else {
                            i18 = 16;
                        }
                        i15 |= i18;
                    }
                    i19 = i15;
                    i20 = i3 & 4096;
                    if (i20 != 0) {
                        i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else {
                        i21 = i19;
                        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                                i23 = 256;
                            } else {
                                i23 = 128;
                            }
                            i21 |= i23;
                        }
                        i22 = i21;
                    }
                    i24 = i3 & 8192;
                    if (i24 != 0) {
                        i25 = i22;
                        if ((i2 & 3072) == 0) {
                            i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                        }
                        if ((i2 & 24576) != 0) {
                            if ((i3 & 16384) == 0 && composerStartRestartGroup.changed(j3)) {
                                i8 = 16384;
                            }
                            i25 |= i8;
                        }
                        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                            i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                        }
                        if ((i3 & 65536) != 0) {
                            i25 |= 1572864;
                        } else if ((i2 & 1572864) == 0) {
                            i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                        }
                        if ((306783379 & i4) == 306783378 || (i25 & 599187) != 599186) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i30 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if ((i3 & 4) != 0) {
                                    bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                    i4 &= -897;
                                } else {
                                    bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                                }
                                if (i5 != 0) {
                                    fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                                } else {
                                    fM3123getSheetPeekHeightD9Ej5fM = f;
                                }
                                if (i7 != 0) {
                                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                                }
                                if ((i3 & 32) != 0) {
                                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                    i4 &= -458753;
                                }
                                if ((i3 & 64) != 0) {
                                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i4 &= -3670017;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                    i4 &= -29360129;
                                }
                                if (i10 != 0) {
                                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                                }
                                if (i12 != 0) {
                                    fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                                } else {
                                    fM3120getElevationD9Ej5fM = f4;
                                }
                                if (i14 != 0) {
                                    lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                                } else {
                                    lambda$1392012807$material3 = bm3Var;
                                }
                                if (i17 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = z;
                                }
                                if (i20 != 0) {
                                    bm3Var5 = null;
                                } else {
                                    bm3Var5 = bm3Var2;
                                }
                                if (i24 != 0) {
                                    lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                                } else {
                                    lambda$1768941633$material3 = dm3Var2;
                                }
                                if ((i3 & 16384) != 0) {
                                    jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                    i25 &= -57345;
                                } else {
                                    jM3259getSurface0d7_KjU = j3;
                                }
                                if ((i3 & 32768) != 0) {
                                    jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                    i25 &= -458753;
                                } else {
                                    jM3275contentColorForek8zF_U2 = j4;
                                }
                                j9 = jM3259getSurface0d7_KjU;
                                modifier4 = modifier3;
                                i26 = i25;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 4) != 0) {
                                    i4 &= -897;
                                }
                                if ((i3 & 32) != 0) {
                                    i4 &= -458753;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                }
                                if ((i3 & 128) != 0) {
                                    i4 &= -29360129;
                                }
                                if ((i3 & 16384) != 0) {
                                    i25 &= -57345;
                                }
                                if ((i3 & 32768) != 0) {
                                    i25 &= -458753;
                                }
                                modifier4 = modifier;
                                fM3120getElevationD9Ej5fM = f4;
                                lambda$1392012807$material3 = bm3Var;
                                z4 = z;
                                bm3Var5 = bm3Var2;
                                lambda$1768941633$material3 = dm3Var2;
                                jM3275contentColorForek8zF_U2 = j4;
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                                i26 = i25;
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                                j9 = j3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                            }
                            Modifier modifierM1289backgroundbw27NRU$default = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                            long j10 = j9;
                            Modifier modifier5 = modifier4;
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            long j11 = jM3275contentColorForek8zF_U;
                            constructor = companion.getConstructor();
                            if (composerStartRestartGroup.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composerStartRestartGroup.startReusableNode();
                            if (composerStartRestartGroup.getInserting()) {
                                composerStartRestartGroup.createNode(constructor);
                            } else {
                                composerStartRestartGroup.useNode();
                            }
                            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                            bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j11, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                            f7 = fM3123getSheetPeekHeightD9Ej5fM;
                            bm3Var3 = lambda$1392012807$material3;
                            dm3Var4 = lambda$1768941633$material3;
                            modifier2 = modifier5;
                            z3 = z4;
                            j7 = jM3275contentColorForek8zF_U2;
                            j6 = j10;
                            long j12 = containerColor;
                            f8 = fM3120getElevationD9Ej5fM;
                            f6 = fM9042constructorimpl;
                            bm3Var4 = bm3Var5;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            shape2 = expandedShape;
                            j8 = j12;
                            j5 = j11;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            shape2 = expandedShape;
                            j5 = jM3275contentColorForek8zF_U;
                            modifier2 = modifier;
                            z3 = z;
                            dm3Var4 = dm3Var2;
                            j6 = j3;
                            j7 = j4;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j8 = containerColor;
                            bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                            f6 = fM9042constructorimpl;
                            f7 = f;
                            f8 = f4;
                            bm3Var3 = bm3Var;
                            bm3Var4 = bm3Var2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i25 = i22 | 3072;
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i8 = 16384;
                        }
                        i25 |= i8;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                    }
                    if ((i3 & 65536) != 0) {
                        i25 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                    }
                    if ((306783379 & i4) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        } else {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                        }
                        Modifier modifierM1289backgroundbw27NRU$default2 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                        long j13 = j9;
                        Modifier modifier6 = modifier4;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default2);
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        long j14 = jM3275contentColorForek8zF_U;
                        constructor = companion2.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                        if (composerM5355constructorimpl.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion2.getSetModifier());
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j14, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                        f7 = fM3123getSheetPeekHeightD9Ej5fM;
                        bm3Var3 = lambda$1392012807$material3;
                        dm3Var4 = lambda$1768941633$material3;
                        modifier2 = modifier6;
                        z3 = z4;
                        j7 = jM3275contentColorForek8zF_U2;
                        j6 = j13;
                        long j15 = containerColor;
                        f8 = fM3120getElevationD9Ej5fM;
                        f6 = fM9042constructorimpl;
                        bm3Var4 = bm3Var5;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        shape2 = expandedShape;
                        j8 = j15;
                        j5 = j14;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape2 = expandedShape;
                        j5 = jM3275contentColorForek8zF_U;
                        modifier2 = modifier;
                        z3 = z;
                        dm3Var4 = dm3Var2;
                        j6 = j3;
                        j7 = j4;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j8 = containerColor;
                        bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                        f6 = fM9042constructorimpl;
                        f7 = f;
                        f8 = f4;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                fM3122getSheetMaxWidthD9Ej5fM = f2;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    expandedShape = shape;
                    if ((i3 & 32) == 0) {
                        i29 = 65536;
                    } else {
                        i29 = 65536;
                    }
                    i4 |= i29;
                } else {
                    expandedShape = shape;
                }
                if ((i & 1572864) == 0) {
                    containerColor = j;
                    if ((i3 & 64) == 0) {
                        i28 = 524288;
                    } else {
                        i28 = 524288;
                    }
                    i4 |= i28;
                } else {
                    containerColor = j;
                }
                if ((i & 12582912) == 0) {
                    jM3275contentColorForek8zF_U = j2;
                    if ((i3 & 128) == 0) {
                        i27 = 4194304;
                    } else {
                        i27 = 4194304;
                    }
                    i4 |= i27;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i4 |= 100663296;
                    fM9042constructorimpl = f3;
                } else {
                    fM9042constructorimpl = f3;
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i11;
                    }
                }
                i12 = i3 & 512;
                if (i12 != 0) {
                    i4 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                i14 = i3 & 1024;
                if (i14 != 0) {
                    i15 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i16 = 4;
                    } else {
                        i16 = 2;
                    }
                    i15 = i2 | i16;
                } else {
                    i15 = i2;
                }
                i17 = i3 & 2048;
                if (i17 != 0) {
                    i15 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i18 = 32;
                    } else {
                        i18 = 16;
                    }
                    i15 |= i18;
                }
                i19 = i15;
                i20 = i3 & 4096;
                if (i20 != 0) {
                    i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else {
                    i21 = i19;
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i23 = 256;
                        } else {
                            i23 = 128;
                        }
                        i21 |= i23;
                    }
                    i22 = i21;
                }
                i24 = i3 & 8192;
                if (i24 != 0) {
                    i25 = i22;
                    if ((i2 & 3072) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i8 = 16384;
                        }
                        i25 |= i8;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                    }
                    if ((i3 & 65536) != 0) {
                        i25 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                    }
                    if ((306783379 & i4) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        } else {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                        }
                        Modifier modifierM1289backgroundbw27NRU$default3 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                        long j16 = j9;
                        Modifier modifier7 = modifier4;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default3);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        long j17 = jM3275contentColorForek8zF_U;
                        constructor = companion3.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                        if (composerM5355constructorimpl.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j17, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                        f7 = fM3123getSheetPeekHeightD9Ej5fM;
                        bm3Var3 = lambda$1392012807$material3;
                        dm3Var4 = lambda$1768941633$material3;
                        modifier2 = modifier7;
                        z3 = z4;
                        j7 = jM3275contentColorForek8zF_U2;
                        j6 = j16;
                        long j18 = containerColor;
                        f8 = fM3120getElevationD9Ej5fM;
                        f6 = fM9042constructorimpl;
                        bm3Var4 = bm3Var5;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        shape2 = expandedShape;
                        j8 = j18;
                        j5 = j17;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape2 = expandedShape;
                        j5 = jM3275contentColorForek8zF_U;
                        modifier2 = modifier;
                        z3 = z;
                        dm3Var4 = dm3Var2;
                        j6 = j3;
                        j7 = j4;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j8 = containerColor;
                        bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                        f6 = fM9042constructorimpl;
                        f7 = f;
                        f8 = f4;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i25 = i22 | 3072;
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i8 = 16384;
                    }
                    i25 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                }
                if ((i3 & 65536) != 0) {
                    i25 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                }
                if ((306783379 & i4) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    } else {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                    }
                    Modifier modifierM1289backgroundbw27NRU$default4 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                    long j19 = j9;
                    Modifier modifier8 = modifier4;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default4);
                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                    long j110 = jM3275contentColorForek8zF_U;
                    constructor = companion4.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion4.getSetModifier());
                    BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j110, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                    f7 = fM3123getSheetPeekHeightD9Ej5fM;
                    bm3Var3 = lambda$1392012807$material3;
                    dm3Var4 = lambda$1768941633$material3;
                    modifier2 = modifier8;
                    z3 = z4;
                    j7 = jM3275contentColorForek8zF_U2;
                    j6 = j19;
                    long j111 = containerColor;
                    f8 = fM3120getElevationD9Ej5fM;
                    f6 = fM9042constructorimpl;
                    bm3Var4 = bm3Var5;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    shape2 = expandedShape;
                    j8 = j111;
                    j5 = j110;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape2 = expandedShape;
                    j5 = jM3275contentColorForek8zF_U;
                    modifier2 = modifier;
                    z3 = z;
                    dm3Var4 = dm3Var2;
                    j6 = j3;
                    j7 = j4;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j8 = containerColor;
                    bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                    f6 = fM9042constructorimpl;
                    f7 = f;
                    f8 = f4;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            i7 = i3 & 16;
            i8 = 8192;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = f2;
                    if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i4 |= i9;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    expandedShape = shape;
                    if ((i3 & 32) == 0) {
                        i29 = 65536;
                    } else {
                        i29 = 65536;
                    }
                    i4 |= i29;
                } else {
                    expandedShape = shape;
                }
                if ((i & 1572864) == 0) {
                    containerColor = j;
                    if ((i3 & 64) == 0) {
                        i28 = 524288;
                    } else {
                        i28 = 524288;
                    }
                    i4 |= i28;
                } else {
                    containerColor = j;
                }
                if ((i & 12582912) == 0) {
                    jM3275contentColorForek8zF_U = j2;
                    if ((i3 & 128) == 0) {
                        i27 = 4194304;
                    } else {
                        i27 = 4194304;
                    }
                    i4 |= i27;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i4 |= 100663296;
                    fM9042constructorimpl = f3;
                } else {
                    fM9042constructorimpl = f3;
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i11;
                    }
                }
                i12 = i3 & 512;
                if (i12 != 0) {
                    i4 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                i14 = i3 & 1024;
                if (i14 != 0) {
                    i15 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i16 = 4;
                    } else {
                        i16 = 2;
                    }
                    i15 = i2 | i16;
                } else {
                    i15 = i2;
                }
                i17 = i3 & 2048;
                if (i17 != 0) {
                    i15 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i18 = 32;
                    } else {
                        i18 = 16;
                    }
                    i15 |= i18;
                }
                i19 = i15;
                i20 = i3 & 4096;
                if (i20 != 0) {
                    i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else {
                    i21 = i19;
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i23 = 256;
                        } else {
                            i23 = 128;
                        }
                        i21 |= i23;
                    }
                    i22 = i21;
                }
                i24 = i3 & 8192;
                if (i24 != 0) {
                    i25 = i22;
                    if ((i2 & 3072) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i8 = 16384;
                        }
                        i25 |= i8;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                    }
                    if ((i3 & 65536) != 0) {
                        i25 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                    }
                    if ((306783379 & i4) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        } else {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                        }
                        Modifier modifierM1289backgroundbw27NRU$default5 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                        long j112 = j9;
                        Modifier modifier9 = modifier4;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default5);
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        long j113 = jM3275contentColorForek8zF_U;
                        constructor = companion5.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
                        if (composerM5355constructorimpl.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion5.getSetModifier());
                        BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j113, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                        f7 = fM3123getSheetPeekHeightD9Ej5fM;
                        bm3Var3 = lambda$1392012807$material3;
                        dm3Var4 = lambda$1768941633$material3;
                        modifier2 = modifier9;
                        z3 = z4;
                        j7 = jM3275contentColorForek8zF_U2;
                        j6 = j112;
                        long j114 = containerColor;
                        f8 = fM3120getElevationD9Ej5fM;
                        f6 = fM9042constructorimpl;
                        bm3Var4 = bm3Var5;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        shape2 = expandedShape;
                        j8 = j114;
                        j5 = j113;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape2 = expandedShape;
                        j5 = jM3275contentColorForek8zF_U;
                        modifier2 = modifier;
                        z3 = z;
                        dm3Var4 = dm3Var2;
                        j6 = j3;
                        j7 = j4;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j8 = containerColor;
                        bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                        f6 = fM9042constructorimpl;
                        f7 = f;
                        f8 = f4;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i25 = i22 | 3072;
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i8 = 16384;
                    }
                    i25 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                }
                if ((i3 & 65536) != 0) {
                    i25 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                }
                if ((306783379 & i4) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    } else {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                    }
                    Modifier modifierM1289backgroundbw27NRU$default6 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                    long j115 = j9;
                    Modifier modifier10 = modifier4;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default6);
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    long j116 = jM3275contentColorForek8zF_U;
                    constructor = companion6.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion6, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap6);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion6.getSetModifier());
                    BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j116, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                    f7 = fM3123getSheetPeekHeightD9Ej5fM;
                    bm3Var3 = lambda$1392012807$material3;
                    dm3Var4 = lambda$1768941633$material3;
                    modifier2 = modifier10;
                    z3 = z4;
                    j7 = jM3275contentColorForek8zF_U2;
                    j6 = j115;
                    long j117 = containerColor;
                    f8 = fM3120getElevationD9Ej5fM;
                    f6 = fM9042constructorimpl;
                    bm3Var4 = bm3Var5;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    shape2 = expandedShape;
                    j8 = j117;
                    j5 = j116;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape2 = expandedShape;
                    j5 = jM3275contentColorForek8zF_U;
                    modifier2 = modifier;
                    z3 = z;
                    dm3Var4 = dm3Var2;
                    j6 = j3;
                    j7 = j4;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j8 = containerColor;
                    bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                    f6 = fM9042constructorimpl;
                    f7 = f;
                    f8 = f4;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            fM3122getSheetMaxWidthD9Ej5fM = f2;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                expandedShape = shape;
                if ((i3 & 32) == 0) {
                    i29 = 65536;
                } else {
                    i29 = 65536;
                }
                i4 |= i29;
            } else {
                expandedShape = shape;
            }
            if ((i & 1572864) == 0) {
                containerColor = j;
                if ((i3 & 64) == 0) {
                    i28 = 524288;
                } else {
                    i28 = 524288;
                }
                i4 |= i28;
            } else {
                containerColor = j;
            }
            if ((i & 12582912) == 0) {
                jM3275contentColorForek8zF_U = j2;
                if ((i3 & 128) == 0) {
                    i27 = 4194304;
                } else {
                    i27 = 4194304;
                }
                i4 |= i27;
            } else {
                jM3275contentColorForek8zF_U = j2;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i4 |= 100663296;
                fM9042constructorimpl = f3;
            } else {
                fM9042constructorimpl = f3;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 512;
            if (i12 != 0) {
                i4 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(f4)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i4 |= i13;
            }
            i14 = i3 & 1024;
            if (i14 != 0) {
                i15 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i16 = 4;
                } else {
                    i16 = 2;
                }
                i15 = i2 | i16;
            } else {
                i15 = i2;
            }
            i17 = i3 & 2048;
            if (i17 != 0) {
                i15 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i18 = 32;
                } else {
                    i18 = 16;
                }
                i15 |= i18;
            }
            i19 = i15;
            i20 = i3 & 4096;
            if (i20 != 0) {
                i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else {
                i21 = i19;
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i23 = 256;
                    } else {
                        i23 = 128;
                    }
                    i21 |= i23;
                }
                i22 = i21;
            }
            i24 = i3 & 8192;
            if (i24 != 0) {
                i25 = i22;
                if ((i2 & 3072) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i8 = 16384;
                    }
                    i25 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                }
                if ((i3 & 65536) != 0) {
                    i25 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                }
                if ((306783379 & i4) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    } else {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                    }
                    Modifier modifierM1289backgroundbw27NRU$default7 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                    long j118 = j9;
                    Modifier modifier11 = modifier4;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default7);
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    long j119 = jM3275contentColorForek8zF_U;
                    constructor = companion7.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion7, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap7);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion7.getSetModifier());
                    BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j119, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                    f7 = fM3123getSheetPeekHeightD9Ej5fM;
                    bm3Var3 = lambda$1392012807$material3;
                    dm3Var4 = lambda$1768941633$material3;
                    modifier2 = modifier11;
                    z3 = z4;
                    j7 = jM3275contentColorForek8zF_U2;
                    j6 = j118;
                    long j1110 = containerColor;
                    f8 = fM3120getElevationD9Ej5fM;
                    f6 = fM9042constructorimpl;
                    bm3Var4 = bm3Var5;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    shape2 = expandedShape;
                    j8 = j1110;
                    j5 = j119;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape2 = expandedShape;
                    j5 = jM3275contentColorForek8zF_U;
                    modifier2 = modifier;
                    z3 = z;
                    dm3Var4 = dm3Var2;
                    j6 = j3;
                    j7 = j4;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j8 = containerColor;
                    bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                    f6 = fM9042constructorimpl;
                    f7 = f;
                    f8 = f4;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i25 = i22 | 3072;
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i8 = 16384;
                }
                i25 |= i8;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
            }
            if ((i3 & 65536) != 0) {
                i25 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
            }
            if ((306783379 & i4) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                } else {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                }
                Modifier modifierM1289backgroundbw27NRU$default8 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                long j1111 = j9;
                Modifier modifier12 = modifier4;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default8);
                ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                long j1112 = jM3275contentColorForek8zF_U;
                constructor = companion8.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion8, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap8);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion8.getSetModifier());
                BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j1112, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                f7 = fM3123getSheetPeekHeightD9Ej5fM;
                bm3Var3 = lambda$1392012807$material3;
                dm3Var4 = lambda$1768941633$material3;
                modifier2 = modifier12;
                z3 = z4;
                j7 = jM3275contentColorForek8zF_U2;
                j6 = j1111;
                long j1113 = containerColor;
                f8 = fM3120getElevationD9Ej5fM;
                f6 = fM9042constructorimpl;
                bm3Var4 = bm3Var5;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                shape2 = expandedShape;
                j8 = j1113;
                j5 = j1112;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                shape2 = expandedShape;
                j5 = jM3275contentColorForek8zF_U;
                modifier2 = modifier;
                z3 = z;
                dm3Var4 = dm3Var2;
                j6 = j3;
                j7 = j4;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                j8 = containerColor;
                bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                f6 = fM9042constructorimpl;
                f7 = f;
                f8 = f4;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                if (composerStartRestartGroup.changed(bottomSheetScaffoldState2)) {
                }
                i4 |= i31;
            } else {
                bottomSheetScaffoldState2 = bottomSheetScaffoldState;
            }
            i4 |= i31;
        } else {
            bottomSheetScaffoldState2 = bottomSheetScaffoldState;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(f)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            i8 = 8192;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = f2;
                    if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i4 |= i9;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    expandedShape = shape;
                    if ((i3 & 32) == 0) {
                        i29 = 65536;
                    } else {
                        i29 = 65536;
                    }
                    i4 |= i29;
                } else {
                    expandedShape = shape;
                }
                if ((i & 1572864) == 0) {
                    containerColor = j;
                    if ((i3 & 64) == 0) {
                        i28 = 524288;
                    } else {
                        i28 = 524288;
                    }
                    i4 |= i28;
                } else {
                    containerColor = j;
                }
                if ((i & 12582912) == 0) {
                    jM3275contentColorForek8zF_U = j2;
                    if ((i3 & 128) == 0) {
                        i27 = 4194304;
                    } else {
                        i27 = 4194304;
                    }
                    i4 |= i27;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i4 |= 100663296;
                    fM9042constructorimpl = f3;
                } else {
                    fM9042constructorimpl = f3;
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i11;
                    }
                }
                i12 = i3 & 512;
                if (i12 != 0) {
                    i4 |= 805306368;
                } else if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f4)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i4 |= i13;
                }
                i14 = i3 & 1024;
                if (i14 != 0) {
                    i15 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i16 = 4;
                    } else {
                        i16 = 2;
                    }
                    i15 = i2 | i16;
                } else {
                    i15 = i2;
                }
                i17 = i3 & 2048;
                if (i17 != 0) {
                    i15 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i18 = 32;
                    } else {
                        i18 = 16;
                    }
                    i15 |= i18;
                }
                i19 = i15;
                i20 = i3 & 4096;
                if (i20 != 0) {
                    i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else {
                    i21 = i19;
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i23 = 256;
                        } else {
                            i23 = 128;
                        }
                        i21 |= i23;
                    }
                    i22 = i21;
                }
                i24 = i3 & 8192;
                if (i24 != 0) {
                    i25 = i22;
                    if ((i2 & 3072) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i8 = 16384;
                        }
                        i25 |= i8;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                    }
                    if ((i3 & 65536) != 0) {
                        i25 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                    }
                    if ((306783379 & i4) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        } else {
                            if (i30 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i3 & 4) != 0) {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                            }
                            if (i5 != 0) {
                                fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                            } else {
                                fM3123getSheetPeekHeightD9Ej5fM = f;
                            }
                            if (i7 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if ((i3 & 32) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                                i4 &= -29360129;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            }
                            if (i12 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f4;
                            }
                            if (i14 != 0) {
                                lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                            } else {
                                lambda$1392012807$material3 = bm3Var;
                            }
                            if (i17 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i20 != 0) {
                                bm3Var5 = null;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i24 != 0) {
                                lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                            } else {
                                lambda$1768941633$material3 = dm3Var2;
                            }
                            if ((i3 & 16384) != 0) {
                                jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                                i25 &= -57345;
                            } else {
                                jM3259getSurface0d7_KjU = j3;
                            }
                            if ((i3 & 32768) != 0) {
                                jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                                i25 &= -458753;
                            } else {
                                jM3275contentColorForek8zF_U2 = j4;
                            }
                            j9 = jM3259getSurface0d7_KjU;
                            modifier4 = modifier3;
                            i26 = i25;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                        }
                        Modifier modifierM1289backgroundbw27NRU$default9 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                        long j1114 = j9;
                        Modifier modifier13 = modifier4;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy9 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default9);
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        long j1115 = jM3275contentColorForek8zF_U;
                        constructor = companion9.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                        bm3VarB = cc.b(companion9, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy9, composerM5355constructorimpl, currentCompositionLocalMap9);
                        if (composerM5355constructorimpl.getInserting()) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        } else {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier9, companion9.getSetModifier());
                        BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j1115, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                        f7 = fM3123getSheetPeekHeightD9Ej5fM;
                        bm3Var3 = lambda$1392012807$material3;
                        dm3Var4 = lambda$1768941633$material3;
                        modifier2 = modifier13;
                        z3 = z4;
                        j7 = jM3275contentColorForek8zF_U2;
                        j6 = j1114;
                        long j1116 = containerColor;
                        f8 = fM3120getElevationD9Ej5fM;
                        f6 = fM9042constructorimpl;
                        bm3Var4 = bm3Var5;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        shape2 = expandedShape;
                        j8 = j1116;
                        j5 = j1115;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape2 = expandedShape;
                        j5 = jM3275contentColorForek8zF_U;
                        modifier2 = modifier;
                        z3 = z;
                        dm3Var4 = dm3Var2;
                        j6 = j3;
                        j7 = j4;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j8 = containerColor;
                        bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                        f6 = fM9042constructorimpl;
                        f7 = f;
                        f8 = f4;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i25 = i22 | 3072;
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i8 = 16384;
                    }
                    i25 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                }
                if ((i3 & 65536) != 0) {
                    i25 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                }
                if ((306783379 & i4) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    } else {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                    }
                    Modifier modifierM1289backgroundbw27NRU$default10 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                    long j1117 = j9;
                    Modifier modifier14 = modifier4;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy10 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default10);
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    long j1118 = jM3275contentColorForek8zF_U;
                    constructor = companion10.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion10, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy10, composerM5355constructorimpl, currentCompositionLocalMap10);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier10, companion10.getSetModifier());
                    BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j1118, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                    f7 = fM3123getSheetPeekHeightD9Ej5fM;
                    bm3Var3 = lambda$1392012807$material3;
                    dm3Var4 = lambda$1768941633$material3;
                    modifier2 = modifier14;
                    z3 = z4;
                    j7 = jM3275contentColorForek8zF_U2;
                    j6 = j1117;
                    long j1119 = containerColor;
                    f8 = fM3120getElevationD9Ej5fM;
                    f6 = fM9042constructorimpl;
                    bm3Var4 = bm3Var5;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    shape2 = expandedShape;
                    j8 = j1119;
                    j5 = j1118;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape2 = expandedShape;
                    j5 = jM3275contentColorForek8zF_U;
                    modifier2 = modifier;
                    z3 = z;
                    dm3Var4 = dm3Var2;
                    j6 = j3;
                    j7 = j4;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j8 = containerColor;
                    bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                    f6 = fM9042constructorimpl;
                    f7 = f;
                    f8 = f4;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            fM3122getSheetMaxWidthD9Ej5fM = f2;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                expandedShape = shape;
                if ((i3 & 32) == 0) {
                    i29 = 65536;
                } else {
                    i29 = 65536;
                }
                i4 |= i29;
            } else {
                expandedShape = shape;
            }
            if ((i & 1572864) == 0) {
                containerColor = j;
                if ((i3 & 64) == 0) {
                    i28 = 524288;
                } else {
                    i28 = 524288;
                }
                i4 |= i28;
            } else {
                containerColor = j;
            }
            if ((i & 12582912) == 0) {
                jM3275contentColorForek8zF_U = j2;
                if ((i3 & 128) == 0) {
                    i27 = 4194304;
                } else {
                    i27 = 4194304;
                }
                i4 |= i27;
            } else {
                jM3275contentColorForek8zF_U = j2;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i4 |= 100663296;
                fM9042constructorimpl = f3;
            } else {
                fM9042constructorimpl = f3;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 512;
            if (i12 != 0) {
                i4 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(f4)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i4 |= i13;
            }
            i14 = i3 & 1024;
            if (i14 != 0) {
                i15 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i16 = 4;
                } else {
                    i16 = 2;
                }
                i15 = i2 | i16;
            } else {
                i15 = i2;
            }
            i17 = i3 & 2048;
            if (i17 != 0) {
                i15 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i18 = 32;
                } else {
                    i18 = 16;
                }
                i15 |= i18;
            }
            i19 = i15;
            i20 = i3 & 4096;
            if (i20 != 0) {
                i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else {
                i21 = i19;
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i23 = 256;
                    } else {
                        i23 = 128;
                    }
                    i21 |= i23;
                }
                i22 = i21;
            }
            i24 = i3 & 8192;
            if (i24 != 0) {
                i25 = i22;
                if ((i2 & 3072) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i8 = 16384;
                    }
                    i25 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                }
                if ((i3 & 65536) != 0) {
                    i25 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                }
                if ((306783379 & i4) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    } else {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                    }
                    Modifier modifierM1289backgroundbw27NRU$default11 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                    long j11110 = j9;
                    Modifier modifier15 = modifier4;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy11 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default11);
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    long j11111 = jM3275contentColorForek8zF_U;
                    constructor = companion11.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion11, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy11, composerM5355constructorimpl, currentCompositionLocalMap11);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier11, companion11.getSetModifier());
                    BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j11111, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                    f7 = fM3123getSheetPeekHeightD9Ej5fM;
                    bm3Var3 = lambda$1392012807$material3;
                    dm3Var4 = lambda$1768941633$material3;
                    modifier2 = modifier15;
                    z3 = z4;
                    j7 = jM3275contentColorForek8zF_U2;
                    j6 = j11110;
                    long j11112 = containerColor;
                    f8 = fM3120getElevationD9Ej5fM;
                    f6 = fM9042constructorimpl;
                    bm3Var4 = bm3Var5;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    shape2 = expandedShape;
                    j8 = j11112;
                    j5 = j11111;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape2 = expandedShape;
                    j5 = jM3275contentColorForek8zF_U;
                    modifier2 = modifier;
                    z3 = z;
                    dm3Var4 = dm3Var2;
                    j6 = j3;
                    j7 = j4;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j8 = containerColor;
                    bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                    f6 = fM9042constructorimpl;
                    f7 = f;
                    f8 = f4;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i25 = i22 | 3072;
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i8 = 16384;
                }
                i25 |= i8;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
            }
            if ((i3 & 65536) != 0) {
                i25 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
            }
            if ((306783379 & i4) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                } else {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                }
                Modifier modifierM1289backgroundbw27NRU$default12 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                long j11113 = j9;
                Modifier modifier16 = modifier4;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy12 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default12);
                ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                long j11114 = jM3275contentColorForek8zF_U;
                constructor = companion12.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion12, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy12, composerM5355constructorimpl, currentCompositionLocalMap12);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier12, companion12.getSetModifier());
                BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j11114, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                f7 = fM3123getSheetPeekHeightD9Ej5fM;
                bm3Var3 = lambda$1392012807$material3;
                dm3Var4 = lambda$1768941633$material3;
                modifier2 = modifier16;
                z3 = z4;
                j7 = jM3275contentColorForek8zF_U2;
                j6 = j11113;
                long j11115 = containerColor;
                f8 = fM3120getElevationD9Ej5fM;
                f6 = fM9042constructorimpl;
                bm3Var4 = bm3Var5;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                shape2 = expandedShape;
                j8 = j11115;
                j5 = j11114;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                shape2 = expandedShape;
                j5 = jM3275contentColorForek8zF_U;
                modifier2 = modifier;
                z3 = z;
                dm3Var4 = dm3Var2;
                j6 = j3;
                j7 = j4;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                j8 = containerColor;
                bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                f6 = fM9042constructorimpl;
                f7 = f;
                f8 = f4;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        i7 = i3 & 16;
        i8 = 8192;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                fM3122getSheetMaxWidthD9Ej5fM = f2;
                if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i4 |= i9;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                expandedShape = shape;
                if ((i3 & 32) == 0) {
                    i29 = 65536;
                } else {
                    i29 = 65536;
                }
                i4 |= i29;
            } else {
                expandedShape = shape;
            }
            if ((i & 1572864) == 0) {
                containerColor = j;
                if ((i3 & 64) == 0) {
                    i28 = 524288;
                } else {
                    i28 = 524288;
                }
                i4 |= i28;
            } else {
                containerColor = j;
            }
            if ((i & 12582912) == 0) {
                jM3275contentColorForek8zF_U = j2;
                if ((i3 & 128) == 0) {
                    i27 = 4194304;
                } else {
                    i27 = 4194304;
                }
                i4 |= i27;
            } else {
                jM3275contentColorForek8zF_U = j2;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i4 |= 100663296;
                fM9042constructorimpl = f3;
            } else {
                fM9042constructorimpl = f3;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 512;
            if (i12 != 0) {
                i4 |= 805306368;
            } else if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(f4)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i4 |= i13;
            }
            i14 = i3 & 1024;
            if (i14 != 0) {
                i15 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i16 = 4;
                } else {
                    i16 = 2;
                }
                i15 = i2 | i16;
            } else {
                i15 = i2;
            }
            i17 = i3 & 2048;
            if (i17 != 0) {
                i15 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i18 = 32;
                } else {
                    i18 = 16;
                }
                i15 |= i18;
            }
            i19 = i15;
            i20 = i3 & 4096;
            if (i20 != 0) {
                i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else {
                i21 = i19;
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i23 = 256;
                    } else {
                        i23 = 128;
                    }
                    i21 |= i23;
                }
                i22 = i21;
            }
            i24 = i3 & 8192;
            if (i24 != 0) {
                i25 = i22;
                if ((i2 & 3072) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i8 = 16384;
                    }
                    i25 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
                }
                if ((i3 & 65536) != 0) {
                    i25 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
                }
                if ((306783379 & i4) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    } else {
                        if (i30 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i3 & 4) != 0) {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                        }
                        if (i5 != 0) {
                            fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                        } else {
                            fM3123getSheetPeekHeightD9Ej5fM = f;
                        }
                        if (i7 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if ((i3 & 32) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                            i4 &= -29360129;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        }
                        if (i12 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f4;
                        }
                        if (i14 != 0) {
                            lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                        } else {
                            lambda$1392012807$material3 = bm3Var;
                        }
                        if (i17 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i20 != 0) {
                            bm3Var5 = null;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i24 != 0) {
                            lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                        } else {
                            lambda$1768941633$material3 = dm3Var2;
                        }
                        if ((i3 & 16384) != 0) {
                            jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                            i25 &= -57345;
                        } else {
                            jM3259getSurface0d7_KjU = j3;
                        }
                        if ((i3 & 32768) != 0) {
                            jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                            i25 &= -458753;
                        } else {
                            jM3275contentColorForek8zF_U2 = j4;
                        }
                        j9 = jM3259getSurface0d7_KjU;
                        modifier4 = modifier3;
                        i26 = i25;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                    }
                    Modifier modifierM1289backgroundbw27NRU$default13 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                    long j11116 = j9;
                    Modifier modifier17 = modifier4;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy13 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default13);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    long j11117 = jM3275contentColorForek8zF_U;
                    constructor = companion13.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB = cc.b(companion13, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy13, composerM5355constructorimpl, currentCompositionLocalMap13);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier13, companion13.getSetModifier());
                    BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j11117, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                    f7 = fM3123getSheetPeekHeightD9Ej5fM;
                    bm3Var3 = lambda$1392012807$material3;
                    dm3Var4 = lambda$1768941633$material3;
                    modifier2 = modifier17;
                    z3 = z4;
                    j7 = jM3275contentColorForek8zF_U2;
                    j6 = j11116;
                    long j11118 = containerColor;
                    f8 = fM3120getElevationD9Ej5fM;
                    f6 = fM9042constructorimpl;
                    bm3Var4 = bm3Var5;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    shape2 = expandedShape;
                    j8 = j11118;
                    j5 = j11117;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape2 = expandedShape;
                    j5 = jM3275contentColorForek8zF_U;
                    modifier2 = modifier;
                    z3 = z;
                    dm3Var4 = dm3Var2;
                    j6 = j3;
                    j7 = j4;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j8 = containerColor;
                    bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                    f6 = fM9042constructorimpl;
                    f7 = f;
                    f8 = f4;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i25 = i22 | 3072;
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i8 = 16384;
                }
                i25 |= i8;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
            }
            if ((i3 & 65536) != 0) {
                i25 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
            }
            if ((306783379 & i4) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                } else {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                }
                Modifier modifierM1289backgroundbw27NRU$default14 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                long j11119 = j9;
                Modifier modifier18 = modifier4;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy14 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default14);
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                long j111110 = jM3275contentColorForek8zF_U;
                constructor = companion14.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion14, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy14, composerM5355constructorimpl, currentCompositionLocalMap14);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier14, companion14.getSetModifier());
                BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j111110, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                f7 = fM3123getSheetPeekHeightD9Ej5fM;
                bm3Var3 = lambda$1392012807$material3;
                dm3Var4 = lambda$1768941633$material3;
                modifier2 = modifier18;
                z3 = z4;
                j7 = jM3275contentColorForek8zF_U2;
                j6 = j11119;
                long j111111 = containerColor;
                f8 = fM3120getElevationD9Ej5fM;
                f6 = fM9042constructorimpl;
                bm3Var4 = bm3Var5;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                shape2 = expandedShape;
                j8 = j111111;
                j5 = j111110;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                shape2 = expandedShape;
                j5 = jM3275contentColorForek8zF_U;
                modifier2 = modifier;
                z3 = z;
                dm3Var4 = dm3Var2;
                j6 = j3;
                j7 = j4;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                j8 = containerColor;
                bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                f6 = fM9042constructorimpl;
                f7 = f;
                f8 = f4;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        fM3122getSheetMaxWidthD9Ej5fM = f2;
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            expandedShape = shape;
            if ((i3 & 32) == 0) {
                i29 = 65536;
            } else {
                i29 = 65536;
            }
            i4 |= i29;
        } else {
            expandedShape = shape;
        }
        if ((i & 1572864) == 0) {
            containerColor = j;
            if ((i3 & 64) == 0) {
                i28 = 524288;
            } else {
                i28 = 524288;
            }
            i4 |= i28;
        } else {
            containerColor = j;
        }
        if ((i & 12582912) == 0) {
            jM3275contentColorForek8zF_U = j2;
            if ((i3 & 128) == 0) {
                i27 = 4194304;
            } else {
                i27 = 4194304;
            }
            i4 |= i27;
        } else {
            jM3275contentColorForek8zF_U = j2;
        }
        i10 = i3 & 256;
        if (i10 != 0) {
            i4 |= 100663296;
            fM9042constructorimpl = f3;
        } else {
            fM9042constructorimpl = f3;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(fM9042constructorimpl)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i11;
            }
        }
        i12 = i3 & 512;
        if (i12 != 0) {
            i4 |= 805306368;
        } else if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changed(f4)) {
                i13 = 536870912;
            } else {
                i13 = 268435456;
            }
            i4 |= i13;
        }
        i14 = i3 & 1024;
        if (i14 != 0) {
            i15 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i15 = i2 | i16;
        } else {
            i15 = i2;
        }
        i17 = i3 & 2048;
        if (i17 != 0) {
            i15 |= 48;
        } else if ((i2 & 48) != 0) {
            if (composerStartRestartGroup.changed(z)) {
                i18 = 32;
            } else {
                i18 = 16;
            }
            i15 |= i18;
        }
        i19 = i15;
        i20 = i3 & 4096;
        if (i20 != 0) {
            i22 = i19 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else {
            i21 = i19;
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i23 = 256;
                } else {
                    i23 = 128;
                }
                i21 |= i23;
            }
            i22 = i21;
        }
        i24 = i3 & 8192;
        if (i24 != 0) {
            i25 = i22;
            if ((i2 & 3072) == 0) {
                i25 |= composerStartRestartGroup.changedInstance(dm3Var2) ? 2048 : 1024;
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i8 = 16384;
                }
                i25 |= i8;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
            }
            if ((i3 & 65536) != 0) {
                i25 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
            }
            if ((306783379 & i4) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                } else {
                    if (i30 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i3 & 4) != 0) {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                    }
                    if (i5 != 0) {
                        fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                    } else {
                        fM3123getSheetPeekHeightD9Ej5fM = f;
                    }
                    if (i7 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if ((i3 & 32) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                        i4 &= -29360129;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    }
                    if (i12 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f4;
                    }
                    if (i14 != 0) {
                        lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                    } else {
                        lambda$1392012807$material3 = bm3Var;
                    }
                    if (i17 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i20 != 0) {
                        bm3Var5 = null;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i24 != 0) {
                        lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                    } else {
                        lambda$1768941633$material3 = dm3Var2;
                    }
                    if ((i3 & 16384) != 0) {
                        jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                        i25 &= -57345;
                    } else {
                        jM3259getSurface0d7_KjU = j3;
                    }
                    if ((i3 & 32768) != 0) {
                        jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                        i25 &= -458753;
                    } else {
                        jM3275contentColorForek8zF_U2 = j4;
                    }
                    j9 = jM3259getSurface0d7_KjU;
                    modifier4 = modifier3;
                    i26 = i25;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
                }
                Modifier modifierM1289backgroundbw27NRU$default15 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
                long j111112 = j9;
                Modifier modifier19 = modifier4;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy15 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default15);
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                long j111113 = jM3275contentColorForek8zF_U;
                constructor = companion15.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion15, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy15, composerM5355constructorimpl, currentCompositionLocalMap15);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier15, companion15.getSetModifier());
                BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j111113, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
                f7 = fM3123getSheetPeekHeightD9Ej5fM;
                bm3Var3 = lambda$1392012807$material3;
                dm3Var4 = lambda$1768941633$material3;
                modifier2 = modifier19;
                z3 = z4;
                j7 = jM3275contentColorForek8zF_U2;
                j6 = j111112;
                long j111114 = containerColor;
                f8 = fM3120getElevationD9Ej5fM;
                f6 = fM9042constructorimpl;
                bm3Var4 = bm3Var5;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                shape2 = expandedShape;
                j8 = j111114;
                j5 = j111113;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                shape2 = expandedShape;
                j5 = jM3275contentColorForek8zF_U;
                modifier2 = modifier;
                z3 = z;
                dm3Var4 = dm3Var2;
                j6 = j3;
                j7 = j4;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                j8 = containerColor;
                bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
                f6 = fM9042constructorimpl;
                f7 = f;
                f8 = f4;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i25 = i22 | 3072;
        if ((i2 & 24576) != 0) {
            if ((i3 & 16384) == 0) {
                i8 = 16384;
            }
            i25 |= i8;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
            i25 |= ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(j4)) ? 65536 : 131072;
        }
        if ((i3 & 65536) != 0) {
            i25 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            i25 |= composerStartRestartGroup.changedInstance(dm3Var3) ? 1048576 : 524288;
        }
        if ((306783379 & i4) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i30 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i3 & 4) != 0) {
                    bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                    i4 &= -897;
                } else {
                    bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                }
                if (i5 != 0) {
                    fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                } else {
                    fM3123getSheetPeekHeightD9Ej5fM = f;
                }
                if (i7 != 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                }
                if ((i3 & 32) != 0) {
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    i4 &= -458753;
                }
                if ((i3 & 64) != 0) {
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -3670017;
                }
                if ((i3 & 128) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                    i4 &= -29360129;
                }
                if (i10 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                }
                if (i12 != 0) {
                    fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                } else {
                    fM3120getElevationD9Ej5fM = f4;
                }
                if (i14 != 0) {
                    lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                } else {
                    lambda$1392012807$material3 = bm3Var;
                }
                if (i17 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i20 != 0) {
                    bm3Var5 = null;
                } else {
                    bm3Var5 = bm3Var2;
                }
                if (i24 != 0) {
                    lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                } else {
                    lambda$1768941633$material3 = dm3Var2;
                }
                if ((i3 & 16384) != 0) {
                    jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                    i25 &= -57345;
                } else {
                    jM3259getSurface0d7_KjU = j3;
                }
                if ((i3 & 32768) != 0) {
                    jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                    i25 &= -458753;
                } else {
                    jM3275contentColorForek8zF_U2 = j4;
                }
                j9 = jM3259getSurface0d7_KjU;
                modifier4 = modifier3;
                i26 = i25;
            } else {
                if (i30 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i3 & 4) != 0) {
                    bottomSheetScaffoldStateRememberBottomSheetScaffoldState = rememberBottomSheetScaffoldState(null, null, composerStartRestartGroup, 0, 3);
                    i4 &= -897;
                } else {
                    bottomSheetScaffoldStateRememberBottomSheetScaffoldState = bottomSheetScaffoldState2;
                }
                if (i5 != 0) {
                    fM3123getSheetPeekHeightD9Ej5fM = BottomSheetDefaults.INSTANCE.m3123getSheetPeekHeightD9Ej5fM();
                } else {
                    fM3123getSheetPeekHeightD9Ej5fM = f;
                }
                if (i7 != 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                }
                if ((i3 & 32) != 0) {
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    i4 &= -458753;
                }
                if ((i3 & 64) != 0) {
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -3670017;
                }
                if ((i3 & 128) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 18) & 14);
                    i4 &= -29360129;
                }
                if (i10 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                }
                if (i12 != 0) {
                    fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                } else {
                    fM3120getElevationD9Ej5fM = f4;
                }
                if (i14 != 0) {
                    lambda$1392012807$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1392012807$material3();
                } else {
                    lambda$1392012807$material3 = bm3Var;
                }
                if (i17 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i20 != 0) {
                    bm3Var5 = null;
                } else {
                    bm3Var5 = bm3Var2;
                }
                if (i24 != 0) {
                    lambda$1768941633$material3 = ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.getLambda$1768941633$material3();
                } else {
                    lambda$1768941633$material3 = dm3Var2;
                }
                if ((i3 & 16384) != 0) {
                    jM3259getSurface0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composerStartRestartGroup, 6).m3259getSurface0d7_KjU();
                    i25 &= -57345;
                } else {
                    jM3259getSurface0d7_KjU = j3;
                }
                if ((i3 & 32768) != 0) {
                    jM3275contentColorForek8zF_U2 = ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composerStartRestartGroup, (i25 >> 12) & 14);
                    i25 &= -458753;
                } else {
                    jM3275contentColorForek8zF_U2 = j4;
                }
                j9 = jM3259getSurface0d7_KjU;
                modifier4 = modifier3;
                i26 = i25;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(920075480, i4, i26, "androidx.compose.material3.BottomSheetScaffold (BottomSheetScaffold.kt:135)");
            }
            Modifier modifierM1289backgroundbw27NRU$default16 = BackgroundKt.m1289backgroundbw27NRU$default(SizeKt.fillMaxSize$default(modifier4, 0.0f, 1, null), j9, null, 2, null);
            long j111115 = j9;
            Modifier modifier110 = modifier4;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy16 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default16);
            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
            long j111116 = jM3275contentColorForek8zF_U;
            constructor = companion16.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion16, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy16, composerM5355constructorimpl, currentCompositionLocalMap16);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier16, companion16.getSetModifier());
            BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U2)), ComposableLambdaKt.rememberComposableLambda(999829022, true, new BottomSheetScaffoldKt$BottomSheetScaffold$1$1(bottomSheetScaffoldStateRememberBottomSheetScaffoldState, bm3Var5, dm3Var3, fM3123getSheetPeekHeightD9Ej5fM, fM3122getSheetMaxWidthD9Ej5fM, z4, expandedShape, containerColor, j111116, fM9042constructorimpl, fM3120getElevationD9Ej5fM, lambda$1392012807$material3, dm3Var, lambda$1768941633$material3), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            bottomSheetScaffoldState3 = bottomSheetScaffoldStateRememberBottomSheetScaffoldState;
            f7 = fM3123getSheetPeekHeightD9Ej5fM;
            bm3Var3 = lambda$1392012807$material3;
            dm3Var4 = lambda$1768941633$material3;
            modifier2 = modifier110;
            z3 = z4;
            j7 = jM3275contentColorForek8zF_U2;
            j6 = j111115;
            long j111117 = containerColor;
            f8 = fM3120getElevationD9Ej5fM;
            f6 = fM9042constructorimpl;
            bm3Var4 = bm3Var5;
            f5 = fM3122getSheetMaxWidthD9Ej5fM;
            shape2 = expandedShape;
            j8 = j111117;
            j5 = j111116;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            shape2 = expandedShape;
            j5 = jM3275contentColorForek8zF_U;
            modifier2 = modifier;
            z3 = z;
            dm3Var4 = dm3Var2;
            j6 = j3;
            j7 = j4;
            f5 = fM3122getSheetMaxWidthD9Ej5fM;
            j8 = containerColor;
            bottomSheetScaffoldState3 = bottomSheetScaffoldState2;
            f6 = fM9042constructorimpl;
            f7 = f;
            f8 = f4;
            bm3Var3 = bm3Var;
            bm3Var4 = bm3Var2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BottomSheetScaffoldKt.BottomSheetScaffold_sdMYb0k$lambda$1(dm3Var, modifier2, bottomSheetScaffoldState3, f7, f5, shape2, j8, j5, f6, f8, bm3Var3, z3, bm3Var4, dm3Var4, j6, j7, dm3Var3, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:91:0x016d  */
    public static final void BottomSheetScaffoldLayout(final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final bm3<? super Composer, ? super Integer, j59> bm3Var4, final ll3<Float> ll3Var, final SheetState sheetState, Composer composer, final int i) {
        int i2;
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1217723575);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var4) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(sheetState) ? 131072 : 65536;
        }
        if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1217723575, i2, -1, "androidx.compose.material3.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:413)");
            }
            List listI = u96.i(bm3Var == null ? ComposableSingletons$BottomSheetScaffoldKt.INSTANCE.m3309getLambda$788244078$material3() : bm3Var, bm3Var2, bm3Var3, bm3Var4);
            boolean z = ((458752 & i2) == 131072) | ((i2 & 57344) == 16384);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1(sheetState, ll3Var);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MultiContentMeasurePolicy multiContentMeasurePolicy = (MultiContentMeasurePolicy) objRememberedValue;
            Modifier.Companion companion = Modifier.Companion;
            bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts(listI);
            boolean zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicy);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicy);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue2;
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
            if (composerM5355constructorimpl.getInserting()) {
                i3 = 0;
            } else {
                i3 = 0;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                bm3VarCombineAsVirtualLayouts.invoke(composerStartRestartGroup, Integer.valueOf(i3));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            bm3VarCombineAsVirtualLayouts.invoke(composerStartRestartGroup, Integer.valueOf(i3));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ht0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BottomSheetScaffoldKt.BottomSheetScaffoldLayout$lambda$16(bm3Var, bm3Var2, bm3Var3, bm3Var4, ll3Var, sheetState, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BottomSheetScaffoldLayout$lambda$16(bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, ll3 ll3Var, SheetState sheetState, int i, Composer composer, int i2) {
        BottomSheetScaffoldLayout(bm3Var, bm3Var2, bm3Var3, bm3Var4, ll3Var, sheetState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BottomSheetScaffold_sdMYb0k$lambda$1(dm3 dm3Var, Modifier modifier, BottomSheetScaffoldState bottomSheetScaffoldState, float f, float f2, Shape shape, long j, long j2, float f3, float f4, bm3 bm3Var, boolean z, bm3 bm3Var2, dm3 dm3Var2, long j3, long j4, dm3 dm3Var3, int i, int i2, int i3, Composer composer, int i4) {
        m3125BottomSheetScaffoldsdMYb0k(dm3Var, modifier, bottomSheetScaffoldState, f, f2, shape, j, j2, f3, f4, bm3Var, z, bm3Var2, dm3Var2, j3, j4, dm3Var3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: StandardBottomSheet-w7I5h1o, reason: not valid java name */
    public static final void m3126StandardBottomSheetw7I5h1o(final SheetState sheetState, final float f, final float f2, final boolean z, final Shape shape, final long j, final long j2, final float f3, final float f4, final bm3<? super Composer, ? super Integer, j59> bm3Var, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Composer composer2;
        Composer.Companion companion;
        Object obj;
        Modifier.Companion companion2;
        Modifier modifierNestedScroll$default;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2108849428);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(sheetState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(f2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= composerStartRestartGroup.changed(shape) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= composerStartRestartGroup.changed(j) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= composerStartRestartGroup.changed(j2) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= composerStartRestartGroup.changed(f3) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= composerStartRestartGroup.changed(f4) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((805306368 & i) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (composerStartRestartGroup.changedInstance(dm3Var) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if (composerStartRestartGroup.shouldExecute(((i3 & 306783379) == 306783378 && (i4 & 3) == 2) ? false : true, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2108849428, i3, i4, "androidx.compose.material3.StandardBottomSheet (BottomSheetScaffold.kt:235)");
            }
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultSpatial;
            final FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            final FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            final FiniteAnimationSpec finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
            int i5 = i3 & 14;
            boolean zChangedInstance = (i5 == 4) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ll3() { // from class: zs0
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return BottomSheetScaffoldKt.StandardBottomSheet_w7I5h1o$lambda$7$lambda$6(sheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion3 = Composer.Companion;
            if (objRememberedValue2 == companion3.getEmpty()) {
                objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final y22 y22Var = (y22) objRememberedValue2;
            Orientation orientation = Orientation.Vertical;
            final float fMo1434toPx0680j_4 = ((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(f);
            if (z) {
                composerStartRestartGroup.startReplaceGroup(2049456610);
                companion2 = Modifier.Companion;
                boolean zChanged = composerStartRestartGroup.changed(sheetState.getAnchoredDraggableState$material3());
                companion = companion3;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetState, orientation, new at0(0, y22Var, sheetState));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                obj = null;
                modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion2, (NestedScrollConnection) objRememberedValue3, null, 2, null);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                companion = companion3;
                obj = null;
                composerStartRestartGroup.startReplaceGroup(2049851798);
                composerStartRestartGroup.endReplaceGroup();
                companion2 = Modifier.Companion;
                modifierNestedScroll$default = companion2;
            }
            int i6 = i3;
            Modifier modifierThen = SizeKt.m2090requiredHeightInVpY3zN4$default(SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(companion2, 0.0f, f2, 1, obj), 0.0f, 1, obj), f, 0.0f, 2, obj).then(modifierNestedScroll$default);
            AnchoredDraggableState<SheetValue> anchoredDraggableState$material3 = sheetState.getAnchoredDraggableState$material3();
            boolean zChanged2 = (i5 == 4) | composerStartRestartGroup.changed(fMo1434toPx0680j_4);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = new bm3() { // from class: bt0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return BottomSheetScaffoldKt.StandardBottomSheet_w7I5h1o$lambda$13$lambda$12(sheetState, fMo1434toPx0680j_4, (IntSize) obj2, (Constraints) obj3);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            int i7 = i6 >> 9;
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3942SurfaceT9BRK9s(verticalScaleUp(AnchoredDraggableKt.anchoredDraggable$default(AnchoredDraggableKt.draggableAnchors(modifierThen, anchoredDraggableState$material3, orientation, (bm3) objRememberedValue4), sheetState.getAnchoredDraggableState$material3(), orientation, z, false, null, 24, null), sheetState), shape, j, j2, f3, f4, null, ComposableLambdaKt.rememberComposableLambda(1508311921, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3
                public final void invoke(Composer composer3, int i8) {
                    if (!composer3.shouldExecute((i8 & 3) != 2, i8 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1508311921, i8, -1, "androidx.compose.material3.StandardBottomSheet.<anonymous> (BottomSheetScaffold.kt:323)");
                    }
                    Modifier modifierVerticalScaleDown = BottomSheetScaffoldKt.verticalScaleDown(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null), sheetState);
                    bm3<Composer, Integer, j59> bm3Var2 = bm3Var;
                    dm3<ColumnScope, Composer, Integer, j59> dm3Var2 = dm3Var;
                    SheetState sheetState2 = sheetState;
                    y22 y22Var2 = y22Var;
                    boolean z2 = z;
                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer3, 0);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, modifierVerticalScaleDown);
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
                    if (bm3Var2 != null) {
                        composer3.startReplaceGroup(-1044068159);
                        Strings.Companion companion5 = Strings.Companion;
                        SheetDefaultsKt.DragHandleWithTooltip(columnScopeInstance, ComposableLambdaKt.rememberComposableLambda(-511691176, true, new BottomSheetScaffoldKt$StandardBottomSheet$3$1$1(sheetState2, y22Var2, z2, Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_expand_description), composer3, 0), Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_collapse_description), composer3, 0), Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_dismiss_description), composer3, 0), bm3Var2), composer3, 54), composer3, 54);
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(-1040260677);
                        composer3.endReplaceGroup();
                    }
                    dm3Var2.invoke(columnScopeInstance, composer3, 6);
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
            }, composerStartRestartGroup, 54), composer2, (i7 & 112) | 12582912 | (i7 & 896) | (i7 & 7168) | (57344 & i7) | (i7 & 458752), 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ct0
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return BottomSheetScaffoldKt.StandardBottomSheet_w7I5h1o$lambda$14(sheetState, f, f2, z, shape, j, j2, f3, f4, bm3Var, dm3Var, i, i2, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 StandardBottomSheet_w7I5h1o$lambda$10$lambda$9(y22 y22Var, SheetState sheetState, float f) {
        av0.c(y22Var, null, null, new BottomSheetScaffoldKt$StandardBottomSheet$nestedScroll$1$1$1(sheetState, f, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:10:0x0041 A[PHI: r6
      0x0041: PHI (r6v7 androidx.compose.material3.SheetValue) = 
      (r6v5 androidx.compose.material3.SheetValue)
      (r6v8 androidx.compose.material3.SheetValue)
      (r6v9 androidx.compose.material3.SheetValue)
      (r6v10 androidx.compose.material3.SheetValue)
      (r6v11 androidx.compose.material3.SheetValue)
      (r6v12 androidx.compose.material3.SheetValue)
      (r6v13 androidx.compose.material3.SheetValue)
     binds: [B:29:0x007b, B:20:0x0060, B:23:0x0069, B:26:0x0072, B:9:0x003f, B:12:0x0049, B:15:0x0052] A[DONT_GENERATE, DONT_INLINE]] */
    public static final b36 StandardBottomSheet_w7I5h1o$lambda$13$lambda$12(final SheetState sheetState, final float f, IntSize intSize, Constraints constraints) {
        SheetValue sheetValue;
        final float fM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl());
        final float fM9217unboximpl = (int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        DraggableAnchors DraggableAnchors = AnchoredDraggableKt.DraggableAnchors(new nl3() { // from class: gt0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BottomSheetScaffoldKt.StandardBottomSheet_w7I5h1o$lambda$13$lambda$12$lambda$11(sheetState, fM8994getMaxHeightimpl, f, fM9217unboximpl, (DraggableAnchorsConfig) obj);
            }
        });
        SheetValue targetValue = sheetState.getAnchoredDraggableState$material3().getTargetValue();
        int i = WhenMappings.$EnumSwitchMapping$0[targetValue.ordinal()];
        if (i == 1) {
            sheetValue = SheetValue.Hidden;
            if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                targetValue = sheetValue;
            }
        } else if (i == 2) {
            sheetValue = SheetValue.PartiallyExpanded;
            if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                targetValue = sheetValue;
            } else {
                sheetValue = SheetValue.Expanded;
                if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                    targetValue = sheetValue;
                } else {
                    sheetValue = SheetValue.Hidden;
                    if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                        targetValue = sheetValue;
                    }
                }
            }
        } else {
            if (i != 3) {
                me0.e();
                return null;
            }
            sheetValue = SheetValue.Expanded;
            if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                targetValue = sheetValue;
            } else {
                sheetValue = SheetValue.PartiallyExpanded;
                if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                    targetValue = sheetValue;
                } else {
                    sheetValue = SheetValue.Hidden;
                    if (DraggableAnchors.hasAnchorFor(sheetValue)) {
                        targetValue = sheetValue;
                    }
                }
            }
        }
        return new b36(DraggableAnchors, targetValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 StandardBottomSheet_w7I5h1o$lambda$13$lambda$12$lambda$11(SheetState sheetState, float f, float f2, float f3, DraggableAnchorsConfig draggableAnchorsConfig) {
        if (!sheetState.getSkipPartiallyExpanded$material3()) {
            draggableAnchorsConfig.at(SheetValue.PartiallyExpanded, f - f2);
        }
        if (f3 != f2) {
            draggableAnchorsConfig.at(SheetValue.Expanded, Math.max(f - f3, 0.0f));
        }
        if (!sheetState.getSkipHiddenState$material3()) {
            draggableAnchorsConfig.at(SheetValue.Hidden, f);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 StandardBottomSheet_w7I5h1o$lambda$14(SheetState sheetState, float f, float f2, boolean z, Shape shape, long j, long j2, float f3, float f4, bm3 bm3Var, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m3126StandardBottomSheetw7I5h1o(sheetState, f, f2, z, shape, j, j2, f3, f4, bm3Var, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 StandardBottomSheet_w7I5h1o$lambda$7$lambda$6(SheetState sheetState, FiniteAnimationSpec finiteAnimationSpec, FiniteAnimationSpec finiteAnimationSpec2, FiniteAnimationSpec finiteAnimationSpec3) {
        sheetState.setShowMotionSpec$material3(finiteAnimationSpec);
        sheetState.setHideMotionSpec$material3(finiteAnimationSpec2);
        sheetState.setAnchoredDraggableMotionSpec$material3(finiteAnimationSpec3);
        return j59.a;
    }

    public static final BottomSheetScaffoldState rememberBottomSheetScaffoldState(SheetState sheetState, SnackbarHostState snackbarHostState, Composer composer, int i, int i2) {
        Composer composer2;
        if ((i2 & 1) != 0) {
            composer2 = composer;
            sheetState = rememberStandardBottomSheetState(null, null, false, composer2, 0, 7);
        } else {
            composer2 = composer;
        }
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer2.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new SnackbarHostState();
                composer2.updateRememberedValue(objRememberedValue);
            }
            snackbarHostState = (SnackbarHostState) objRememberedValue;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1474606134, i, -1, "androidx.compose.material3.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:191)");
        }
        boolean z = ((((i & 14) ^ 6) > 4 && composer2.changed(sheetState)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer2.changed(snackbarHostState)) || (i & 48) == 32);
        Object objRememberedValue2 = composer2.rememberedValue();
        if (z || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new BottomSheetScaffoldState(sheetState, snackbarHostState);
            composer2.updateRememberedValue(objRememberedValue2);
        }
        BottomSheetScaffoldState bottomSheetScaffoldState = (BottomSheetScaffoldState) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return bottomSheetScaffoldState;
    }

    public static final SheetState rememberStandardBottomSheetState(SheetValue sheetValue, nl3<? super SheetValue, Boolean> nl3Var, boolean z, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            sheetValue = SheetValue.PartiallyExpanded;
        }
        SheetValue sheetValue2 = sheetValue;
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new et0(0);
                composer.updateRememberedValue(objRememberedValue);
            }
            nl3Var = (nl3) objRememberedValue;
        }
        nl3<? super SheetValue, Boolean> nl3Var2 = nl3Var;
        if ((i2 & 4) != 0) {
            z = true;
        }
        boolean z2 = z;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(678511581, i, -1, "androidx.compose.material3.rememberStandardBottomSheetState (BottomSheetScaffold.kt:215)");
        }
        SheetState sheetStateM3851rememberSheetStateAGcomas = SheetDefaultsKt.m3851rememberSheetStateAGcomas(false, nl3Var2, sheetValue2, z2, 0.0f, 0.0f, composer, (i & 112) | ((i << 6) & 896) | ((i << 3) & 7168), 49);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return sheetStateM3851rememberSheetStateAGcomas;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean rememberStandardBottomSheetState$lambda$5$lambda$4(SheetValue sheetValue) {
        return true;
    }

    public static final Modifier verticalScaleDown(Modifier modifier, SheetState sheetState) {
        return GraphicsLayerModifierKt.graphicsLayer(modifier, new oh0(sheetState, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 verticalScaleDown$lambda$18(SheetState sheetState, GraphicsLayerScope graphicsLayerScope) {
        float offset = sheetState.getAnchoredDraggableState$material3().getOffset();
        float fMinAnchor = sheetState.getAnchoredDraggableState$material3().getAnchors().minAnchor();
        float f = offset < fMinAnchor ? fMinAnchor - offset : 0.0f;
        graphicsLayerScope.setScaleY(f > 0.0f ? 1.0f / ((Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + f) / Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) : 1.0f);
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.5f, 0.0f));
        return j59.a;
    }

    public static final Modifier verticalScaleUp(Modifier modifier, SheetState sheetState) {
        return GraphicsLayerModifierKt.graphicsLayer(modifier, new dt0(sheetState, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 verticalScaleUp$lambda$17(SheetState sheetState, GraphicsLayerScope graphicsLayerScope) {
        float offset = sheetState.getAnchoredDraggableState$material3().getOffset();
        float fMinAnchor = sheetState.getAnchoredDraggableState$material3().getAnchors().minAnchor();
        float f = offset < fMinAnchor ? fMinAnchor - offset : 0.0f;
        graphicsLayerScope.setScaleY(f > 0.0f ? (Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + f) / Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & graphicsLayerScope.mo6426getSizeNHjbRc())) : 1.0f);
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.5f, 0.0f));
        return j59.a;
    }
}
