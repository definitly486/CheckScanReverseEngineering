package androidx.compose.foundation;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.compose.foundation.AndroidExternalSurface_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.gx2;
import defpackage.j59;
import defpackage.ji;
import defpackage.mi;
import defpackage.ni;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidExternalSurface_androidKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0145  */
    /* JADX WARN: Code duplicated, block: B:102:0x0148  */
    /* JADX WARN: Code duplicated, block: B:105:0x0150  */
    /* JADX WARN: Code duplicated, block: B:108:0x0155  */
    /* JADX WARN: Code duplicated, block: B:109:0x015a  */
    /* JADX WARN: Code duplicated, block: B:112:0x0166  */
    /* JADX WARN: Code duplicated, block: B:116:0x0170  */
    /* JADX WARN: Code duplicated, block: B:119:0x0197  */
    /* JADX WARN: Code duplicated, block: B:121:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:124:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:126:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x006b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:45:0x007a  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:57:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x009f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00de  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:87:0x0105  */
    /* JADX WARN: Code duplicated, block: B:90:0x011a  */
    /* JADX WARN: Code duplicated, block: B:93:0x012a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0130  */
    /* JADX INFO: renamed from: AndroidEmbeddedExternalSurface-sv6N_fY, reason: not valid java name */
    public static final void m1283AndroidEmbeddedExternalSurfacesv6N_fY(Modifier modifier, boolean z, long j, final float[] fArr, final nl3<? super AndroidExternalSurfaceScope, j59> nl3Var, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        boolean z2;
        long jM9218getZeroYbymL2g;
        int i4;
        Object objM6474boximpl;
        int i5;
        nl3<? super AndroidExternalSurfaceScope, j59> nl3Var2;
        int i6;
        boolean z3;
        final float[] fArr2;
        final Modifier modifier3;
        final boolean z4;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        final boolean z5;
        final AndroidEmbeddedExternalSurfaceState androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState;
        Object objRememberedValue;
        Composer.Companion companion;
        Object objRememberedValue2;
        int i7;
        Object objM6474boximpl2;
        int i8;
        Object objRememberedValue3;
        final long j3;
        int i9;
        int i10;
        Composer composerStartRestartGroup = composer.startRestartGroup(217541314);
        int i11 = i2 & 1;
        if (i11 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i12 = i2 & 2;
        if (i12 == 0) {
            if ((i & 48) == 0) {
                z2 = z;
                i3 |= composerStartRestartGroup.changed(z2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                jM9218getZeroYbymL2g = j;
                if ((i2 & 4) == 0 || !composerStartRestartGroup.changed(jM9218getZeroYbymL2g)) {
                    i10 = 128;
                } else {
                    i10 = 256;
                }
                i3 |= i10;
            } else {
                jM9218getZeroYbymL2g = j;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                if (fArr != null) {
                    objM6474boximpl = Matrix.m6474boximpl(fArr);
                } else {
                    objM6474boximpl = null;
                }
                if (composerStartRestartGroup.changedInstance(objM6474boximpl)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            if ((i & 24576) == 0) {
                nl3Var2 = nl3Var;
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            } else {
                nl3Var2 = nl3Var;
            }
            i6 = 0;
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i12 != 0) {
                        z2 = true;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i4 != 0) {
                        z5 = z2;
                        fArr = null;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(217541314, i3, -1, "androidx.compose.foundation.AndroidEmbeddedExternalSurface (AndroidExternalSurface.android.kt:432)");
                    }
                    androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState = rememberAndroidEmbeddedExternalSurfaceState(composerStartRestartGroup, 0);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new mi(i6);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3 nl3Var3 = (nl3) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new ni(i6);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3 nl3Var4 = (nl3) objRememberedValue2;
                    int i13 = (((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(jM9218getZeroYbymL2g)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1) | (composerStartRestartGroup.changedInstance(androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState) ? 1 : 0);
                    if ((57344 & i3) == 16384) {
                        i7 = 1;
                    } else {
                        i7 = 0;
                    }
                    int i14 = i13 | i7 | ((i3 & 112) == 32 ? 1 : 0);
                    if (fArr != null) {
                        objM6474boximpl2 = Matrix.m6474boximpl(fArr);
                    } else {
                        objM6474boximpl2 = null;
                    }
                    i8 = i14 | (composerStartRestartGroup.changedInstance(objM6474boximpl2) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i8 == 0 || objRememberedValue3 == companion.getEmpty()) {
                        j3 = jM9218getZeroYbymL2g;
                        final nl3<? super AndroidExternalSurfaceScope, j59> nl3Var5 = nl3Var2;
                        objRememberedValue3 = new nl3() { // from class: androidx.compose.foundation.b
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$2$0(j3, androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState, nl3Var5, z5, fArr, (TextureView) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        j3 = jM9218getZeroYbymL2g;
                    }
                    Modifier modifier5 = modifier4;
                    AndroidView_androidKt.AndroidView(nl3Var3, modifier5, nl3Var4, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i3 << 3) & 112) | 390, 8);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier5;
                    j2 = j3;
                    z4 = z5;
                    fArr2 = fArr;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                    }
                    modifier4 = modifier2;
                }
                z5 = z2;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(217541314, i3, -1, "androidx.compose.foundation.AndroidEmbeddedExternalSurface (AndroidExternalSurface.android.kt:432)");
                }
                androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState = rememberAndroidEmbeddedExternalSurfaceState(composerStartRestartGroup, 0);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new mi(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                nl3 nl3Var6 = (nl3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new ni(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                nl3 nl3Var7 = (nl3) objRememberedValue2;
                int i15 = (((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(jM9218getZeroYbymL2g)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1) | (composerStartRestartGroup.changedInstance(androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState) ? 1 : 0);
                if ((57344 & i3) == 16384) {
                    i7 = 1;
                } else {
                    i7 = 0;
                }
                int i16 = i15 | i7 | ((i3 & 112) == 32 ? 1 : 0);
                if (fArr != null) {
                    objM6474boximpl2 = Matrix.m6474boximpl(fArr);
                } else {
                    objM6474boximpl2 = null;
                }
                i8 = i16 | (composerStartRestartGroup.changedInstance(objM6474boximpl2) ? 1 : 0);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (i8 == 0) {
                    j3 = jM9218getZeroYbymL2g;
                    final nl3 nl3Var8 = nl3Var2;
                    objRememberedValue3 = new nl3() { // from class: androidx.compose.foundation.b
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$2$0(j3, androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState, nl3Var8, z5, fArr, (TextureView) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    j3 = jM9218getZeroYbymL2g;
                    final nl3 nl3Var9 = nl3Var2;
                    objRememberedValue3 = new nl3() { // from class: androidx.compose.foundation.b
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$2$0(j3, androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState, nl3Var9, z5, fArr, (TextureView) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifier6 = modifier4;
                AndroidView_androidKt.AndroidView(nl3Var6, modifier6, nl3Var7, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i3 << 3) & 112) | 390, 8);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier6;
                j2 = j3;
                z4 = z5;
                fArr2 = fArr;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                fArr2 = fArr;
                modifier3 = modifier2;
                z4 = z2;
                j2 = jM9218getZeroYbymL2g;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oi
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$3(modifier3, z4, j2, fArr2, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        z2 = z;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            jM9218getZeroYbymL2g = j;
            if ((i2 & 4) == 0) {
                i10 = 128;
            } else {
                i10 = 128;
            }
            i3 |= i10;
        } else {
            jM9218getZeroYbymL2g = j;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            if (fArr != null) {
                objM6474boximpl = Matrix.m6474boximpl(fArr);
            } else {
                objM6474boximpl = null;
            }
            if (composerStartRestartGroup.changedInstance(objM6474boximpl)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i3 |= i5;
        }
        if ((i & 24576) == 0) {
            nl3Var2 = nl3Var;
            if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                i9 = 16384;
            } else {
                i9 = 8192;
            }
            i3 |= i9;
        } else {
            nl3Var2 = nl3Var;
        }
        i6 = 0;
        if ((i3 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i11 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i12 != 0) {
                    z2 = true;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                }
                if (i4 != 0) {
                    z5 = z2;
                    fArr = null;
                } else {
                    z5 = z2;
                }
            } else {
                if (i11 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i12 != 0) {
                    z2 = true;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                }
                if (i4 != 0) {
                    z5 = z2;
                    fArr = null;
                } else {
                    z5 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(217541314, i3, -1, "androidx.compose.foundation.AndroidEmbeddedExternalSurface (AndroidExternalSurface.android.kt:432)");
            }
            androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState = rememberAndroidEmbeddedExternalSurfaceState(composerStartRestartGroup, 0);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new mi(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            nl3 nl3Var10 = (nl3) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new ni(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            nl3 nl3Var11 = (nl3) objRememberedValue2;
            int i17 = (((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 || !composerStartRestartGroup.changed(jM9218getZeroYbymL2g)) && (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) ? 0 : 1) | (composerStartRestartGroup.changedInstance(androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState) ? 1 : 0);
            if ((57344 & i3) == 16384) {
                i7 = 1;
            } else {
                i7 = 0;
            }
            int i18 = i17 | i7 | ((i3 & 112) == 32 ? 1 : 0);
            if (fArr != null) {
                objM6474boximpl2 = Matrix.m6474boximpl(fArr);
            } else {
                objM6474boximpl2 = null;
            }
            i8 = i18 | (composerStartRestartGroup.changedInstance(objM6474boximpl2) ? 1 : 0);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (i8 == 0) {
                j3 = jM9218getZeroYbymL2g;
                final nl3 nl3Var12 = nl3Var2;
                objRememberedValue3 = new nl3() { // from class: androidx.compose.foundation.b
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$2$0(j3, androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState, nl3Var12, z5, fArr, (TextureView) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                j3 = jM9218getZeroYbymL2g;
                final nl3 nl3Var13 = nl3Var2;
                objRememberedValue3 = new nl3() { // from class: androidx.compose.foundation.b
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$2$0(j3, androidEmbeddedExternalSurfaceStateRememberAndroidEmbeddedExternalSurfaceState, nl3Var13, z5, fArr, (TextureView) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifier7 = modifier4;
            AndroidView_androidKt.AndroidView(nl3Var10, modifier7, nl3Var11, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i3 << 3) & 112) | 390, 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier7;
            j2 = j3;
            z4 = z5;
            fArr2 = fArr;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            fArr2 = fArr;
            modifier3 = modifier2;
            z4 = z2;
            j2 = jM9218getZeroYbymL2g;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: oi
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidExternalSurface_androidKt.AndroidEmbeddedExternalSurface_sv6N_fY$lambda$3(modifier3, z4, j2, fArr2, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextureView AndroidEmbeddedExternalSurface_sv6N_fY$lambda$0$0(Context context) {
        return new TextureView(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AndroidEmbeddedExternalSurface_sv6N_fY$lambda$1$0(TextureView textureView) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AndroidEmbeddedExternalSurface_sv6N_fY$lambda$2$0(long j, AndroidEmbeddedExternalSurfaceState androidEmbeddedExternalSurfaceState, nl3 nl3Var, boolean z, float[] fArr, TextureView textureView) {
        android.graphics.Matrix matrix;
        SurfaceTexture surfaceTexture;
        if (!IntSize.m9211equalsimpl0(j, IntSize.Companion.m9218getZeroYbymL2g()) && (surfaceTexture = textureView.getSurfaceTexture()) != null) {
            surfaceTexture.setDefaultBufferSize((int) (j >> 32), (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j));
        }
        androidEmbeddedExternalSurfaceState.m1272setSurfaceSizeozmzZPI(j);
        if (textureView.getSurfaceTextureListener() != androidEmbeddedExternalSurfaceState) {
            nl3Var.invoke(androidEmbeddedExternalSurfaceState);
            textureView.setSurfaceTextureListener(androidEmbeddedExternalSurfaceState);
        }
        textureView.setOpaque(z);
        if (fArr != null) {
            matrix = androidEmbeddedExternalSurfaceState.getMatrix();
            AndroidMatrixConversions_androidKt.m6099setFromEL8BTi8(matrix, fArr);
        } else {
            matrix = null;
        }
        textureView.setTransform(matrix);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AndroidEmbeddedExternalSurface_sv6N_fY$lambda$3(Modifier modifier, boolean z, long j, float[] fArr, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        m1283AndroidEmbeddedExternalSurfacesv6N_fY(modifier, z, j, fArr, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012c  */
    /* JADX WARN: Code duplicated, block: B:102:0x0134  */
    /* JADX WARN: Code duplicated, block: B:105:0x014b  */
    /* JADX WARN: Code duplicated, block: B:108:0x015d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0163  */
    /* JADX WARN: Code duplicated, block: B:116:0x0171  */
    /* JADX WARN: Code duplicated, block: B:117:0x0174  */
    /* JADX WARN: Code duplicated, block: B:120:0x017c  */
    /* JADX WARN: Code duplicated, block: B:121:0x017f  */
    /* JADX WARN: Code duplicated, block: B:125:0x018a  */
    /* JADX WARN: Code duplicated, block: B:128:0x0194  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:135:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:137:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:140:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:142:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:38:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x0077  */
    /* JADX WARN: Code duplicated, block: B:47:0x007f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0084  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093  */
    /* JADX WARN: Code duplicated, block: B:58:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00de  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:93:0x0109  */
    /* JADX WARN: Code duplicated, block: B:96:0x011d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0120  */
    /* JADX INFO: renamed from: AndroidExternalSurface-58FFMhA, reason: not valid java name */
    public static final void m1284AndroidExternalSurface58FFMhA(Modifier modifier, boolean z, long j, int i, boolean z2, final nl3<? super AndroidExternalSurfaceScope, j59> nl3Var, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        boolean z3;
        long jM9218getZeroYbymL2g;
        int i5;
        int iM1280getBehindB_4ceCc;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        boolean z5;
        final Modifier modifier3;
        final boolean z6;
        final long j2;
        final boolean z7;
        final int i10;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        Modifier modifier5;
        final AndroidExternalSurfaceState androidExternalSurfaceStateRememberAndroidExternalSurfaceState;
        boolean z8;
        boolean zChangedInstance;
        Object objRememberedValue;
        Object objRememberedValue2;
        Composer.Companion companion;
        boolean z9;
        boolean z10;
        boolean z11;
        Object objRememberedValue3;
        boolean z12;
        boolean z13;
        int i11;
        long j3;
        int i12;
        int i13;
        Composer composerStartRestartGroup = composer.startRestartGroup(640888974);
        int i14 = i3 & 1;
        if (i14 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            i4 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        int i15 = i3 & 2;
        if (i15 == 0) {
            if ((i2 & 48) == 0) {
                z3 = z;
                i4 |= composerStartRestartGroup.changed(z3) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                jM9218getZeroYbymL2g = j;
                if ((i3 & 4) == 0 || !composerStartRestartGroup.changed(jM9218getZeroYbymL2g)) {
                    i13 = 128;
                } else {
                    i13 = 256;
                }
                i4 |= i13;
            } else {
                jM9218getZeroYbymL2g = j;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    iM1280getBehindB_4ceCc = i;
                    if (composerStartRestartGroup.changed(iM1280getBehindB_4ceCc)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((i2 & 24576) == 0) {
                        z4 = z2;
                        if (composerStartRestartGroup.changed(z4)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i4 |= i8;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i4 |= i12;
                    }
                    i9 = 0;
                    if ((i4 & 74899) != 74898) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i14 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i15 != 0) {
                                z3 = true;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                            }
                            if (i5 != 0) {
                                iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                            }
                            if (i7 != 0) {
                                z4 = false;
                            }
                            modifier5 = modifier4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                            }
                            modifier5 = modifier2;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                        }
                        androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                        if ((458752 & i4) == 131072) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        nl3 nl3Var2 = (nl3) objRememberedValue;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = new ji(i9);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        nl3 nl3Var3 = (nl3) objRememberedValue2;
                        boolean z14 = (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(jM9218getZeroYbymL2g)) || (i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
                        if ((i4 & 112) == 32) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        boolean z15 = z9 | z14;
                        if ((i4 & 7168) == 2048) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = z15 | z10 | ((57344 & i4) == 16384);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (!z11 || objRememberedValue3 == companion.getEmpty()) {
                            final boolean z16 = z3;
                            final long j4 = jM9218getZeroYbymL2g;
                            final boolean z17 = z4;
                            final int i16 = iM1280getBehindB_4ceCc;
                            objRememberedValue3 = new nl3() { // from class: ki
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j4, z16, i16, z17, (SurfaceView) obj);
                                }
                            };
                            z12 = z16;
                            z13 = z17;
                            i11 = i16;
                            j3 = j4;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            z12 = z3;
                            j3 = jM9218getZeroYbymL2g;
                            z13 = z4;
                            i11 = iM1280getBehindB_4ceCc;
                        }
                        AndroidView_androidKt.AndroidView(nl3Var2, modifier5, nl3Var3, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j2 = j3;
                        modifier3 = modifier5;
                        z7 = z13;
                        i10 = i11;
                        z6 = z12;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z6 = z3;
                        j2 = jM9218getZeroYbymL2g;
                        z7 = z4;
                        i10 = iM1280getBehindB_4ceCc;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                z4 = z2;
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                i9 = 0;
                if ((i4 & 74899) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i15 != 0) {
                            z3 = true;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                        }
                        if (i5 != 0) {
                            iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        modifier5 = modifier4;
                    } else {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i15 != 0) {
                            z3 = true;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                        }
                        if (i5 != 0) {
                            iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        modifier5 = modifier4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                    }
                    androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                    if ((458752 & i4) == 131072) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3 nl3Var4 = (nl3) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new ji(i9);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3 nl3Var5 = (nl3) objRememberedValue2;
                    if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                    }
                    if ((i4 & 112) == 32) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    boolean z18 = z9 | z14;
                    if ((i4 & 7168) == 2048) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z18 | z10 | ((57344 & i4) == 16384);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        final boolean z19 = z3;
                        final long j5 = jM9218getZeroYbymL2g;
                        final boolean z110 = z4;
                        final int i17 = iM1280getBehindB_4ceCc;
                        objRememberedValue3 = new nl3() { // from class: ki
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j5, z19, i17, z110, (SurfaceView) obj);
                            }
                        };
                        z12 = z19;
                        z13 = z110;
                        i11 = i17;
                        j3 = j5;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        final boolean z111 = z3;
                        final long j6 = jM9218getZeroYbymL2g;
                        final boolean z112 = z4;
                        final int i18 = iM1280getBehindB_4ceCc;
                        objRememberedValue3 = new nl3() { // from class: ki
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j6, z111, i18, z112, (SurfaceView) obj);
                            }
                        };
                        z12 = z111;
                        z13 = z112;
                        i11 = i18;
                        j3 = j6;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidView_androidKt.AndroidView(nl3Var4, modifier5, nl3Var5, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j3;
                    modifier3 = modifier5;
                    z7 = z13;
                    i10 = i11;
                    z6 = z12;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z3;
                    j2 = jM9218getZeroYbymL2g;
                    z7 = z4;
                    i10 = iM1280getBehindB_4ceCc;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            iM1280getBehindB_4ceCc = i;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                i9 = 0;
                if ((i4 & 74899) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i15 != 0) {
                            z3 = true;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                        }
                        if (i5 != 0) {
                            iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        modifier5 = modifier4;
                    } else {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i15 != 0) {
                            z3 = true;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                        }
                        if (i5 != 0) {
                            iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        modifier5 = modifier4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                    }
                    androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                    if ((458752 & i4) == 131072) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3 nl3Var6 = (nl3) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new ji(i9);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3 nl3Var7 = (nl3) objRememberedValue2;
                    if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                    }
                    if ((i4 & 112) == 32) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    boolean z113 = z9 | z14;
                    if ((i4 & 7168) == 2048) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z113 | z10 | ((57344 & i4) == 16384);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        final boolean z114 = z3;
                        final long j7 = jM9218getZeroYbymL2g;
                        final boolean z115 = z4;
                        final int i19 = iM1280getBehindB_4ceCc;
                        objRememberedValue3 = new nl3() { // from class: ki
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j7, z114, i19, z115, (SurfaceView) obj);
                            }
                        };
                        z12 = z114;
                        z13 = z115;
                        i11 = i19;
                        j3 = j7;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        final boolean z116 = z3;
                        final long j8 = jM9218getZeroYbymL2g;
                        final boolean z117 = z4;
                        final int i110 = iM1280getBehindB_4ceCc;
                        objRememberedValue3 = new nl3() { // from class: ki
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j8, z116, i110, z117, (SurfaceView) obj);
                            }
                        };
                        z12 = z116;
                        z13 = z117;
                        i11 = i110;
                        j3 = j8;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidView_androidKt.AndroidView(nl3Var6, modifier5, nl3Var7, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j3;
                    modifier3 = modifier5;
                    z7 = z13;
                    i10 = i11;
                    z6 = z12;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z3;
                    j2 = jM9218getZeroYbymL2g;
                    z7 = z4;
                    i10 = iM1280getBehindB_4ceCc;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z4 = z2;
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            i9 = 0;
            if ((i4 & 74899) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i15 != 0) {
                        z3 = true;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i5 != 0) {
                        iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    modifier5 = modifier4;
                } else {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i15 != 0) {
                        z3 = true;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i5 != 0) {
                        iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                }
                androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                if ((458752 & i4) == 131072) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                nl3 nl3Var8 = (nl3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new ji(i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                nl3 nl3Var9 = (nl3) objRememberedValue2;
                if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                }
                if ((i4 & 112) == 32) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                boolean z118 = z9 | z14;
                if ((i4 & 7168) == 2048) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z118 | z10 | ((57344 & i4) == 16384);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    final boolean z119 = z3;
                    final long j9 = jM9218getZeroYbymL2g;
                    final boolean z1110 = z4;
                    final int i111 = iM1280getBehindB_4ceCc;
                    objRememberedValue3 = new nl3() { // from class: ki
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j9, z119, i111, z1110, (SurfaceView) obj);
                        }
                    };
                    z12 = z119;
                    z13 = z1110;
                    i11 = i111;
                    j3 = j9;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    final boolean z1111 = z3;
                    final long j10 = jM9218getZeroYbymL2g;
                    final boolean z1112 = z4;
                    final int i112 = iM1280getBehindB_4ceCc;
                    objRememberedValue3 = new nl3() { // from class: ki
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j10, z1111, i112, z1112, (SurfaceView) obj);
                        }
                    };
                    z12 = z1111;
                    z13 = z1112;
                    i11 = i112;
                    j3 = j10;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                AndroidView_androidKt.AndroidView(nl3Var8, modifier5, nl3Var9, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j3;
                modifier3 = modifier5;
                z7 = z13;
                i10 = i11;
                z6 = z12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z3;
                j2 = jM9218getZeroYbymL2g;
                z7 = z4;
                i10 = iM1280getBehindB_4ceCc;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        z3 = z;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            jM9218getZeroYbymL2g = j;
            if ((i3 & 4) == 0) {
                i13 = 128;
            } else {
                i13 = 128;
            }
            i4 |= i13;
        } else {
            jM9218getZeroYbymL2g = j;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                iM1280getBehindB_4ceCc = i;
                if (composerStartRestartGroup.changed(iM1280getBehindB_4ceCc)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i4 |= i12;
                }
                i9 = 0;
                if ((i4 & 74899) != 74898) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i15 != 0) {
                            z3 = true;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                        }
                        if (i5 != 0) {
                            iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        modifier5 = modifier4;
                    } else {
                        if (i14 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i15 != 0) {
                            z3 = true;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                        }
                        if (i5 != 0) {
                            iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                        }
                        if (i7 != 0) {
                            z4 = false;
                        }
                        modifier5 = modifier4;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                    }
                    androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                    if ((458752 & i4) == 131072) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    nl3 nl3Var10 = (nl3) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new ji(i9);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    nl3 nl3Var11 = (nl3) objRememberedValue2;
                    if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                    }
                    if ((i4 & 112) == 32) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    boolean z1113 = z9 | z14;
                    if ((i4 & 7168) == 2048) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z1113 | z10 | ((57344 & i4) == 16384);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        final boolean z1114 = z3;
                        final long j11 = jM9218getZeroYbymL2g;
                        final boolean z1115 = z4;
                        final int i113 = iM1280getBehindB_4ceCc;
                        objRememberedValue3 = new nl3() { // from class: ki
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j11, z1114, i113, z1115, (SurfaceView) obj);
                            }
                        };
                        z12 = z1114;
                        z13 = z1115;
                        i11 = i113;
                        j3 = j11;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        final boolean z1116 = z3;
                        final long j12 = jM9218getZeroYbymL2g;
                        final boolean z1117 = z4;
                        final int i114 = iM1280getBehindB_4ceCc;
                        objRememberedValue3 = new nl3() { // from class: ki
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j12, z1116, i114, z1117, (SurfaceView) obj);
                            }
                        };
                        z12 = z1116;
                        z13 = z1117;
                        i11 = i114;
                        j3 = j12;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    AndroidView_androidKt.AndroidView(nl3Var10, modifier5, nl3Var11, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j3;
                    modifier3 = modifier5;
                    z7 = z13;
                    i10 = i11;
                    z6 = z12;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z6 = z3;
                    j2 = jM9218getZeroYbymL2g;
                    z7 = z4;
                    i10 = iM1280getBehindB_4ceCc;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z4 = z2;
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            i9 = 0;
            if ((i4 & 74899) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i15 != 0) {
                        z3 = true;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i5 != 0) {
                        iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    modifier5 = modifier4;
                } else {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i15 != 0) {
                        z3 = true;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i5 != 0) {
                        iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                }
                androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                if ((458752 & i4) == 131072) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                nl3 nl3Var12 = (nl3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new ji(i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                nl3 nl3Var13 = (nl3) objRememberedValue2;
                if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                }
                if ((i4 & 112) == 32) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                boolean z1118 = z9 | z14;
                if ((i4 & 7168) == 2048) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z1118 | z10 | ((57344 & i4) == 16384);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    final boolean z1119 = z3;
                    final long j13 = jM9218getZeroYbymL2g;
                    final boolean z11110 = z4;
                    final int i115 = iM1280getBehindB_4ceCc;
                    objRememberedValue3 = new nl3() { // from class: ki
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j13, z1119, i115, z11110, (SurfaceView) obj);
                        }
                    };
                    z12 = z1119;
                    z13 = z11110;
                    i11 = i115;
                    j3 = j13;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    final boolean z11111 = z3;
                    final long j14 = jM9218getZeroYbymL2g;
                    final boolean z11112 = z4;
                    final int i116 = iM1280getBehindB_4ceCc;
                    objRememberedValue3 = new nl3() { // from class: ki
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j14, z11111, i116, z11112, (SurfaceView) obj);
                        }
                    };
                    z12 = z11111;
                    z13 = z11112;
                    i11 = i116;
                    j3 = j14;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                AndroidView_androidKt.AndroidView(nl3Var12, modifier5, nl3Var13, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j3;
                modifier3 = modifier5;
                z7 = z13;
                i10 = i11;
                z6 = z12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z3;
                j2 = jM9218getZeroYbymL2g;
                z7 = z4;
                i10 = iM1280getBehindB_4ceCc;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        iM1280getBehindB_4ceCc = i;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i2 & 24576) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i4 |= i12;
            }
            i9 = 0;
            if ((i4 & 74899) != 74898) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i15 != 0) {
                        z3 = true;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i5 != 0) {
                        iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    modifier5 = modifier4;
                } else {
                    if (i14 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i15 != 0) {
                        z3 = true;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                    }
                    if (i5 != 0) {
                        iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                    }
                    if (i7 != 0) {
                        z4 = false;
                    }
                    modifier5 = modifier4;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
                }
                androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
                if ((458752 & i4) == 131072) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                nl3 nl3Var14 = (nl3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new ji(i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                nl3 nl3Var15 = (nl3) objRememberedValue2;
                if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                }
                if ((i4 & 112) == 32) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                boolean z11113 = z9 | z14;
                if ((i4 & 7168) == 2048) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z11113 | z10 | ((57344 & i4) == 16384);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    final boolean z11114 = z3;
                    final long j15 = jM9218getZeroYbymL2g;
                    final boolean z11115 = z4;
                    final int i117 = iM1280getBehindB_4ceCc;
                    objRememberedValue3 = new nl3() { // from class: ki
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j15, z11114, i117, z11115, (SurfaceView) obj);
                        }
                    };
                    z12 = z11114;
                    z13 = z11115;
                    i11 = i117;
                    j3 = j15;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    final boolean z11116 = z3;
                    final long j16 = jM9218getZeroYbymL2g;
                    final boolean z11117 = z4;
                    final int i118 = iM1280getBehindB_4ceCc;
                    objRememberedValue3 = new nl3() { // from class: ki
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j16, z11116, i118, z11117, (SurfaceView) obj);
                        }
                    };
                    z12 = z11116;
                    z13 = z11117;
                    i11 = i118;
                    j3 = j16;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                AndroidView_androidKt.AndroidView(nl3Var14, modifier5, nl3Var15, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j3;
                modifier3 = modifier5;
                z7 = z13;
                i10 = i11;
                z6 = z12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z6 = z3;
                j2 = jM9218getZeroYbymL2g;
                z7 = z4;
                i10 = iM1280getBehindB_4ceCc;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        z4 = z2;
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i4 |= i12;
        }
        i9 = 0;
        if ((i4 & 74899) != 74898) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i14 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i15 != 0) {
                    z3 = true;
                }
                if ((i3 & 4) != 0) {
                    i4 &= -897;
                    jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                }
                if (i5 != 0) {
                    iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                }
                if (i7 != 0) {
                    z4 = false;
                }
                modifier5 = modifier4;
            } else {
                if (i14 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i15 != 0) {
                    z3 = true;
                }
                if ((i3 & 4) != 0) {
                    i4 &= -897;
                    jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
                }
                if (i5 != 0) {
                    iM1280getBehindB_4ceCc = AndroidExternalSurfaceZOrder.Companion.m1280getBehindB_4ceCc();
                }
                if (i7 != 0) {
                    z4 = false;
                }
                modifier5 = modifier4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(640888974, i4, -1, "androidx.compose.foundation.AndroidExternalSurface (AndroidExternalSurface.android.kt:274)");
            }
            androidExternalSurfaceStateRememberAndroidExternalSurfaceState = rememberAndroidExternalSurfaceState(composerStartRestartGroup, 0);
            if ((458752 & i4) == 131072) {
                z8 = true;
            } else {
                z8 = false;
            }
            zChangedInstance = z8 | composerStartRestartGroup.changedInstance(androidExternalSurfaceStateRememberAndroidExternalSurfaceState);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new nl3() { // from class: androidx.compose.foundation.a
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$0$0(nl3Var, androidExternalSurfaceStateRememberAndroidExternalSurfaceState, (Context) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            nl3 nl3Var16 = (nl3) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new ji(i9);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            nl3 nl3Var17 = (nl3) objRememberedValue2;
            if (((i4 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
            }
            if ((i4 & 112) == 32) {
                z9 = true;
            } else {
                z9 = false;
            }
            boolean z11118 = z9 | z14;
            if ((i4 & 7168) == 2048) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = z11118 | z10 | ((57344 & i4) == 16384);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z11) {
                final boolean z11119 = z3;
                final long j17 = jM9218getZeroYbymL2g;
                final boolean z111110 = z4;
                final int i119 = iM1280getBehindB_4ceCc;
                objRememberedValue3 = new nl3() { // from class: ki
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j17, z11119, i119, z111110, (SurfaceView) obj);
                    }
                };
                z12 = z11119;
                z13 = z111110;
                i11 = i119;
                j3 = j17;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                final boolean z111111 = z3;
                final long j18 = jM9218getZeroYbymL2g;
                final boolean z111112 = z4;
                final int i1110 = iM1280getBehindB_4ceCc;
                objRememberedValue3 = new nl3() { // from class: ki
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$2$0(j18, z111111, i1110, z111112, (SurfaceView) obj);
                    }
                };
                z12 = z111111;
                z13 = z111112;
                i11 = i1110;
                j3 = j18;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            AndroidView_androidKt.AndroidView(nl3Var16, modifier5, nl3Var17, null, (nl3) objRememberedValue3, composerStartRestartGroup, ((i4 << 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK, 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j2 = j3;
            modifier3 = modifier5;
            z7 = z13;
            i10 = i11;
            z6 = z12;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            z6 = z3;
            j2 = jM9218getZeroYbymL2g;
            z7 = z4;
            i10 = iM1280getBehindB_4ceCc;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: li
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidExternalSurface_androidKt.AndroidExternalSurface_58FFMhA$lambda$3(modifier3, z6, j2, i10, z7, nl3Var, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SurfaceView AndroidExternalSurface_58FFMhA$lambda$0$0(nl3 nl3Var, AndroidExternalSurfaceState androidExternalSurfaceState, Context context) {
        SurfaceView surfaceView = new SurfaceView(context);
        nl3Var.invoke(androidExternalSurfaceState);
        surfaceView.getHolder().addCallback(androidExternalSurfaceState);
        return surfaceView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AndroidExternalSurface_58FFMhA$lambda$1$0(SurfaceView surfaceView) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AndroidExternalSurface_58FFMhA$lambda$2$0(long j, boolean z, int i, boolean z2, SurfaceView surfaceView) {
        if (IntSize.m9211equalsimpl0(j, IntSize.Companion.m9218getZeroYbymL2g())) {
            surfaceView.getHolder().setSizeFromLayout();
        } else {
            surfaceView.getHolder().setFixedSize((int) (j >> 32), (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        surfaceView.getHolder().setFormat(z ? -1 : -3);
        AndroidExternalSurfaceZOrder.Companion companion = AndroidExternalSurfaceZOrder.Companion;
        if (AndroidExternalSurfaceZOrder.m1276equalsimpl0(i, companion.m1280getBehindB_4ceCc())) {
            surfaceView.setZOrderOnTop(false);
        } else if (AndroidExternalSurfaceZOrder.m1276equalsimpl0(i, companion.m1281getMediaOverlayB_4ceCc())) {
            surfaceView.setZOrderMediaOverlay(true);
        } else if (AndroidExternalSurfaceZOrder.m1276equalsimpl0(i, companion.m1282getOnTopB_4ceCc())) {
            surfaceView.setZOrderOnTop(true);
        }
        surfaceView.setSecure(z2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AndroidExternalSurface_58FFMhA$lambda$3(Modifier modifier, boolean z, long j, int i, boolean z2, nl3 nl3Var, int i2, int i3, Composer composer, int i4) {
        m1284AndroidExternalSurface58FFMhA(modifier, z, j, i, z2, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    private static final AndroidEmbeddedExternalSurfaceState rememberAndroidEmbeddedExternalSurfaceState(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1057437053, i, -1, "androidx.compose.foundation.rememberAndroidEmbeddedExternalSurfaceState (AndroidExternalSurface.android.kt:370)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composer);
            composer.updateRememberedValue(objRememberedValue);
        }
        y22 y22Var = (y22) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new AndroidEmbeddedExternalSurfaceState(y22Var);
            composer.updateRememberedValue(objRememberedValue2);
        }
        AndroidEmbeddedExternalSurfaceState androidEmbeddedExternalSurfaceState = (AndroidEmbeddedExternalSurfaceState) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return androidEmbeddedExternalSurfaceState;
    }

    private static final AndroidExternalSurfaceState rememberAndroidExternalSurfaceState(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-873615933, i, -1, "androidx.compose.foundation.rememberAndroidExternalSurfaceState (AndroidExternalSurface.android.kt:187)");
        }
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composer);
            composer.updateRememberedValue(objRememberedValue);
        }
        y22 y22Var = (y22) objRememberedValue;
        Object objRememberedValue2 = composer.rememberedValue();
        if (objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new AndroidExternalSurfaceState(y22Var);
            composer.updateRememberedValue(objRememberedValue2);
        }
        AndroidExternalSurfaceState androidExternalSurfaceState = (AndroidExternalSurfaceState) objRememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return androidExternalSurfaceState;
    }
}
