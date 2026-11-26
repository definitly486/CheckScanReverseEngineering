package androidx.compose.foundation.lazy;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.gm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyDslKt {
    /* JADX WARN: Code duplicated, block: B:100:0x010d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0117  */
    /* JADX WARN: Code duplicated, block: B:105:0x011d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0120  */
    /* JADX WARN: Code duplicated, block: B:110:0x0133  */
    /* JADX WARN: Code duplicated, block: B:111:0x0136  */
    /* JADX WARN: Code duplicated, block: B:114:0x013f  */
    /* JADX WARN: Code duplicated, block: B:116:0x014f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0185 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x0187  */
    /* JADX WARN: Code duplicated, block: B:134:0x018a  */
    /* JADX WARN: Code duplicated, block: B:137:0x0190  */
    /* JADX WARN: Code duplicated, block: B:139:0x0199  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:147:0x01af  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01be  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:157:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:160:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:163:0x01de  */
    /* JADX WARN: Code duplicated, block: B:165:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:168:0x0203  */
    /* JADX WARN: Code duplicated, block: B:171:0x024c  */
    /* JADX WARN: Code duplicated, block: B:173:0x025f  */
    /* JADX WARN: Code duplicated, block: B:176:0x0276  */
    /* JADX WARN: Code duplicated, block: B:178:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:78:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:94:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:97:0x0106 A[ADDED_TO_REGION] */
    public static final void LazyColumn(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, final nl3<? super LazyListScope, j59> nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        LazyListState lazyListStateRememberLazyListState;
        PaddingValues paddingValues2;
        int i4;
        boolean z3;
        int i5;
        Arrangement.Vertical vertical2;
        int i6;
        Alignment.Horizontal horizontal2;
        int i7;
        FlingBehavior flingBehavior2;
        int i8;
        int i9;
        boolean z4;
        Composer composer2;
        final Modifier modifier2;
        final boolean z5;
        final LazyListState lazyListState2;
        final PaddingValues paddingValues3;
        final boolean z6;
        final Arrangement.Vertical vertical3;
        final Alignment.Horizontal horizontal3;
        final FlingBehavior flingBehavior3;
        final OverscrollEffect overscrollEffect2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        Arrangement.Vertical bottom;
        Alignment.Horizontal start;
        FlingBehavior flingBehavior4;
        OverscrollEffect overscrollEffectRememberOverscrollEffect;
        LazyListState lazyListState3;
        PaddingValues paddingValues4;
        Arrangement.Vertical vertical4;
        Alignment.Horizontal horizontal4;
        boolean z7;
        boolean z8;
        int i10;
        FlingBehavior flingBehavior5;
        Arrangement arrangement;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(53695811);
        int i12 = i2 & 1;
        if (i12 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListStateRememberLazyListState = lazyListState;
                int i13 = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) ? 32 : 16;
                i3 |= i13;
            } else {
                lazyListStateRememberLazyListState = lazyListState;
            }
            i3 |= i13;
        } else {
            lazyListStateRememberLazyListState = lazyListState;
        }
        int i14 = i2 & 4;
        if (i14 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                paddingValues2 = paddingValues;
                i3 |= composerStartRestartGroup.changed(paddingValues2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        vertical2 = vertical;
                        int i15 = composerStartRestartGroup.changed(vertical2) ? 16384 : 8192;
                        i3 |= i15;
                    } else {
                        vertical2 = vertical;
                    }
                    i3 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            flingBehavior2 = flingBehavior;
                            int i16 = composerStartRestartGroup.changed(flingBehavior2) ? 1048576 : 524288;
                            i3 |= i16;
                        } else {
                            flingBehavior2 = flingBehavior;
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i8 = i2 & 128;
                    if (i8 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 8388608;
                            } else {
                                i9 = 4194304;
                            }
                            i3 |= i9;
                        }
                        if ((i & 100663296) != 0) {
                            i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i11 = 536870912;
                            } else {
                                i11 = 268435456;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i12 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if ((i2 & 2) != 0) {
                                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                    i3 &= -113;
                                }
                                if (i14 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                } else {
                                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                }
                                if (i4 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 16) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getBottom();
                                    } else {
                                        bottom = arrangement.getTop();
                                    }
                                    i3 &= -57345;
                                } else {
                                    bottom = vertical2;
                                }
                                if (i6 != 0) {
                                    start = Alignment.Companion.getStart();
                                } else {
                                    start = horizontal2;
                                }
                                if ((i2 & 64) != 0) {
                                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 &= -3670017;
                                } else {
                                    flingBehavior4 = flingBehavior2;
                                }
                                boolean z9 = i8 == 0 ? z2 : true;
                                if ((i2 & 256) != 0) {
                                    i3 &= -234881025;
                                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                                } else {
                                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                }
                                lazyListState3 = lazyListStateRememberLazyListState;
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                vertical4 = bottom;
                                horizontal4 = start;
                                z7 = z3;
                                z8 = z9;
                                i10 = 53695811;
                                flingBehavior5 = flingBehavior4;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 2) != 0) {
                                    i3 &= -113;
                                }
                                if ((i2 & 16) != 0) {
                                    i3 &= -57345;
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                }
                                if ((i2 & 256) != 0) {
                                    i3 &= -234881025;
                                }
                                modifier3 = modifier;
                                z8 = z2;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                z7 = z3;
                                vertical4 = vertical2;
                                horizontal4 = horizontal2;
                                flingBehavior5 = flingBehavior2;
                                i10 = 53695811;
                                lazyListState3 = lazyListStateRememberLazyListState;
                                paddingValues4 = paddingValues2;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                            }
                            int i17 = i3 >> 3;
                            composer2 = composerStartRestartGroup;
                            LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i17) | (3670016 & i17) | (i17 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            lazyListState2 = lazyListState3;
                            paddingValues3 = paddingValues4;
                            z6 = z7;
                            flingBehavior3 = flingBehavior5;
                            z5 = z8;
                            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                            horizontal3 = horizontal4;
                            vertical3 = vertical4;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            z5 = z2;
                            lazyListState2 = lazyListStateRememberLazyListState;
                            paddingValues3 = paddingValues2;
                            z6 = z3;
                            vertical3 = vertical2;
                            horizontal3 = horizontal2;
                            flingBehavior3 = flingBehavior2;
                            overscrollEffect2 = overscrollEffect;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                        }
                        int i18 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i18) | (3670016 & i18) | (i18 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        horizontal3 = horizontal4;
                        vertical3 = vertical4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                horizontal2 = horizontal;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                        }
                        int i19 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i19) | (3670016 & i19) | (i19 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        horizontal3 = horizontal4;
                        vertical3 = vertical4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                    }
                    int i110 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i110) | (3670016 & i110) | (i110 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z3 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i15;
            } else {
                vertical2 = vertical;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                        }
                        int i111 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i111) | (3670016 & i111) | (i111 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        horizontal3 = horizontal4;
                        vertical3 = vertical4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                    }
                    int i112 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i112) | (3670016 & i112) | (i112 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontal2 = horizontal;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                    }
                    int i113 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i113) | (3670016 & i113) | (i113 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                }
                int i114 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i114) | (3670016 & i114) | (i114 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                horizontal3 = horizontal4;
                vertical3 = vertical4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        paddingValues2 = paddingValues;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i15;
            } else {
                vertical2 = vertical;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = bottom;
                            horizontal4 = start;
                            z7 = z3;
                            z8 = z9;
                            i10 = 53695811;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                        }
                        int i115 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i115) | (3670016 & i115) | (i115 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        horizontal3 = horizontal4;
                        vertical3 = vertical4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                    }
                    int i116 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i116) | (3670016 & i116) | (i116 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontal2 = horizontal;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                    }
                    int i117 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i117) | (3670016 & i117) | (i117 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                }
                int i118 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i118) | (3670016 & i118) | (i118 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                horizontal3 = horizontal4;
                vertical3 = vertical4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z3 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                }
                i3 |= i15;
            } else {
                vertical2 = vertical;
            }
            i3 |= i15;
        } else {
            vertical2 = vertical;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = bottom;
                        horizontal4 = start;
                        z7 = z3;
                        z8 = z9;
                        i10 = 53695811;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                    }
                    int i119 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i119) | (3670016 & i119) | (i119 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    horizontal3 = horizontal4;
                    vertical3 = vertical4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                }
                int i1110 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i1110) | (3670016 & i1110) | (i1110 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                horizontal3 = horizontal4;
                vertical3 = vertical4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        horizontal2 = horizontal;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                flingBehavior2 = flingBehavior;
                if (composerStartRestartGroup.changed(flingBehavior2)) {
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i3 |= i16;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i8 = i2 & 128;
        if (i8 != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i3 |= i9;
            }
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = bottom;
                    horizontal4 = start;
                    z7 = z3;
                    z8 = z9;
                    i10 = 53695811;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
                }
                int i1111 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i1111) | (3670016 & i1111) | (i1111 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                horizontal3 = horizontal4;
                vertical3 = vertical4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        if ((i & 100663296) != 0) {
            i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
        }
        if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i11 = 536870912;
            } else {
                i11 = 268435456;
            }
            i3 |= i11;
        }
        if ((i3 & 306783379) != 306783378) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -57345;
                } else {
                    bottom = vertical2;
                }
                if (i6 != 0) {
                    start = Alignment.Companion.getStart();
                } else {
                    start = horizontal2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 == 0) {
                }
                if ((i2 & 256) != 0) {
                    i3 &= -234881025;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                lazyListState3 = lazyListStateRememberLazyListState;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                vertical4 = bottom;
                horizontal4 = start;
                z7 = z3;
                z8 = z9;
                i10 = 53695811;
                flingBehavior5 = flingBehavior4;
            } else {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -57345;
                } else {
                    bottom = vertical2;
                }
                if (i6 != 0) {
                    start = Alignment.Companion.getStart();
                } else {
                    start = horizontal2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 == 0) {
                }
                if ((i2 & 256) != 0) {
                    i3 &= -234881025;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                lazyListState3 = lazyListStateRememberLazyListState;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                vertical4 = bottom;
                horizontal4 = start;
                z7 = z3;
                z8 = z9;
                i10 = 53695811;
                flingBehavior5 = flingBehavior4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:399)");
            }
            int i1112 = i3 >> 3;
            composer2 = composerStartRestartGroup;
            LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, true, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, horizontal4, vertical4, null, null, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i1112) | (3670016 & i1112) | (i1112 & 29360128) | ((i3 << 12) & 1879048192), ((i3 >> 12) & 14) | ((i3 >> 18) & 7168), 6400);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            lazyListState2 = lazyListState3;
            paddingValues3 = paddingValues4;
            z6 = z7;
            flingBehavior3 = flingBehavior5;
            z5 = z8;
            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
            horizontal3 = horizontal4;
            vertical3 = vertical4;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            z5 = z2;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValues2;
            z6 = z3;
            vertical3 = vertical2;
            horizontal3 = horizontal2;
            flingBehavior3 = flingBehavior2;
            overscrollEffect2 = overscrollEffect;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyDslKt.LazyColumn$lambda$0(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyColumn$lambda$0(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyColumn(modifier, lazyListState, paddingValues, z, vertical, horizontal, flingBehavior, z2, overscrollEffect, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyColumn$lambda$1(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyColumn(modifier, lazyListState, paddingValues, z, vertical, horizontal, flingBehavior, z2, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyColumn$lambda$2(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyColumn(modifier, lazyListState, paddingValues, z, vertical, horizontal, flingBehavior, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x010d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0117  */
    /* JADX WARN: Code duplicated, block: B:105:0x011d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0120  */
    /* JADX WARN: Code duplicated, block: B:110:0x0133  */
    /* JADX WARN: Code duplicated, block: B:111:0x0136  */
    /* JADX WARN: Code duplicated, block: B:114:0x013f  */
    /* JADX WARN: Code duplicated, block: B:116:0x014f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0185 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:133:0x0187  */
    /* JADX WARN: Code duplicated, block: B:134:0x018a  */
    /* JADX WARN: Code duplicated, block: B:137:0x0190  */
    /* JADX WARN: Code duplicated, block: B:139:0x0199  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:147:0x01af  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01be  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:157:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:160:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:163:0x01de  */
    /* JADX WARN: Code duplicated, block: B:165:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:168:0x0203  */
    /* JADX WARN: Code duplicated, block: B:171:0x024b  */
    /* JADX WARN: Code duplicated, block: B:173:0x025e  */
    /* JADX WARN: Code duplicated, block: B:176:0x0275  */
    /* JADX WARN: Code duplicated, block: B:178:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:78:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:94:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:97:0x0106 A[ADDED_TO_REGION] */
    public static final void LazyRow(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, final nl3<? super LazyListScope, j59> nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        LazyListState lazyListStateRememberLazyListState;
        PaddingValues paddingValues2;
        int i4;
        boolean z3;
        int i5;
        Arrangement.Horizontal horizontal2;
        int i6;
        Alignment.Vertical vertical2;
        int i7;
        FlingBehavior flingBehavior2;
        int i8;
        int i9;
        boolean z4;
        Composer composer2;
        final Modifier modifier2;
        final boolean z5;
        final LazyListState lazyListState2;
        final PaddingValues paddingValues3;
        final boolean z6;
        final Arrangement.Horizontal horizontal3;
        final Alignment.Vertical vertical3;
        final FlingBehavior flingBehavior3;
        final OverscrollEffect overscrollEffect2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        Arrangement.Horizontal end;
        Alignment.Vertical top;
        FlingBehavior flingBehavior4;
        OverscrollEffect overscrollEffectRememberOverscrollEffect;
        LazyListState lazyListState3;
        PaddingValues paddingValues4;
        Arrangement.Horizontal horizontal4;
        Alignment.Vertical vertical4;
        boolean z7;
        boolean z8;
        int i10;
        FlingBehavior flingBehavior5;
        Arrangement arrangement;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1884325601);
        int i12 = i2 & 1;
        if (i12 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListStateRememberLazyListState = lazyListState;
                int i13 = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) ? 32 : 16;
                i3 |= i13;
            } else {
                lazyListStateRememberLazyListState = lazyListState;
            }
            i3 |= i13;
        } else {
            lazyListStateRememberLazyListState = lazyListState;
        }
        int i14 = i2 & 4;
        if (i14 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                paddingValues2 = paddingValues;
                i3 |= composerStartRestartGroup.changed(paddingValues2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        horizontal2 = horizontal;
                        int i15 = composerStartRestartGroup.changed(horizontal2) ? 16384 : 8192;
                        i3 |= i15;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i3 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            flingBehavior2 = flingBehavior;
                            int i16 = composerStartRestartGroup.changed(flingBehavior2) ? 1048576 : 524288;
                            i3 |= i16;
                        } else {
                            flingBehavior2 = flingBehavior;
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i8 = i2 & 128;
                    if (i8 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 8388608;
                            } else {
                                i9 = 4194304;
                            }
                            i3 |= i9;
                        }
                        if ((i & 100663296) != 0) {
                            i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i11 = 536870912;
                            } else {
                                i11 = 268435456;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i12 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if ((i2 & 2) != 0) {
                                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                    i3 &= -113;
                                }
                                if (i14 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                } else {
                                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                }
                                if (i4 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 16) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getEnd();
                                    } else {
                                        end = arrangement.getStart();
                                    }
                                    i3 &= -57345;
                                } else {
                                    end = horizontal2;
                                }
                                if (i6 != 0) {
                                    top = Alignment.Companion.getTop();
                                } else {
                                    top = vertical2;
                                }
                                if ((i2 & 64) != 0) {
                                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 &= -3670017;
                                } else {
                                    flingBehavior4 = flingBehavior2;
                                }
                                boolean z9 = i8 == 0 ? z2 : true;
                                if ((i2 & 256) != 0) {
                                    i3 &= -234881025;
                                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                                } else {
                                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                }
                                lazyListState3 = lazyListStateRememberLazyListState;
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                horizontal4 = end;
                                vertical4 = top;
                                z7 = z3;
                                z8 = z9;
                                i10 = -1884325601;
                                flingBehavior5 = flingBehavior4;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 2) != 0) {
                                    i3 &= -113;
                                }
                                if ((i2 & 16) != 0) {
                                    i3 &= -57345;
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                }
                                if ((i2 & 256) != 0) {
                                    i3 &= -234881025;
                                }
                                modifier3 = modifier;
                                z8 = z2;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                z7 = z3;
                                horizontal4 = horizontal2;
                                vertical4 = vertical2;
                                flingBehavior5 = flingBehavior2;
                                i10 = -1884325601;
                                lazyListState3 = lazyListStateRememberLazyListState;
                                paddingValues4 = paddingValues2;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                            }
                            int i17 = i3 >> 3;
                            composer2 = composerStartRestartGroup;
                            LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i17) | (3670016 & i17) | (i17 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier3;
                            lazyListState2 = lazyListState3;
                            paddingValues3 = paddingValues4;
                            z6 = z7;
                            flingBehavior3 = flingBehavior5;
                            z5 = z8;
                            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                            vertical3 = vertical4;
                            horizontal3 = horizontal4;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            z5 = z2;
                            lazyListState2 = lazyListStateRememberLazyListState;
                            paddingValues3 = paddingValues2;
                            z6 = z3;
                            horizontal3 = horizontal2;
                            vertical3 = vertical2;
                            flingBehavior3 = flingBehavior2;
                            overscrollEffect2 = overscrollEffect;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                        }
                        int i18 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i18) | (3670016 & i18) | (i18 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical4;
                        horizontal3 = horizontal4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                vertical2 = vertical;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                        }
                        int i19 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i19) | (3670016 & i19) | (i19 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical4;
                        horizontal3 = horizontal4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                    }
                    int i110 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i110) | (3670016 & i110) | (i110 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z3 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                        }
                        int i111 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i111) | (3670016 & i111) | (i111 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical4;
                        horizontal3 = horizontal4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                    }
                    int i112 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i112) | (3670016 & i112) | (i112 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            vertical2 = vertical;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                    }
                    int i113 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i113) | (3670016 & i113) | (i113 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                }
                int i114 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i114) | (3670016 & i114) | (i114 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical4;
                horizontal3 = horizontal4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        paddingValues2 = paddingValues;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) != 0) {
                        i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 536870912;
                        } else {
                            i11 = 268435456;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 == 0) {
                            }
                            if ((i2 & 256) != 0) {
                                i3 &= -234881025;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            lazyListState3 = lazyListStateRememberLazyListState;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = end;
                            vertical4 = top;
                            z7 = z3;
                            z8 = z9;
                            i10 = -1884325601;
                            flingBehavior5 = flingBehavior4;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                        }
                        int i115 = i3 >> 3;
                        composer2 = composerStartRestartGroup;
                        LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i115) | (3670016 & i115) | (i115 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z6 = z7;
                        flingBehavior3 = flingBehavior5;
                        z5 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical4;
                        horizontal3 = horizontal4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                        overscrollEffect2 = overscrollEffect;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                    }
                    int i116 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i116) | (3670016 & i116) | (i116 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            vertical2 = vertical;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                    }
                    int i117 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i117) | (3670016 & i117) | (i117 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                }
                int i118 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i118) | (3670016 & i118) | (i118 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical4;
                horizontal3 = horizontal4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z3 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                }
                i3 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i3 |= i15;
        } else {
            horizontal2 = horizontal;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) != 0) {
                    i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 536870912;
                    } else {
                        i11 = 268435456;
                    }
                    i3 |= i11;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 == 0) {
                        }
                        if ((i2 & 256) != 0) {
                            i3 &= -234881025;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = end;
                        vertical4 = top;
                        z7 = z3;
                        z8 = z9;
                        i10 = -1884325601;
                        flingBehavior5 = flingBehavior4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                    }
                    int i119 = i3 >> 3;
                    composer2 = composerStartRestartGroup;
                    LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i119) | (3670016 & i119) | (i119 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z6 = z7;
                    flingBehavior3 = flingBehavior5;
                    z5 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical4;
                    horizontal3 = horizontal4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                    overscrollEffect2 = overscrollEffect;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                }
                int i1110 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i1110) | (3670016 & i1110) | (i1110 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical4;
                horizontal3 = horizontal4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        vertical2 = vertical;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                flingBehavior2 = flingBehavior;
                if (composerStartRestartGroup.changed(flingBehavior2)) {
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i3 |= i16;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i8 = i2 & 128;
        if (i8 != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i3 |= i9;
            }
            if ((i & 100663296) != 0) {
                i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 536870912;
                } else {
                    i11 = 268435456;
                }
                i3 |= i11;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 == 0) {
                    }
                    if ((i2 & 256) != 0) {
                        i3 &= -234881025;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    lazyListState3 = lazyListStateRememberLazyListState;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = end;
                    vertical4 = top;
                    z7 = z3;
                    z8 = z9;
                    i10 = -1884325601;
                    flingBehavior5 = flingBehavior4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
                }
                int i1111 = i3 >> 3;
                composer2 = composerStartRestartGroup;
                LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i1111) | (3670016 & i1111) | (i1111 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z6 = z7;
                flingBehavior3 = flingBehavior5;
                z5 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical4;
                horizontal3 = horizontal4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
                overscrollEffect2 = overscrollEffect;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        if ((i & 100663296) != 0) {
            i3 |= ((i2 & 256) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? GroupFlagsKt.HasAuxSlotFlag : 67108864;
        }
        if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i11 = 536870912;
            } else {
                i11 = 268435456;
            }
            i3 |= i11;
        }
        if ((i3 & 306783379) != 306783378) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -57345;
                } else {
                    end = horizontal2;
                }
                if (i6 != 0) {
                    top = Alignment.Companion.getTop();
                } else {
                    top = vertical2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 == 0) {
                }
                if ((i2 & 256) != 0) {
                    i3 &= -234881025;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                lazyListState3 = lazyListStateRememberLazyListState;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                horizontal4 = end;
                vertical4 = top;
                z7 = z3;
                z8 = z9;
                i10 = -1884325601;
                flingBehavior5 = flingBehavior4;
            } else {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -57345;
                } else {
                    end = horizontal2;
                }
                if (i6 != 0) {
                    top = Alignment.Companion.getTop();
                } else {
                    top = vertical2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 == 0) {
                }
                if ((i2 & 256) != 0) {
                    i3 &= -234881025;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                lazyListState3 = lazyListStateRememberLazyListState;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                horizontal4 = end;
                vertical4 = top;
                z7 = z3;
                z8 = z9;
                i10 = -1884325601;
                flingBehavior5 = flingBehavior4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:339)");
            }
            int i1112 = i3 >> 3;
            composer2 = composerStartRestartGroup;
            LazyListKt.LazyList(modifier3, lazyListState3, paddingValues4, z7, false, flingBehavior5, z8, overscrollEffectRememberOverscrollEffect, 0, null, null, vertical4, horizontal4, nl3Var, composer2, (i3 & 14) | 24576 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (458752 & i1112) | (3670016 & i1112) | (i1112 & 29360128), ((i3 >> 12) & 112) | ((i3 >> 6) & 896) | ((i3 >> 18) & 7168), 1792);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            lazyListState2 = lazyListState3;
            paddingValues3 = paddingValues4;
            z6 = z7;
            flingBehavior3 = flingBehavior5;
            z5 = z8;
            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
            vertical3 = vertical4;
            horizontal3 = horizontal4;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            z5 = z2;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValues2;
            z6 = z3;
            horizontal3 = horizontal2;
            vertical3 = vertical2;
            flingBehavior3 = flingBehavior2;
            overscrollEffect2 = overscrollEffect;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jl4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyDslKt.LazyRow$lambda$0(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, overscrollEffect2, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyRow$lambda$0(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyRow(modifier, lazyListState, paddingValues, z, horizontal, vertical, flingBehavior, z2, overscrollEffect, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyRow$lambda$1(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, boolean z2, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyRow(modifier, lazyListState, paddingValues, z, horizontal, vertical, flingBehavior, z2, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyRow$lambda$2(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyRow(modifier, lazyListState, paddingValues, z, horizontal, vertical, flingBehavior, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, List list, nl3 nl3Var, nl3 nl3Var2, fm3 fm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            nl3Var2 = AnonymousClass1.INSTANCE;
        }
        lazyListScope.items(list.size(), nl3Var != null ? new AnonymousClass2(nl3Var, list) : null, new AnonymousClass3(nl3Var2, list), ComposableLambdaKt.composableLambdaInstance(802480018, true, new AnonymousClass4(fm3Var, list)));
    }

    public static final <T> void itemsIndexed(LazyListScope lazyListScope, List<? extends T> list, bm3<? super Integer, ? super T, ? extends Object> bm3Var, bm3<? super Integer, ? super T, ? extends Object> bm3Var2, gm3<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var) {
        lazyListScope.items(list.size(), bm3Var != null ? new C05202(bm3Var, list) : null, new C05213(bm3Var2, list), ComposableLambdaKt.composableLambdaInstance(2039820996, true, new C05224(gm3Var, list)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, List list, bm3 bm3Var, bm3 bm3Var2, gm3 gm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = null;
        }
        if ((i & 4) != 0) {
            bm3Var2 = new bm3() { // from class: androidx.compose.foundation.lazy.LazyDslKt.itemsIndexed.1
                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), obj3);
                }

                public final Void invoke(int i2, Object obj2) {
                    return null;
                }
            };
        }
        lazyListScope.items(list.size(), bm3Var != null ? new C05202(bm3Var, list) : null, new C05213(bm3Var2, list), ComposableLambdaKt.composableLambdaInstance(2039820996, true, new C05224(gm3Var, list)));
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$1, reason: invalid class name */
    public static final class AnonymousClass1 implements nl3 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        @Override // defpackage.nl3
        public final Void invoke(Object obj) {
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$5, reason: invalid class name */
    public static final class AnonymousClass5 implements nl3 {
        public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

        @Override // defpackage.nl3
        public final Void invoke(Object obj) {
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$6, reason: invalid class name */
    public static final class AnonymousClass6 implements nl3<Integer, Object> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ nl3<T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass6(nl3<? super T, ? extends Object> nl3Var, T[] tArr) {
            this.$key = nl3Var;
            this.$items = tArr;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final Object invoke(int i) {
            return this.$key.invoke(this.$items[i]);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$7, reason: invalid class name */
    public static final class AnonymousClass7 implements nl3<Integer, Object> {
        final /* synthetic */ nl3<T, Object> $contentType;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(nl3<? super T, ? extends Object> nl3Var, T[] tArr) {
            this.$contentType = nl3Var;
            this.$items = tArr;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final Object invoke(int i) {
            return this.$contentType.invoke(this.$items[i]);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$2, reason: invalid class name */
    public static final class AnonymousClass2 implements nl3<Integer, Object> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ nl3<T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super T, ? extends Object> nl3Var, List<? extends T> list) {
            this.$key = nl3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object invoke(int i) {
            return this.$key.invoke((T) this.$items.get(i));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$3, reason: invalid class name */
    public static final class AnonymousClass3 implements nl3<Integer, Object> {
        final /* synthetic */ nl3<T, Object> $contentType;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(nl3<? super T, ? extends Object> nl3Var, List<? extends T> list) {
            this.$contentType = nl3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object invoke(int i) {
            return this.$contentType.invoke((T) this.$items.get(i));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$6, reason: invalid class name and case insensitive filesystem */
    public static final class C05246 implements nl3<Integer, Object> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ bm3<Integer, T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public C05246(bm3<? super Integer, ? super T, ? extends Object> bm3Var, T[] tArr) {
            this.$key = bm3Var;
            this.$items = tArr;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final Object invoke(int i) {
            return this.$key.invoke(Integer.valueOf(i), this.$items[i]);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$7, reason: invalid class name and case insensitive filesystem */
    public static final class C05257 implements nl3<Integer, Object> {
        final /* synthetic */ bm3<Integer, T, Object> $contentType;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05257(bm3<? super Integer, ? super T, ? extends Object> bm3Var, T[] tArr) {
            this.$contentType = bm3Var;
            this.$items = tArr;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final Object invoke(int i) {
            return this.$contentType.invoke(Integer.valueOf(i), this.$items[i]);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$2, reason: invalid class name and case insensitive filesystem */
    public static final class C05202 implements nl3<Integer, Object> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ bm3<Integer, T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public C05202(bm3<? super Integer, ? super T, ? extends Object> bm3Var, List<? extends T> list) {
            this.$key = bm3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object invoke(int i) {
            return this.$key.invoke(Integer.valueOf(i), (T) this.$items.get(i));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$3, reason: invalid class name and case insensitive filesystem */
    public static final class C05213 implements nl3<Integer, Object> {
        final /* synthetic */ bm3<Integer, T, Object> $contentType;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05213(bm3<? super Integer, ? super T, ? extends Object> bm3Var, List<? extends T> list) {
            this.$contentType = bm3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final Object invoke(int i) {
            return this.$contentType.invoke(Integer.valueOf(i), (T) this.$items.get(i));
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return invoke(num.intValue());
        }
    }

    public static final <T> void itemsIndexed(LazyListScope lazyListScope, T[] tArr, bm3<? super Integer, ? super T, ? extends Object> bm3Var, bm3<? super Integer, ? super T, ? extends Object> bm3Var2, gm3<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var) {
        lazyListScope.items(tArr.length, bm3Var != null ? new C05246(bm3Var, tArr) : null, new C05257(bm3Var2, tArr), ComposableLambdaKt.composableLambdaInstance(1763000017, true, new C05268(gm3Var, tArr)));
    }

    public static final <T> void items(LazyListScope lazyListScope, T[] tArr, nl3<? super T, ? extends Object> nl3Var, nl3<? super T, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var) {
        lazyListScope.items(tArr.length, nl3Var != null ? new AnonymousClass6(nl3Var, tArr) : null, new AnonymousClass7(nl3Var2, tArr), ComposableLambdaKt.composableLambdaInstance(-1781742563, true, new AnonymousClass8(fm3Var, tArr)));
    }

    public static final <T> void items(LazyListScope lazyListScope, List<? extends T> list, nl3<? super T, ? extends Object> nl3Var, nl3<? super T, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var) {
        lazyListScope.items(list.size(), nl3Var != null ? new AnonymousClass2(nl3Var, list) : null, new AnonymousClass3(nl3Var2, list), ComposableLambdaKt.composableLambdaInstance(802480018, true, new AnonymousClass4(fm3Var, list)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, Object[] objArr, nl3 nl3Var, nl3 nl3Var2, fm3 fm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            nl3Var2 = AnonymousClass5.INSTANCE;
        }
        lazyListScope.items(objArr.length, nl3Var != null ? new AnonymousClass6(nl3Var, objArr) : null, new AnonymousClass7(nl3Var2, objArr), ComposableLambdaKt.composableLambdaInstance(-1781742563, true, new AnonymousClass8(fm3Var, objArr)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, Object[] objArr, bm3 bm3Var, bm3 bm3Var2, gm3 gm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = null;
        }
        if ((i & 4) != 0) {
            bm3Var2 = new bm3() { // from class: androidx.compose.foundation.lazy.LazyDslKt.itemsIndexed.5
                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), obj3);
                }

                public final Void invoke(int i2, Object obj2) {
                    return null;
                }
            };
        }
        lazyListScope.items(objArr.length, bm3Var != null ? new C05246(bm3Var, objArr) : null, new C05257(bm3Var2, objArr), ComposableLambdaKt.composableLambdaInstance(1763000017, true, new C05268(gm3Var, objArr)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, List list, nl3 nl3Var, fm3 fm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        lazyListScope.items(list.size(), nl3Var != null ? new AnonymousClass2(nl3Var, list) : null, new AnonymousClass3(AnonymousClass1.INSTANCE, list), ComposableLambdaKt.composableLambdaInstance(802480018, true, new AnonymousClass4(fm3Var, list)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, List list, bm3 bm3Var, gm3 gm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = null;
        }
        lazyListScope.items(list.size(), bm3Var != null ? new C05202(bm3Var, list) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$1(list), ComposableLambdaKt.composableLambdaInstance(2039820996, true, new C05224(gm3Var, list)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyListScope lazyListScope, Object[] objArr, bm3 bm3Var, gm3 gm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = null;
        }
        lazyListScope.items(objArr.length, bm3Var != null ? new C05246(bm3Var, objArr) : null, new LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(objArr), ComposableLambdaKt.composableLambdaInstance(1763000017, true, new C05268(gm3Var, objArr)));
    }

    public static /* synthetic */ void items$default(LazyListScope lazyListScope, Object[] objArr, nl3 nl3Var, fm3 fm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        lazyListScope.items(objArr.length, nl3Var != null ? new AnonymousClass6(nl3Var, objArr) : null, new AnonymousClass7(AnonymousClass5.INSTANCE, objArr), ComposableLambdaKt.composableLambdaInstance(-1781742563, true, new AnonymousClass8(fm3Var, objArr)));
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$8, reason: invalid class name */
    public static final class AnonymousClass8 implements fm3<LazyItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ fm3<LazyItemScope, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass8(fm3<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var, T[] tArr) {
            this.$itemContent = fm3Var;
            this.$items = tArr;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyItemScope) ? 4 : 2) | i2;
            } else {
                i3 = i2;
            }
            if ((i2 & 48) == 0) {
                i3 |= composer.changed(i) ? 32 : 16;
            }
            if (!composer.shouldExecute((i3 & 147) != 146, i3 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1781742563, i3, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:250)");
            }
            this.$itemContent.invoke(lazyItemScope, this.$items[i], composer, Integer.valueOf(i3 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$items$4, reason: invalid class name */
    public static final class AnonymousClass4 implements fm3<LazyItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ fm3<LazyItemScope, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(fm3<? super LazyItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var, List<? extends T> list) {
            this.$itemContent = fm3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyItemScope) ? 4 : 2) | i2;
            } else {
                i3 = i2;
            }
            if ((i2 & 48) == 0) {
                i3 |= composer.changed(i) ? 32 : 16;
            }
            if (!composer.shouldExecute((i3 & 147) != 146, i3 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(802480018, i3, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)");
            }
            this.$itemContent.invoke(lazyItemScope, (T) this.$items.get(i), composer, Integer.valueOf(i3 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$8, reason: invalid class name and case insensitive filesystem */
    public static final class C05268 implements fm3<LazyItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ gm3<LazyItemScope, Integer, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05268(gm3<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var, T[] tArr) {
            this.$itemContent = gm3Var;
            this.$items = tArr;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyItemScope) ? 4 : 2) | i2;
            } else {
                i3 = i2;
            }
            if ((i2 & 48) == 0) {
                i3 |= composer.changed(i) ? 32 : 16;
            }
            if (!composer.shouldExecute((i3 & 147) != 146, i3 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1763000017, i3, -1, "androidx.compose.foundation.lazy.itemsIndexed.<anonymous> (LazyDsl.kt:286)");
            }
            this.$itemContent.invoke(lazyItemScope, Integer.valueOf(i), this.$items[i], composer, Integer.valueOf(i3 & 126));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyDslKt$itemsIndexed$4, reason: invalid class name and case insensitive filesystem */
    public static final class C05224 implements fm3<LazyItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ gm3<LazyItemScope, Integer, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05224(gm3<? super LazyItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var, List<? extends T> list) {
            this.$itemContent = gm3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyItemScope) ? 4 : 2) | i2;
            } else {
                i3 = i2;
            }
            if ((i2 & 48) == 0) {
                i3 |= composer.changed(i) ? 32 : 16;
            }
            if (!composer.shouldExecute((i3 & 147) != 146, i3 & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2039820996, i3, -1, "androidx.compose.foundation.lazy.itemsIndexed.<anonymous> (LazyDsl.kt:214)");
            }
            this.$itemContent.invoke(lazyItemScope, Integer.valueOf(i), (T) this.$items.get(i), composer, Integer.valueOf(i3 & 126));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0118  */
    /* JADX WARN: Code duplicated, block: B:103:0x0121  */
    /* JADX WARN: Code duplicated, block: B:105:0x012f  */
    /* JADX WARN: Code duplicated, block: B:118:0x015d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x015f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0162  */
    /* JADX WARN: Code duplicated, block: B:123:0x0168  */
    /* JADX WARN: Code duplicated, block: B:125:0x0170  */
    /* JADX WARN: Code duplicated, block: B:126:0x017a  */
    /* JADX WARN: Code duplicated, block: B:128:0x017d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0182  */
    /* JADX WARN: Code duplicated, block: B:133:0x0186  */
    /* JADX WARN: Code duplicated, block: B:134:0x018b  */
    /* JADX WARN: Code duplicated, block: B:136:0x0192  */
    /* JADX WARN: Code duplicated, block: B:138:0x0195  */
    /* JADX WARN: Code duplicated, block: B:139:0x019c  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:147:0x01be  */
    /* JADX WARN: Code duplicated, block: B:150:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:153:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:155:0x0205  */
    /* JADX WARN: Code duplicated, block: B:158:0x021a  */
    /* JADX WARN: Code duplicated, block: B:160:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:78:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:95:0x0102  */
    /* JADX WARN: Code duplicated, block: B:99:0x0115  */
    @ul2
    public static final /* synthetic */ void LazyRow(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, boolean z2, final nl3 nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        LazyListState lazyListStateRememberLazyListState;
        PaddingValues paddingValues2;
        int i4;
        boolean z3;
        int i5;
        Arrangement.Horizontal horizontal2;
        int i6;
        Alignment.Vertical vertical2;
        int i7;
        FlingBehavior flingBehavior2;
        int i8;
        int i9;
        boolean z4;
        Composer composer2;
        final Modifier modifier2;
        final boolean z5;
        final LazyListState lazyListState2;
        final PaddingValues paddingValues3;
        final boolean z6;
        final Arrangement.Horizontal horizontal3;
        final Alignment.Vertical vertical3;
        final FlingBehavior flingBehavior3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        Arrangement.Horizontal end;
        Alignment.Vertical top;
        FlingBehavior flingBehavior4;
        boolean z7;
        FlingBehavior flingBehavior5;
        Modifier modifier4;
        int i10;
        Arrangement arrangement;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1724297413);
        int i12 = i2 & 1;
        if (i12 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListStateRememberLazyListState = lazyListState;
                int i13 = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) ? 32 : 16;
                i3 |= i13;
            } else {
                lazyListStateRememberLazyListState = lazyListState;
            }
            i3 |= i13;
        } else {
            lazyListStateRememberLazyListState = lazyListState;
        }
        int i14 = i2 & 4;
        if (i14 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                paddingValues2 = paddingValues;
                i3 |= composerStartRestartGroup.changed(paddingValues2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        horizontal2 = horizontal;
                        int i15 = composerStartRestartGroup.changed(horizontal2) ? 16384 : 8192;
                        i3 |= i15;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i3 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            flingBehavior2 = flingBehavior;
                            int i16 = composerStartRestartGroup.changed(flingBehavior2) ? 1048576 : 524288;
                            i3 |= i16;
                        } else {
                            flingBehavior2 = flingBehavior;
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i8 = i2 & 128;
                    if (i8 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 8388608;
                            } else {
                                i9 = 4194304;
                            }
                            i3 |= i9;
                        }
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i12 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if ((i2 & 2) != 0) {
                                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                    i3 &= -113;
                                }
                                if (i14 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                } else {
                                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                }
                                if (i4 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 16) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getEnd();
                                    } else {
                                        end = arrangement.getStart();
                                    }
                                    i3 &= -57345;
                                } else {
                                    end = horizontal2;
                                }
                                if (i6 != 0) {
                                    top = Alignment.Companion.getTop();
                                } else {
                                    top = vertical2;
                                }
                                if ((i2 & 64) != 0) {
                                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 &= -3670017;
                                } else {
                                    flingBehavior4 = flingBehavior2;
                                }
                                if (i8 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                                flingBehavior5 = flingBehavior4;
                                modifier4 = modifier3;
                                i10 = -1724297413;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 2) != 0) {
                                    i3 &= -113;
                                }
                                if ((i2 & 16) != 0) {
                                    i3 &= -57345;
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                }
                                z7 = z2;
                                lazyListStateRememberLazyListState = lazyListStateRememberLazyListState;
                                end = horizontal2;
                                top = vertical2;
                                flingBehavior5 = flingBehavior2;
                                i10 = -1724297413;
                                modifier4 = modifier;
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                z3 = z3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                            }
                            composer2 = composerStartRestartGroup;
                            LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier4;
                            lazyListState2 = lazyListStateRememberLazyListState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal3 = end;
                            vertical3 = top;
                            flingBehavior3 = flingBehavior5;
                            z5 = z7;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            z5 = z2;
                            lazyListState2 = lazyListStateRememberLazyListState;
                            paddingValues3 = paddingValues2;
                            z6 = z3;
                            horizontal3 = horizontal2;
                            vertical3 = vertical2;
                            flingBehavior3 = flingBehavior2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal3 = end;
                        vertical3 = top;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                vertical2 = vertical;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal3 = end;
                        vertical3 = top;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal3 = end;
                    vertical3 = top;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z3 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal3 = end;
                        vertical3 = top;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal3 = end;
                    vertical3 = top;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            vertical2 = vertical;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal3 = end;
                    vertical3 = top;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                horizontal3 = end;
                vertical3 = top;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        paddingValues2 = paddingValues;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i15;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -57345;
                            } else {
                                end = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -1724297413;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal3 = end;
                        vertical3 = top;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        horizontal3 = horizontal2;
                        vertical3 = vertical2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal3 = end;
                    vertical3 = top;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            vertical2 = vertical;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal3 = end;
                    vertical3 = top;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                horizontal3 = end;
                vertical3 = top;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z3 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                }
                i3 |= i15;
            } else {
                horizontal2 = horizontal;
            }
            i3 |= i15;
        } else {
            horizontal2 = horizontal;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                        } else {
                            end = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -1724297413;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal3 = end;
                    vertical3 = top;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    horizontal3 = horizontal2;
                    vertical3 = vertical2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                horizontal3 = end;
                vertical3 = top;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        vertical2 = vertical;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                flingBehavior2 = flingBehavior;
                if (composerStartRestartGroup.changed(flingBehavior2)) {
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i3 |= i16;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i8 = i2 & 128;
        if (i8 != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i3 |= i9;
            }
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                    } else {
                        end = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -1724297413;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                horizontal3 = end;
                vertical3 = top;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                horizontal3 = horizontal2;
                vertical3 = vertical2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i11 = 67108864;
            } else {
                i11 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i11;
        }
        if ((i3 & 38347923) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -57345;
                } else {
                    end = horizontal2;
                }
                if (i6 != 0) {
                    top = Alignment.Companion.getTop();
                } else {
                    top = vertical2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                flingBehavior5 = flingBehavior4;
                modifier4 = modifier3;
                i10 = -1724297413;
            } else {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -57345;
                } else {
                    end = horizontal2;
                }
                if (i6 != 0) {
                    top = Alignment.Companion.getTop();
                } else {
                    top = vertical2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                flingBehavior5 = flingBehavior4;
                modifier4 = modifier3;
                i10 = -1724297413;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:482)");
            }
            composer2 = composerStartRestartGroup;
            LazyRow(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, end, top, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
            z6 = z3;
            horizontal3 = end;
            vertical3 = top;
            flingBehavior3 = flingBehavior5;
            z5 = z7;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            z5 = z2;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValues2;
            z6 = z3;
            horizontal3 = horizontal2;
            vertical3 = vertical2;
            flingBehavior3 = flingBehavior2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ll4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyDslKt.LazyRow$lambda$1(modifier2, lazyListState2, paddingValues3, z6, horizontal3, vertical3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0118  */
    /* JADX WARN: Code duplicated, block: B:103:0x0121  */
    /* JADX WARN: Code duplicated, block: B:105:0x012f  */
    /* JADX WARN: Code duplicated, block: B:118:0x015d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:119:0x015f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0162  */
    /* JADX WARN: Code duplicated, block: B:123:0x0168  */
    /* JADX WARN: Code duplicated, block: B:125:0x0170  */
    /* JADX WARN: Code duplicated, block: B:126:0x017a  */
    /* JADX WARN: Code duplicated, block: B:128:0x017d  */
    /* JADX WARN: Code duplicated, block: B:131:0x0182  */
    /* JADX WARN: Code duplicated, block: B:133:0x0186  */
    /* JADX WARN: Code duplicated, block: B:134:0x018b  */
    /* JADX WARN: Code duplicated, block: B:136:0x0192  */
    /* JADX WARN: Code duplicated, block: B:138:0x0195  */
    /* JADX WARN: Code duplicated, block: B:139:0x019c  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:147:0x01be  */
    /* JADX WARN: Code duplicated, block: B:150:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:153:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:155:0x0205  */
    /* JADX WARN: Code duplicated, block: B:158:0x021a  */
    /* JADX WARN: Code duplicated, block: B:160:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:78:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:95:0x0102  */
    /* JADX WARN: Code duplicated, block: B:99:0x0115  */
    @ul2
    public static final /* synthetic */ void LazyColumn(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, final nl3 nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        LazyListState lazyListStateRememberLazyListState;
        PaddingValues paddingValues2;
        int i4;
        boolean z3;
        int i5;
        Arrangement.Vertical vertical2;
        int i6;
        Alignment.Horizontal horizontal2;
        int i7;
        FlingBehavior flingBehavior2;
        int i8;
        int i9;
        boolean z4;
        Composer composer2;
        final Modifier modifier2;
        final boolean z5;
        final LazyListState lazyListState2;
        final PaddingValues paddingValues3;
        final boolean z6;
        final Arrangement.Vertical vertical3;
        final Alignment.Horizontal horizontal3;
        final FlingBehavior flingBehavior3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        Arrangement.Vertical bottom;
        Alignment.Horizontal start;
        FlingBehavior flingBehavior4;
        boolean z7;
        FlingBehavior flingBehavior5;
        Modifier modifier4;
        int i10;
        Arrangement arrangement;
        int i11;
        Composer composerStartRestartGroup = composer.startRestartGroup(-740714857);
        int i12 = i2 & 1;
        if (i12 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListStateRememberLazyListState = lazyListState;
                int i13 = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) ? 32 : 16;
                i3 |= i13;
            } else {
                lazyListStateRememberLazyListState = lazyListState;
            }
            i3 |= i13;
        } else {
            lazyListStateRememberLazyListState = lazyListState;
        }
        int i14 = i2 & 4;
        if (i14 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                paddingValues2 = paddingValues;
                i3 |= composerStartRestartGroup.changed(paddingValues2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        vertical2 = vertical;
                        int i15 = composerStartRestartGroup.changed(vertical2) ? 16384 : 8192;
                        i3 |= i15;
                    } else {
                        vertical2 = vertical;
                    }
                    i3 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            flingBehavior2 = flingBehavior;
                            int i16 = composerStartRestartGroup.changed(flingBehavior2) ? 1048576 : 524288;
                            i3 |= i16;
                        } else {
                            flingBehavior2 = flingBehavior;
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i8 = i2 & 128;
                    if (i8 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 8388608;
                            } else {
                                i9 = 4194304;
                            }
                            i3 |= i9;
                        }
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 38347923) != 38347922) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i12 != 0) {
                                    modifier3 = Modifier.Companion;
                                } else {
                                    modifier3 = modifier;
                                }
                                if ((i2 & 2) != 0) {
                                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                    i3 &= -113;
                                }
                                if (i14 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                } else {
                                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                }
                                if (i4 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 16) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getBottom();
                                    } else {
                                        bottom = arrangement.getTop();
                                    }
                                    i3 &= -57345;
                                } else {
                                    bottom = vertical2;
                                }
                                if (i6 != 0) {
                                    start = Alignment.Companion.getStart();
                                } else {
                                    start = horizontal2;
                                }
                                if ((i2 & 64) != 0) {
                                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 &= -3670017;
                                } else {
                                    flingBehavior4 = flingBehavior2;
                                }
                                if (i8 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                                flingBehavior5 = flingBehavior4;
                                modifier4 = modifier3;
                                i10 = -740714857;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 2) != 0) {
                                    i3 &= -113;
                                }
                                if ((i2 & 16) != 0) {
                                    i3 &= -57345;
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                }
                                z7 = z2;
                                lazyListStateRememberLazyListState = lazyListStateRememberLazyListState;
                                bottom = vertical2;
                                start = horizontal2;
                                flingBehavior5 = flingBehavior2;
                                i10 = -740714857;
                                modifier4 = modifier;
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                z3 = z3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                            }
                            composer2 = composerStartRestartGroup;
                            LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier4;
                            lazyListState2 = lazyListStateRememberLazyListState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical3 = bottom;
                            horizontal3 = start;
                            flingBehavior3 = flingBehavior5;
                            z5 = z7;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier2 = modifier;
                            z5 = z2;
                            lazyListState2 = lazyListStateRememberLazyListState;
                            paddingValues3 = paddingValues2;
                            z6 = z3;
                            vertical3 = vertical2;
                            horizontal3 = horizontal2;
                            flingBehavior3 = flingBehavior2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical3 = bottom;
                        horizontal3 = start;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                horizontal2 = horizontal;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical3 = bottom;
                        horizontal3 = start;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical3 = bottom;
                    horizontal3 = start;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z3 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i15;
            } else {
                vertical2 = vertical;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical3 = bottom;
                        horizontal3 = start;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical3 = bottom;
                    horizontal3 = start;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontal2 = horizontal;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical3 = bottom;
                    horizontal3 = start;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                vertical3 = bottom;
                horizontal3 = start;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        paddingValues2 = paddingValues;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i15;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i15;
            } else {
                vertical2 = vertical;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i16;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i8 = i2 & 128;
                if (i8 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 8388608;
                        } else {
                            i9 = 4194304;
                        }
                        i3 |= i9;
                    }
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        } else {
                            if (i12 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i14 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -57345;
                            } else {
                                bottom = vertical2;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i2 & 64) != 0) {
                                flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 &= -3670017;
                            } else {
                                flingBehavior4 = flingBehavior2;
                            }
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                            flingBehavior5 = flingBehavior4;
                            modifier4 = modifier3;
                            i10 = -740714857;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical3 = bottom;
                        horizontal3 = start;
                        flingBehavior3 = flingBehavior5;
                        z5 = z7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        z5 = z2;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z6 = z3;
                        vertical3 = vertical2;
                        horizontal3 = horizontal2;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical3 = bottom;
                    horizontal3 = start;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontal2 = horizontal;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical3 = bottom;
                    horizontal3 = start;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                vertical3 = bottom;
                horizontal3 = start;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z3 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                }
                i3 |= i15;
            } else {
                vertical2 = vertical;
            }
            i3 |= i15;
        } else {
            vertical2 = vertical;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i16;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i8 = i2 & 128;
            if (i8 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i3 & 38347923) != 38347922) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    } else {
                        if (i12 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i14 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                        } else {
                            bottom = vertical2;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i2 & 64) != 0) {
                            flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 &= -3670017;
                        } else {
                            flingBehavior4 = flingBehavior2;
                        }
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                        flingBehavior5 = flingBehavior4;
                        modifier4 = modifier3;
                        i10 = -740714857;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical3 = bottom;
                    horizontal3 = start;
                    flingBehavior3 = flingBehavior5;
                    z5 = z7;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    z5 = z2;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z6 = z3;
                    vertical3 = vertical2;
                    horizontal3 = horizontal2;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                vertical3 = bottom;
                horizontal3 = start;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        horizontal2 = horizontal;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                flingBehavior2 = flingBehavior;
                if (composerStartRestartGroup.changed(flingBehavior2)) {
                }
                i3 |= i16;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i3 |= i16;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i8 = i2 & 128;
        if (i8 != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i3 |= i9;
            }
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i3 & 38347923) != 38347922) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                } else {
                    if (i12 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i14 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                    } else {
                        bottom = vertical2;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i2 & 64) != 0) {
                        flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 &= -3670017;
                    } else {
                        flingBehavior4 = flingBehavior2;
                    }
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                    flingBehavior5 = flingBehavior4;
                    modifier4 = modifier3;
                    i10 = -740714857;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                vertical3 = bottom;
                horizontal3 = start;
                flingBehavior3 = flingBehavior5;
                z5 = z7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                z5 = z2;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z6 = z3;
                vertical3 = vertical2;
                horizontal3 = horizontal2;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i11 = 67108864;
            } else {
                i11 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i11;
        }
        if ((i3 & 38347923) != 38347922) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -57345;
                } else {
                    bottom = vertical2;
                }
                if (i6 != 0) {
                    start = Alignment.Companion.getStart();
                } else {
                    start = horizontal2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                flingBehavior5 = flingBehavior4;
                modifier4 = modifier3;
                i10 = -740714857;
            } else {
                if (i12 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i14 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z3 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -57345;
                } else {
                    bottom = vertical2;
                }
                if (i6 != 0) {
                    start = Alignment.Companion.getStart();
                } else {
                    start = horizontal2;
                }
                if ((i2 & 64) != 0) {
                    flingBehavior4 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 &= -3670017;
                } else {
                    flingBehavior4 = flingBehavior2;
                }
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                flingBehavior5 = flingBehavior4;
                modifier4 = modifier3;
                i10 = -740714857;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i10, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:428)");
            }
            composer2 = composerStartRestartGroup;
            LazyColumn(modifier4, lazyListStateRememberLazyListState, paddingValuesM2026PaddingValues0680j_4, z3, bottom, start, flingBehavior5, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composer2, (33554430 & i3) | ((i3 << 3) & 1879048192), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
            z6 = z3;
            vertical3 = bottom;
            horizontal3 = start;
            flingBehavior3 = flingBehavior5;
            z5 = z7;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            z5 = z2;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValues2;
            z6 = z3;
            vertical3 = vertical2;
            horizontal3 = horizontal2;
            flingBehavior3 = flingBehavior2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kl4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyDslKt.LazyColumn$lambda$1(modifier2, lazyListState2, paddingValues3, z6, vertical3, horizontal3, flingBehavior3, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x0132  */
    /* JADX WARN: Code duplicated, block: B:110:0x0135  */
    /* JADX WARN: Code duplicated, block: B:113:0x013b  */
    /* JADX WARN: Code duplicated, block: B:115:0x0144  */
    /* JADX WARN: Code duplicated, block: B:116:0x014e  */
    /* JADX WARN: Code duplicated, block: B:118:0x0151  */
    /* JADX WARN: Code duplicated, block: B:121:0x0156  */
    /* JADX WARN: Code duplicated, block: B:123:0x015a  */
    /* JADX WARN: Code duplicated, block: B:124:0x015f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0168  */
    /* JADX WARN: Code duplicated, block: B:130:0x0173  */
    /* JADX WARN: Code duplicated, block: B:131:0x0184  */
    /* JADX WARN: Code duplicated, block: B:134:0x0195  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:139:0x01de  */
    /* JADX WARN: Code duplicated, block: B:142:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:144:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:84:0x00df  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:94:0x0109  */
    @ul2
    public static final /* synthetic */ void LazyRow(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, final nl3 nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        LazyListState lazyListStateRememberLazyListState;
        PaddingValues paddingValues2;
        int i4;
        boolean z2;
        int i5;
        Arrangement.Horizontal horizontal2;
        int i6;
        Alignment.Vertical top;
        int i7;
        FlingBehavior flingBehavior2;
        boolean z3;
        Composer composer2;
        final Modifier modifier2;
        final LazyListState lazyListState2;
        final PaddingValues paddingValues3;
        final boolean z4;
        final Arrangement.Horizontal horizontal3;
        final Alignment.Vertical vertical2;
        final FlingBehavior flingBehavior3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        PaddingValues paddingValues4;
        Alignment.Vertical vertical3;
        boolean z5;
        Arrangement.Horizontal horizontal4;
        Modifier modifier4;
        LazyListState lazyListState3;
        Arrangement arrangement;
        Arrangement.Horizontal end;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(407929823);
        int i9 = i2 & 1;
        if (i9 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListStateRememberLazyListState = lazyListState;
                int i10 = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) ? 32 : 16;
                i3 |= i10;
            } else {
                lazyListStateRememberLazyListState = lazyListState;
            }
            i3 |= i10;
        } else {
            lazyListStateRememberLazyListState = lazyListState;
        }
        int i11 = i2 & 4;
        if (i11 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                paddingValues2 = paddingValues;
                i3 |= composerStartRestartGroup.changed(paddingValues2) ? 256 : 128;
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
                        horizontal2 = horizontal;
                        int i12 = composerStartRestartGroup.changed(horizontal2) ? 16384 : 8192;
                        i3 |= i12;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i3 |= i12;
                } else {
                    horizontal2 = horizontal;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        top = vertical;
                        if (composerStartRestartGroup.changed(top)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            flingBehavior2 = flingBehavior;
                            int i13 = composerStartRestartGroup.changed(flingBehavior2) ? 1048576 : 524288;
                            i3 |= i13;
                        } else {
                            flingBehavior2 = flingBehavior;
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i8 = 8388608;
                        } else {
                            i8 = 4194304;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 2) != 0) {
                                i3 &= -113;
                            }
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                            }
                            paddingValues4 = paddingValues2;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier;
                        } else {
                            if (i9 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i11 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z2 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z2) {
                                    end = arrangement.getEnd();
                                } else {
                                    end = arrangement.getStart();
                                }
                                i3 &= -57345;
                                horizontal2 = end;
                            }
                            if (i6 != 0) {
                                top = Alignment.Companion.getTop();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                lazyListState3 = lazyListStateRememberLazyListState;
                                z5 = z2;
                                modifier4 = modifier3;
                            } else {
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                vertical3 = top;
                                z5 = z2;
                                horizontal4 = horizontal2;
                                modifier4 = modifier3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                            }
                            composer2 = composerStartRestartGroup;
                            LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier4;
                            lazyListState2 = lazyListState3;
                            paddingValues3 = paddingValues4;
                            z4 = z5;
                            horizontal3 = horizontal4;
                            vertical2 = vertical3;
                            flingBehavior3 = flingBehavior2;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z4 = z5;
                        horizontal3 = horizontal4;
                        vertical2 = vertical3;
                        flingBehavior3 = flingBehavior2;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z4 = z2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                top = vertical;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                            horizontal2 = end;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                            horizontal2 = end;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z4 = z5;
                    horizontal3 = horizontal4;
                    vertical2 = vertical3;
                    flingBehavior3 = flingBehavior2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z4 = z2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i12;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i12;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    top = vertical;
                    if (composerStartRestartGroup.changed(top)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                            horizontal2 = end;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                            horizontal2 = end;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z4 = z5;
                    horizontal3 = horizontal4;
                    vertical2 = vertical3;
                    flingBehavior3 = flingBehavior2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z4 = z2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            top = vertical;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i3 |= i8;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                        horizontal2 = end;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical3 = top;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                } else {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                        horizontal2 = end;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical3 = top;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z4 = z5;
                horizontal3 = horizontal4;
                vertical2 = vertical3;
                flingBehavior3 = flingBehavior2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z4 = z2;
                horizontal3 = horizontal2;
                vertical2 = top;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        paddingValues2 = paddingValues;
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
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i12;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i12;
            } else {
                horizontal2 = horizontal;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    top = vertical;
                    if (composerStartRestartGroup.changed(top)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                            horizontal2 = end;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -57345;
                            horizontal2 = end;
                        }
                        if (i6 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical3 = top;
                            z5 = z2;
                            horizontal4 = horizontal2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z4 = z5;
                    horizontal3 = horizontal4;
                    vertical2 = vertical3;
                    flingBehavior3 = flingBehavior2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z4 = z2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            top = vertical;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i3 |= i8;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                        horizontal2 = end;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical3 = top;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                } else {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                        horizontal2 = end;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical3 = top;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z4 = z5;
                horizontal3 = horizontal4;
                vertical2 = vertical3;
                flingBehavior3 = flingBehavior2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z4 = z2;
                horizontal3 = horizontal2;
                vertical2 = top;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                }
                i3 |= i12;
            } else {
                horizontal2 = horizontal;
            }
            i3 |= i12;
        } else {
            horizontal2 = horizontal;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                top = vertical;
                if (composerStartRestartGroup.changed(top)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i3 |= i8;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                        horizontal2 = end;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical3 = top;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                } else {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -57345;
                        horizontal2 = end;
                    }
                    if (i6 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical3 = top;
                        z5 = z2;
                        horizontal4 = horizontal2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
                }
                composer2 = composerStartRestartGroup;
                LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z4 = z5;
                horizontal3 = horizontal4;
                vertical2 = vertical3;
                flingBehavior3 = flingBehavior2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z4 = z2;
                horizontal3 = horizontal2;
                vertical2 = top;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        top = vertical;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                flingBehavior2 = flingBehavior;
                if (composerStartRestartGroup.changed(flingBehavior2)) {
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i3 |= i13;
        } else {
            flingBehavior2 = flingBehavior;
        }
        if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i8 = 8388608;
            } else {
                i8 = 4194304;
            }
            i3 |= i8;
        }
        if ((i3 & 4793491) != 4793490) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i11 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z2 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z2) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -57345;
                    horizontal2 = end;
                }
                if (i6 != 0) {
                    top = Alignment.Companion.getTop();
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    lazyListState3 = lazyListStateRememberLazyListState;
                    z5 = z2;
                    modifier4 = modifier3;
                } else {
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical3 = top;
                    z5 = z2;
                    horizontal4 = horizontal2;
                    modifier4 = modifier3;
                    lazyListState3 = lazyListStateRememberLazyListState;
                }
            } else {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i11 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z2 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z2) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -57345;
                    horizontal2 = end;
                }
                if (i6 != 0) {
                    top = Alignment.Companion.getTop();
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    lazyListState3 = lazyListStateRememberLazyListState;
                    z5 = z2;
                    modifier4 = modifier3;
                } else {
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical3 = top;
                    z5 = z2;
                    horizontal4 = horizontal2;
                    modifier4 = modifier3;
                    lazyListState3 = lazyListStateRememberLazyListState;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(407929823, i3, -1, "androidx.compose.foundation.lazy.LazyRow (LazyDsl.kt:509)");
            }
            composer2 = composerStartRestartGroup;
            LazyRow(modifier4, lazyListState3, paddingValues4, z5, horizontal4, vertical3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
            lazyListState2 = lazyListState3;
            paddingValues3 = paddingValues4;
            z4 = z5;
            horizontal3 = horizontal4;
            vertical2 = vertical3;
            flingBehavior3 = flingBehavior2;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValues2;
            z4 = z2;
            horizontal3 = horizontal2;
            vertical2 = top;
            flingBehavior3 = flingBehavior2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ml4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyDslKt.LazyRow$lambda$2(modifier2, lazyListState2, paddingValues3, z4, horizontal3, vertical2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0130 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x0132  */
    /* JADX WARN: Code duplicated, block: B:110:0x0135  */
    /* JADX WARN: Code duplicated, block: B:113:0x013b  */
    /* JADX WARN: Code duplicated, block: B:115:0x0144  */
    /* JADX WARN: Code duplicated, block: B:116:0x014e  */
    /* JADX WARN: Code duplicated, block: B:118:0x0151  */
    /* JADX WARN: Code duplicated, block: B:121:0x0156  */
    /* JADX WARN: Code duplicated, block: B:123:0x015a  */
    /* JADX WARN: Code duplicated, block: B:124:0x015f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0168  */
    /* JADX WARN: Code duplicated, block: B:130:0x0173  */
    /* JADX WARN: Code duplicated, block: B:131:0x0184  */
    /* JADX WARN: Code duplicated, block: B:134:0x0195  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:139:0x01de  */
    /* JADX WARN: Code duplicated, block: B:142:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:144:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:84:0x00df  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:92:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:94:0x0109  */
    @ul2
    public static final /* synthetic */ void LazyColumn(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, final nl3 nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        LazyListState lazyListStateRememberLazyListState;
        PaddingValues paddingValues2;
        int i4;
        boolean z2;
        int i5;
        Arrangement.Vertical vertical2;
        int i6;
        Alignment.Horizontal start;
        int i7;
        FlingBehavior flingBehavior2;
        boolean z3;
        Composer composer2;
        final Modifier modifier2;
        final LazyListState lazyListState2;
        final PaddingValues paddingValues3;
        final boolean z4;
        final Arrangement.Vertical vertical3;
        final Alignment.Horizontal horizontal2;
        final FlingBehavior flingBehavior3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        PaddingValues paddingValues4;
        Alignment.Horizontal horizontal3;
        boolean z5;
        Arrangement.Vertical vertical4;
        Modifier modifier4;
        LazyListState lazyListState3;
        Arrangement arrangement;
        Arrangement.Vertical bottom;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(-563353797);
        int i9 = i2 & 1;
        if (i9 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                lazyListStateRememberLazyListState = lazyListState;
                int i10 = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) ? 32 : 16;
                i3 |= i10;
            } else {
                lazyListStateRememberLazyListState = lazyListState;
            }
            i3 |= i10;
        } else {
            lazyListStateRememberLazyListState = lazyListState;
        }
        int i11 = i2 & 4;
        if (i11 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                paddingValues2 = paddingValues;
                i3 |= composerStartRestartGroup.changed(paddingValues2) ? 256 : 128;
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
                        vertical2 = vertical;
                        int i12 = composerStartRestartGroup.changed(vertical2) ? 16384 : 8192;
                        i3 |= i12;
                    } else {
                        vertical2 = vertical;
                    }
                    i3 |= i12;
                } else {
                    vertical2 = vertical;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        start = horizontal;
                        if (composerStartRestartGroup.changed(start)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            flingBehavior2 = flingBehavior;
                            int i13 = composerStartRestartGroup.changed(flingBehavior2) ? 1048576 : 524288;
                            i3 |= i13;
                        } else {
                            flingBehavior2 = flingBehavior;
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i8 = 8388608;
                        } else {
                            i8 = 4194304;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 2) != 0) {
                                i3 &= -113;
                            }
                            if ((i2 & 16) != 0) {
                                i3 &= -57345;
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                            }
                            paddingValues4 = paddingValues2;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier;
                        } else {
                            if (i9 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if ((i2 & 2) != 0) {
                                lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                                i3 &= -113;
                            }
                            if (i11 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i4 != 0) {
                                z2 = false;
                            }
                            if ((i2 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z2) {
                                    bottom = arrangement.getBottom();
                                } else {
                                    bottom = arrangement.getTop();
                                }
                                i3 &= -57345;
                                vertical2 = bottom;
                            }
                            if (i6 != 0) {
                                start = Alignment.Companion.getStart();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                lazyListState3 = lazyListStateRememberLazyListState;
                                z5 = z2;
                                modifier4 = modifier3;
                            } else {
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                horizontal3 = start;
                                z5 = z2;
                                vertical4 = vertical2;
                                modifier4 = modifier3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                            }
                            composer2 = composerStartRestartGroup;
                            LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier2 = modifier4;
                            lazyListState2 = lazyListState3;
                            paddingValues3 = paddingValues4;
                            z4 = z5;
                            vertical3 = vertical4;
                            horizontal2 = horizontal3;
                            flingBehavior3 = flingBehavior2;
                        }
                        lazyListState3 = lazyListStateRememberLazyListState;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                        }
                        composer2 = composerStartRestartGroup;
                        LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier4;
                        lazyListState2 = lazyListState3;
                        paddingValues3 = paddingValues4;
                        z4 = z5;
                        vertical3 = vertical4;
                        horizontal2 = horizontal3;
                        flingBehavior3 = flingBehavior2;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier2 = modifier;
                        lazyListState2 = lazyListStateRememberLazyListState;
                        paddingValues3 = paddingValues2;
                        z4 = z2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        flingBehavior3 = flingBehavior2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                start = horizontal;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                            vertical2 = bottom;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                            vertical2 = bottom;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z4 = z5;
                    vertical3 = vertical4;
                    horizontal2 = horizontal3;
                    flingBehavior3 = flingBehavior2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z4 = z2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            z2 = z;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i12;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i12;
            } else {
                vertical2 = vertical;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    start = horizontal;
                    if (composerStartRestartGroup.changed(start)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                            vertical2 = bottom;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                            vertical2 = bottom;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z4 = z5;
                    vertical3 = vertical4;
                    horizontal2 = horizontal3;
                    flingBehavior3 = flingBehavior2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z4 = z2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            start = horizontal;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i3 |= i8;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                        vertical2 = bottom;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = start;
                        z5 = z2;
                        vertical4 = vertical2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                } else {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                        vertical2 = bottom;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = start;
                        z5 = z2;
                        vertical4 = vertical2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z4 = z5;
                vertical3 = vertical4;
                horizontal2 = horizontal3;
                flingBehavior3 = flingBehavior2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z4 = z2;
                vertical3 = vertical2;
                horizontal2 = start;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        paddingValues2 = paddingValues;
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
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i12;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i12;
            } else {
                vertical2 = vertical;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    start = horizontal;
                    if (composerStartRestartGroup.changed(start)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        flingBehavior2 = flingBehavior;
                        if (composerStartRestartGroup.changed(flingBehavior2)) {
                        }
                        i3 |= i13;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                            vertical2 = bottom;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    } else {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if ((i2 & 2) != 0) {
                            lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                            i3 &= -113;
                        }
                        if (i11 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i4 != 0) {
                            z2 = false;
                        }
                        if ((i2 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z2) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -57345;
                            vertical2 = bottom;
                        }
                        if (i6 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            lazyListState3 = lazyListStateRememberLazyListState;
                            z5 = z2;
                            modifier4 = modifier3;
                        } else {
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = start;
                            z5 = z2;
                            vertical4 = vertical2;
                            modifier4 = modifier3;
                            lazyListState3 = lazyListStateRememberLazyListState;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                    }
                    composer2 = composerStartRestartGroup;
                    LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier4;
                    lazyListState2 = lazyListState3;
                    paddingValues3 = paddingValues4;
                    z4 = z5;
                    vertical3 = vertical4;
                    horizontal2 = horizontal3;
                    flingBehavior3 = flingBehavior2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier2 = modifier;
                    lazyListState2 = lazyListStateRememberLazyListState;
                    paddingValues3 = paddingValues2;
                    z4 = z2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    flingBehavior3 = flingBehavior2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            start = horizontal;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i3 |= i8;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                        vertical2 = bottom;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = start;
                        z5 = z2;
                        vertical4 = vertical2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                } else {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                        vertical2 = bottom;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = start;
                        z5 = z2;
                        vertical4 = vertical2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z4 = z5;
                vertical3 = vertical4;
                horizontal2 = horizontal3;
                flingBehavior3 = flingBehavior2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z4 = z2;
                vertical3 = vertical2;
                horizontal2 = start;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        z2 = z;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                }
                i3 |= i12;
            } else {
                vertical2 = vertical;
            }
            i3 |= i12;
        } else {
            vertical2 = vertical;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                start = horizontal;
                if (composerStartRestartGroup.changed(start)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    flingBehavior2 = flingBehavior;
                    if (composerStartRestartGroup.changed(flingBehavior2)) {
                    }
                    i3 |= i13;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i3 |= i8;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                        vertical2 = bottom;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = start;
                        z5 = z2;
                        vertical4 = vertical2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                } else {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if ((i2 & 2) != 0) {
                        lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                        i3 &= -113;
                    }
                    if (i11 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if ((i2 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z2) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -57345;
                        vertical2 = bottom;
                    }
                    if (i6 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        lazyListState3 = lazyListStateRememberLazyListState;
                        z5 = z2;
                        modifier4 = modifier3;
                    } else {
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = start;
                        z5 = z2;
                        vertical4 = vertical2;
                        modifier4 = modifier3;
                        lazyListState3 = lazyListStateRememberLazyListState;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
                }
                composer2 = composerStartRestartGroup;
                LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier4;
                lazyListState2 = lazyListState3;
                paddingValues3 = paddingValues4;
                z4 = z5;
                vertical3 = vertical4;
                horizontal2 = horizontal3;
                flingBehavior3 = flingBehavior2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier2 = modifier;
                lazyListState2 = lazyListStateRememberLazyListState;
                paddingValues3 = paddingValues2;
                z4 = z2;
                vertical3 = vertical2;
                horizontal2 = start;
                flingBehavior3 = flingBehavior2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        start = horizontal;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                flingBehavior2 = flingBehavior;
                if (composerStartRestartGroup.changed(flingBehavior2)) {
                }
                i3 |= i13;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i3 |= i13;
        } else {
            flingBehavior2 = flingBehavior;
        }
        if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i8 = 8388608;
            } else {
                i8 = 4194304;
            }
            i3 |= i8;
        }
        if ((i3 & 4793491) != 4793490) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i11 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z2 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z2) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -57345;
                    vertical2 = bottom;
                }
                if (i6 != 0) {
                    start = Alignment.Companion.getStart();
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    lazyListState3 = lazyListStateRememberLazyListState;
                    z5 = z2;
                    modifier4 = modifier3;
                } else {
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = start;
                    z5 = z2;
                    vertical4 = vertical2;
                    modifier4 = modifier3;
                    lazyListState3 = lazyListStateRememberLazyListState;
                }
            } else {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if ((i2 & 2) != 0) {
                    lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(0, 0, composerStartRestartGroup, 0, 3);
                    i3 &= -113;
                }
                if (i11 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i4 != 0) {
                    z2 = false;
                }
                if ((i2 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z2) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -57345;
                    vertical2 = bottom;
                }
                if (i6 != 0) {
                    start = Alignment.Companion.getStart();
                }
                if ((i2 & 64) != 0) {
                    i3 &= -3670017;
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    lazyListState3 = lazyListStateRememberLazyListState;
                    z5 = z2;
                    modifier4 = modifier3;
                } else {
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = start;
                    z5 = z2;
                    vertical4 = vertical2;
                    modifier4 = modifier3;
                    lazyListState3 = lazyListStateRememberLazyListState;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-563353797, i3, -1, "androidx.compose.foundation.lazy.LazyColumn (LazyDsl.kt:455)");
            }
            composer2 = composerStartRestartGroup;
            LazyColumn(modifier4, lazyListState3, paddingValues4, z5, vertical4, horizontal3, flingBehavior2, true, null, nl3Var, composer2, (i3 & 14) | 12582912 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | ((i3 << 6) & 1879048192), 256);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier4;
            lazyListState2 = lazyListState3;
            paddingValues3 = paddingValues4;
            z4 = z5;
            vertical3 = vertical4;
            horizontal2 = horizontal3;
            flingBehavior3 = flingBehavior2;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier2 = modifier;
            lazyListState2 = lazyListStateRememberLazyListState;
            paddingValues3 = paddingValues2;
            z4 = z2;
            vertical3 = vertical2;
            horizontal2 = start;
            flingBehavior3 = flingBehavior2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: il4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyDslKt.LazyColumn$lambda$2(modifier2, lazyListState2, paddingValues3, z4, vertical3, horizontal2, flingBehavior3, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
