package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.internal.DropdownMenuPositionProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidMenu_androidKt {
    private static final PopupProperties DefaultMenuProperties = new PopupProperties(true, false, false, false, 14, (jh2) null);

    /* JADX WARN: Code duplicated, block: B:102:0x0143  */
    /* JADX WARN: Code duplicated, block: B:103:0x014c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0150  */
    /* JADX WARN: Code duplicated, block: B:106:0x016b  */
    /* JADX WARN: Code duplicated, block: B:109:0x017d  */
    /* JADX WARN: Code duplicated, block: B:112:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:114:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:117:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:119:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:69:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:95:0x010f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x0111  */
    /* JADX WARN: Code duplicated, block: B:98:0x0116  */
    /* JADX WARN: Code duplicated, block: B:99:0x013c  */
    @ul2
    /* JADX INFO: renamed from: DropdownMenu-4kj-_NE, reason: not valid java name */
    public static final /* synthetic */ void m3079DropdownMenu4kj_NE(final boolean z, final ll3 ll3Var, Modifier modifier, long j, ScrollState scrollState, PopupProperties popupProperties, final dm3 dm3Var, Composer composer, final int i, final int i2) {
        boolean z2;
        int i3;
        ll3 ll3Var2;
        Modifier modifier2;
        int i4;
        long jM9098constructorimpl;
        int i5;
        ScrollState scrollStateRememberScrollState;
        int i6;
        PopupProperties popupProperties2;
        int i7;
        int i8;
        int i9;
        boolean z3;
        Composer composer2;
        final Modifier modifier3;
        final long j2;
        final ScrollState scrollState2;
        final PopupProperties popupProperties3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i10;
        int i11;
        Modifier modifier4;
        long j3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1518067413);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            z2 = z;
        } else {
            z2 = z;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(z2) ? 4 : 2) | i;
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
        int i12 = i2 & 4;
        if (i12 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    jM9098constructorimpl = j;
                    if (composerStartRestartGroup.changed(jM9098constructorimpl)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        scrollStateRememberScrollState = scrollState;
                        int i13 = composerStartRestartGroup.changed(scrollStateRememberScrollState) ? 16384 : 8192;
                        i3 |= i13;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    i3 |= i13;
                } else {
                    scrollStateRememberScrollState = scrollState;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        popupProperties2 = popupProperties;
                        if (composerStartRestartGroup.changed(popupProperties2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((i2 & 64) != 0) {
                        if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i8 = 1048576;
                            } else {
                                i8 = 524288;
                            }
                            i3 |= i8;
                        }
                        i9 = i3;
                        if ((i3 & 599187) != 599186) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i12 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                                }
                                if ((i2 & 16) != 0) {
                                    i10 = i9 & (-57345);
                                    scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                                } else {
                                    i10 = i9;
                                }
                                if (i6 != 0) {
                                    j3 = jM9098constructorimpl;
                                    scrollStateRememberScrollState = scrollStateRememberScrollState;
                                    popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                    i11 = 1518067413;
                                    modifier4 = modifier2;
                                } else {
                                    scrollStateRememberScrollState = scrollStateRememberScrollState;
                                    popupProperties2 = popupProperties2;
                                    i11 = 1518067413;
                                    modifier4 = modifier2;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                                }
                                MenuDefaults menuDefaults = MenuDefaults.INSTANCE;
                                composer2 = composerStartRestartGroup;
                                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults.getShape(composerStartRestartGroup, 6), menuDefaults.getContainerColor(composerStartRestartGroup, 6), menuDefaults.m3608getTonalElevationD9Ej5fM(), menuDefaults.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier4;
                                j2 = j3;
                                scrollState2 = scrollStateRememberScrollState;
                                popupProperties3 = popupProperties2;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                i10 = (i2 & 16) != 0 ? i9 & (-57345) : i9;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            }
                            j3 = jM9098constructorimpl;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                            }
                            MenuDefaults menuDefaults2 = MenuDefaults.INSTANCE;
                            composer2 = composerStartRestartGroup;
                            m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults2.getShape(composerStartRestartGroup, 6), menuDefaults2.getContainerColor(composerStartRestartGroup, 6), menuDefaults2.m3608getTonalElevationD9Ej5fM(), menuDefaults2.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            j2 = j3;
                            scrollState2 = scrollStateRememberScrollState;
                            popupProperties3 = popupProperties2;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            modifier3 = modifier2;
                            j2 = jM9098constructorimpl;
                            scrollState2 = scrollStateRememberScrollState;
                            popupProperties3 = popupProperties2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    i9 = i3;
                    if ((i3 & 599187) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        } else {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                        }
                        MenuDefaults menuDefaults3 = MenuDefaults.INSTANCE;
                        composer2 = composerStartRestartGroup;
                        m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults3.getShape(composerStartRestartGroup, 6), menuDefaults3.getContainerColor(composerStartRestartGroup, 6), menuDefaults3.m3608getTonalElevationD9Ej5fM(), menuDefaults3.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        j2 = j3;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM9098constructorimpl;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                popupProperties2 = popupProperties;
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    i9 = i3;
                    if ((i3 & 599187) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        } else {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                        }
                        MenuDefaults menuDefaults4 = MenuDefaults.INSTANCE;
                        composer2 = composerStartRestartGroup;
                        m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults4.getShape(composerStartRestartGroup, 6), menuDefaults4.getContainerColor(composerStartRestartGroup, 6), menuDefaults4.m3608getTonalElevationD9Ej5fM(), menuDefaults4.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        j2 = j3;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM9098constructorimpl;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                i9 = i3;
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    } else {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                    }
                    MenuDefaults menuDefaults5 = MenuDefaults.INSTANCE;
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults5.getShape(composerStartRestartGroup, 6), menuDefaults5.getContainerColor(composerStartRestartGroup, 6), menuDefaults5.m3608getTonalElevationD9Ej5fM(), menuDefaults5.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = j3;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM9098constructorimpl;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            jM9098constructorimpl = j;
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    scrollStateRememberScrollState = scrollState;
                    if (composerStartRestartGroup.changed(scrollStateRememberScrollState)) {
                    }
                    i3 |= i13;
                } else {
                    scrollStateRememberScrollState = scrollState;
                }
                i3 |= i13;
            } else {
                scrollStateRememberScrollState = scrollState;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    i9 = i3;
                    if ((i3 & 599187) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        } else {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                        }
                        MenuDefaults menuDefaults6 = MenuDefaults.INSTANCE;
                        composer2 = composerStartRestartGroup;
                        m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults6.getShape(composerStartRestartGroup, 6), menuDefaults6.getContainerColor(composerStartRestartGroup, 6), menuDefaults6.m3608getTonalElevationD9Ej5fM(), menuDefaults6.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        j2 = j3;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM9098constructorimpl;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                i9 = i3;
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    } else {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                    }
                    MenuDefaults menuDefaults7 = MenuDefaults.INSTANCE;
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults7.getShape(composerStartRestartGroup, 6), menuDefaults7.getContainerColor(composerStartRestartGroup, 6), menuDefaults7.m3608getTonalElevationD9Ej5fM(), menuDefaults7.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = j3;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM9098constructorimpl;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            popupProperties2 = popupProperties;
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                i9 = i3;
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    } else {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                    }
                    MenuDefaults menuDefaults8 = MenuDefaults.INSTANCE;
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults8.getShape(composerStartRestartGroup, 6), menuDefaults8.getContainerColor(composerStartRestartGroup, 6), menuDefaults8.m3608getTonalElevationD9Ej5fM(), menuDefaults8.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = j3;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM9098constructorimpl;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            i9 = i3;
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                }
                MenuDefaults menuDefaults9 = MenuDefaults.INSTANCE;
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults9.getShape(composerStartRestartGroup, 6), menuDefaults9.getContainerColor(composerStartRestartGroup, 6), menuDefaults9.m3608getTonalElevationD9Ej5fM(), menuDefaults9.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = j3;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM9098constructorimpl;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                jM9098constructorimpl = j;
                if (composerStartRestartGroup.changed(jM9098constructorimpl)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    scrollStateRememberScrollState = scrollState;
                    if (composerStartRestartGroup.changed(scrollStateRememberScrollState)) {
                    }
                    i3 |= i13;
                } else {
                    scrollStateRememberScrollState = scrollState;
                }
                i3 |= i13;
            } else {
                scrollStateRememberScrollState = scrollState;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i2 & 64) != 0) {
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    i9 = i3;
                    if ((i3 & 599187) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        } else {
                            if (i12 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                            }
                            if ((i2 & 16) != 0) {
                                i10 = i9 & (-57345);
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            } else {
                                i10 = i9;
                            }
                            if (i6 != 0) {
                                j3 = jM9098constructorimpl;
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                                i11 = 1518067413;
                                modifier4 = modifier2;
                            } else {
                                scrollStateRememberScrollState = scrollStateRememberScrollState;
                                popupProperties2 = popupProperties2;
                                i11 = 1518067413;
                                modifier4 = modifier2;
                                j3 = jM9098constructorimpl;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                        }
                        MenuDefaults menuDefaults10 = MenuDefaults.INSTANCE;
                        composer2 = composerStartRestartGroup;
                        m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults10.getShape(composerStartRestartGroup, 6), menuDefaults10.getContainerColor(composerStartRestartGroup, 6), menuDefaults10.m3608getTonalElevationD9Ej5fM(), menuDefaults10.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        j2 = j3;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM9098constructorimpl;
                        scrollState2 = scrollStateRememberScrollState;
                        popupProperties3 = popupProperties2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                i9 = i3;
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    } else {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                    }
                    MenuDefaults menuDefaults11 = MenuDefaults.INSTANCE;
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults11.getShape(composerStartRestartGroup, 6), menuDefaults11.getContainerColor(composerStartRestartGroup, 6), menuDefaults11.m3608getTonalElevationD9Ej5fM(), menuDefaults11.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = j3;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM9098constructorimpl;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            popupProperties2 = popupProperties;
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                i9 = i3;
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    } else {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                    }
                    MenuDefaults menuDefaults12 = MenuDefaults.INSTANCE;
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults12.getShape(composerStartRestartGroup, 6), menuDefaults12.getContainerColor(composerStartRestartGroup, 6), menuDefaults12.m3608getTonalElevationD9Ej5fM(), menuDefaults12.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = j3;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM9098constructorimpl;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            i9 = i3;
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                }
                MenuDefaults menuDefaults13 = MenuDefaults.INSTANCE;
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults13.getShape(composerStartRestartGroup, 6), menuDefaults13.getContainerColor(composerStartRestartGroup, 6), menuDefaults13.m3608getTonalElevationD9Ej5fM(), menuDefaults13.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = j3;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM9098constructorimpl;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        jM9098constructorimpl = j;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                scrollStateRememberScrollState = scrollState;
                if (composerStartRestartGroup.changed(scrollStateRememberScrollState)) {
                }
                i3 |= i13;
            } else {
                scrollStateRememberScrollState = scrollState;
            }
            i3 |= i13;
        } else {
            scrollStateRememberScrollState = scrollState;
        }
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                popupProperties2 = popupProperties;
                if (composerStartRestartGroup.changed(popupProperties2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((i2 & 64) != 0) {
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                i9 = i3;
                if ((i3 & 599187) != 599186) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    } else {
                        if (i12 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                        }
                        if ((i2 & 16) != 0) {
                            i10 = i9 & (-57345);
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        } else {
                            i10 = i9;
                        }
                        if (i6 != 0) {
                            j3 = jM9098constructorimpl;
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                            i11 = 1518067413;
                            modifier4 = modifier2;
                        } else {
                            scrollStateRememberScrollState = scrollStateRememberScrollState;
                            popupProperties2 = popupProperties2;
                            i11 = 1518067413;
                            modifier4 = modifier2;
                            j3 = jM9098constructorimpl;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                    }
                    MenuDefaults menuDefaults14 = MenuDefaults.INSTANCE;
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults14.getShape(composerStartRestartGroup, 6), menuDefaults14.getContainerColor(composerStartRestartGroup, 6), menuDefaults14.m3608getTonalElevationD9Ej5fM(), menuDefaults14.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = j3;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM9098constructorimpl;
                    scrollState2 = scrollStateRememberScrollState;
                    popupProperties3 = popupProperties2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            i9 = i3;
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                }
                MenuDefaults menuDefaults15 = MenuDefaults.INSTANCE;
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults15.getShape(composerStartRestartGroup, 6), menuDefaults15.getContainerColor(composerStartRestartGroup, 6), menuDefaults15.m3608getTonalElevationD9Ej5fM(), menuDefaults15.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = j3;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM9098constructorimpl;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        popupProperties2 = popupProperties;
        if ((i2 & 64) != 0) {
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            i9 = i3;
            if ((i3 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                } else {
                    if (i12 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                    }
                    if ((i2 & 16) != 0) {
                        i10 = i9 & (-57345);
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    } else {
                        i10 = i9;
                    }
                    if (i6 != 0) {
                        j3 = jM9098constructorimpl;
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        i11 = 1518067413;
                        modifier4 = modifier2;
                    } else {
                        scrollStateRememberScrollState = scrollStateRememberScrollState;
                        popupProperties2 = popupProperties2;
                        i11 = 1518067413;
                        modifier4 = modifier2;
                        j3 = jM9098constructorimpl;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
                }
                MenuDefaults menuDefaults16 = MenuDefaults.INSTANCE;
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults16.getShape(composerStartRestartGroup, 6), menuDefaults16.getContainerColor(composerStartRestartGroup, 6), menuDefaults16.m3608getTonalElevationD9Ej5fM(), menuDefaults16.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = j3;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM9098constructorimpl;
                scrollState2 = scrollStateRememberScrollState;
                popupProperties3 = popupProperties2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        i9 = i3;
        if ((i3 & 599187) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                }
                if ((i2 & 16) != 0) {
                    i10 = i9 & (-57345);
                    scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                } else {
                    i10 = i9;
                }
                if (i6 != 0) {
                    j3 = jM9098constructorimpl;
                    scrollStateRememberScrollState = scrollStateRememberScrollState;
                    popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                    i11 = 1518067413;
                    modifier4 = modifier2;
                } else {
                    scrollStateRememberScrollState = scrollStateRememberScrollState;
                    popupProperties2 = popupProperties2;
                    i11 = 1518067413;
                    modifier4 = modifier2;
                    j3 = jM9098constructorimpl;
                }
            } else {
                if (i12 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << 32));
                }
                if ((i2 & 16) != 0) {
                    i10 = i9 & (-57345);
                    scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                } else {
                    i10 = i9;
                }
                if (i6 != 0) {
                    j3 = jM9098constructorimpl;
                    scrollStateRememberScrollState = scrollStateRememberScrollState;
                    popupProperties2 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                    i11 = 1518067413;
                    modifier4 = modifier2;
                } else {
                    scrollStateRememberScrollState = scrollStateRememberScrollState;
                    popupProperties2 = popupProperties2;
                    i11 = 1518067413;
                    modifier4 = modifier2;
                    j3 = jM9098constructorimpl;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i11, i10, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:123)");
            }
            MenuDefaults menuDefaults17 = MenuDefaults.INSTANCE;
            composer2 = composerStartRestartGroup;
            m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, j3, scrollStateRememberScrollState, popupProperties2, menuDefaults17.getShape(composerStartRestartGroup, 6), menuDefaults17.getContainerColor(composerStartRestartGroup, 6), menuDefaults17.m3608getTonalElevationD9Ej5fM(), menuDefaults17.m3607getShadowElevationD9Ej5fM(), null, dm3Var, composer2, (i10 & 14) | 905969664 | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10), ((i10 >> 15) & 112) | 6, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            j2 = j3;
            scrollState2 = scrollStateRememberScrollState;
            popupProperties3 = popupProperties2;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            j2 = jM9098constructorimpl;
            scrollState2 = scrollStateRememberScrollState;
            popupProperties3 = popupProperties2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aj
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidMenu_androidKt.DropdownMenu_4kj__NE$lambda$5(z, ll3Var, modifier3, j2, scrollState2, popupProperties3, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:80:0x010c  */
    /* JADX WARN: Code duplicated, block: B:83:0x0114  */
    /* JADX WARN: Code duplicated, block: B:86:0x014c  */
    /* JADX WARN: Code duplicated, block: B:88:0x0153  */
    /* JADX WARN: Code duplicated, block: B:91:0x0163  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    @ul2
    /* JADX INFO: renamed from: DropdownMenu-ILWXrKs, reason: not valid java name */
    public static final /* synthetic */ void m3080DropdownMenuILWXrKs(final boolean z, final ll3 ll3Var, Modifier modifier, long j, PopupProperties popupProperties, final dm3 dm3Var, Composer composer, final int i, final int i2) {
        boolean z2;
        int i3;
        ll3 ll3Var2;
        Modifier modifier2;
        int i4;
        int i5;
        int i6;
        int i7;
        dm3 dm3Var2;
        int i8;
        boolean z3;
        Composer composer2;
        final PopupProperties popupProperties2;
        final Modifier modifier3;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long jM9098constructorimpl;
        PopupProperties popupProperties3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1744198621);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            z2 = z;
        } else {
            z2 = z;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changed(z2) ? 4 : 2) | i;
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
        int i9 = i2 & 4;
        if (i9 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(j)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(popupProperties)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((i2 & 32) != 0) {
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        dm3Var2 = dm3Var;
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i3 |= i8;
                    }
                    if ((74899 & i3) != 74898) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        if (i9 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            float fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl)) << 32));
                        } else {
                            jM9098constructorimpl = j;
                        }
                        if (i6 != 0) {
                            popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                        } else {
                            popupProperties3 = popupProperties;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                        }
                        composer2 = composerStartRestartGroup;
                        m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        j2 = jM9098constructorimpl;
                        popupProperties2 = popupProperties3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        popupProperties2 = popupProperties;
                        modifier3 = modifier2;
                        j2 = j;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                dm3Var2 = dm3Var;
                if ((74899 & i3) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        float fM9042constructorimpl2 = Dp.m9042constructorimpl(0.0f);
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl2)) << 32));
                    } else {
                        jM9098constructorimpl = j;
                    }
                    if (i6 != 0) {
                        popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                    } else {
                        popupProperties3 = popupProperties;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = jM9098constructorimpl;
                    popupProperties2 = popupProperties3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    popupProperties2 = popupProperties;
                    modifier3 = modifier2;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            if ((i2 & 32) != 0) {
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    dm3Var2 = dm3Var;
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i3 |= i8;
                }
                if ((74899 & i3) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        float fM9042constructorimpl3 = Dp.m9042constructorimpl(0.0f);
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl3)) << 32));
                    } else {
                        jM9098constructorimpl = j;
                    }
                    if (i6 != 0) {
                        popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                    } else {
                        popupProperties3 = popupProperties;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = jM9098constructorimpl;
                    popupProperties2 = popupProperties3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    popupProperties2 = popupProperties;
                    modifier3 = modifier2;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            dm3Var2 = dm3Var;
            if ((74899 & i3) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    float fM9042constructorimpl4 = Dp.m9042constructorimpl(0.0f);
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl4)) << 32));
                } else {
                    jM9098constructorimpl = j;
                }
                if (i6 != 0) {
                    popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                } else {
                    popupProperties3 = popupProperties;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                }
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = jM9098constructorimpl;
                popupProperties2 = popupProperties3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                popupProperties2 = popupProperties;
                modifier3 = modifier2;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changed(j)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i3 |= i5;
        }
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(popupProperties)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            if ((i2 & 32) != 0) {
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    dm3Var2 = dm3Var;
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i3 |= i8;
                }
                if ((74899 & i3) != 74898) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        float fM9042constructorimpl5 = Dp.m9042constructorimpl(0.0f);
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl5)) << 32));
                    } else {
                        jM9098constructorimpl = j;
                    }
                    if (i6 != 0) {
                        popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                    } else {
                        popupProperties3 = popupProperties;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                    }
                    composer2 = composerStartRestartGroup;
                    m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    j2 = jM9098constructorimpl;
                    popupProperties2 = popupProperties3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    popupProperties2 = popupProperties;
                    modifier3 = modifier2;
                    j2 = j;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            dm3Var2 = dm3Var;
            if ((74899 & i3) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    float fM9042constructorimpl6 = Dp.m9042constructorimpl(0.0f);
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl6)) << 32));
                } else {
                    jM9098constructorimpl = j;
                }
                if (i6 != 0) {
                    popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                } else {
                    popupProperties3 = popupProperties;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                }
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = jM9098constructorimpl;
                popupProperties2 = popupProperties3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                popupProperties2 = popupProperties;
                modifier3 = modifier2;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        if ((i2 & 32) != 0) {
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                dm3Var2 = dm3Var;
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i3 |= i8;
            }
            if ((74899 & i3) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    float fM9042constructorimpl7 = Dp.m9042constructorimpl(0.0f);
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl7)) << 32));
                } else {
                    jM9098constructorimpl = j;
                }
                if (i6 != 0) {
                    popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
                } else {
                    popupProperties3 = popupProperties;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
                }
                composer2 = composerStartRestartGroup;
                m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                j2 = jM9098constructorimpl;
                popupProperties2 = popupProperties3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                popupProperties2 = popupProperties;
                modifier3 = modifier2;
                j2 = j;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        dm3Var2 = dm3Var;
        if ((74899 & i3) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i9 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                float fM9042constructorimpl8 = Dp.m9042constructorimpl(0.0f);
                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM9042constructorimpl8)) << 32));
            } else {
                jM9098constructorimpl = j;
            }
            if (i6 != 0) {
                popupProperties3 = new PopupProperties(true, false, false, false, 14, (jh2) null);
            } else {
                popupProperties3 = popupProperties;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1744198621, i3, -1, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:158)");
            }
            composer2 = composerStartRestartGroup;
            m3081DropdownMenuIlH_yew(z2, ll3Var2, modifier4, jM9098constructorimpl, ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1), popupProperties3, null, 0L, 0.0f, 0.0f, null, dm3Var2, composer2, (i3 & 8190) | ((i3 << 3) & 458752), (i3 >> 12) & 112, 1984);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            j2 = jM9098constructorimpl;
            popupProperties2 = popupProperties3;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            popupProperties2 = popupProperties;
            modifier3 = modifier2;
            j2 = j;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zi
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidMenu_androidKt.DropdownMenu_ILWXrKs$lambda$6(z, ll3Var, modifier3, j2, popupProperties2, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0121  */
    /* JADX WARN: Code duplicated, block: B:104:0x012b  */
    /* JADX WARN: Code duplicated, block: B:105:0x012e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0136  */
    /* JADX WARN: Code duplicated, block: B:110:0x013d  */
    /* JADX WARN: Code duplicated, block: B:112:0x0141  */
    /* JADX WARN: Code duplicated, block: B:114:0x014b  */
    /* JADX WARN: Code duplicated, block: B:115:0x014e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0153  */
    /* JADX WARN: Code duplicated, block: B:120:0x015d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0162  */
    /* JADX WARN: Code duplicated, block: B:124:0x0166  */
    /* JADX WARN: Code duplicated, block: B:126:0x016e  */
    /* JADX WARN: Code duplicated, block: B:127:0x0171  */
    /* JADX WARN: Code duplicated, block: B:129:0x0176  */
    /* JADX WARN: Code duplicated, block: B:132:0x0186  */
    /* JADX WARN: Code duplicated, block: B:136:0x018f  */
    /* JADX WARN: Code duplicated, block: B:139:0x0198  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:154:0x01d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:155:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:156:0x01da  */
    /* JADX WARN: Code duplicated, block: B:158:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:161:0x0202  */
    /* JADX WARN: Code duplicated, block: B:162:0x020a  */
    /* JADX WARN: Code duplicated, block: B:164:0x020f  */
    /* JADX WARN: Code duplicated, block: B:167:0x0217  */
    /* JADX WARN: Code duplicated, block: B:168:0x0220  */
    /* JADX WARN: Code duplicated, block: B:171:0x0225  */
    /* JADX WARN: Code duplicated, block: B:172:0x022e  */
    /* JADX WARN: Code duplicated, block: B:174:0x0232  */
    /* JADX WARN: Code duplicated, block: B:175:0x0239  */
    /* JADX WARN: Code duplicated, block: B:177:0x023d  */
    /* JADX WARN: Code duplicated, block: B:178:0x0244  */
    /* JADX WARN: Code duplicated, block: B:180:0x0248  */
    /* JADX WARN: Code duplicated, block: B:182:0x0257  */
    /* JADX WARN: Code duplicated, block: B:185:0x0263  */
    /* JADX WARN: Code duplicated, block: B:188:0x0277  */
    /* JADX WARN: Code duplicated, block: B:191:0x0296  */
    /* JADX WARN: Code duplicated, block: B:195:0x02af  */
    /* JADX WARN: Code duplicated, block: B:197:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:200:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:201:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:204:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:206:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:210:0x0359  */
    /* JADX WARN: Code duplicated, block: B:213:0x036d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0385  */
    /* JADX WARN: Code duplicated, block: B:218:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0074  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0085  */
    /* JADX WARN: Code duplicated, block: B:49:0x0089  */
    /* JADX WARN: Code duplicated, block: B:52:0x0094 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:55:0x009b  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:91:0x0103  */
    /* JADX WARN: Code duplicated, block: B:93:0x0109  */
    /* JADX WARN: Code duplicated, block: B:94:0x010c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0116  */
    /* JADX INFO: renamed from: DropdownMenu-IlH_yew, reason: not valid java name */
    public static final void m3081DropdownMenuIlH_yew(final boolean z, final ll3<j59> ll3Var, Modifier modifier, long j, ScrollState scrollState, PopupProperties popupProperties, Shape shape, long j2, float f, float f2, BorderStroke borderStroke, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        ll3<j59> ll3Var2;
        int i5;
        Modifier modifier2;
        int i6;
        int i7;
        long jM9098constructorimpl;
        int i8;
        int i9;
        int i10;
        PopupProperties popupProperties2;
        int i11;
        Shape shape2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z2;
        Composer composer2;
        final ScrollState scrollState2;
        final float f3;
        final long j3;
        final Modifier modifier3;
        final Shape shape3;
        final long j4;
        final float f4;
        final BorderStroke borderStroke2;
        final PopupProperties popupProperties3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        ScrollState scrollStateRememberScrollState;
        Shape shape4;
        long containerColor;
        float fM3608getTonalElevationD9Ej5fM;
        float fM3607getShadowElevationD9Ej5fM;
        final BorderStroke borderStroke3;
        final float f5;
        final ScrollState scrollState3;
        final Shape shape5;
        final float f6;
        final long j5;
        final Modifier modifier5;
        Object objRememberedValue;
        Composer.Companion companion;
        final MutableTransitionState mutableTransitionState;
        Object objRememberedValue2;
        final MutableState mutableState;
        Density density;
        boolean z3;
        boolean zChanged;
        Object objRememberedValue3;
        int i21;
        int i22;
        Composer composerStartRestartGroup = composer.startRestartGroup(1725609375);
        if ((i3 & 1) != 0) {
            i4 = i | 6;
        } else if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        if ((i3 & 2) == 0) {
            if ((i & 48) == 0) {
                ll3Var2 = ll3Var;
                i4 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
            }
            i5 = i3 & 4;
            if (i5 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i6 = 256;
                    } else {
                        i6 = 128;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 8;
                if (i7 != 0) {
                    i4 |= 3072;
                    jM9098constructorimpl = j;
                    i8 = 32;
                } else {
                    jM9098constructorimpl = j;
                    i8 = 32;
                    if ((i & 3072) == 0) {
                        if (composerStartRestartGroup.changed(jM9098constructorimpl)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i4 |= i9;
                    }
                }
                if ((i & 24576) != 0) {
                    i4 |= ((i3 & 16) == 0 || !composerStartRestartGroup.changed(scrollState)) ? 8192 : 16384;
                }
                i10 = i3 & 32;
                if (i10 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    popupProperties2 = popupProperties;
                } else {
                    popupProperties2 = popupProperties;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(popupProperties2)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i4 |= i11;
                    }
                }
                if ((i & 1572864) == 0) {
                    shape2 = shape;
                    if ((i3 & 64) == 0 || !composerStartRestartGroup.changed(shape2)) {
                        i22 = 524288;
                    } else {
                        i22 = 1048576;
                    }
                    i4 |= i22;
                } else {
                    shape2 = shape;
                }
                if ((i & 12582912) != 0) {
                    if ((i3 & 128) == 0 || !composerStartRestartGroup.changed(j2)) {
                        i21 = 4194304;
                    } else {
                        i21 = 8388608;
                    }
                    i4 |= i21;
                }
                i12 = i3 & 256;
                if (i12 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i13;
                }
                i14 = i3 & 512;
                if (i14 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(f2)) {
                            i15 = 536870912;
                        } else {
                            i15 = 268435456;
                        }
                        i4 |= i15;
                    }
                    i16 = i3 & 1024;
                    if (i16 != 0) {
                        i17 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changed(borderStroke)) {
                            i18 = 4;
                        } else {
                            i18 = 2;
                        }
                        i17 = i2 | i18;
                    } else {
                        i17 = i2;
                    }
                    if ((i3 & 2048) != 0) {
                        i17 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i19 = i8;
                        } else {
                            i19 = 16;
                        }
                        i17 |= i19;
                    }
                    i20 = i17;
                    if ((i4 & 306783379) == 306783378 || (i20 & 19) != 18) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i5 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i7 != 0) {
                                jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                            }
                            if ((i3 & 16) != 0) {
                                scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                                i4 &= -57345;
                            } else {
                                scrollStateRememberScrollState = scrollState;
                            }
                            if (i10 != 0) {
                                popupProperties2 = DefaultMenuProperties;
                            }
                            if ((i3 & 64) != 0) {
                                shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                                i4 &= -3670017;
                            } else {
                                shape4 = shape2;
                            }
                            if ((i3 & 128) != 0) {
                                containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                containerColor = j2;
                            }
                            if (i12 != 0) {
                                fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                            } else {
                                fM3608getTonalElevationD9Ej5fM = f;
                            }
                            if (i14 != 0) {
                                fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                            } else {
                                fM3607getShadowElevationD9Ej5fM = f2;
                            }
                            if (i16 != 0) {
                                borderStroke3 = null;
                            } else {
                                borderStroke3 = borderStroke;
                            }
                            f5 = fM3608getTonalElevationD9Ej5fM;
                            scrollState3 = scrollStateRememberScrollState;
                            shape5 = shape4;
                            f6 = fM3607getShadowElevationD9Ej5fM;
                            j5 = containerColor;
                            modifier5 = modifier4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i3 & 16) != 0) {
                                i4 &= -57345;
                            }
                            if ((i3 & 64) != 0) {
                                i4 &= -3670017;
                            }
                            if ((i3 & 128) != 0) {
                                i4 &= -29360129;
                            }
                            scrollState3 = scrollState;
                            j5 = j2;
                            f5 = f;
                            f6 = f2;
                            borderStroke3 = borderStroke;
                            modifier5 = modifier2;
                            shape5 = shape2;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableTransitionState = (MutableTransitionState) objRememberedValue;
                        mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                        if (!((Boolean) mutableTransitionState.getCurrentState()).booleanValue() || ((Boolean) mutableTransitionState.getTargetState()).booleanValue()) {
                            composerStartRestartGroup.startReplaceGroup(1165905588);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            mutableState = (MutableState) objRememberedValue2;
                            density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                            if ((i4 & 7168) == 2048) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            zChanged = z3 | composerStartRestartGroup.changed(density);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged || objRememberedValue3 == companion.getEmpty()) {
                                objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                    }
                                }, 4, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                                public final void invoke(Composer composer3, int i23) {
                                    if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                    }
                                    MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                            composer2 = composerStartRestartGroup;
                            composer2.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1166965571);
                            composerStartRestartGroup.endReplaceGroup();
                            composer2 = composerStartRestartGroup;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j3 = jM9098constructorimpl;
                        modifier3 = modifier5;
                        scrollState2 = scrollState3;
                        shape3 = shape5;
                        j4 = j5;
                        f4 = f5;
                        f3 = f6;
                        borderStroke2 = borderStroke3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        scrollState2 = scrollState;
                        f3 = f2;
                        j3 = jM9098constructorimpl;
                        modifier3 = modifier2;
                        shape3 = shape2;
                        j4 = j2;
                        f4 = f;
                        borderStroke2 = borderStroke;
                    }
                    popupProperties3 = popupProperties2;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i16 = i3 & 1024;
                if (i16 != 0) {
                    i17 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changed(borderStroke)) {
                        i18 = 4;
                    } else {
                        i18 = 2;
                    }
                    i17 = i2 | i18;
                } else {
                    i17 = i2;
                }
                if ((i3 & 2048) != 0) {
                    i17 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i19 = i8;
                    } else {
                        i19 = 16;
                    }
                    i17 |= i19;
                }
                i20 = i17;
                if ((i4 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                        if ((i3 & 16) != 0) {
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            i4 &= -57345;
                        } else {
                            scrollStateRememberScrollState = scrollState;
                        }
                        if (i10 != 0) {
                            popupProperties2 = DefaultMenuProperties;
                        }
                        if ((i3 & 64) != 0) {
                            shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        } else {
                            shape4 = shape2;
                        }
                        if ((i3 & 128) != 0) {
                            containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            containerColor = j2;
                        }
                        if (i12 != 0) {
                            fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                        } else {
                            fM3608getTonalElevationD9Ej5fM = f;
                        }
                        if (i14 != 0) {
                            fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                        } else {
                            fM3607getShadowElevationD9Ej5fM = f2;
                        }
                        if (i16 != 0) {
                            borderStroke3 = null;
                        } else {
                            borderStroke3 = borderStroke;
                        }
                        f5 = fM3608getTonalElevationD9Ej5fM;
                        scrollState3 = scrollStateRememberScrollState;
                        shape5 = shape4;
                        f6 = fM3607getShadowElevationD9Ej5fM;
                        j5 = containerColor;
                        modifier5 = modifier4;
                    } else {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                        if ((i3 & 16) != 0) {
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            i4 &= -57345;
                        } else {
                            scrollStateRememberScrollState = scrollState;
                        }
                        if (i10 != 0) {
                            popupProperties2 = DefaultMenuProperties;
                        }
                        if ((i3 & 64) != 0) {
                            shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        } else {
                            shape4 = shape2;
                        }
                        if ((i3 & 128) != 0) {
                            containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            containerColor = j2;
                        }
                        if (i12 != 0) {
                            fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                        } else {
                            fM3608getTonalElevationD9Ej5fM = f;
                        }
                        if (i14 != 0) {
                            fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                        } else {
                            fM3607getShadowElevationD9Ej5fM = f2;
                        }
                        if (i16 != 0) {
                            borderStroke3 = null;
                        } else {
                            borderStroke3 = borderStroke;
                        }
                        f5 = fM3608getTonalElevationD9Ej5fM;
                        scrollState3 = scrollStateRememberScrollState;
                        shape5 = shape4;
                        f6 = fM3607getShadowElevationD9Ej5fM;
                        j5 = containerColor;
                        modifier5 = modifier4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableTransitionState = (MutableTransitionState) objRememberedValue;
                    mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                    if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1165905588);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        if ((i4 & 7168) == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z3 | composerStartRestartGroup.changed(density);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                            public final void invoke(Composer composer3, int i23) {
                                if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                }
                                MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1165905588);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        if ((i4 & 7168) == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z3 | composerStartRestartGroup.changed(density);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                            public final void invoke(Composer composer3, int i23) {
                                if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                }
                                MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = jM9098constructorimpl;
                    modifier3 = modifier5;
                    scrollState2 = scrollState3;
                    shape3 = shape5;
                    j4 = j5;
                    f4 = f5;
                    f3 = f6;
                    borderStroke2 = borderStroke3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    scrollState2 = scrollState;
                    f3 = f2;
                    j3 = jM9098constructorimpl;
                    modifier3 = modifier2;
                    shape3 = shape2;
                    j4 = j2;
                    f4 = f;
                    borderStroke2 = borderStroke;
                }
                popupProperties3 = popupProperties2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
            i7 = i3 & 8;
            if (i7 != 0) {
                i4 |= 3072;
                jM9098constructorimpl = j;
                i8 = 32;
            } else {
                jM9098constructorimpl = j;
                i8 = 32;
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(jM9098constructorimpl)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i4 |= i9;
                }
            }
            if ((i & 24576) != 0) {
                i4 |= ((i3 & 16) == 0 || !composerStartRestartGroup.changed(scrollState)) ? 8192 : 16384;
            }
            i10 = i3 & 32;
            if (i10 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                popupProperties2 = popupProperties;
            } else {
                popupProperties2 = popupProperties;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i4 |= i11;
                }
            }
            if ((i & 1572864) == 0) {
                shape2 = shape;
                if ((i3 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i4 |= i22;
            } else {
                shape2 = shape;
            }
            if ((i & 12582912) != 0) {
                if ((i3 & 128) == 0) {
                    i21 = 4194304;
                } else {
                    i21 = 4194304;
                }
                i4 |= i21;
            }
            i12 = i3 & 256;
            if (i12 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i13;
            }
            i14 = i3 & 512;
            if (i14 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i4 |= i15;
                }
                i16 = i3 & 1024;
                if (i16 != 0) {
                    i17 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changed(borderStroke)) {
                        i18 = 4;
                    } else {
                        i18 = 2;
                    }
                    i17 = i2 | i18;
                } else {
                    i17 = i2;
                }
                if ((i3 & 2048) != 0) {
                    i17 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i19 = i8;
                    } else {
                        i19 = 16;
                    }
                    i17 |= i19;
                }
                i20 = i17;
                if ((i4 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                        if ((i3 & 16) != 0) {
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            i4 &= -57345;
                        } else {
                            scrollStateRememberScrollState = scrollState;
                        }
                        if (i10 != 0) {
                            popupProperties2 = DefaultMenuProperties;
                        }
                        if ((i3 & 64) != 0) {
                            shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        } else {
                            shape4 = shape2;
                        }
                        if ((i3 & 128) != 0) {
                            containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            containerColor = j2;
                        }
                        if (i12 != 0) {
                            fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                        } else {
                            fM3608getTonalElevationD9Ej5fM = f;
                        }
                        if (i14 != 0) {
                            fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                        } else {
                            fM3607getShadowElevationD9Ej5fM = f2;
                        }
                        if (i16 != 0) {
                            borderStroke3 = null;
                        } else {
                            borderStroke3 = borderStroke;
                        }
                        f5 = fM3608getTonalElevationD9Ej5fM;
                        scrollState3 = scrollStateRememberScrollState;
                        shape5 = shape4;
                        f6 = fM3607getShadowElevationD9Ej5fM;
                        j5 = containerColor;
                        modifier5 = modifier4;
                    } else {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                        if ((i3 & 16) != 0) {
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            i4 &= -57345;
                        } else {
                            scrollStateRememberScrollState = scrollState;
                        }
                        if (i10 != 0) {
                            popupProperties2 = DefaultMenuProperties;
                        }
                        if ((i3 & 64) != 0) {
                            shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        } else {
                            shape4 = shape2;
                        }
                        if ((i3 & 128) != 0) {
                            containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            containerColor = j2;
                        }
                        if (i12 != 0) {
                            fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                        } else {
                            fM3608getTonalElevationD9Ej5fM = f;
                        }
                        if (i14 != 0) {
                            fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                        } else {
                            fM3607getShadowElevationD9Ej5fM = f2;
                        }
                        if (i16 != 0) {
                            borderStroke3 = null;
                        } else {
                            borderStroke3 = borderStroke;
                        }
                        f5 = fM3608getTonalElevationD9Ej5fM;
                        scrollState3 = scrollStateRememberScrollState;
                        shape5 = shape4;
                        f6 = fM3607getShadowElevationD9Ej5fM;
                        j5 = containerColor;
                        modifier5 = modifier4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableTransitionState = (MutableTransitionState) objRememberedValue;
                    mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                    if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1165905588);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        if ((i4 & 7168) == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z3 | composerStartRestartGroup.changed(density);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                            public final void invoke(Composer composer3, int i23) {
                                if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                }
                                MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1165905588);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        if ((i4 & 7168) == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z3 | composerStartRestartGroup.changed(density);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                            public final void invoke(Composer composer3, int i23) {
                                if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                }
                                MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = jM9098constructorimpl;
                    modifier3 = modifier5;
                    scrollState2 = scrollState3;
                    shape3 = shape5;
                    j4 = j5;
                    f4 = f5;
                    f3 = f6;
                    borderStroke2 = borderStroke3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    scrollState2 = scrollState;
                    f3 = f2;
                    j3 = jM9098constructorimpl;
                    modifier3 = modifier2;
                    shape3 = shape2;
                    j4 = j2;
                    f4 = f;
                    borderStroke2 = borderStroke;
                }
                popupProperties3 = popupProperties2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i16 = i3 & 1024;
            if (i16 != 0) {
                i17 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(borderStroke)) {
                    i18 = 4;
                } else {
                    i18 = 2;
                }
                i17 = i2 | i18;
            } else {
                i17 = i2;
            }
            if ((i3 & 2048) != 0) {
                i17 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i19 = i8;
                } else {
                    i19 = 16;
                }
                i17 |= i19;
            }
            i20 = i17;
            if ((i4 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    if ((i3 & 16) != 0) {
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        i4 &= -57345;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    if (i10 != 0) {
                        popupProperties2 = DefaultMenuProperties;
                    }
                    if ((i3 & 64) != 0) {
                        shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i3 & 128) != 0) {
                        containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        containerColor = j2;
                    }
                    if (i12 != 0) {
                        fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                    } else {
                        fM3608getTonalElevationD9Ej5fM = f;
                    }
                    if (i14 != 0) {
                        fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                    } else {
                        fM3607getShadowElevationD9Ej5fM = f2;
                    }
                    if (i16 != 0) {
                        borderStroke3 = null;
                    } else {
                        borderStroke3 = borderStroke;
                    }
                    f5 = fM3608getTonalElevationD9Ej5fM;
                    scrollState3 = scrollStateRememberScrollState;
                    shape5 = shape4;
                    f6 = fM3607getShadowElevationD9Ej5fM;
                    j5 = containerColor;
                    modifier5 = modifier4;
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    if ((i3 & 16) != 0) {
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        i4 &= -57345;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    if (i10 != 0) {
                        popupProperties2 = DefaultMenuProperties;
                    }
                    if ((i3 & 64) != 0) {
                        shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i3 & 128) != 0) {
                        containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        containerColor = j2;
                    }
                    if (i12 != 0) {
                        fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                    } else {
                        fM3608getTonalElevationD9Ej5fM = f;
                    }
                    if (i14 != 0) {
                        fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                    } else {
                        fM3607getShadowElevationD9Ej5fM = f2;
                    }
                    if (i16 != 0) {
                        borderStroke3 = null;
                    } else {
                        borderStroke3 = borderStroke;
                    }
                    f5 = fM3608getTonalElevationD9Ej5fM;
                    scrollState3 = scrollStateRememberScrollState;
                    shape5 = shape4;
                    f6 = fM3607getShadowElevationD9Ej5fM;
                    j5 = containerColor;
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableTransitionState = (MutableTransitionState) objRememberedValue;
                mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1165905588);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    if ((i4 & 7168) == 2048) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z3 | composerStartRestartGroup.changed(density);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                        public final void invoke(Composer composer3, int i23) {
                            if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                            }
                            MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1165905588);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    if ((i4 & 7168) == 2048) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z3 | composerStartRestartGroup.changed(density);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                        public final void invoke(Composer composer3, int i23) {
                            if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                            }
                            MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = jM9098constructorimpl;
                modifier3 = modifier5;
                scrollState2 = scrollState3;
                shape3 = shape5;
                j4 = j5;
                f4 = f5;
                f3 = f6;
                borderStroke2 = borderStroke3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                scrollState2 = scrollState;
                f3 = f2;
                j3 = jM9098constructorimpl;
                modifier3 = modifier2;
                shape3 = shape2;
                j4 = j2;
                f4 = f;
                borderStroke2 = borderStroke;
            }
            popupProperties3 = popupProperties2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        ll3Var2 = ll3Var;
        i5 = i3 & 4;
        if (i5 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i6 = 256;
                } else {
                    i6 = 128;
                }
                i4 |= i6;
            }
            i7 = i3 & 8;
            if (i7 != 0) {
                i4 |= 3072;
                jM9098constructorimpl = j;
                i8 = 32;
            } else {
                jM9098constructorimpl = j;
                i8 = 32;
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(jM9098constructorimpl)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i4 |= i9;
                }
            }
            if ((i & 24576) != 0) {
                i4 |= ((i3 & 16) == 0 || !composerStartRestartGroup.changed(scrollState)) ? 8192 : 16384;
            }
            i10 = i3 & 32;
            if (i10 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                popupProperties2 = popupProperties;
            } else {
                popupProperties2 = popupProperties;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(popupProperties2)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i4 |= i11;
                }
            }
            if ((i & 1572864) == 0) {
                shape2 = shape;
                if ((i3 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i4 |= i22;
            } else {
                shape2 = shape;
            }
            if ((i & 12582912) != 0) {
                if ((i3 & 128) == 0) {
                    i21 = 4194304;
                } else {
                    i21 = 4194304;
                }
                i4 |= i21;
            }
            i12 = i3 & 256;
            if (i12 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i13;
            }
            i14 = i3 & 512;
            if (i14 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i4 |= i15;
                }
                i16 = i3 & 1024;
                if (i16 != 0) {
                    i17 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changed(borderStroke)) {
                        i18 = 4;
                    } else {
                        i18 = 2;
                    }
                    i17 = i2 | i18;
                } else {
                    i17 = i2;
                }
                if ((i3 & 2048) != 0) {
                    i17 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i19 = i8;
                    } else {
                        i19 = 16;
                    }
                    i17 |= i19;
                }
                i20 = i17;
                if ((i4 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                        if ((i3 & 16) != 0) {
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            i4 &= -57345;
                        } else {
                            scrollStateRememberScrollState = scrollState;
                        }
                        if (i10 != 0) {
                            popupProperties2 = DefaultMenuProperties;
                        }
                        if ((i3 & 64) != 0) {
                            shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        } else {
                            shape4 = shape2;
                        }
                        if ((i3 & 128) != 0) {
                            containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            containerColor = j2;
                        }
                        if (i12 != 0) {
                            fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                        } else {
                            fM3608getTonalElevationD9Ej5fM = f;
                        }
                        if (i14 != 0) {
                            fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                        } else {
                            fM3607getShadowElevationD9Ej5fM = f2;
                        }
                        if (i16 != 0) {
                            borderStroke3 = null;
                        } else {
                            borderStroke3 = borderStroke;
                        }
                        f5 = fM3608getTonalElevationD9Ej5fM;
                        scrollState3 = scrollStateRememberScrollState;
                        shape5 = shape4;
                        f6 = fM3607getShadowElevationD9Ej5fM;
                        j5 = containerColor;
                        modifier5 = modifier4;
                    } else {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        }
                        if ((i3 & 16) != 0) {
                            scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                            i4 &= -57345;
                        } else {
                            scrollStateRememberScrollState = scrollState;
                        }
                        if (i10 != 0) {
                            popupProperties2 = DefaultMenuProperties;
                        }
                        if ((i3 & 64) != 0) {
                            shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                            i4 &= -3670017;
                        } else {
                            shape4 = shape2;
                        }
                        if ((i3 & 128) != 0) {
                            containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            containerColor = j2;
                        }
                        if (i12 != 0) {
                            fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                        } else {
                            fM3608getTonalElevationD9Ej5fM = f;
                        }
                        if (i14 != 0) {
                            fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                        } else {
                            fM3607getShadowElevationD9Ej5fM = f2;
                        }
                        if (i16 != 0) {
                            borderStroke3 = null;
                        } else {
                            borderStroke3 = borderStroke;
                        }
                        f5 = fM3608getTonalElevationD9Ej5fM;
                        scrollState3 = scrollStateRememberScrollState;
                        shape5 = shape4;
                        f6 = fM3607getShadowElevationD9Ej5fM;
                        j5 = containerColor;
                        modifier5 = modifier4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableTransitionState = (MutableTransitionState) objRememberedValue;
                    mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                    if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                        composerStartRestartGroup.startReplaceGroup(1165905588);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        if ((i4 & 7168) == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z3 | composerStartRestartGroup.changed(density);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                            public final void invoke(Composer composer3, int i23) {
                                if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                }
                                MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1165905588);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        mutableState = (MutableState) objRememberedValue2;
                        density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                        if ((i4 & 7168) == 2048) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        zChanged = z3 | composerStartRestartGroup.changed(density);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                                }
                            }, 4, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                            public final void invoke(Composer composer3, int i23) {
                                if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                                }
                                MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                        composer2 = composerStartRestartGroup;
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j3 = jM9098constructorimpl;
                    modifier3 = modifier5;
                    scrollState2 = scrollState3;
                    shape3 = shape5;
                    j4 = j5;
                    f4 = f5;
                    f3 = f6;
                    borderStroke2 = borderStroke3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    scrollState2 = scrollState;
                    f3 = f2;
                    j3 = jM9098constructorimpl;
                    modifier3 = modifier2;
                    shape3 = shape2;
                    j4 = j2;
                    f4 = f;
                    borderStroke2 = borderStroke;
                }
                popupProperties3 = popupProperties2;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i16 = i3 & 1024;
            if (i16 != 0) {
                i17 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(borderStroke)) {
                    i18 = 4;
                } else {
                    i18 = 2;
                }
                i17 = i2 | i18;
            } else {
                i17 = i2;
            }
            if ((i3 & 2048) != 0) {
                i17 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i19 = i8;
                } else {
                    i19 = 16;
                }
                i17 |= i19;
            }
            i20 = i17;
            if ((i4 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    if ((i3 & 16) != 0) {
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        i4 &= -57345;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    if (i10 != 0) {
                        popupProperties2 = DefaultMenuProperties;
                    }
                    if ((i3 & 64) != 0) {
                        shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i3 & 128) != 0) {
                        containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        containerColor = j2;
                    }
                    if (i12 != 0) {
                        fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                    } else {
                        fM3608getTonalElevationD9Ej5fM = f;
                    }
                    if (i14 != 0) {
                        fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                    } else {
                        fM3607getShadowElevationD9Ej5fM = f2;
                    }
                    if (i16 != 0) {
                        borderStroke3 = null;
                    } else {
                        borderStroke3 = borderStroke;
                    }
                    f5 = fM3608getTonalElevationD9Ej5fM;
                    scrollState3 = scrollStateRememberScrollState;
                    shape5 = shape4;
                    f6 = fM3607getShadowElevationD9Ej5fM;
                    j5 = containerColor;
                    modifier5 = modifier4;
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    if ((i3 & 16) != 0) {
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        i4 &= -57345;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    if (i10 != 0) {
                        popupProperties2 = DefaultMenuProperties;
                    }
                    if ((i3 & 64) != 0) {
                        shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i3 & 128) != 0) {
                        containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        containerColor = j2;
                    }
                    if (i12 != 0) {
                        fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                    } else {
                        fM3608getTonalElevationD9Ej5fM = f;
                    }
                    if (i14 != 0) {
                        fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                    } else {
                        fM3607getShadowElevationD9Ej5fM = f2;
                    }
                    if (i16 != 0) {
                        borderStroke3 = null;
                    } else {
                        borderStroke3 = borderStroke;
                    }
                    f5 = fM3608getTonalElevationD9Ej5fM;
                    scrollState3 = scrollStateRememberScrollState;
                    shape5 = shape4;
                    f6 = fM3607getShadowElevationD9Ej5fM;
                    j5 = containerColor;
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableTransitionState = (MutableTransitionState) objRememberedValue;
                mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1165905588);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    if ((i4 & 7168) == 2048) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z3 | composerStartRestartGroup.changed(density);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                        public final void invoke(Composer composer3, int i23) {
                            if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                            }
                            MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1165905588);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    if ((i4 & 7168) == 2048) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z3 | composerStartRestartGroup.changed(density);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                        public final void invoke(Composer composer3, int i23) {
                            if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                            }
                            MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = jM9098constructorimpl;
                modifier3 = modifier5;
                scrollState2 = scrollState3;
                shape3 = shape5;
                j4 = j5;
                f4 = f5;
                f3 = f6;
                borderStroke2 = borderStroke3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                scrollState2 = scrollState;
                f3 = f2;
                j3 = jM9098constructorimpl;
                modifier3 = modifier2;
                shape3 = shape2;
                j4 = j2;
                f4 = f;
                borderStroke2 = borderStroke;
            }
            popupProperties3 = popupProperties2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i7 = i3 & 8;
        if (i7 != 0) {
            i4 |= 3072;
            jM9098constructorimpl = j;
            i8 = 32;
        } else {
            jM9098constructorimpl = j;
            i8 = 32;
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(jM9098constructorimpl)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i4 |= i9;
            }
        }
        if ((i & 24576) != 0) {
            i4 |= ((i3 & 16) == 0 || !composerStartRestartGroup.changed(scrollState)) ? 8192 : 16384;
        }
        i10 = i3 & 32;
        if (i10 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            popupProperties2 = popupProperties;
        } else {
            popupProperties2 = popupProperties;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(popupProperties2)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i4 |= i11;
            }
        }
        if ((i & 1572864) == 0) {
            shape2 = shape;
            if ((i3 & 64) == 0) {
                i22 = 524288;
            } else {
                i22 = 524288;
            }
            i4 |= i22;
        } else {
            shape2 = shape;
        }
        if ((i & 12582912) != 0) {
            if ((i3 & 128) == 0) {
                i21 = 4194304;
            } else {
                i21 = 4194304;
            }
            i4 |= i21;
        }
        i12 = i3 & 256;
        if (i12 != 0) {
            i4 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(f)) {
                i13 = 67108864;
            } else {
                i13 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i4 |= i13;
        }
        i14 = i3 & 512;
        if (i14 != 0) {
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i15 = 536870912;
                } else {
                    i15 = 268435456;
                }
                i4 |= i15;
            }
            i16 = i3 & 1024;
            if (i16 != 0) {
                i17 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(borderStroke)) {
                    i18 = 4;
                } else {
                    i18 = 2;
                }
                i17 = i2 | i18;
            } else {
                i17 = i2;
            }
            if ((i3 & 2048) != 0) {
                i17 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i19 = i8;
                } else {
                    i19 = 16;
                }
                i17 |= i19;
            }
            i20 = i17;
            if ((i4 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    if ((i3 & 16) != 0) {
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        i4 &= -57345;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    if (i10 != 0) {
                        popupProperties2 = DefaultMenuProperties;
                    }
                    if ((i3 & 64) != 0) {
                        shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i3 & 128) != 0) {
                        containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        containerColor = j2;
                    }
                    if (i12 != 0) {
                        fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                    } else {
                        fM3608getTonalElevationD9Ej5fM = f;
                    }
                    if (i14 != 0) {
                        fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                    } else {
                        fM3607getShadowElevationD9Ej5fM = f2;
                    }
                    if (i16 != 0) {
                        borderStroke3 = null;
                    } else {
                        borderStroke3 = borderStroke;
                    }
                    f5 = fM3608getTonalElevationD9Ej5fM;
                    scrollState3 = scrollStateRememberScrollState;
                    shape5 = shape4;
                    f6 = fM3607getShadowElevationD9Ej5fM;
                    j5 = containerColor;
                    modifier5 = modifier4;
                } else {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    if ((i3 & 16) != 0) {
                        scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                        i4 &= -57345;
                    } else {
                        scrollStateRememberScrollState = scrollState;
                    }
                    if (i10 != 0) {
                        popupProperties2 = DefaultMenuProperties;
                    }
                    if ((i3 & 64) != 0) {
                        shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        i4 &= -3670017;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i3 & 128) != 0) {
                        containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        containerColor = j2;
                    }
                    if (i12 != 0) {
                        fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                    } else {
                        fM3608getTonalElevationD9Ej5fM = f;
                    }
                    if (i14 != 0) {
                        fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                    } else {
                        fM3607getShadowElevationD9Ej5fM = f2;
                    }
                    if (i16 != 0) {
                        borderStroke3 = null;
                    } else {
                        borderStroke3 = borderStroke;
                    }
                    f5 = fM3608getTonalElevationD9Ej5fM;
                    scrollState3 = scrollStateRememberScrollState;
                    shape5 = shape4;
                    f6 = fM3607getShadowElevationD9Ej5fM;
                    j5 = containerColor;
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableTransitionState = (MutableTransitionState) objRememberedValue;
                mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
                if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                    composerStartRestartGroup.startReplaceGroup(1165905588);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    if ((i4 & 7168) == 2048) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z3 | composerStartRestartGroup.changed(density);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                        public final void invoke(Composer composer3, int i23) {
                            if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                            }
                            MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(1165905588);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    mutableState = (MutableState) objRememberedValue2;
                    density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                    if ((i4 & 7168) == 2048) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged = z3 | composerStartRestartGroup.changed(density);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                            }
                        }, 4, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                        public final void invoke(Composer composer3, int i23) {
                            if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                            }
                            MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j3 = jM9098constructorimpl;
                modifier3 = modifier5;
                scrollState2 = scrollState3;
                shape3 = shape5;
                j4 = j5;
                f4 = f5;
                f3 = f6;
                borderStroke2 = borderStroke3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                scrollState2 = scrollState;
                f3 = f2;
                j3 = jM9098constructorimpl;
                modifier3 = modifier2;
                shape3 = shape2;
                j4 = j2;
                f4 = f;
                borderStroke2 = borderStroke;
            }
            popupProperties3 = popupProperties2;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 805306368;
        i16 = i3 & 1024;
        if (i16 != 0) {
            i17 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changed(borderStroke)) {
                i18 = 4;
            } else {
                i18 = 2;
            }
            i17 = i2 | i18;
        } else {
            i17 = i2;
        }
        if ((i3 & 2048) != 0) {
            i17 |= 48;
        } else if ((i2 & 48) != 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i19 = i8;
            } else {
                i19 = 16;
            }
            i17 |= i19;
        }
        i20 = i17;
        if ((i4 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
                if ((i3 & 16) != 0) {
                    scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    i4 &= -57345;
                } else {
                    scrollStateRememberScrollState = scrollState;
                }
                if (i10 != 0) {
                    popupProperties2 = DefaultMenuProperties;
                }
                if ((i3 & 64) != 0) {
                    shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    i4 &= -3670017;
                } else {
                    shape4 = shape2;
                }
                if ((i3 & 128) != 0) {
                    containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -29360129;
                } else {
                    containerColor = j2;
                }
                if (i12 != 0) {
                    fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                } else {
                    fM3608getTonalElevationD9Ej5fM = f;
                }
                if (i14 != 0) {
                    fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                } else {
                    fM3607getShadowElevationD9Ej5fM = f2;
                }
                if (i16 != 0) {
                    borderStroke3 = null;
                } else {
                    borderStroke3 = borderStroke;
                }
                f5 = fM3608getTonalElevationD9Ej5fM;
                scrollState3 = scrollStateRememberScrollState;
                shape5 = shape4;
                f6 = fM3607getShadowElevationD9Ej5fM;
                j5 = containerColor;
                modifier5 = modifier4;
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) << i8) | (((long) Float.floatToRawIntBits(Dp.m9042constructorimpl(0.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
                if ((i3 & 16) != 0) {
                    scrollStateRememberScrollState = ScrollKt.rememberScrollState(0, composerStartRestartGroup, 0, 1);
                    i4 &= -57345;
                } else {
                    scrollStateRememberScrollState = scrollState;
                }
                if (i10 != 0) {
                    popupProperties2 = DefaultMenuProperties;
                }
                if ((i3 & 64) != 0) {
                    shape4 = MenuDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                    i4 &= -3670017;
                } else {
                    shape4 = shape2;
                }
                if ((i3 & 128) != 0) {
                    containerColor = MenuDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -29360129;
                } else {
                    containerColor = j2;
                }
                if (i12 != 0) {
                    fM3608getTonalElevationD9Ej5fM = MenuDefaults.INSTANCE.m3608getTonalElevationD9Ej5fM();
                } else {
                    fM3608getTonalElevationD9Ej5fM = f;
                }
                if (i14 != 0) {
                    fM3607getShadowElevationD9Ej5fM = MenuDefaults.INSTANCE.m3607getShadowElevationD9Ej5fM();
                } else {
                    fM3607getShadowElevationD9Ej5fM = f2;
                }
                if (i16 != 0) {
                    borderStroke3 = null;
                } else {
                    borderStroke3 = borderStroke;
                }
                f5 = fM3608getTonalElevationD9Ej5fM;
                scrollState3 = scrollStateRememberScrollState;
                shape5 = shape4;
                f6 = fM3607getShadowElevationD9Ej5fM;
                j5 = containerColor;
                modifier5 = modifier4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1725609375, i4, i20, "androidx.compose.material3.DropdownMenu (AndroidMenu.android.kt:54)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new MutableTransitionState(Boolean.FALSE);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            mutableTransitionState = (MutableTransitionState) objRememberedValue;
            mutableTransitionState.setTargetState$animation_core(Boolean.valueOf(z));
            if (((Boolean) mutableTransitionState.getCurrentState()).booleanValue()) {
                composerStartRestartGroup.startReplaceGroup(1165905588);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableState = (MutableState) objRememberedValue2;
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                if ((i4 & 7168) == 2048) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zChanged = z3 | composerStartRestartGroup.changed(density);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                        }
                    }, 4, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                        }
                    }, 4, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                    public final void invoke(Composer composer3, int i23) {
                        if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                        }
                        MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                composer2 = composerStartRestartGroup;
                composer2.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(1165905588);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TransformOrigin.m6632boximpl(TransformOrigin.Companion.m6645getCenterSzJe1aQ()), null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                mutableState = (MutableState) objRememberedValue2;
                density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                if ((i4 & 7168) == 2048) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zChanged = z3 | composerStartRestartGroup.changed(density);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                        }
                    }, 4, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new DropdownMenuPositionProvider(jM9098constructorimpl, density, 0, new bm3() { // from class: wi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$3$lambda$2(mutableState, (IntRect) obj, (IntRect) obj2);
                        }
                    }, 4, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) objRememberedValue3, ll3Var2, popupProperties2, ComposableLambdaKt.rememberComposableLambda(-917492520, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                    public final void invoke(Composer composer3, int i23) {
                        if (!composer3.shouldExecute((i23 & 3) != 2, i23 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-917492520, i23, -1, "androidx.compose.material3.DropdownMenu.<anonymous> (AndroidMenu.android.kt:73)");
                        }
                        MenuKt.m3621DropdownMenuContentQj0Zi0g(modifier5, mutableTransitionState, mutableState, scrollState3, shape5, j5, f5, f6, borderStroke3, dm3Var, composer3, (MutableTransitionState.$stable << 3) | RendererCapabilities.DECODER_SUPPORT_MASK);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i4 & 112) | 3072 | ((i4 >> 9) & 896), 0);
                composer2 = composerStartRestartGroup;
                composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j3 = jM9098constructorimpl;
            modifier3 = modifier5;
            scrollState2 = scrollState3;
            shape3 = shape5;
            j4 = j5;
            f4 = f5;
            f3 = f6;
            borderStroke2 = borderStroke3;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            scrollState2 = scrollState;
            f3 = f2;
            j3 = jM9098constructorimpl;
            modifier3 = modifier2;
            shape3 = shape2;
            j4 = j2;
            f4 = f;
            borderStroke2 = borderStroke;
        }
        popupProperties3 = popupProperties2;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xi
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidMenu_androidKt.DropdownMenu_IlH_yew$lambda$4(z, ll3Var, modifier3, j3, scrollState2, popupProperties3, shape3, j4, f4, f3, borderStroke2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x011e  */
    /* JADX WARN: Code duplicated, block: B:103:0x0121  */
    /* JADX WARN: Code duplicated, block: B:106:0x012a  */
    /* JADX WARN: Code duplicated, block: B:108:0x0134  */
    /* JADX WARN: Code duplicated, block: B:116:0x015b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x015d  */
    /* JADX WARN: Code duplicated, block: B:120:0x0163  */
    /* JADX WARN: Code duplicated, block: B:122:0x0166  */
    /* JADX WARN: Code duplicated, block: B:124:0x0169  */
    /* JADX WARN: Code duplicated, block: B:127:0x016f  */
    /* JADX WARN: Code duplicated, block: B:128:0x017a  */
    /* JADX WARN: Code duplicated, block: B:130:0x017e  */
    /* JADX WARN: Code duplicated, block: B:131:0x0185  */
    /* JADX WARN: Code duplicated, block: B:133:0x0189  */
    /* JADX WARN: Code duplicated, block: B:135:0x018e  */
    /* JADX WARN: Code duplicated, block: B:138:0x019a  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:143:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:146:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0062  */
    /* JADX WARN: Code duplicated, block: B:38:0x0067  */
    /* JADX WARN: Code duplicated, block: B:40:0x006b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:47:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086  */
    /* JADX WARN: Code duplicated, block: B:53:0x008e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:95:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:97:0x0109  */
    /* JADX WARN: Code duplicated, block: B:98:0x010c  */
    public static final void DropdownMenuItem(final bm3<? super Composer, ? super Integer, j59> bm3Var, final ll3<j59> ll3Var, Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var2, bm3<? super Composer, ? super Integer, j59> bm3Var3, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        bm3<? super Composer, ? super Integer, j59> bm3Var4;
        int i3;
        ll3<j59> ll3Var2;
        Modifier modifier2;
        int i4;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        int i7;
        int i8;
        boolean z2;
        int i9;
        MenuItemColors menuItemColorsItemColors;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z3;
        Composer composer2;
        final MutableInteractionSource mutableInteractionSource2;
        final Modifier modifier3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var7;
        final bm3<? super Composer, ? super Integer, j59> bm3Var8;
        final boolean z4;
        final MenuItemColors menuItemColors2;
        final PaddingValues paddingValues2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i15;
        PaddingValues dropdownMenuItemContentPadding;
        MutableInteractionSource mutableInteractionSource3;
        PaddingValues paddingValues3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-532959117);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            bm3Var4 = bm3Var;
        } else {
            bm3Var4 = bm3Var;
            if ((i & 6) == 0) {
                i3 = (composerStartRestartGroup.changedInstance(bm3Var4) ? 4 : 2) | i;
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
        int i16 = i2 & 4;
        if (i16 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    bm3Var5 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        bm3Var6 = bm3Var3;
                        if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        if ((196608 & i) == 0) {
                            z2 = z;
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                        if ((1572864 & i) == 0) {
                            if ((i2 & 64) == 0) {
                                menuItemColorsItemColors = menuItemColors;
                                int i17 = composerStartRestartGroup.changed(menuItemColorsItemColors) ? 1048576 : 524288;
                                i3 |= i17;
                            } else {
                                menuItemColorsItemColors = menuItemColors;
                            }
                            i3 |= i17;
                        } else {
                            menuItemColorsItemColors = menuItemColors;
                        }
                        i10 = i2 & 128;
                        if (i10 != 0) {
                            if ((i & 12582912) == 0) {
                                if (composerStartRestartGroup.changed(paddingValues)) {
                                    i11 = 8388608;
                                } else {
                                    i11 = 4194304;
                                }
                                i3 |= i11;
                            }
                            i12 = i2 & 256;
                            if (i12 != 0) {
                                if ((i & 100663296) == 0) {
                                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                        i13 = 67108864;
                                    } else {
                                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                                    }
                                    i3 |= i13;
                                }
                                i14 = i3;
                                if ((i3 & 38347923) != 38347922) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                    composerStartRestartGroup.startDefaults();
                                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                        if (i16 != 0) {
                                            modifier2 = Modifier.Companion;
                                        }
                                        if (i4 != 0) {
                                            bm3Var5 = null;
                                        }
                                        if (i6 != 0) {
                                            bm3Var6 = null;
                                        }
                                        if (i8 != 0) {
                                            z2 = true;
                                        }
                                        if ((i2 & 64) != 0) {
                                            i15 = i14 & (-3670017);
                                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                        } else {
                                            i15 = i14;
                                        }
                                        if (i10 != 0) {
                                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                        } else {
                                            dropdownMenuItemContentPadding = paddingValues;
                                        }
                                        if (i12 != 0) {
                                            mutableInteractionSource3 = null;
                                        } else {
                                            mutableInteractionSource3 = mutableInteractionSource;
                                        }
                                        paddingValues3 = dropdownMenuItemContentPadding;
                                    } else {
                                        composerStartRestartGroup.skipToGroupEnd();
                                        if ((i2 & 64) != 0) {
                                            i15 = i14 & (-3670017);
                                            paddingValues3 = paddingValues;
                                            mutableInteractionSource3 = mutableInteractionSource;
                                        } else {
                                            paddingValues3 = paddingValues;
                                            mutableInteractionSource3 = mutableInteractionSource;
                                            i15 = i14;
                                        }
                                    }
                                    bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var6;
                                    boolean z5 = z2;
                                    MenuItemColors menuItemColors3 = menuItemColorsItemColors;
                                    Modifier modifier4 = modifier2;
                                    bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var5;
                                    composerStartRestartGroup.endDefaults();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                    }
                                    composer2 = composerStartRestartGroup;
                                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier4, bm3Var10, bm3Var9, z5, menuItemColors3, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    modifier3 = modifier4;
                                    bm3Var7 = bm3Var10;
                                    bm3Var8 = bm3Var9;
                                    z4 = z5;
                                    menuItemColors2 = menuItemColors3;
                                    paddingValues2 = paddingValues3;
                                    mutableInteractionSource2 = mutableInteractionSource3;
                                } else {
                                    composer2 = composerStartRestartGroup;
                                    composer2.skipToGroupEnd();
                                    mutableInteractionSource2 = mutableInteractionSource;
                                    modifier3 = modifier2;
                                    bm3Var7 = bm3Var5;
                                    bm3Var8 = bm3Var6;
                                    z4 = z2;
                                    menuItemColors2 = menuItemColorsItemColors;
                                    paddingValues2 = paddingValues;
                                }
                                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                                if (scopeUpdateScopeEndRestartGroup != null) {
                                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            int iIntValue = ((Integer) obj2).intValue();
                                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                        }
                                    });
                                }
                            }
                            i3 |= 100663296;
                            i14 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0) {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                } else {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var11 = bm3Var6;
                                boolean z6 = z2;
                                MenuItemColors menuItemColors4 = menuItemColorsItemColors;
                                Modifier modifier5 = modifier2;
                                bm3<? super Composer, ? super Integer, j59> bm3Var12 = bm3Var5;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                }
                                composer2 = composerStartRestartGroup;
                                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier5, bm3Var12, bm3Var11, z6, menuItemColors4, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier5;
                                bm3Var7 = bm3Var12;
                                bm3Var8 = bm3Var11;
                                z4 = z6;
                                menuItemColors2 = menuItemColors4;
                                paddingValues2 = paddingValues3;
                                mutableInteractionSource2 = mutableInteractionSource3;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                mutableInteractionSource2 = mutableInteractionSource;
                                modifier3 = modifier2;
                                bm3Var7 = bm3Var5;
                                bm3Var8 = bm3Var6;
                                z4 = z2;
                                menuItemColors2 = menuItemColorsItemColors;
                                paddingValues2 = paddingValues;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 12582912;
                        i12 = i2 & 256;
                        if (i12 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i13 = 67108864;
                                } else {
                                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i13;
                            }
                            i14 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0) {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                } else {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var13 = bm3Var6;
                                boolean z7 = z2;
                                MenuItemColors menuItemColors5 = menuItemColorsItemColors;
                                Modifier modifier6 = modifier2;
                                bm3<? super Composer, ? super Integer, j59> bm3Var14 = bm3Var5;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                }
                                composer2 = composerStartRestartGroup;
                                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier6, bm3Var14, bm3Var13, z7, menuItemColors5, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier6;
                                bm3Var7 = bm3Var14;
                                bm3Var8 = bm3Var13;
                                z4 = z7;
                                menuItemColors2 = menuItemColors5;
                                paddingValues2 = paddingValues3;
                                mutableInteractionSource2 = mutableInteractionSource3;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                mutableInteractionSource2 = mutableInteractionSource;
                                modifier3 = modifier2;
                                bm3Var7 = bm3Var5;
                                bm3Var8 = bm3Var6;
                                z4 = z2;
                                menuItemColors2 = menuItemColorsItemColors;
                                paddingValues2 = paddingValues;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var15 = bm3Var6;
                            boolean z8 = z2;
                            MenuItemColors menuItemColors6 = menuItemColorsItemColors;
                            Modifier modifier7 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var16 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier7, bm3Var16, bm3Var15, z8, menuItemColors6, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier7;
                            bm3Var7 = bm3Var16;
                            bm3Var8 = bm3Var15;
                            z4 = z8;
                            menuItemColors2 = menuItemColors6;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z2 = z;
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            menuItemColorsItemColors = menuItemColors;
                            if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                            }
                            i3 |= i17;
                        } else {
                            menuItemColorsItemColors = menuItemColors;
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(paddingValues)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                        i12 = i2 & 256;
                        if (i12 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i13 = 67108864;
                                } else {
                                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i13;
                            }
                            i14 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0) {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                } else {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var17 = bm3Var6;
                                boolean z9 = z2;
                                MenuItemColors menuItemColors7 = menuItemColorsItemColors;
                                Modifier modifier8 = modifier2;
                                bm3<? super Composer, ? super Integer, j59> bm3Var18 = bm3Var5;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                }
                                composer2 = composerStartRestartGroup;
                                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier8, bm3Var18, bm3Var17, z9, menuItemColors7, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier8;
                                bm3Var7 = bm3Var18;
                                bm3Var8 = bm3Var17;
                                z4 = z9;
                                menuItemColors2 = menuItemColors7;
                                paddingValues2 = paddingValues3;
                                mutableInteractionSource2 = mutableInteractionSource3;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                mutableInteractionSource2 = mutableInteractionSource;
                                modifier3 = modifier2;
                                bm3Var7 = bm3Var5;
                                bm3Var8 = bm3Var6;
                                z4 = z2;
                                menuItemColors2 = menuItemColorsItemColors;
                                paddingValues2 = paddingValues;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var19 = bm3Var6;
                            boolean z10 = z2;
                            MenuItemColors menuItemColors8 = menuItemColorsItemColors;
                            Modifier modifier9 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var110 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier9, bm3Var110, bm3Var19, z10, menuItemColors8, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier9;
                            bm3Var7 = bm3Var110;
                            bm3Var8 = bm3Var19;
                            z4 = z10;
                            menuItemColors2 = menuItemColors8;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var111 = bm3Var6;
                            boolean z11 = z2;
                            MenuItemColors menuItemColors9 = menuItemColorsItemColors;
                            Modifier modifier10 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var112 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier10, bm3Var112, bm3Var111, z11, menuItemColors9, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier10;
                            bm3Var7 = bm3Var112;
                            bm3Var8 = bm3Var111;
                            z4 = z11;
                            menuItemColors2 = menuItemColors9;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var113 = bm3Var6;
                        boolean z12 = z2;
                        MenuItemColors menuItemColors10 = menuItemColorsItemColors;
                        Modifier modifier11 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var114 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11, bm3Var114, bm3Var113, z12, menuItemColors10, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier11;
                        bm3Var7 = bm3Var114;
                        bm3Var8 = bm3Var113;
                        z4 = z12;
                        menuItemColors2 = menuItemColors10;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                bm3Var6 = bm3Var3;
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            menuItemColorsItemColors = menuItemColors;
                            if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                            }
                            i3 |= i17;
                        } else {
                            menuItemColorsItemColors = menuItemColors;
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(paddingValues)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                        i12 = i2 & 256;
                        if (i12 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i13 = 67108864;
                                } else {
                                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i13;
                            }
                            i14 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0) {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                } else {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var115 = bm3Var6;
                                boolean z13 = z2;
                                MenuItemColors menuItemColors11 = menuItemColorsItemColors;
                                Modifier modifier12 = modifier2;
                                bm3<? super Composer, ? super Integer, j59> bm3Var116 = bm3Var5;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                }
                                composer2 = composerStartRestartGroup;
                                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier12, bm3Var116, bm3Var115, z13, menuItemColors11, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier12;
                                bm3Var7 = bm3Var116;
                                bm3Var8 = bm3Var115;
                                z4 = z13;
                                menuItemColors2 = menuItemColors11;
                                paddingValues2 = paddingValues3;
                                mutableInteractionSource2 = mutableInteractionSource3;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                mutableInteractionSource2 = mutableInteractionSource;
                                modifier3 = modifier2;
                                bm3Var7 = bm3Var5;
                                bm3Var8 = bm3Var6;
                                z4 = z2;
                                menuItemColors2 = menuItemColorsItemColors;
                                paddingValues2 = paddingValues;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var117 = bm3Var6;
                            boolean z14 = z2;
                            MenuItemColors menuItemColors12 = menuItemColorsItemColors;
                            Modifier modifier13 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var118 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier13, bm3Var118, bm3Var117, z14, menuItemColors12, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier13;
                            bm3Var7 = bm3Var118;
                            bm3Var8 = bm3Var117;
                            z4 = z14;
                            menuItemColors2 = menuItemColors12;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var119 = bm3Var6;
                            boolean z15 = z2;
                            MenuItemColors menuItemColors13 = menuItemColorsItemColors;
                            Modifier modifier14 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var1110 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier14, bm3Var1110, bm3Var119, z15, menuItemColors13, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier14;
                            bm3Var7 = bm3Var1110;
                            bm3Var8 = bm3Var119;
                            z4 = z15;
                            menuItemColors2 = menuItemColors13;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111 = bm3Var6;
                        boolean z16 = z2;
                        MenuItemColors menuItemColors14 = menuItemColorsItemColors;
                        Modifier modifier15 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1112 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier15, bm3Var1112, bm3Var1111, z16, menuItemColors14, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier15;
                        bm3Var7 = bm3Var1112;
                        bm3Var8 = bm3Var1111;
                        z4 = z16;
                        menuItemColors2 = menuItemColors14;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z2 = z;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        menuItemColorsItemColors = menuItemColors;
                        if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(paddingValues)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var1113 = bm3Var6;
                            boolean z17 = z2;
                            MenuItemColors menuItemColors15 = menuItemColorsItemColors;
                            Modifier modifier16 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var1114 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier16, bm3Var1114, bm3Var1113, z17, menuItemColors15, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier16;
                            bm3Var7 = bm3Var1114;
                            bm3Var8 = bm3Var1113;
                            z4 = z17;
                            menuItemColors2 = menuItemColors15;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1115 = bm3Var6;
                        boolean z18 = z2;
                        MenuItemColors menuItemColors16 = menuItemColorsItemColors;
                        Modifier modifier17 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1116 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier17, bm3Var1116, bm3Var1115, z18, menuItemColors16, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier17;
                        bm3Var7 = bm3Var1116;
                        bm3Var8 = bm3Var1115;
                        z4 = z18;
                        menuItemColors2 = menuItemColors16;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1117 = bm3Var6;
                        boolean z19 = z2;
                        MenuItemColors menuItemColors17 = menuItemColorsItemColors;
                        Modifier modifier18 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1118 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier18, bm3Var1118, bm3Var1117, z19, menuItemColors17, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier18;
                        bm3Var7 = bm3Var1118;
                        bm3Var8 = bm3Var1117;
                        z4 = z19;
                        menuItemColors2 = menuItemColors17;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1119 = bm3Var6;
                    boolean z110 = z2;
                    MenuItemColors menuItemColors18 = menuItemColorsItemColors;
                    Modifier modifier19 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11110 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier19, bm3Var11110, bm3Var1119, z110, menuItemColors18, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier19;
                    bm3Var7 = bm3Var11110;
                    bm3Var8 = bm3Var1119;
                    z4 = z110;
                    menuItemColors2 = menuItemColors18;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            bm3Var5 = bm3Var2;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var6 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            menuItemColorsItemColors = menuItemColors;
                            if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                            }
                            i3 |= i17;
                        } else {
                            menuItemColorsItemColors = menuItemColors;
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(paddingValues)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                        i12 = i2 & 256;
                        if (i12 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i13 = 67108864;
                                } else {
                                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i13;
                            }
                            i14 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0) {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                } else {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var11111 = bm3Var6;
                                boolean z111 = z2;
                                MenuItemColors menuItemColors19 = menuItemColorsItemColors;
                                Modifier modifier110 = modifier2;
                                bm3<? super Composer, ? super Integer, j59> bm3Var11112 = bm3Var5;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                }
                                composer2 = composerStartRestartGroup;
                                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier110, bm3Var11112, bm3Var11111, z111, menuItemColors19, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier110;
                                bm3Var7 = bm3Var11112;
                                bm3Var8 = bm3Var11111;
                                z4 = z111;
                                menuItemColors2 = menuItemColors19;
                                paddingValues2 = paddingValues3;
                                mutableInteractionSource2 = mutableInteractionSource3;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                mutableInteractionSource2 = mutableInteractionSource;
                                modifier3 = modifier2;
                                bm3Var7 = bm3Var5;
                                bm3Var8 = bm3Var6;
                                z4 = z2;
                                menuItemColors2 = menuItemColorsItemColors;
                                paddingValues2 = paddingValues;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var11113 = bm3Var6;
                            boolean z112 = z2;
                            MenuItemColors menuItemColors110 = menuItemColorsItemColors;
                            Modifier modifier111 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var11114 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111, bm3Var11114, bm3Var11113, z112, menuItemColors110, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier111;
                            bm3Var7 = bm3Var11114;
                            bm3Var8 = bm3Var11113;
                            z4 = z112;
                            menuItemColors2 = menuItemColors110;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var11115 = bm3Var6;
                            boolean z113 = z2;
                            MenuItemColors menuItemColors111 = menuItemColorsItemColors;
                            Modifier modifier112 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var11116 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier112, bm3Var11116, bm3Var11115, z113, menuItemColors111, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier112;
                            bm3Var7 = bm3Var11116;
                            bm3Var8 = bm3Var11115;
                            z4 = z113;
                            menuItemColors2 = menuItemColors111;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var11117 = bm3Var6;
                        boolean z114 = z2;
                        MenuItemColors menuItemColors112 = menuItemColorsItemColors;
                        Modifier modifier113 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var11118 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier113, bm3Var11118, bm3Var11117, z114, menuItemColors112, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier113;
                        bm3Var7 = bm3Var11118;
                        bm3Var8 = bm3Var11117;
                        z4 = z114;
                        menuItemColors2 = menuItemColors112;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z2 = z;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        menuItemColorsItemColors = menuItemColors;
                        if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(paddingValues)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var11119 = bm3Var6;
                            boolean z115 = z2;
                            MenuItemColors menuItemColors113 = menuItemColorsItemColors;
                            Modifier modifier114 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var111110 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier114, bm3Var111110, bm3Var11119, z115, menuItemColors113, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier114;
                            bm3Var7 = bm3Var111110;
                            bm3Var8 = bm3Var11119;
                            z4 = z115;
                            menuItemColors2 = menuItemColors113;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111 = bm3Var6;
                        boolean z116 = z2;
                        MenuItemColors menuItemColors114 = menuItemColorsItemColors;
                        Modifier modifier115 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111112 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier115, bm3Var111112, bm3Var111111, z116, menuItemColors114, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier115;
                        bm3Var7 = bm3Var111112;
                        bm3Var8 = bm3Var111111;
                        z4 = z116;
                        menuItemColors2 = menuItemColors114;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var111113 = bm3Var6;
                        boolean z117 = z2;
                        MenuItemColors menuItemColors115 = menuItemColorsItemColors;
                        Modifier modifier116 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111114 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier116, bm3Var111114, bm3Var111113, z117, menuItemColors115, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier116;
                        bm3Var7 = bm3Var111114;
                        bm3Var8 = bm3Var111113;
                        z4 = z117;
                        menuItemColors2 = menuItemColors115;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var111115 = bm3Var6;
                    boolean z118 = z2;
                    MenuItemColors menuItemColors116 = menuItemColorsItemColors;
                    Modifier modifier117 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var111116 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier117, bm3Var111116, bm3Var111115, z118, menuItemColors116, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier117;
                    bm3Var7 = bm3Var111116;
                    bm3Var8 = bm3Var111115;
                    z4 = z118;
                    menuItemColors2 = menuItemColors116;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var6 = bm3Var3;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        menuItemColorsItemColors = menuItemColors;
                        if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(paddingValues)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var111117 = bm3Var6;
                            boolean z119 = z2;
                            MenuItemColors menuItemColors117 = menuItemColorsItemColors;
                            Modifier modifier118 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var111118 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier118, bm3Var111118, bm3Var111117, z119, menuItemColors117, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier118;
                            bm3Var7 = bm3Var111118;
                            bm3Var8 = bm3Var111117;
                            z4 = z119;
                            menuItemColors2 = menuItemColors117;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var111119 = bm3Var6;
                        boolean z1110 = z2;
                        MenuItemColors menuItemColors118 = menuItemColorsItemColors;
                        Modifier modifier119 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111110 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier119, bm3Var1111110, bm3Var111119, z1110, menuItemColors118, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier119;
                        bm3Var7 = bm3Var1111110;
                        bm3Var8 = bm3Var111119;
                        z4 = z1110;
                        menuItemColors2 = menuItemColors118;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111 = bm3Var6;
                        boolean z1111 = z2;
                        MenuItemColors menuItemColors119 = menuItemColorsItemColors;
                        Modifier modifier1110 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111112 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1110, bm3Var1111112, bm3Var1111111, z1111, menuItemColors119, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier1110;
                        bm3Var7 = bm3Var1111112;
                        bm3Var8 = bm3Var1111111;
                        z4 = z1111;
                        menuItemColors2 = menuItemColors119;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111113 = bm3Var6;
                    boolean z1112 = z2;
                    MenuItemColors menuItemColors1110 = menuItemColorsItemColors;
                    Modifier modifier1111 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111114 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111, bm3Var1111114, bm3Var1111113, z1112, menuItemColors1110, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier1111;
                    bm3Var7 = bm3Var1111114;
                    bm3Var8 = bm3Var1111113;
                    z4 = z1112;
                    menuItemColors2 = menuItemColors1110;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z2 = z;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    menuItemColorsItemColors = menuItemColors;
                    if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i3 |= i17;
            } else {
                menuItemColorsItemColors = menuItemColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(paddingValues)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111115 = bm3Var6;
                        boolean z1113 = z2;
                        MenuItemColors menuItemColors1111 = menuItemColorsItemColors;
                        Modifier modifier1112 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111116 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1112, bm3Var1111116, bm3Var1111115, z1113, menuItemColors1111, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier1112;
                        bm3Var7 = bm3Var1111116;
                        bm3Var8 = bm3Var1111115;
                        z4 = z1113;
                        menuItemColors2 = menuItemColors1111;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111117 = bm3Var6;
                    boolean z1114 = z2;
                    MenuItemColors menuItemColors1112 = menuItemColorsItemColors;
                    Modifier modifier1113 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111118 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1113, bm3Var1111118, bm3Var1111117, z1114, menuItemColors1112, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier1113;
                    bm3Var7 = bm3Var1111118;
                    bm3Var8 = bm3Var1111117;
                    z4 = z1114;
                    menuItemColors2 = menuItemColors1112;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111119 = bm3Var6;
                    boolean z1115 = z2;
                    MenuItemColors menuItemColors1113 = menuItemColorsItemColors;
                    Modifier modifier1114 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11111110 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1114, bm3Var11111110, bm3Var1111119, z1115, menuItemColors1113, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier1114;
                    bm3Var7 = bm3Var11111110;
                    bm3Var8 = bm3Var1111119;
                    z4 = z1115;
                    menuItemColors2 = menuItemColors1113;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i14 = i3;
            if ((i3 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111 = bm3Var6;
                boolean z1116 = z2;
                MenuItemColors menuItemColors1114 = menuItemColorsItemColors;
                Modifier modifier1115 = modifier2;
                bm3<? super Composer, ? super Integer, j59> bm3Var11111112 = bm3Var5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                }
                composer2 = composerStartRestartGroup;
                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1115, bm3Var11111112, bm3Var11111111, z1116, menuItemColors1114, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier1115;
                bm3Var7 = bm3Var11111112;
                bm3Var8 = bm3Var11111111;
                z4 = z1116;
                menuItemColors2 = menuItemColors1114;
                paddingValues2 = paddingValues3;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                bm3Var7 = bm3Var5;
                bm3Var8 = bm3Var6;
                z4 = z2;
                menuItemColors2 = menuItemColorsItemColors;
                paddingValues2 = paddingValues;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                bm3Var5 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    bm3Var6 = bm3Var3;
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    if ((1572864 & i) == 0) {
                        if ((i2 & 64) == 0) {
                            menuItemColorsItemColors = menuItemColors;
                            if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                            }
                            i3 |= i17;
                        } else {
                            menuItemColorsItemColors = menuItemColors;
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(paddingValues)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                        i12 = i2 & 256;
                        if (i12 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                    i13 = 67108864;
                                } else {
                                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i13;
                            }
                            i14 = i3;
                            if ((i3 & 38347923) != 38347922) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0) {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                } else {
                                    if (i16 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if (i4 != 0) {
                                        bm3Var5 = null;
                                    }
                                    if (i6 != 0) {
                                        bm3Var6 = null;
                                    }
                                    if (i8 != 0) {
                                        z2 = true;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i15 = i14 & (-3670017);
                                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                    } else {
                                        i15 = i14;
                                    }
                                    if (i10 != 0) {
                                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                    } else {
                                        dropdownMenuItemContentPadding = paddingValues;
                                    }
                                    if (i12 != 0) {
                                        mutableInteractionSource3 = null;
                                    } else {
                                        mutableInteractionSource3 = mutableInteractionSource;
                                    }
                                    paddingValues3 = dropdownMenuItemContentPadding;
                                }
                                bm3<? super Composer, ? super Integer, j59> bm3Var11111113 = bm3Var6;
                                boolean z1117 = z2;
                                MenuItemColors menuItemColors1115 = menuItemColorsItemColors;
                                Modifier modifier1116 = modifier2;
                                bm3<? super Composer, ? super Integer, j59> bm3Var11111114 = bm3Var5;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                                }
                                composer2 = composerStartRestartGroup;
                                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1116, bm3Var11111114, bm3Var11111113, z1117, menuItemColors1115, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier1116;
                                bm3Var7 = bm3Var11111114;
                                bm3Var8 = bm3Var11111113;
                                z4 = z1117;
                                menuItemColors2 = menuItemColors1115;
                                paddingValues2 = paddingValues3;
                                mutableInteractionSource2 = mutableInteractionSource3;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                mutableInteractionSource2 = mutableInteractionSource;
                                modifier3 = modifier2;
                                bm3Var7 = bm3Var5;
                                bm3Var8 = bm3Var6;
                                z4 = z2;
                                menuItemColors2 = menuItemColorsItemColors;
                                paddingValues2 = paddingValues;
                            }
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var11111115 = bm3Var6;
                            boolean z1118 = z2;
                            MenuItemColors menuItemColors1116 = menuItemColorsItemColors;
                            Modifier modifier1117 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var11111116 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1117, bm3Var11111116, bm3Var11111115, z1118, menuItemColors1116, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier1117;
                            bm3Var7 = bm3Var11111116;
                            bm3Var8 = bm3Var11111115;
                            z4 = z1118;
                            menuItemColors2 = menuItemColors1116;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 12582912;
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var11111117 = bm3Var6;
                            boolean z1119 = z2;
                            MenuItemColors menuItemColors1117 = menuItemColorsItemColors;
                            Modifier modifier1118 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var11111118 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1118, bm3Var11111118, bm3Var11111117, z1119, menuItemColors1117, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier1118;
                            bm3Var7 = bm3Var11111118;
                            bm3Var8 = bm3Var11111117;
                            z4 = z1119;
                            menuItemColors2 = menuItemColors1117;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var11111119 = bm3Var6;
                        boolean z11110 = z2;
                        MenuItemColors menuItemColors1118 = menuItemColorsItemColors;
                        Modifier modifier1119 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111110 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1119, bm3Var111111110, bm3Var11111119, z11110, menuItemColors1118, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier1119;
                        bm3Var7 = bm3Var111111110;
                        bm3Var8 = bm3Var11111119;
                        z4 = z11110;
                        menuItemColors2 = menuItemColors1118;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z2 = z;
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        menuItemColorsItemColors = menuItemColors;
                        if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(paddingValues)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var111111111 = bm3Var6;
                            boolean z11111 = z2;
                            MenuItemColors menuItemColors1119 = menuItemColorsItemColors;
                            Modifier modifier11110 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var111111112 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11110, bm3Var111111112, bm3Var111111111, z11111, menuItemColors1119, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier11110;
                            bm3Var7 = bm3Var111111112;
                            bm3Var8 = bm3Var111111111;
                            z4 = z11111;
                            menuItemColors2 = menuItemColors1119;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111113 = bm3Var6;
                        boolean z11112 = z2;
                        MenuItemColors menuItemColors11110 = menuItemColorsItemColors;
                        Modifier modifier11111 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111114 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11111, bm3Var111111114, bm3Var111111113, z11112, menuItemColors11110, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier11111;
                        bm3Var7 = bm3Var111111114;
                        bm3Var8 = bm3Var111111113;
                        z4 = z11112;
                        menuItemColors2 = menuItemColors11110;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111115 = bm3Var6;
                        boolean z11113 = z2;
                        MenuItemColors menuItemColors11111 = menuItemColorsItemColors;
                        Modifier modifier11112 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111116 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11112, bm3Var111111116, bm3Var111111115, z11113, menuItemColors11111, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier11112;
                        bm3Var7 = bm3Var111111116;
                        bm3Var8 = bm3Var111111115;
                        z4 = z11113;
                        menuItemColors2 = menuItemColors11111;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111117 = bm3Var6;
                    boolean z11114 = z2;
                    MenuItemColors menuItemColors11112 = menuItemColorsItemColors;
                    Modifier modifier11113 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111118 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11113, bm3Var111111118, bm3Var111111117, z11114, menuItemColors11112, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier11113;
                    bm3Var7 = bm3Var111111118;
                    bm3Var8 = bm3Var111111117;
                    z4 = z11114;
                    menuItemColors2 = menuItemColors11112;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3Var6 = bm3Var3;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        menuItemColorsItemColors = menuItemColors;
                        if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(paddingValues)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var111111119 = bm3Var6;
                            boolean z11115 = z2;
                            MenuItemColors menuItemColors11113 = menuItemColorsItemColors;
                            Modifier modifier11114 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var1111111110 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11114, bm3Var1111111110, bm3Var111111119, z11115, menuItemColors11113, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier11114;
                            bm3Var7 = bm3Var1111111110;
                            bm3Var8 = bm3Var111111119;
                            z4 = z11115;
                            menuItemColors2 = menuItemColors11113;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111111 = bm3Var6;
                        boolean z11116 = z2;
                        MenuItemColors menuItemColors11114 = menuItemColorsItemColors;
                        Modifier modifier11115 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111112 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11115, bm3Var1111111112, bm3Var1111111111, z11116, menuItemColors11114, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier11115;
                        bm3Var7 = bm3Var1111111112;
                        bm3Var8 = bm3Var1111111111;
                        z4 = z11116;
                        menuItemColors2 = menuItemColors11114;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111113 = bm3Var6;
                        boolean z11117 = z2;
                        MenuItemColors menuItemColors11115 = menuItemColorsItemColors;
                        Modifier modifier11116 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111114 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11116, bm3Var1111111114, bm3Var1111111113, z11117, menuItemColors11115, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier11116;
                        bm3Var7 = bm3Var1111111114;
                        bm3Var8 = bm3Var1111111113;
                        z4 = z11117;
                        menuItemColors2 = menuItemColors11115;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111115 = bm3Var6;
                    boolean z11118 = z2;
                    MenuItemColors menuItemColors11116 = menuItemColorsItemColors;
                    Modifier modifier11117 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111116 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11117, bm3Var1111111116, bm3Var1111111115, z11118, menuItemColors11116, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier11117;
                    bm3Var7 = bm3Var1111111116;
                    bm3Var8 = bm3Var1111111115;
                    z4 = z11118;
                    menuItemColors2 = menuItemColors11116;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z2 = z;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    menuItemColorsItemColors = menuItemColors;
                    if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i3 |= i17;
            } else {
                menuItemColorsItemColors = menuItemColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(paddingValues)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111117 = bm3Var6;
                        boolean z11119 = z2;
                        MenuItemColors menuItemColors11117 = menuItemColorsItemColors;
                        Modifier modifier11118 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111118 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11118, bm3Var1111111118, bm3Var1111111117, z11119, menuItemColors11117, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier11118;
                        bm3Var7 = bm3Var1111111118;
                        bm3Var8 = bm3Var1111111117;
                        z4 = z11119;
                        menuItemColors2 = menuItemColors11117;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111119 = bm3Var6;
                    boolean z111110 = z2;
                    MenuItemColors menuItemColors11118 = menuItemColorsItemColors;
                    Modifier modifier11119 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11111111110 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier11119, bm3Var11111111110, bm3Var1111111119, z111110, menuItemColors11118, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier11119;
                    bm3Var7 = bm3Var11111111110;
                    bm3Var8 = bm3Var1111111119;
                    z4 = z111110;
                    menuItemColors2 = menuItemColors11118;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var11111111111 = bm3Var6;
                    boolean z111111 = z2;
                    MenuItemColors menuItemColors11119 = menuItemColorsItemColors;
                    Modifier modifier111110 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11111111112 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111110, bm3Var11111111112, bm3Var11111111111, z111111, menuItemColors11119, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier111110;
                    bm3Var7 = bm3Var11111111112;
                    bm3Var8 = bm3Var11111111111;
                    z4 = z111111;
                    menuItemColors2 = menuItemColors11119;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i14 = i3;
            if ((i3 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111113 = bm3Var6;
                boolean z111112 = z2;
                MenuItemColors menuItemColors111110 = menuItemColorsItemColors;
                Modifier modifier111111 = modifier2;
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111114 = bm3Var5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                }
                composer2 = composerStartRestartGroup;
                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111111, bm3Var11111111114, bm3Var11111111113, z111112, menuItemColors111110, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier111111;
                bm3Var7 = bm3Var11111111114;
                bm3Var8 = bm3Var11111111113;
                z4 = z111112;
                menuItemColors2 = menuItemColors111110;
                paddingValues2 = paddingValues3;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                bm3Var7 = bm3Var5;
                bm3Var8 = bm3Var6;
                z4 = z2;
                menuItemColors2 = menuItemColorsItemColors;
                paddingValues2 = paddingValues;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        bm3Var5 = bm3Var2;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                bm3Var6 = bm3Var3;
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        menuItemColorsItemColors = menuItemColors;
                        if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                        }
                        i3 |= i17;
                    } else {
                        menuItemColorsItemColors = menuItemColors;
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(paddingValues)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    i12 = i2 & 256;
                    if (i12 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                                i13 = 67108864;
                            } else {
                                i13 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i13;
                        }
                        i14 = i3;
                        if ((i3 & 38347923) != 38347922) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            } else {
                                if (i16 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i4 != 0) {
                                    bm3Var5 = null;
                                }
                                if (i6 != 0) {
                                    bm3Var6 = null;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if ((i2 & 64) != 0) {
                                    i15 = i14 & (-3670017);
                                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                                } else {
                                    i15 = i14;
                                }
                                if (i10 != 0) {
                                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                                } else {
                                    dropdownMenuItemContentPadding = paddingValues;
                                }
                                if (i12 != 0) {
                                    mutableInteractionSource3 = null;
                                } else {
                                    mutableInteractionSource3 = mutableInteractionSource;
                                }
                                paddingValues3 = dropdownMenuItemContentPadding;
                            }
                            bm3<? super Composer, ? super Integer, j59> bm3Var11111111115 = bm3Var6;
                            boolean z111113 = z2;
                            MenuItemColors menuItemColors111111 = menuItemColorsItemColors;
                            Modifier modifier111112 = modifier2;
                            bm3<? super Composer, ? super Integer, j59> bm3Var11111111116 = bm3Var5;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                            }
                            composer2 = composerStartRestartGroup;
                            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111112, bm3Var11111111116, bm3Var11111111115, z111113, menuItemColors111111, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier111112;
                            bm3Var7 = bm3Var11111111116;
                            bm3Var8 = bm3Var11111111115;
                            z4 = z111113;
                            menuItemColors2 = menuItemColors111111;
                            paddingValues2 = paddingValues3;
                            mutableInteractionSource2 = mutableInteractionSource3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            mutableInteractionSource2 = mutableInteractionSource;
                            modifier3 = modifier2;
                            bm3Var7 = bm3Var5;
                            bm3Var8 = bm3Var6;
                            z4 = z2;
                            menuItemColors2 = menuItemColorsItemColors;
                            paddingValues2 = paddingValues;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var11111111117 = bm3Var6;
                        boolean z111114 = z2;
                        MenuItemColors menuItemColors111112 = menuItemColorsItemColors;
                        Modifier modifier111113 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var11111111118 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111113, bm3Var11111111118, bm3Var11111111117, z111114, menuItemColors111112, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier111113;
                        bm3Var7 = bm3Var11111111118;
                        bm3Var8 = bm3Var11111111117;
                        z4 = z111114;
                        menuItemColors2 = menuItemColors111112;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 12582912;
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var11111111119 = bm3Var6;
                        boolean z111115 = z2;
                        MenuItemColors menuItemColors111113 = menuItemColorsItemColors;
                        Modifier modifier111114 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111111110 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111114, bm3Var111111111110, bm3Var11111111119, z111115, menuItemColors111113, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier111114;
                        bm3Var7 = bm3Var111111111110;
                        bm3Var8 = bm3Var11111111119;
                        z4 = z111115;
                        menuItemColors2 = menuItemColors111113;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111111111 = bm3Var6;
                    boolean z111116 = z2;
                    MenuItemColors menuItemColors111114 = menuItemColorsItemColors;
                    Modifier modifier111115 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111111112 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111115, bm3Var111111111112, bm3Var111111111111, z111116, menuItemColors111114, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier111115;
                    bm3Var7 = bm3Var111111111112;
                    bm3Var8 = bm3Var111111111111;
                    z4 = z111116;
                    menuItemColors2 = menuItemColors111114;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z2 = z;
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    menuItemColorsItemColors = menuItemColors;
                    if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i3 |= i17;
            } else {
                menuItemColorsItemColors = menuItemColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(paddingValues)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111111113 = bm3Var6;
                        boolean z111117 = z2;
                        MenuItemColors menuItemColors111115 = menuItemColorsItemColors;
                        Modifier modifier111116 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var111111111114 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111116, bm3Var111111111114, bm3Var111111111113, z111117, menuItemColors111115, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier111116;
                        bm3Var7 = bm3Var111111111114;
                        bm3Var8 = bm3Var111111111113;
                        z4 = z111117;
                        menuItemColors2 = menuItemColors111115;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111111115 = bm3Var6;
                    boolean z111118 = z2;
                    MenuItemColors menuItemColors111116 = menuItemColorsItemColors;
                    Modifier modifier111117 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111111116 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111117, bm3Var111111111116, bm3Var111111111115, z111118, menuItemColors111116, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier111117;
                    bm3Var7 = bm3Var111111111116;
                    bm3Var8 = bm3Var111111111115;
                    z4 = z111118;
                    menuItemColors2 = menuItemColors111116;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111111117 = bm3Var6;
                    boolean z111119 = z2;
                    MenuItemColors menuItemColors111117 = menuItemColorsItemColors;
                    Modifier modifier111118 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var111111111118 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111118, bm3Var111111111118, bm3Var111111111117, z111119, menuItemColors111117, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier111118;
                    bm3Var7 = bm3Var111111111118;
                    bm3Var8 = bm3Var111111111117;
                    z4 = z111119;
                    menuItemColors2 = menuItemColors111117;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i14 = i3;
            if ((i3 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var111111111119 = bm3Var6;
                boolean z1111110 = z2;
                MenuItemColors menuItemColors111118 = menuItemColorsItemColors;
                Modifier modifier111119 = modifier2;
                bm3<? super Composer, ? super Integer, j59> bm3Var1111111111110 = bm3Var5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                }
                composer2 = composerStartRestartGroup;
                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier111119, bm3Var1111111111110, bm3Var111111111119, z1111110, menuItemColors111118, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier111119;
                bm3Var7 = bm3Var1111111111110;
                bm3Var8 = bm3Var111111111119;
                z4 = z1111110;
                menuItemColors2 = menuItemColors111118;
                paddingValues2 = paddingValues3;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                bm3Var7 = bm3Var5;
                bm3Var8 = bm3Var6;
                z4 = z2;
                menuItemColors2 = menuItemColorsItemColors;
                paddingValues2 = paddingValues;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        bm3Var6 = bm3Var3;
        i8 = i2 & 32;
        if (i8 != 0) {
            if ((196608 & i) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    menuItemColorsItemColors = menuItemColors;
                    if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                    }
                    i3 |= i17;
                } else {
                    menuItemColorsItemColors = menuItemColors;
                }
                i3 |= i17;
            } else {
                menuItemColorsItemColors = menuItemColors;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(paddingValues)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                i12 = i2 & 256;
                if (i12 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                            i13 = 67108864;
                        } else {
                            i13 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i13;
                    }
                    i14 = i3;
                    if ((i3 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        } else {
                            if (i16 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i4 != 0) {
                                bm3Var5 = null;
                            }
                            if (i6 != 0) {
                                bm3Var6 = null;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if ((i2 & 64) != 0) {
                                i15 = i14 & (-3670017);
                                menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                            } else {
                                i15 = i14;
                            }
                            if (i10 != 0) {
                                dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                            } else {
                                dropdownMenuItemContentPadding = paddingValues;
                            }
                            if (i12 != 0) {
                                mutableInteractionSource3 = null;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource;
                            }
                            paddingValues3 = dropdownMenuItemContentPadding;
                        }
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111111111 = bm3Var6;
                        boolean z1111111 = z2;
                        MenuItemColors menuItemColors111119 = menuItemColorsItemColors;
                        Modifier modifier1111110 = modifier2;
                        bm3<? super Composer, ? super Integer, j59> bm3Var1111111111112 = bm3Var5;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                        }
                        composer2 = composerStartRestartGroup;
                        MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111110, bm3Var1111111111112, bm3Var1111111111111, z1111111, menuItemColors111119, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier1111110;
                        bm3Var7 = bm3Var1111111111112;
                        bm3Var8 = bm3Var1111111111111;
                        z4 = z1111111;
                        menuItemColors2 = menuItemColors111119;
                        paddingValues2 = paddingValues3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        mutableInteractionSource2 = mutableInteractionSource;
                        modifier3 = modifier2;
                        bm3Var7 = bm3Var5;
                        bm3Var8 = bm3Var6;
                        z4 = z2;
                        menuItemColors2 = menuItemColorsItemColors;
                        paddingValues2 = paddingValues;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111111113 = bm3Var6;
                    boolean z1111112 = z2;
                    MenuItemColors menuItemColors1111110 = menuItemColorsItemColors;
                    Modifier modifier1111111 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111111114 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111111, bm3Var1111111111114, bm3Var1111111111113, z1111112, menuItemColors1111110, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier1111111;
                    bm3Var7 = bm3Var1111111111114;
                    bm3Var8 = bm3Var1111111111113;
                    z4 = z1111112;
                    menuItemColors2 = menuItemColors1111110;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 12582912;
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111111115 = bm3Var6;
                    boolean z1111113 = z2;
                    MenuItemColors menuItemColors1111111 = menuItemColorsItemColors;
                    Modifier modifier1111112 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111111116 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111112, bm3Var1111111111116, bm3Var1111111111115, z1111113, menuItemColors1111111, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier1111112;
                    bm3Var7 = bm3Var1111111111116;
                    bm3Var8 = bm3Var1111111111115;
                    z4 = z1111113;
                    menuItemColors2 = menuItemColors1111111;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i14 = i3;
            if ((i3 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var1111111111117 = bm3Var6;
                boolean z1111114 = z2;
                MenuItemColors menuItemColors1111112 = menuItemColorsItemColors;
                Modifier modifier1111113 = modifier2;
                bm3<? super Composer, ? super Integer, j59> bm3Var1111111111118 = bm3Var5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                }
                composer2 = composerStartRestartGroup;
                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111113, bm3Var1111111111118, bm3Var1111111111117, z1111114, menuItemColors1111112, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier1111113;
                bm3Var7 = bm3Var1111111111118;
                bm3Var8 = bm3Var1111111111117;
                z4 = z1111114;
                menuItemColors2 = menuItemColors1111112;
                paddingValues2 = paddingValues3;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                bm3Var7 = bm3Var5;
                bm3Var8 = bm3Var6;
                z4 = z2;
                menuItemColors2 = menuItemColorsItemColors;
                paddingValues2 = paddingValues;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z2 = z;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                menuItemColorsItemColors = menuItemColors;
                if (composerStartRestartGroup.changed(menuItemColorsItemColors)) {
                }
                i3 |= i17;
            } else {
                menuItemColorsItemColors = menuItemColors;
            }
            i3 |= i17;
        } else {
            menuItemColorsItemColors = menuItemColors;
        }
        i10 = i2 & 128;
        if (i10 != 0) {
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(paddingValues)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            i12 = i2 & 256;
            if (i12 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i13;
                }
                i14 = i3;
                if ((i3 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    } else {
                        if (i16 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i4 != 0) {
                            bm3Var5 = null;
                        }
                        if (i6 != 0) {
                            bm3Var6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 64) != 0) {
                            i15 = i14 & (-3670017);
                            menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                        } else {
                            i15 = i14;
                        }
                        if (i10 != 0) {
                            dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                        } else {
                            dropdownMenuItemContentPadding = paddingValues;
                        }
                        if (i12 != 0) {
                            mutableInteractionSource3 = null;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        paddingValues3 = dropdownMenuItemContentPadding;
                    }
                    bm3<? super Composer, ? super Integer, j59> bm3Var1111111111119 = bm3Var6;
                    boolean z1111115 = z2;
                    MenuItemColors menuItemColors1111113 = menuItemColorsItemColors;
                    Modifier modifier1111114 = modifier2;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11111111111110 = bm3Var5;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                    }
                    composer2 = composerStartRestartGroup;
                    MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111114, bm3Var11111111111110, bm3Var1111111111119, z1111115, menuItemColors1111113, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier1111114;
                    bm3Var7 = bm3Var11111111111110;
                    bm3Var8 = bm3Var1111111111119;
                    z4 = z1111115;
                    menuItemColors2 = menuItemColors1111113;
                    paddingValues2 = paddingValues3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    bm3Var7 = bm3Var5;
                    bm3Var8 = bm3Var6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsItemColors;
                    paddingValues2 = paddingValues;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            i14 = i3;
            if ((i3 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111111111 = bm3Var6;
                boolean z1111116 = z2;
                MenuItemColors menuItemColors1111114 = menuItemColorsItemColors;
                Modifier modifier1111115 = modifier2;
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111111112 = bm3Var5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                }
                composer2 = composerStartRestartGroup;
                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111115, bm3Var11111111111112, bm3Var11111111111111, z1111116, menuItemColors1111114, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier1111115;
                bm3Var7 = bm3Var11111111111112;
                bm3Var8 = bm3Var11111111111111;
                z4 = z1111116;
                menuItemColors2 = menuItemColors1111114;
                paddingValues2 = paddingValues3;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                bm3Var7 = bm3Var5;
                bm3Var8 = bm3Var6;
                z4 = z2;
                menuItemColors2 = menuItemColorsItemColors;
                paddingValues2 = paddingValues;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 12582912;
        i12 = i2 & 256;
        if (i12 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(mutableInteractionSource)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i13;
            }
            i14 = i3;
            if ((i3 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                } else {
                    if (i16 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i4 != 0) {
                        bm3Var5 = null;
                    }
                    if (i6 != 0) {
                        bm3Var6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 64) != 0) {
                        i15 = i14 & (-3670017);
                        menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                    } else {
                        i15 = i14;
                    }
                    if (i10 != 0) {
                        dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                    } else {
                        dropdownMenuItemContentPadding = paddingValues;
                    }
                    if (i12 != 0) {
                        mutableInteractionSource3 = null;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    paddingValues3 = dropdownMenuItemContentPadding;
                }
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111111113 = bm3Var6;
                boolean z1111117 = z2;
                MenuItemColors menuItemColors1111115 = menuItemColorsItemColors;
                Modifier modifier1111116 = modifier2;
                bm3<? super Composer, ? super Integer, j59> bm3Var11111111111114 = bm3Var5;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
                }
                composer2 = composerStartRestartGroup;
                MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111116, bm3Var11111111111114, bm3Var11111111111113, z1111117, menuItemColors1111115, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier1111116;
                bm3Var7 = bm3Var11111111111114;
                bm3Var8 = bm3Var11111111111113;
                z4 = z1111117;
                menuItemColors2 = menuItemColors1111115;
                paddingValues2 = paddingValues3;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                mutableInteractionSource2 = mutableInteractionSource;
                modifier3 = modifier2;
                bm3Var7 = bm3Var5;
                bm3Var8 = bm3Var6;
                z4 = z2;
                menuItemColors2 = menuItemColorsItemColors;
                paddingValues2 = paddingValues;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        i14 = i3;
        if ((i3 & 38347923) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i14 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    bm3Var5 = null;
                }
                if (i6 != 0) {
                    bm3Var6 = null;
                }
                if (i8 != 0) {
                    z2 = true;
                }
                if ((i2 & 64) != 0) {
                    i15 = i14 & (-3670017);
                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                } else {
                    i15 = i14;
                }
                if (i10 != 0) {
                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                } else {
                    dropdownMenuItemContentPadding = paddingValues;
                }
                if (i12 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                paddingValues3 = dropdownMenuItemContentPadding;
            } else {
                if (i16 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i4 != 0) {
                    bm3Var5 = null;
                }
                if (i6 != 0) {
                    bm3Var6 = null;
                }
                if (i8 != 0) {
                    z2 = true;
                }
                if ((i2 & 64) != 0) {
                    i15 = i14 & (-3670017);
                    menuItemColorsItemColors = MenuDefaults.INSTANCE.itemColors(composerStartRestartGroup, 6);
                } else {
                    i15 = i14;
                }
                if (i10 != 0) {
                    dropdownMenuItemContentPadding = MenuDefaults.INSTANCE.getDropdownMenuItemContentPadding();
                } else {
                    dropdownMenuItemContentPadding = paddingValues;
                }
                if (i12 != 0) {
                    mutableInteractionSource3 = null;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                paddingValues3 = dropdownMenuItemContentPadding;
            }
            bm3<? super Composer, ? super Integer, j59> bm3Var11111111111115 = bm3Var6;
            boolean z1111118 = z2;
            MenuItemColors menuItemColors1111116 = menuItemColorsItemColors;
            Modifier modifier1111117 = modifier2;
            bm3<? super Composer, ? super Integer, j59> bm3Var11111111111116 = bm3Var5;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-532959117, i15, -1, "androidx.compose.material3.DropdownMenuItem (AndroidMenu.android.kt:179)");
            }
            composer2 = composerStartRestartGroup;
            MenuKt.DropdownMenuItemContent(bm3Var4, ll3Var2, modifier1111117, bm3Var11111111111116, bm3Var11111111111115, z1111118, menuItemColors1111116, paddingValues3, mutableInteractionSource3, composer2, i15 & 268435454);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier1111117;
            bm3Var7 = bm3Var11111111111116;
            bm3Var8 = bm3Var11111111111115;
            z4 = z1111118;
            menuItemColors2 = menuItemColors1111116;
            paddingValues2 = paddingValues3;
            mutableInteractionSource2 = mutableInteractionSource3;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            mutableInteractionSource2 = mutableInteractionSource;
            modifier3 = modifier2;
            bm3Var7 = bm3Var5;
            bm3Var8 = bm3Var6;
            z4 = z2;
            menuItemColors2 = menuItemColorsItemColors;
            paddingValues2 = paddingValues;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yi
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidMenu_androidKt.DropdownMenuItem$lambda$7(bm3Var, ll3Var, modifier3, bm3Var7, bm3Var8, z4, menuItemColors2, paddingValues2, mutableInteractionSource2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DropdownMenuItem$lambda$7(bm3 bm3Var, ll3 ll3Var, Modifier modifier, bm3 bm3Var2, bm3 bm3Var3, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        DropdownMenuItem(bm3Var, ll3Var, modifier, bm3Var2, bm3Var3, z, menuItemColors, paddingValues, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DropdownMenu_4kj__NE$lambda$5(boolean z, ll3 ll3Var, Modifier modifier, long j, ScrollState scrollState, PopupProperties popupProperties, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m3079DropdownMenu4kj_NE(z, ll3Var, modifier, j, scrollState, popupProperties, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DropdownMenu_ILWXrKs$lambda$6(boolean z, ll3 ll3Var, Modifier modifier, long j, PopupProperties popupProperties, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        m3080DropdownMenuILWXrKs(z, ll3Var, modifier, j, popupProperties, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DropdownMenu_IlH_yew$lambda$3$lambda$2(MutableState mutableState, IntRect intRect, IntRect intRect2) {
        mutableState.setValue(TransformOrigin.m6632boximpl(MenuKt.calculateTransformOrigin(intRect, intRect2)));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DropdownMenu_IlH_yew$lambda$4(boolean z, ll3 ll3Var, Modifier modifier, long j, ScrollState scrollState, PopupProperties popupProperties, Shape shape, long j2, float f, float f2, BorderStroke borderStroke, dm3 dm3Var, int i, int i2, int i3, Composer composer, int i4) {
        m3081DropdownMenuIlH_yew(z, ll3Var, modifier, j, scrollState, popupProperties, shape, j2, f, f2, borderStroke, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    public static final PopupProperties getDefaultMenuProperties() {
        return DefaultMenuProperties;
    }
}
