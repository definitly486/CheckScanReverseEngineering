package androidx.navigationevent.compose;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.NavigationEventInfo;
import androidx.navigationevent.NavigationEventTransitionState;
import androidx.navigationevent.compose.NavigationEventHandlerKt;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e01;
import defpackage.j59;
import defpackage.jg;
import defpackage.kk5;
import defpackage.kr2;
import defpackage.lk5;
import defpackage.ll3;
import defpackage.lr2;
import defpackage.mi5;
import defpackage.nk5;
import defpackage.nl3;
import defpackage.pk5;
import defpackage.qk5;
import defpackage.re0;
import defpackage.vu1;

/* JADX INFO: loaded from: classes3.dex */
public final class NavigationEventHandlerKt {
    /* JADX WARN: Code duplicated, block: B:23:0x003f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044  */
    /* JADX WARN: Code duplicated, block: B:27:0x0048  */
    /* JADX WARN: Code duplicated, block: B:29:0x0050  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:45:0x007b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x007d  */
    /* JADX WARN: Code duplicated, block: B:47:0x007f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:70:0x0104  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    public static final void NavigationBackHandler(final NavigationEventState<? extends NavigationEventInfo> navigationEventState, boolean z, ll3<j59> ll3Var, final ll3<j59> ll3Var2, Composer composer, final int i, final int i2) {
        NavigationEventState<? extends NavigationEventInfo> navigationEventState2;
        int i3;
        boolean z2;
        int i4;
        ll3<j59> ll3Var3;
        int i5;
        int i6;
        int i7;
        boolean z3;
        final boolean z4;
        final ll3<j59> ll3Var4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        boolean z5;
        ll3<j59> ll3Var5;
        Object objRememberedValue;
        Composer.Companion companion;
        Object objRememberedValue2;
        Object objRememberedValue3;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(1220469155);
        int i9 = 2;
        if ((i & 6) == 0) {
            navigationEventState2 = navigationEventState;
            i3 = (composerStartRestartGroup.changed(navigationEventState2) ? 4 : 2) | i;
        } else {
            navigationEventState2 = navigationEventState;
            i3 = i;
        }
        int i10 = i2 & 2;
        if (i10 == 0) {
            if ((i & 48) == 0) {
                z2 = z;
                i3 |= composerStartRestartGroup.changed(z2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    ll3Var3 = ll3Var;
                    if (composerStartRestartGroup.changedInstance(ll3Var3)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i3 |= i8;
                }
                i6 = 0;
                i7 = 1;
                if ((i3 & 1171) != 1170) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i10 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                    if (i4 != 0) {
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new e01(i7);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        ll3Var5 = (ll3) objRememberedValue3;
                    } else {
                        ll3Var5 = ll3Var3;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1220469155, i3, -1, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new re0(i9);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    ll3 ll3Var6 = (ll3) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new nk5(i6);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    int i11 = i3 << 9;
                    ll3<j59> ll3Var7 = ll3Var5;
                    NavigationEventHandler(navigationEventState2, false, ll3Var6, (ll3) objRememberedValue2, z5, ll3Var7, ll3Var2, composerStartRestartGroup, (i3 & 14) | 3504 | (57344 & i11) | (458752 & i11) | (i11 & 3670016), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    ll3Var4 = ll3Var7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z4 = z2;
                    ll3Var4 = ll3Var3;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ok5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationEventHandlerKt.NavigationBackHandler$lambda$25(navigationEventState, z4, ll3Var4, ll3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            ll3Var3 = ll3Var;
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i3 |= i8;
            }
            i6 = 0;
            i7 = 1;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i10 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (i4 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new e01(i7);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3Var5 = (ll3) objRememberedValue3;
                } else {
                    ll3Var5 = ll3Var3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1220469155, i3, -1, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new re0(i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3 ll3Var8 = (ll3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new nk5(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                int i12 = i3 << 9;
                ll3<j59> ll3Var9 = ll3Var5;
                NavigationEventHandler(navigationEventState2, false, ll3Var8, (ll3) objRememberedValue2, z5, ll3Var9, ll3Var2, composerStartRestartGroup, (i3 & 14) | 3504 | (57344 & i12) | (458752 & i12) | (i12 & 3670016), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                ll3Var4 = ll3Var9;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z4 = z2;
                ll3Var4 = ll3Var3;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ok5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationEventHandlerKt.NavigationBackHandler$lambda$25(navigationEventState, z4, ll3Var4, ll3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        z2 = z;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                ll3Var3 = ll3Var;
                if (composerStartRestartGroup.changedInstance(ll3Var3)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i3 |= i8;
            }
            i6 = 0;
            i7 = 1;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i10 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (i4 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new e01(i7);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3Var5 = (ll3) objRememberedValue3;
                } else {
                    ll3Var5 = ll3Var3;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1220469155, i3, -1, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new re0(i9);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3 ll3Var10 = (ll3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new nk5(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                int i13 = i3 << 9;
                ll3<j59> ll3Var11 = ll3Var5;
                NavigationEventHandler(navigationEventState2, false, ll3Var10, (ll3) objRememberedValue2, z5, ll3Var11, ll3Var2, composerStartRestartGroup, (i3 & 14) | 3504 | (57344 & i13) | (458752 & i13) | (i13 & 3670016), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                ll3Var4 = ll3Var11;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z4 = z2;
                ll3Var4 = ll3Var3;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ok5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationEventHandlerKt.NavigationBackHandler$lambda$25(navigationEventState, z4, ll3Var4, ll3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        ll3Var3 = ll3Var;
        if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i3 |= i8;
        }
        i6 = 0;
        i7 = 1;
        if ((i3 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i10 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            if (i4 != 0) {
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new e01(i7);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                ll3Var5 = (ll3) objRememberedValue3;
            } else {
                ll3Var5 = ll3Var3;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1220469155, i3, -1, "androidx.navigationevent.compose.NavigationBackHandler (NavigationEventHandler.kt:152)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new re0(i9);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ll3 ll3Var12 = (ll3) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new nk5(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            int i14 = i3 << 9;
            ll3<j59> ll3Var13 = ll3Var5;
            NavigationEventHandler(navigationEventState2, false, ll3Var12, (ll3) objRememberedValue2, z5, ll3Var13, ll3Var2, composerStartRestartGroup, (i3 & 14) | 3504 | (57344 & i14) | (458752 & i14) | (i14 & 3670016), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z4 = z5;
            ll3Var4 = ll3Var13;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            z4 = z2;
            ll3Var4 = ll3Var3;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ok5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationEventHandlerKt.NavigationBackHandler$lambda$25(navigationEventState, z4, ll3Var4, ll3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationBackHandler$lambda$25(NavigationEventState navigationEventState, boolean z, ll3 ll3Var, ll3 ll3Var2, int i, int i2, Composer composer, int i3) {
        NavigationBackHandler(navigationEventState, z, ll3Var, ll3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x012c  */
    /* JADX WARN: Code duplicated, block: B:103:0x0137  */
    /* JADX WARN: Code duplicated, block: B:105:0x013a  */
    /* JADX WARN: Code duplicated, block: B:107:0x0146  */
    /* JADX WARN: Code duplicated, block: B:109:0x0152  */
    /* JADX WARN: Code duplicated, block: B:112:0x015a  */
    /* JADX WARN: Code duplicated, block: B:115:0x016a  */
    /* JADX WARN: Code duplicated, block: B:117:0x0170  */
    /* JADX WARN: Code duplicated, block: B:120:0x0179  */
    /* JADX WARN: Code duplicated, block: B:122:0x0185  */
    /* JADX WARN: Code duplicated, block: B:124:0x018e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0197  */
    /* JADX WARN: Code duplicated, block: B:127:0x0199  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:135:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:136:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:139:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:140:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:143:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:144:0x01db  */
    /* JADX WARN: Code duplicated, block: B:147:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:148:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:151:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:152:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:155:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:156:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:159:0x0202  */
    /* JADX WARN: Code duplicated, block: B:160:0x0204  */
    /* JADX WARN: Code duplicated, block: B:163:0x020c  */
    /* JADX WARN: Code duplicated, block: B:165:0x0214  */
    /* JADX WARN: Code duplicated, block: B:171:0x022e  */
    /* JADX WARN: Code duplicated, block: B:174:0x023f  */
    /* JADX WARN: Code duplicated, block: B:176:0x0247  */
    /* JADX WARN: Code duplicated, block: B:179:0x025a  */
    /* JADX WARN: Code duplicated, block: B:180:0x025e  */
    /* JADX WARN: Code duplicated, block: B:182:0x0264  */
    /* JADX WARN: Code duplicated, block: B:185:0x0275  */
    /* JADX WARN: Code duplicated, block: B:187:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0045  */
    /* JADX WARN: Code duplicated, block: B:29:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:34:0x0057  */
    /* JADX WARN: Code duplicated, block: B:36:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0060  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0072  */
    /* JADX WARN: Code duplicated, block: B:47:0x0077  */
    /* JADX WARN: Code duplicated, block: B:49:0x007b  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0086  */
    /* JADX WARN: Code duplicated, block: B:56:0x0090  */
    /* JADX WARN: Code duplicated, block: B:57:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x00de  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:87:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:91:0x010a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0117  */
    /* JADX WARN: Code duplicated, block: B:96:0x011b  */
    /* JADX WARN: Code duplicated, block: B:97:0x011d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0120  */
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
    public static final void NavigationEventHandler(NavigationEventState<? extends NavigationEventInfo> navigationEventState, boolean z, ll3<j59> ll3Var, ll3<j59> ll3Var2, boolean z2, ll3<j59> ll3Var3, ll3<j59> ll3Var4, Composer composer, final int i, final int i2) {
        int i3;
        boolean z3;
        int i4;
        int i5;
        int i6;
        ll3<j59> ll3Var5;
        int i7;
        int i8;
        boolean z4;
        int i9;
        int i10;
        ll3<j59> ll3Var6;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z5;
        final ll3<j59> ll3Var7;
        final boolean z6;
        final ll3<j59> ll3Var8;
        final boolean z7;
        final ll3<j59> ll3Var9;
        final ll3<j59> ll3Var10;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        final boolean z8;
        NavigationEventDispatcherOwner current;
        final NavigationEventDispatcher navigationEventDispatcher;
        int i15;
        boolean z9;
        Object objRememberedValue;
        final ComposeNavigationEventHandler composeNavigationEventHandler;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        Object objRememberedValue2;
        int i16;
        Object objRememberedValue3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2;
        Object objRememberedValue4;
        Object objRememberedValue5;
        Object objRememberedValue6;
        Object objRememberedValue7;
        final NavigationEventState<? extends NavigationEventInfo> navigationEventState2 = navigationEventState;
        Composer composerStartRestartGroup = composer.startRestartGroup(898330592);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(navigationEventState2) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i17 = i2 & 2;
        if (i17 == 0) {
            if ((i & 48) == 0) {
                z3 = z;
                i3 |= composerStartRestartGroup.changed(z3) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        ll3Var5 = ll3Var2;
                        if (composerStartRestartGroup.changedInstance(ll3Var5)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 16;
                    if (i8 != 0) {
                        if ((i & 24576) == 0) {
                            z4 = z2;
                            if (composerStartRestartGroup.changed(z4)) {
                                i9 = 16384;
                            } else {
                                i9 = 8192;
                            }
                            i3 |= i9;
                        }
                        i10 = i2 & 32;
                        if (i10 != 0) {
                            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                            ll3Var6 = ll3Var3;
                        } else {
                            ll3Var6 = ll3Var3;
                            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                                if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                                    i11 = 131072;
                                } else {
                                    i11 = 65536;
                                }
                                i3 |= i11;
                            }
                        }
                        i12 = i2 & 64;
                        if (i12 != 0) {
                            i3 |= 1572864;
                        } else if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                                i13 = 1048576;
                            } else {
                                i13 = 524288;
                            }
                            i3 |= i13;
                        }
                        i14 = 1;
                        if ((i3 & 599187) != 599186) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                            if (i17 != 0) {
                                z3 = true;
                            }
                            if (i4 != 0) {
                                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                                    objRememberedValue7 = new pk5(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                                }
                                ll3Var7 = (ll3) objRememberedValue7;
                            } else {
                                ll3Var7 = ll3Var;
                            }
                            if (i6 != 0) {
                                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                    objRememberedValue6 = new qk5(0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                                }
                                ll3Var9 = (ll3) objRememberedValue6;
                            } else {
                                ll3Var9 = ll3Var5;
                            }
                            z8 = z3;
                            if (i8 != 0) {
                                z7 = true;
                            } else {
                                z7 = z4;
                            }
                            if (i10 != 0) {
                                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                    objRememberedValue5 = new lr2(i14);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                                }
                                ll3Var8 = (ll3) objRememberedValue5;
                            } else {
                                ll3Var8 = ll3Var6;
                            }
                            if (i12 != 0) {
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                    objRememberedValue4 = new vu1(3);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                ll3Var10 = (ll3) objRememberedValue4;
                            } else {
                                ll3Var10 = ll3Var4;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                            }
                            if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                                if (scopeUpdateScopeEndRestartGroup2 != null) {
                                    scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                        @Override // defpackage.bm3
                                        public final Object invoke(Object obj, Object obj2) {
                                            int iIntValue = ((Integer) obj2).intValue();
                                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj, iIntValue);
                                        }
                                    });
                                    return;
                                }
                                return;
                            }
                            current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                            if (current != null) {
                                ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                                return;
                            }
                            navigationEventDispatcher = current.getNavigationEventDispatcher();
                            i15 = i3 & 14;
                            if (i15 == 4) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z9 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                            boolean zChangedInstance = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                            if ((i3 & 112) == 32) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            boolean z18 = zChangedInstance | z10;
                            if ((i3 & 896) == 256) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            boolean z19 = z18 | z11;
                            if ((i3 & 7168) == 2048) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            boolean z20 = z19 | z12;
                            if ((57344 & i3) == 16384) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            boolean z21 = z20 | z13;
                            if ((458752 & i3) == 131072) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            boolean z22 = z21 | z14;
                            if ((i3 & 3670016) == 1048576) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            boolean z23 = z15 | z22;
                            if (i15 == 4) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            z17 = z23 | z16;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (!z17 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                z6 = z8;
                                Object obj = new ll3() { // from class: androidx.navigationevent.compose.f
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                    }
                                };
                                navigationEventState2 = navigationEventState2;
                                composerStartRestartGroup.updateRememberedValue(obj);
                                objRememberedValue2 = obj;
                            } else {
                                z6 = z8;
                            }
                            EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                            i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (i16 == 0 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj2) {
                                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            ll3Var7 = ll3Var;
                            z6 = z3;
                            ll3Var8 = ll3Var6;
                            z7 = z4;
                            ll3Var9 = ll3Var5;
                            ll3Var10 = ll3Var4;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj2, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 24576;
                    z4 = z2;
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        ll3Var6 = ll3Var3;
                    } else {
                        ll3Var6 = ll3Var3;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 64;
                    if (i12 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i3 |= i13;
                    }
                    i14 = 1;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i17 != 0) {
                            z3 = true;
                        }
                        if (i4 != 0) {
                            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                                objRememberedValue7 = new pk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                            }
                            ll3Var7 = (ll3) objRememberedValue7;
                        } else {
                            ll3Var7 = ll3Var;
                        }
                        if (i6 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = new qk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            ll3Var9 = (ll3) objRememberedValue6;
                        } else {
                            ll3Var9 = ll3Var5;
                        }
                        z8 = z3;
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z4;
                        }
                        if (i10 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = new lr2(i14);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            ll3Var8 = (ll3) objRememberedValue5;
                        } else {
                            ll3Var8 = ll3Var6;
                        }
                        if (i12 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new vu1(3);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3Var10 = (ll3) objRememberedValue4;
                        } else {
                            ll3Var10 = ll3Var4;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                        }
                        if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup2 != null) {
                                scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj2, Object obj3) {
                                        int iIntValue = ((Integer) obj3).intValue();
                                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj2, iIntValue);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                        if (current != null) {
                            ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                            return;
                        }
                        navigationEventDispatcher = current.getNavigationEventDispatcher();
                        i15 = i3 & 14;
                        if (i15 == 4) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                        boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                        if ((i3 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        boolean z110 = zChangedInstance2 | z10;
                        if ((i3 & 896) == 256) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        boolean z111 = z110 | z11;
                        if ((i3 & 7168) == 2048) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        boolean z24 = z111 | z12;
                        if ((57344 & i3) == 16384) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        boolean z25 = z24 | z13;
                        if ((458752 & i3) == 131072) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        boolean z26 = z25 | z14;
                        if ((i3 & 3670016) == 1048576) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        boolean z27 = z15 | z26;
                        if (i15 == 4) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        z17 = z27 | z16;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z17) {
                            z6 = z8;
                            Object obj2 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj2);
                            objRememberedValue2 = obj2;
                        } else {
                            z6 = z8;
                            Object obj3 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj3);
                            objRememberedValue2 = obj3;
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                        i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (i16 == 0) {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj4) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj4);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj4) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj4);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        ll3Var7 = ll3Var;
                        z6 = z3;
                        ll3Var8 = ll3Var6;
                        z7 = z4;
                        ll3Var9 = ll3Var5;
                        ll3Var10 = ll3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj4, Object obj5) {
                                int iIntValue = ((Integer) obj5).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj4, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 3072;
                ll3Var5 = ll3Var2;
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        z4 = z2;
                        if (composerStartRestartGroup.changed(z4)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        ll3Var6 = ll3Var3;
                    } else {
                        ll3Var6 = ll3Var3;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 64;
                    if (i12 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i3 |= i13;
                    }
                    i14 = 1;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i17 != 0) {
                            z3 = true;
                        }
                        if (i4 != 0) {
                            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                                objRememberedValue7 = new pk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                            }
                            ll3Var7 = (ll3) objRememberedValue7;
                        } else {
                            ll3Var7 = ll3Var;
                        }
                        if (i6 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = new qk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            ll3Var9 = (ll3) objRememberedValue6;
                        } else {
                            ll3Var9 = ll3Var5;
                        }
                        z8 = z3;
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z4;
                        }
                        if (i10 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = new lr2(i14);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            ll3Var8 = (ll3) objRememberedValue5;
                        } else {
                            ll3Var8 = ll3Var6;
                        }
                        if (i12 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new vu1(3);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3Var10 = (ll3) objRememberedValue4;
                        } else {
                            ll3Var10 = ll3Var4;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                        }
                        if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup2 != null) {
                                scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj4, Object obj5) {
                                        int iIntValue = ((Integer) obj5).intValue();
                                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj4, iIntValue);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                        if (current != null) {
                            ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                            return;
                        }
                        navigationEventDispatcher = current.getNavigationEventDispatcher();
                        i15 = i3 & 14;
                        if (i15 == 4) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                        boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                        if ((i3 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        boolean z112 = zChangedInstance3 | z10;
                        if ((i3 & 896) == 256) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        boolean z113 = z112 | z11;
                        if ((i3 & 7168) == 2048) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        boolean z28 = z113 | z12;
                        if ((57344 & i3) == 16384) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        boolean z29 = z28 | z13;
                        if ((458752 & i3) == 131072) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        boolean z210 = z29 | z14;
                        if ((i3 & 3670016) == 1048576) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        boolean z211 = z15 | z210;
                        if (i15 == 4) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        z17 = z211 | z16;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z17) {
                            z6 = z8;
                            Object obj4 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj4);
                            objRememberedValue2 = obj4;
                        } else {
                            z6 = z8;
                            Object obj5 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj5);
                            objRememberedValue2 = obj5;
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                        i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (i16 == 0) {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj6) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj6);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj6) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj6);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        ll3Var7 = ll3Var;
                        z6 = z3;
                        ll3Var8 = ll3Var6;
                        z7 = z4;
                        ll3Var9 = ll3Var5;
                        ll3Var10 = ll3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj6, Object obj7) {
                                int iIntValue = ((Integer) obj7).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj6, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z4 = z2;
                i10 = i2 & 32;
                if (i10 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    ll3Var6 = ll3Var3;
                } else {
                    ll3Var6 = ll3Var3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = 1;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i17 != 0) {
                        z3 = true;
                    }
                    if (i4 != 0) {
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                            objRememberedValue7 = new pk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        ll3Var7 = (ll3) objRememberedValue7;
                    } else {
                        ll3Var7 = ll3Var;
                    }
                    if (i6 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = new qk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        ll3Var9 = (ll3) objRememberedValue6;
                    } else {
                        ll3Var9 = ll3Var5;
                    }
                    z8 = z3;
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z4;
                    }
                    if (i10 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = new lr2(i14);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        ll3Var8 = (ll3) objRememberedValue5;
                    } else {
                        ll3Var8 = ll3Var6;
                    }
                    if (i12 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new vu1(3);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3Var10 = (ll3) objRememberedValue4;
                    } else {
                        ll3Var10 = ll3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                    }
                    if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup2 != null) {
                            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj6, Object obj7) {
                                    int iIntValue = ((Integer) obj7).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj6, iIntValue);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                    if (current != null) {
                        ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                        return;
                    }
                    navigationEventDispatcher = current.getNavigationEventDispatcher();
                    i15 = i3 & 14;
                    if (i15 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                    boolean zChangedInstance4 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                    if ((i3 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z114 = zChangedInstance4 | z10;
                    if ((i3 & 896) == 256) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    boolean z115 = z114 | z11;
                    if ((i3 & 7168) == 2048) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    boolean z212 = z115 | z12;
                    if ((57344 & i3) == 16384) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean z213 = z212 | z13;
                    if ((458752 & i3) == 131072) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    boolean z214 = z213 | z14;
                    if ((i3 & 3670016) == 1048576) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    boolean z215 = z15 | z214;
                    if (i15 == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z17 = z215 | z16;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z17) {
                        z6 = z8;
                        Object obj6 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj6);
                        objRememberedValue2 = obj6;
                    } else {
                        z6 = z8;
                        Object obj7 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj7);
                        objRememberedValue2 = obj7;
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                    i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i16 == 0) {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj8) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj8);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj8) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj8);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var7 = ll3Var;
                    z6 = z3;
                    ll3Var8 = ll3Var6;
                    z7 = z4;
                    ll3Var9 = ll3Var5;
                    ll3Var10 = ll3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj8, Object obj9) {
                            int iIntValue = ((Integer) obj9).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj8, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    ll3Var5 = ll3Var2;
                    if (composerStartRestartGroup.changedInstance(ll3Var5)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        z4 = z2;
                        if (composerStartRestartGroup.changed(z4)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        ll3Var6 = ll3Var3;
                    } else {
                        ll3Var6 = ll3Var3;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 64;
                    if (i12 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i3 |= i13;
                    }
                    i14 = 1;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i17 != 0) {
                            z3 = true;
                        }
                        if (i4 != 0) {
                            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                                objRememberedValue7 = new pk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                            }
                            ll3Var7 = (ll3) objRememberedValue7;
                        } else {
                            ll3Var7 = ll3Var;
                        }
                        if (i6 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = new qk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            ll3Var9 = (ll3) objRememberedValue6;
                        } else {
                            ll3Var9 = ll3Var5;
                        }
                        z8 = z3;
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z4;
                        }
                        if (i10 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = new lr2(i14);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            ll3Var8 = (ll3) objRememberedValue5;
                        } else {
                            ll3Var8 = ll3Var6;
                        }
                        if (i12 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new vu1(3);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3Var10 = (ll3) objRememberedValue4;
                        } else {
                            ll3Var10 = ll3Var4;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                        }
                        if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup2 != null) {
                                scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj8, Object obj9) {
                                        int iIntValue = ((Integer) obj9).intValue();
                                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj8, iIntValue);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                        if (current != null) {
                            ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                            return;
                        }
                        navigationEventDispatcher = current.getNavigationEventDispatcher();
                        i15 = i3 & 14;
                        if (i15 == 4) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                        boolean zChangedInstance5 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                        if ((i3 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        boolean z116 = zChangedInstance5 | z10;
                        if ((i3 & 896) == 256) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        boolean z117 = z116 | z11;
                        if ((i3 & 7168) == 2048) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        boolean z216 = z117 | z12;
                        if ((57344 & i3) == 16384) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        boolean z217 = z216 | z13;
                        if ((458752 & i3) == 131072) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        boolean z218 = z217 | z14;
                        if ((i3 & 3670016) == 1048576) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        boolean z219 = z15 | z218;
                        if (i15 == 4) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        z17 = z219 | z16;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z17) {
                            z6 = z8;
                            Object obj8 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj8);
                            objRememberedValue2 = obj8;
                        } else {
                            z6 = z8;
                            Object obj9 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj9);
                            objRememberedValue2 = obj9;
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                        i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (i16 == 0) {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj10) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj10);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj10) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj10);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        ll3Var7 = ll3Var;
                        z6 = z3;
                        ll3Var8 = ll3Var6;
                        z7 = z4;
                        ll3Var9 = ll3Var5;
                        ll3Var10 = ll3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj10, Object obj11) {
                                int iIntValue = ((Integer) obj11).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj10, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z4 = z2;
                i10 = i2 & 32;
                if (i10 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    ll3Var6 = ll3Var3;
                } else {
                    ll3Var6 = ll3Var3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = 1;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i17 != 0) {
                        z3 = true;
                    }
                    if (i4 != 0) {
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                            objRememberedValue7 = new pk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        ll3Var7 = (ll3) objRememberedValue7;
                    } else {
                        ll3Var7 = ll3Var;
                    }
                    if (i6 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = new qk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        ll3Var9 = (ll3) objRememberedValue6;
                    } else {
                        ll3Var9 = ll3Var5;
                    }
                    z8 = z3;
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z4;
                    }
                    if (i10 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = new lr2(i14);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        ll3Var8 = (ll3) objRememberedValue5;
                    } else {
                        ll3Var8 = ll3Var6;
                    }
                    if (i12 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new vu1(3);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3Var10 = (ll3) objRememberedValue4;
                    } else {
                        ll3Var10 = ll3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                    }
                    if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup2 != null) {
                            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj10, Object obj11) {
                                    int iIntValue = ((Integer) obj11).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj10, iIntValue);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                    if (current != null) {
                        ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                        return;
                    }
                    navigationEventDispatcher = current.getNavigationEventDispatcher();
                    i15 = i3 & 14;
                    if (i15 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                    boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                    if ((i3 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z118 = zChangedInstance6 | z10;
                    if ((i3 & 896) == 256) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    boolean z119 = z118 | z11;
                    if ((i3 & 7168) == 2048) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    boolean z2110 = z119 | z12;
                    if ((57344 & i3) == 16384) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean z2111 = z2110 | z13;
                    if ((458752 & i3) == 131072) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    boolean z2112 = z2111 | z14;
                    if ((i3 & 3670016) == 1048576) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    boolean z2113 = z15 | z2112;
                    if (i15 == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z17 = z2113 | z16;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z17) {
                        z6 = z8;
                        Object obj10 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj10);
                        objRememberedValue2 = obj10;
                    } else {
                        z6 = z8;
                        Object obj11 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj11);
                        objRememberedValue2 = obj11;
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                    i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i16 == 0) {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj12) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj12);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj12) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj12);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var7 = ll3Var;
                    z6 = z3;
                    ll3Var8 = ll3Var6;
                    z7 = z4;
                    ll3Var9 = ll3Var5;
                    ll3Var10 = ll3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj12, Object obj13) {
                            int iIntValue = ((Integer) obj13).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj12, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            ll3Var5 = ll3Var2;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 32;
                if (i10 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    ll3Var6 = ll3Var3;
                } else {
                    ll3Var6 = ll3Var3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = 1;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i17 != 0) {
                        z3 = true;
                    }
                    if (i4 != 0) {
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                            objRememberedValue7 = new pk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        ll3Var7 = (ll3) objRememberedValue7;
                    } else {
                        ll3Var7 = ll3Var;
                    }
                    if (i6 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = new qk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        ll3Var9 = (ll3) objRememberedValue6;
                    } else {
                        ll3Var9 = ll3Var5;
                    }
                    z8 = z3;
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z4;
                    }
                    if (i10 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = new lr2(i14);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        ll3Var8 = (ll3) objRememberedValue5;
                    } else {
                        ll3Var8 = ll3Var6;
                    }
                    if (i12 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new vu1(3);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3Var10 = (ll3) objRememberedValue4;
                    } else {
                        ll3Var10 = ll3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                    }
                    if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup2 != null) {
                            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj12, Object obj13) {
                                    int iIntValue = ((Integer) obj13).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj12, iIntValue);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                    if (current != null) {
                        ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                        return;
                    }
                    navigationEventDispatcher = current.getNavigationEventDispatcher();
                    i15 = i3 & 14;
                    if (i15 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                    boolean zChangedInstance7 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                    if ((i3 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z1110 = zChangedInstance7 | z10;
                    if ((i3 & 896) == 256) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    boolean z1111 = z1110 | z11;
                    if ((i3 & 7168) == 2048) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    boolean z2114 = z1111 | z12;
                    if ((57344 & i3) == 16384) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean z2115 = z2114 | z13;
                    if ((458752 & i3) == 131072) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    boolean z2116 = z2115 | z14;
                    if ((i3 & 3670016) == 1048576) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    boolean z2117 = z15 | z2116;
                    if (i15 == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z17 = z2117 | z16;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z17) {
                        z6 = z8;
                        Object obj12 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj12);
                        objRememberedValue2 = obj12;
                    } else {
                        z6 = z8;
                        Object obj13 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj13);
                        objRememberedValue2 = obj13;
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                    i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i16 == 0) {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj14) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj14);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj14) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj14);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var7 = ll3Var;
                    z6 = z3;
                    ll3Var8 = ll3Var6;
                    z7 = z4;
                    ll3Var9 = ll3Var5;
                    ll3Var10 = ll3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj14, Object obj15) {
                            int iIntValue = ((Integer) obj15).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj14, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z4 = z2;
            i10 = i2 & 32;
            if (i10 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                ll3Var6 = ll3Var3;
            } else {
                ll3Var6 = ll3Var3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = 1;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i17 != 0) {
                    z3 = true;
                }
                if (i4 != 0) {
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                        objRememberedValue7 = new pk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    ll3Var7 = (ll3) objRememberedValue7;
                } else {
                    ll3Var7 = ll3Var;
                }
                if (i6 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = new qk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    ll3Var9 = (ll3) objRememberedValue6;
                } else {
                    ll3Var9 = ll3Var5;
                }
                z8 = z3;
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z4;
                }
                if (i10 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = new lr2(i14);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    ll3Var8 = (ll3) objRememberedValue5;
                } else {
                    ll3Var8 = ll3Var6;
                }
                if (i12 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new vu1(3);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3Var10 = (ll3) objRememberedValue4;
                } else {
                    ll3Var10 = ll3Var4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                }
                if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup2 != null) {
                        scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj14, Object obj15) {
                                int iIntValue = ((Integer) obj15).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj14, iIntValue);
                            }
                        });
                        return;
                    }
                    return;
                }
                current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                if (current != null) {
                    ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                    return;
                }
                navigationEventDispatcher = current.getNavigationEventDispatcher();
                i15 = i3 & 14;
                if (i15 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                boolean zChangedInstance8 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                if ((i3 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean z1112 = zChangedInstance8 | z10;
                if ((i3 & 896) == 256) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                boolean z1113 = z1112 | z11;
                if ((i3 & 7168) == 2048) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                boolean z2118 = z1113 | z12;
                if ((57344 & i3) == 16384) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean z2119 = z2118 | z13;
                if ((458752 & i3) == 131072) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                boolean z21110 = z2119 | z14;
                if ((i3 & 3670016) == 1048576) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                boolean z21111 = z15 | z21110;
                if (i15 == 4) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                z17 = z21111 | z16;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z17) {
                    z6 = z8;
                    Object obj14 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj14);
                    objRememberedValue2 = obj14;
                } else {
                    z6 = z8;
                    Object obj15 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj15);
                    objRememberedValue2 = obj15;
                }
                EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (i16 == 0) {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj16) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj16);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj16) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj16);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var7 = ll3Var;
                z6 = z3;
                ll3Var8 = ll3Var6;
                z7 = z4;
                ll3Var9 = ll3Var5;
                ll3Var10 = ll3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj16, Object obj17) {
                        int iIntValue = ((Integer) obj17).intValue();
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj16, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        z3 = z;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    ll3Var5 = ll3Var2;
                    if (composerStartRestartGroup.changedInstance(ll3Var5)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        z4 = z2;
                        if (composerStartRestartGroup.changed(z4)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 32;
                    if (i10 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        ll3Var6 = ll3Var3;
                    } else {
                        ll3Var6 = ll3Var3;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                                i11 = 131072;
                            } else {
                                i11 = 65536;
                            }
                            i3 |= i11;
                        }
                    }
                    i12 = i2 & 64;
                    if (i12 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i3 |= i13;
                    }
                    i14 = 1;
                    if ((i3 & 599187) != 599186) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                        if (i17 != 0) {
                            z3 = true;
                        }
                        if (i4 != 0) {
                            objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                                objRememberedValue7 = new pk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                            }
                            ll3Var7 = (ll3) objRememberedValue7;
                        } else {
                            ll3Var7 = ll3Var;
                        }
                        if (i6 != 0) {
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                                objRememberedValue6 = new qk5(0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            ll3Var9 = (ll3) objRememberedValue6;
                        } else {
                            ll3Var9 = ll3Var5;
                        }
                        z8 = z3;
                        if (i8 != 0) {
                            z7 = true;
                        } else {
                            z7 = z4;
                        }
                        if (i10 != 0) {
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = new lr2(i14);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            ll3Var8 = (ll3) objRememberedValue5;
                        } else {
                            ll3Var8 = ll3Var6;
                        }
                        if (i12 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new vu1(3);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            ll3Var10 = (ll3) objRememberedValue4;
                        } else {
                            ll3Var10 = ll3Var4;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                        }
                        if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup2 != null) {
                                scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj16, Object obj17) {
                                        int iIntValue = ((Integer) obj17).intValue();
                                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj16, iIntValue);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                        if (current != null) {
                            ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                            return;
                        }
                        navigationEventDispatcher = current.getNavigationEventDispatcher();
                        i15 = i3 & 14;
                        if (i15 == 4) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                        boolean zChangedInstance9 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                        if ((i3 & 112) == 32) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        boolean z1114 = zChangedInstance9 | z10;
                        if ((i3 & 896) == 256) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        boolean z1115 = z1114 | z11;
                        if ((i3 & 7168) == 2048) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        boolean z21112 = z1115 | z12;
                        if ((57344 & i3) == 16384) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        boolean z21113 = z21112 | z13;
                        if ((458752 & i3) == 131072) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        boolean z21114 = z21113 | z14;
                        if ((i3 & 3670016) == 1048576) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        boolean z21115 = z15 | z21114;
                        if (i15 == 4) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        z17 = z21115 | z16;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z17) {
                            z6 = z8;
                            Object obj16 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj16);
                            objRememberedValue2 = obj16;
                        } else {
                            z6 = z8;
                            Object obj17 = new ll3() { // from class: androidx.navigationevent.compose.f
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                                }
                            };
                            navigationEventState2 = navigationEventState2;
                            composerStartRestartGroup.updateRememberedValue(obj17);
                            objRememberedValue2 = obj17;
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                        i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (i16 == 0) {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj18) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj18);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj18) {
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj18);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        ll3Var7 = ll3Var;
                        z6 = z3;
                        ll3Var8 = ll3Var6;
                        z7 = z4;
                        ll3Var9 = ll3Var5;
                        ll3Var10 = ll3Var4;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj18, Object obj19) {
                                int iIntValue = ((Integer) obj19).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj18, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z4 = z2;
                i10 = i2 & 32;
                if (i10 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    ll3Var6 = ll3Var3;
                } else {
                    ll3Var6 = ll3Var3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = 1;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i17 != 0) {
                        z3 = true;
                    }
                    if (i4 != 0) {
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                            objRememberedValue7 = new pk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        ll3Var7 = (ll3) objRememberedValue7;
                    } else {
                        ll3Var7 = ll3Var;
                    }
                    if (i6 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = new qk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        ll3Var9 = (ll3) objRememberedValue6;
                    } else {
                        ll3Var9 = ll3Var5;
                    }
                    z8 = z3;
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z4;
                    }
                    if (i10 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = new lr2(i14);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        ll3Var8 = (ll3) objRememberedValue5;
                    } else {
                        ll3Var8 = ll3Var6;
                    }
                    if (i12 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new vu1(3);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3Var10 = (ll3) objRememberedValue4;
                    } else {
                        ll3Var10 = ll3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                    }
                    if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup2 != null) {
                            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj18, Object obj19) {
                                    int iIntValue = ((Integer) obj19).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj18, iIntValue);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                    if (current != null) {
                        ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                        return;
                    }
                    navigationEventDispatcher = current.getNavigationEventDispatcher();
                    i15 = i3 & 14;
                    if (i15 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                    boolean zChangedInstance10 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                    if ((i3 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z1116 = zChangedInstance10 | z10;
                    if ((i3 & 896) == 256) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    boolean z1117 = z1116 | z11;
                    if ((i3 & 7168) == 2048) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    boolean z21116 = z1117 | z12;
                    if ((57344 & i3) == 16384) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean z21117 = z21116 | z13;
                    if ((458752 & i3) == 131072) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    boolean z21118 = z21117 | z14;
                    if ((i3 & 3670016) == 1048576) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    boolean z21119 = z15 | z21118;
                    if (i15 == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z17 = z21119 | z16;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z17) {
                        z6 = z8;
                        Object obj18 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj18);
                        objRememberedValue2 = obj18;
                    } else {
                        z6 = z8;
                        Object obj19 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj19);
                        objRememberedValue2 = obj19;
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                    i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i16 == 0) {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj110) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj110);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj110) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj110);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var7 = ll3Var;
                    z6 = z3;
                    ll3Var8 = ll3Var6;
                    z7 = z4;
                    ll3Var9 = ll3Var5;
                    ll3Var10 = ll3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj110, Object obj111) {
                            int iIntValue = ((Integer) obj111).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj110, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            ll3Var5 = ll3Var2;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 32;
                if (i10 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    ll3Var6 = ll3Var3;
                } else {
                    ll3Var6 = ll3Var3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = 1;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i17 != 0) {
                        z3 = true;
                    }
                    if (i4 != 0) {
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                            objRememberedValue7 = new pk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        ll3Var7 = (ll3) objRememberedValue7;
                    } else {
                        ll3Var7 = ll3Var;
                    }
                    if (i6 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = new qk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        ll3Var9 = (ll3) objRememberedValue6;
                    } else {
                        ll3Var9 = ll3Var5;
                    }
                    z8 = z3;
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z4;
                    }
                    if (i10 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = new lr2(i14);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        ll3Var8 = (ll3) objRememberedValue5;
                    } else {
                        ll3Var8 = ll3Var6;
                    }
                    if (i12 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new vu1(3);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3Var10 = (ll3) objRememberedValue4;
                    } else {
                        ll3Var10 = ll3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                    }
                    if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup2 != null) {
                            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj110, Object obj111) {
                                    int iIntValue = ((Integer) obj111).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj110, iIntValue);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                    if (current != null) {
                        ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                        return;
                    }
                    navigationEventDispatcher = current.getNavigationEventDispatcher();
                    i15 = i3 & 14;
                    if (i15 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                    boolean zChangedInstance11 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                    if ((i3 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z1118 = zChangedInstance11 | z10;
                    if ((i3 & 896) == 256) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    boolean z1119 = z1118 | z11;
                    if ((i3 & 7168) == 2048) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    boolean z211110 = z1119 | z12;
                    if ((57344 & i3) == 16384) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean z211111 = z211110 | z13;
                    if ((458752 & i3) == 131072) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    boolean z211112 = z211111 | z14;
                    if ((i3 & 3670016) == 1048576) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    boolean z211113 = z15 | z211112;
                    if (i15 == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z17 = z211113 | z16;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z17) {
                        z6 = z8;
                        Object obj110 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj110);
                        objRememberedValue2 = obj110;
                    } else {
                        z6 = z8;
                        Object obj111 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj111);
                        objRememberedValue2 = obj111;
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                    i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i16 == 0) {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj112) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj112);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj112) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj112);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var7 = ll3Var;
                    z6 = z3;
                    ll3Var8 = ll3Var6;
                    z7 = z4;
                    ll3Var9 = ll3Var5;
                    ll3Var10 = ll3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj112, Object obj113) {
                            int iIntValue = ((Integer) obj113).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj112, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z4 = z2;
            i10 = i2 & 32;
            if (i10 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                ll3Var6 = ll3Var3;
            } else {
                ll3Var6 = ll3Var3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = 1;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i17 != 0) {
                    z3 = true;
                }
                if (i4 != 0) {
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                        objRememberedValue7 = new pk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    ll3Var7 = (ll3) objRememberedValue7;
                } else {
                    ll3Var7 = ll3Var;
                }
                if (i6 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = new qk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    ll3Var9 = (ll3) objRememberedValue6;
                } else {
                    ll3Var9 = ll3Var5;
                }
                z8 = z3;
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z4;
                }
                if (i10 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = new lr2(i14);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    ll3Var8 = (ll3) objRememberedValue5;
                } else {
                    ll3Var8 = ll3Var6;
                }
                if (i12 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new vu1(3);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3Var10 = (ll3) objRememberedValue4;
                } else {
                    ll3Var10 = ll3Var4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                }
                if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup2 != null) {
                        scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj112, Object obj113) {
                                int iIntValue = ((Integer) obj113).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj112, iIntValue);
                            }
                        });
                        return;
                    }
                    return;
                }
                current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                if (current != null) {
                    ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                    return;
                }
                navigationEventDispatcher = current.getNavigationEventDispatcher();
                i15 = i3 & 14;
                if (i15 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                boolean zChangedInstance12 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                if ((i3 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean z11110 = zChangedInstance12 | z10;
                if ((i3 & 896) == 256) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                boolean z11111 = z11110 | z11;
                if ((i3 & 7168) == 2048) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                boolean z211114 = z11111 | z12;
                if ((57344 & i3) == 16384) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean z211115 = z211114 | z13;
                if ((458752 & i3) == 131072) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                boolean z211116 = z211115 | z14;
                if ((i3 & 3670016) == 1048576) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                boolean z211117 = z15 | z211116;
                if (i15 == 4) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                z17 = z211117 | z16;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z17) {
                    z6 = z8;
                    Object obj112 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj112);
                    objRememberedValue2 = obj112;
                } else {
                    z6 = z8;
                    Object obj113 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj113);
                    objRememberedValue2 = obj113;
                }
                EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (i16 == 0) {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj114) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj114);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj114) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj114);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var7 = ll3Var;
                z6 = z3;
                ll3Var8 = ll3Var6;
                z7 = z4;
                ll3Var9 = ll3Var5;
                ll3Var10 = ll3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj114, Object obj115) {
                        int iIntValue = ((Integer) obj115).intValue();
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj114, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                ll3Var5 = ll3Var2;
                if (composerStartRestartGroup.changedInstance(ll3Var5)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    z4 = z2;
                    if (composerStartRestartGroup.changed(z4)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 32;
                if (i10 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    ll3Var6 = ll3Var3;
                } else {
                    ll3Var6 = ll3Var3;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i3 |= i11;
                    }
                }
                i12 = i2 & 64;
                if (i12 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                        i13 = 1048576;
                    } else {
                        i13 = 524288;
                    }
                    i3 |= i13;
                }
                i14 = 1;
                if ((i3 & 599187) != 599186) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                    if (i17 != 0) {
                        z3 = true;
                    }
                    if (i4 != 0) {
                        objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                            objRememberedValue7 = new pk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                        }
                        ll3Var7 = (ll3) objRememberedValue7;
                    } else {
                        ll3Var7 = ll3Var;
                    }
                    if (i6 != 0) {
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                            objRememberedValue6 = new qk5(0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        ll3Var9 = (ll3) objRememberedValue6;
                    } else {
                        ll3Var9 = ll3Var5;
                    }
                    z8 = z3;
                    if (i8 != 0) {
                        z7 = true;
                    } else {
                        z7 = z4;
                    }
                    if (i10 != 0) {
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                            objRememberedValue5 = new lr2(i14);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        ll3Var8 = (ll3) objRememberedValue5;
                    } else {
                        ll3Var8 = ll3Var6;
                    }
                    if (i12 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new vu1(3);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        ll3Var10 = (ll3) objRememberedValue4;
                    } else {
                        ll3Var10 = ll3Var4;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                    }
                    if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup2 != null) {
                            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj114, Object obj115) {
                                    int iIntValue = ((Integer) obj115).intValue();
                                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj114, iIntValue);
                                }
                            });
                            return;
                        }
                        return;
                    }
                    current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                    if (current != null) {
                        ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                        return;
                    }
                    navigationEventDispatcher = current.getNavigationEventDispatcher();
                    i15 = i3 & 14;
                    if (i15 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                    boolean zChangedInstance13 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                    if ((i3 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    boolean z11112 = zChangedInstance13 | z10;
                    if ((i3 & 896) == 256) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    boolean z11113 = z11112 | z11;
                    if ((i3 & 7168) == 2048) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    boolean z211118 = z11113 | z12;
                    if ((57344 & i3) == 16384) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    boolean z211119 = z211118 | z13;
                    if ((458752 & i3) == 131072) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    boolean z2111110 = z211119 | z14;
                    if ((i3 & 3670016) == 1048576) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    boolean z2111111 = z15 | z2111110;
                    if (i15 == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    z17 = z2111111 | z16;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z17) {
                        z6 = z8;
                        Object obj114 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj114);
                        objRememberedValue2 = obj114;
                    } else {
                        z6 = z8;
                        Object obj115 = new ll3() { // from class: androidx.navigationevent.compose.f
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                            }
                        };
                        navigationEventState2 = navigationEventState2;
                        composerStartRestartGroup.updateRememberedValue(obj115);
                        objRememberedValue2 = obj115;
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                    i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (i16 == 0) {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj116) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj116);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj116) {
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj116);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var7 = ll3Var;
                    z6 = z3;
                    ll3Var8 = ll3Var6;
                    z7 = z4;
                    ll3Var9 = ll3Var5;
                    ll3Var10 = ll3Var4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj116, Object obj117) {
                            int iIntValue = ((Integer) obj117).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj116, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z4 = z2;
            i10 = i2 & 32;
            if (i10 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                ll3Var6 = ll3Var3;
            } else {
                ll3Var6 = ll3Var3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = 1;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i17 != 0) {
                    z3 = true;
                }
                if (i4 != 0) {
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                        objRememberedValue7 = new pk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    ll3Var7 = (ll3) objRememberedValue7;
                } else {
                    ll3Var7 = ll3Var;
                }
                if (i6 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = new qk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    ll3Var9 = (ll3) objRememberedValue6;
                } else {
                    ll3Var9 = ll3Var5;
                }
                z8 = z3;
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z4;
                }
                if (i10 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = new lr2(i14);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    ll3Var8 = (ll3) objRememberedValue5;
                } else {
                    ll3Var8 = ll3Var6;
                }
                if (i12 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new vu1(3);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3Var10 = (ll3) objRememberedValue4;
                } else {
                    ll3Var10 = ll3Var4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                }
                if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup2 != null) {
                        scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj116, Object obj117) {
                                int iIntValue = ((Integer) obj117).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj116, iIntValue);
                            }
                        });
                        return;
                    }
                    return;
                }
                current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                if (current != null) {
                    ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                    return;
                }
                navigationEventDispatcher = current.getNavigationEventDispatcher();
                i15 = i3 & 14;
                if (i15 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                boolean zChangedInstance14 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                if ((i3 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean z11114 = zChangedInstance14 | z10;
                if ((i3 & 896) == 256) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                boolean z11115 = z11114 | z11;
                if ((i3 & 7168) == 2048) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                boolean z2111112 = z11115 | z12;
                if ((57344 & i3) == 16384) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean z2111113 = z2111112 | z13;
                if ((458752 & i3) == 131072) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                boolean z2111114 = z2111113 | z14;
                if ((i3 & 3670016) == 1048576) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                boolean z2111115 = z15 | z2111114;
                if (i15 == 4) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                z17 = z2111115 | z16;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z17) {
                    z6 = z8;
                    Object obj116 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj116);
                    objRememberedValue2 = obj116;
                } else {
                    z6 = z8;
                    Object obj117 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj117);
                    objRememberedValue2 = obj117;
                }
                EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (i16 == 0) {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj118) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj118);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj118) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj118);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var7 = ll3Var;
                z6 = z3;
                ll3Var8 = ll3Var6;
                z7 = z4;
                ll3Var9 = ll3Var5;
                ll3Var10 = ll3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj118, Object obj119) {
                        int iIntValue = ((Integer) obj119).intValue();
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj118, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        ll3Var5 = ll3Var2;
        i8 = i2 & 16;
        if (i8 != 0) {
            if ((i & 24576) == 0) {
                z4 = z2;
                if (composerStartRestartGroup.changed(z4)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            i10 = i2 & 32;
            if (i10 != 0) {
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                ll3Var6 = ll3Var3;
            } else {
                ll3Var6 = ll3Var3;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i3 |= i11;
                }
            }
            i12 = i2 & 64;
            if (i12 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                    i13 = 1048576;
                } else {
                    i13 = 524288;
                }
                i3 |= i13;
            }
            i14 = 1;
            if ((i3 & 599187) != 599186) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
                if (i17 != 0) {
                    z3 = true;
                }
                if (i4 != 0) {
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                        objRememberedValue7 = new pk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    ll3Var7 = (ll3) objRememberedValue7;
                } else {
                    ll3Var7 = ll3Var;
                }
                if (i6 != 0) {
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                        objRememberedValue6 = new qk5(0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    ll3Var9 = (ll3) objRememberedValue6;
                } else {
                    ll3Var9 = ll3Var5;
                }
                z8 = z3;
                if (i8 != 0) {
                    z7 = true;
                } else {
                    z7 = z4;
                }
                if (i10 != 0) {
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                        objRememberedValue5 = new lr2(i14);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    ll3Var8 = (ll3) objRememberedValue5;
                } else {
                    ll3Var8 = ll3Var6;
                }
                if (i12 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new vu1(3);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    ll3Var10 = (ll3) objRememberedValue4;
                } else {
                    ll3Var10 = ll3Var4;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
                }
                if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup2 != null) {
                        scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj118, Object obj119) {
                                int iIntValue = ((Integer) obj119).intValue();
                                return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj118, iIntValue);
                            }
                        });
                        return;
                    }
                    return;
                }
                current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
                if (current != null) {
                    ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                    return;
                }
                navigationEventDispatcher = current.getNavigationEventDispatcher();
                i15 = i3 & 14;
                if (i15 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
                boolean zChangedInstance15 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
                if ((i3 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean z11116 = zChangedInstance15 | z10;
                if ((i3 & 896) == 256) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                boolean z11117 = z11116 | z11;
                if ((i3 & 7168) == 2048) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                boolean z2111116 = z11117 | z12;
                if ((57344 & i3) == 16384) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean z2111117 = z2111116 | z13;
                if ((458752 & i3) == 131072) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                boolean z2111118 = z2111117 | z14;
                if ((i3 & 3670016) == 1048576) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                boolean z2111119 = z15 | z2111118;
                if (i15 == 4) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                z17 = z2111119 | z16;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z17) {
                    z6 = z8;
                    Object obj118 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj118);
                    objRememberedValue2 = obj118;
                } else {
                    z6 = z8;
                    Object obj119 = new ll3() { // from class: androidx.navigationevent.compose.f
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                        }
                    };
                    navigationEventState2 = navigationEventState2;
                    composerStartRestartGroup.updateRememberedValue(obj119);
                    objRememberedValue2 = obj119;
                }
                EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
                i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (i16 == 0) {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj1110) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj1110);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj1110) {
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj1110);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var7 = ll3Var;
                z6 = z3;
                ll3Var8 = ll3Var6;
                z7 = z4;
                ll3Var9 = ll3Var5;
                ll3Var10 = ll3Var4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj1110, Object obj1111) {
                        int iIntValue = ((Integer) obj1111).intValue();
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj1110, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z4 = z2;
        i10 = i2 & 32;
        if (i10 != 0) {
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            ll3Var6 = ll3Var3;
        } else {
            ll3Var6 = ll3Var3;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var6)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i3 |= i11;
            }
        }
        i12 = i2 & 64;
        if (i12 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(ll3Var4)) {
                i13 = 1048576;
            } else {
                i13 = 524288;
            }
            i3 |= i13;
        }
        i14 = 1;
        if ((i3 & 599187) != 599186) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i3 & 1)) {
            if (i17 != 0) {
                z3 = true;
            }
            if (i4 != 0) {
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                    objRememberedValue7 = new pk5(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                ll3Var7 = (ll3) objRememberedValue7;
            } else {
                ll3Var7 = ll3Var;
            }
            if (i6 != 0) {
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue6 == Composer.Companion.getEmpty()) {
                    objRememberedValue6 = new qk5(0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                ll3Var9 = (ll3) objRememberedValue6;
            } else {
                ll3Var9 = ll3Var5;
            }
            z8 = z3;
            if (i8 != 0) {
                z7 = true;
            } else {
                z7 = z4;
            }
            if (i10 != 0) {
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                    objRememberedValue5 = new lr2(i14);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                ll3Var8 = (ll3) objRememberedValue5;
            } else {
                ll3Var8 = ll3Var6;
            }
            if (i12 != 0) {
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new vu1(3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                ll3Var10 = (ll3) objRememberedValue4;
            } else {
                ll3Var10 = ll3Var4;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(898330592, i3, -1, "androidx.navigationevent.compose.NavigationEventHandler (NavigationEventHandler.kt:79)");
            }
            if (NavigationEventHandler_androidKt.isInspectionMode(composerStartRestartGroup, 0)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup2 != null) {
                    scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: ik5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj1110, Object obj1111) {
                            int iIntValue = ((Integer) obj1111).intValue();
                            return NavigationEventHandlerKt.NavigationEventHandler$lambda$8(navigationEventState2, z8, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj1110, iIntValue);
                        }
                    });
                    return;
                }
                return;
            }
            current = LocalNavigationEventDispatcherOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
            if (current != null) {
                ah.f("No NavigationEventDispatcher was provided via LocalNavigationEventDispatcherOwner");
                return;
            }
            navigationEventDispatcher = current.getNavigationEventDispatcher();
            i15 = i3 & 14;
            if (i15 == 4) {
                z9 = true;
            } else {
                z9 = false;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z9) {
                objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new ComposeNavigationEventHandler(navigationEventState2.getCurrentInfo(), new mi5(navigationEventState2, i14));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            composeNavigationEventHandler = (ComposeNavigationEventHandler) objRememberedValue;
            boolean zChangedInstance16 = composerStartRestartGroup.changedInstance(composeNavigationEventHandler);
            if ((i3 & 112) == 32) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11118 = zChangedInstance16 | z10;
            if ((i3 & 896) == 256) {
                z11 = true;
            } else {
                z11 = false;
            }
            boolean z11119 = z11118 | z11;
            if ((i3 & 7168) == 2048) {
                z12 = true;
            } else {
                z12 = false;
            }
            boolean z21111110 = z11119 | z12;
            if ((57344 & i3) == 16384) {
                z13 = true;
            } else {
                z13 = false;
            }
            boolean z21111111 = z21111110 | z13;
            if ((458752 & i3) == 131072) {
                z14 = true;
            } else {
                z14 = false;
            }
            boolean z21111112 = z21111111 | z14;
            if ((i3 & 3670016) == 1048576) {
                z15 = true;
            } else {
                z15 = false;
            }
            boolean z21111113 = z15 | z21111112;
            if (i15 == 4) {
                z16 = true;
            } else {
                z16 = false;
            }
            z17 = z21111113 | z16;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z17) {
                z6 = z8;
                Object obj1110 = new ll3() { // from class: androidx.navigationevent.compose.f
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                    }
                };
                navigationEventState2 = navigationEventState2;
                composerStartRestartGroup.updateRememberedValue(obj1110);
                objRememberedValue2 = obj1110;
            } else {
                z6 = z8;
                Object obj1111 = new ll3() { // from class: androidx.navigationevent.compose.f
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$13$lambda$12(composeNavigationEventHandler, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, navigationEventState2);
                    }
                };
                navigationEventState2 = navigationEventState2;
                composerStartRestartGroup.updateRememberedValue(obj1111);
                objRememberedValue2 = obj1111;
            }
            EffectsKt.SideEffect((ll3) objRememberedValue2, composerStartRestartGroup, 0);
            i16 = (composerStartRestartGroup.changedInstance(composeNavigationEventHandler) ? 1 : 0) | (i15 != 4 ? 0 : 1) | (composerStartRestartGroup.changedInstance(navigationEventDispatcher) ? 1 : 0);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (i16 == 0) {
                objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj1112) {
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj1112);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new nl3() { // from class: androidx.navigationevent.compose.g
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj1112) {
                        return NavigationEventHandlerKt.NavigationEventHandler$lambda$17$lambda$16(navigationEventState2, composeNavigationEventHandler, navigationEventDispatcher, (DisposableEffectScope) obj1112);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            EffectsKt.DisposableEffect(navigationEventState2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, i15);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            ll3Var7 = ll3Var;
            z6 = z3;
            ll3Var8 = ll3Var6;
            z7 = z4;
            ll3Var9 = ll3Var5;
            ll3Var10 = ll3Var4;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk5
                @Override // defpackage.bm3
                public final Object invoke(Object obj1112, Object obj1113) {
                    int iIntValue = ((Integer) obj1113).intValue();
                    return NavigationEventHandlerKt.NavigationEventHandler$lambda$18(navigationEventState2, z6, ll3Var7, ll3Var9, z7, ll3Var8, ll3Var10, i, i2, (Composer) obj1112, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationEventHandler$lambda$11$lambda$10(NavigationEventState navigationEventState, NavigationEventTransitionState navigationEventTransitionState) {
        navigationEventState.setTransitionState$navigationevent_compose(navigationEventTransitionState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationEventHandler$lambda$13$lambda$12(ComposeNavigationEventHandler composeNavigationEventHandler, boolean z, ll3 ll3Var, ll3 ll3Var2, boolean z2, ll3 ll3Var3, ll3 ll3Var4, NavigationEventState navigationEventState) {
        composeNavigationEventHandler.setForwardEnabled(z);
        composeNavigationEventHandler.setCurrentOnForwardCancelled(ll3Var);
        composeNavigationEventHandler.setCurrentOnForwardCompleted(ll3Var2);
        composeNavigationEventHandler.setBackEnabled(z2);
        composeNavigationEventHandler.setCurrentOnBackCancelled(ll3Var3);
        composeNavigationEventHandler.setCurrentOnBackCompleted(ll3Var4);
        composeNavigationEventHandler.setInfo(navigationEventState.getCurrentInfo(), navigationEventState.getBackInfo(), navigationEventState.getForwardInfo());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult NavigationEventHandler$lambda$17$lambda$16(final NavigationEventState navigationEventState, final ComposeNavigationEventHandler composeNavigationEventHandler, NavigationEventDispatcher navigationEventDispatcher, DisposableEffectScope disposableEffectScope) {
        if (navigationEventState.getSourceHandler$navigationevent_compose() != null) {
            jg.e("NavigationEventState '", navigationEventState, "' is already registered with a NavigationEventHandler '", composeNavigationEventHandler, "'.");
            return null;
        }
        navigationEventState.setSourceHandler$navigationevent_compose(composeNavigationEventHandler);
        NavigationEventDispatcher.addHandler$default(navigationEventDispatcher, composeNavigationEventHandler, 0, 2, null);
        return new DisposableEffectResult() { // from class: androidx.navigationevent.compose.NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                composeNavigationEventHandler.remove();
                navigationEventState.setSourceHandler$navigationevent_compose(null);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationEventHandler$lambda$18(NavigationEventState navigationEventState, boolean z, ll3 ll3Var, ll3 ll3Var2, boolean z2, ll3 ll3Var3, ll3 ll3Var4, int i, int i2, Composer composer, int i3) {
        NavigationEventHandler(navigationEventState, z, ll3Var, ll3Var2, z2, ll3Var3, ll3Var4, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationEventHandler$lambda$8(NavigationEventState navigationEventState, boolean z, ll3 ll3Var, ll3 ll3Var2, boolean z2, ll3 ll3Var3, ll3 ll3Var4, int i, int i2, Composer composer, int i3) {
        NavigationEventHandler(navigationEventState, z, ll3Var, ll3Var2, z2, ll3Var3, ll3Var4, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0047  */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x007a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x008d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:70:0x0101  */
    /* JADX WARN: Code duplicated, block: B:72:? A[RETURN, SYNTHETIC] */
    public static final void NavigationForwardHandler(final NavigationEventState<? extends NavigationEventInfo> navigationEventState, boolean z, ll3<j59> ll3Var, final ll3<j59> ll3Var2, Composer composer, final int i, final int i2) {
        NavigationEventState<? extends NavigationEventInfo> navigationEventState2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z3;
        final ll3<j59> ll3Var3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        boolean z5;
        ll3<j59> ll3Var4;
        Object objRememberedValue;
        Composer.Companion companion;
        Object objRememberedValue2;
        Object objRememberedValue3;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1737636087);
        if ((i & 6) == 0) {
            navigationEventState2 = navigationEventState;
            i3 = (composerStartRestartGroup.changed(navigationEventState2) ? 4 : 2) | i;
        } else {
            navigationEventState2 = navigationEventState;
            i3 = i;
        }
        int i9 = i2 & 2;
        if (i9 == 0) {
            if ((i & 48) == 0) {
                z2 = z;
                i3 |= composerStartRestartGroup.changed(z2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i3 |= i8;
                }
                i6 = 0;
                i7 = 1;
                if ((i3 & 1171) != 1170) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i9 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                    if (i4 != 0) {
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new kr2(i7);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        ll3Var4 = (ll3) objRememberedValue3;
                    } else {
                        ll3Var4 = ll3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1737636087, i3, -1, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new kk5(i6);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    ll3 ll3Var5 = (ll3) objRememberedValue;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = new lk5(i6);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    NavigationEventHandler(navigationEventState2, z5, ll3Var4, ll3Var2, false, ll3Var5, (ll3) objRememberedValue2, composerStartRestartGroup, (i3 & 14) | 1794048 | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z4 = z5;
                    ll3Var3 = ll3Var4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    ll3Var3 = ll3Var;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mk5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return NavigationEventHandlerKt.NavigationForwardHandler$lambda$32(navigationEventState, z4, ll3Var3, ll3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i3 |= i8;
            }
            i6 = 0;
            i7 = 1;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (i4 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new kr2(i7);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3Var4 = (ll3) objRememberedValue3;
                } else {
                    ll3Var4 = ll3Var;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1737636087, i3, -1, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new kk5(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3 ll3Var6 = (ll3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new lk5(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                NavigationEventHandler(navigationEventState2, z5, ll3Var4, ll3Var2, false, ll3Var6, (ll3) objRememberedValue2, composerStartRestartGroup, (i3 & 14) | 1794048 | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                ll3Var3 = ll3Var4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var3 = ll3Var;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mk5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationEventHandlerKt.NavigationForwardHandler$lambda$32(navigationEventState, z4, ll3Var3, ll3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        z2 = z;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                    i8 = 2048;
                } else {
                    i8 = 1024;
                }
                i3 |= i8;
            }
            i6 = 0;
            i7 = 1;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i9 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (i4 != 0) {
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                        objRememberedValue3 = new kr2(i7);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3Var4 = (ll3) objRememberedValue3;
                } else {
                    ll3Var4 = ll3Var;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1737636087, i3, -1, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = new kk5(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ll3 ll3Var7 = (ll3) objRememberedValue;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new lk5(i6);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                NavigationEventHandler(navigationEventState2, z5, ll3Var4, ll3Var2, false, ll3Var7, (ll3) objRememberedValue2, composerStartRestartGroup, (i3 & 14) | 1794048 | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z4 = z5;
                ll3Var3 = ll3Var4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                ll3Var3 = ll3Var;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mk5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return NavigationEventHandlerKt.NavigationForwardHandler$lambda$32(navigationEventState, z4, ll3Var3, ll3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(ll3Var2)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i3 |= i8;
        }
        i6 = 0;
        i7 = 1;
        if ((i3 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i9 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            if (i4 != 0) {
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new kr2(i7);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                ll3Var4 = (ll3) objRememberedValue3;
            } else {
                ll3Var4 = ll3Var;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1737636087, i3, -1, "androidx.navigationevent.compose.NavigationForwardHandler (NavigationEventHandler.kt:187)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new kk5(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ll3 ll3Var8 = (ll3) objRememberedValue;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new lk5(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            NavigationEventHandler(navigationEventState2, z5, ll3Var4, ll3Var2, false, ll3Var8, (ll3) objRememberedValue2, composerStartRestartGroup, (i3 & 14) | 1794048 | (i3 & 112) | (i3 & 896) | (i3 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z4 = z5;
            ll3Var3 = ll3Var4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            ll3Var3 = ll3Var;
            z4 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mk5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationEventHandlerKt.NavigationForwardHandler$lambda$32(navigationEventState, z4, ll3Var3, ll3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationForwardHandler$lambda$32(NavigationEventState navigationEventState, boolean z, ll3 ll3Var, ll3 ll3Var2, int i, int i2, Composer composer, int i3) {
        NavigationForwardHandler(navigationEventState, z, ll3Var, ll3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}
