package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.gm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.ul2;
import defpackage.uo3;
import defpackage.vo3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridDslKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$3, reason: invalid class name */
    public static final class AnonymousClass3 implements bm3<LazyGridItemSpanScope, Integer, GridItemSpan> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ bm3<LazyGridItemSpanScope, T, GridItemSpan> $span;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(bm3<? super LazyGridItemSpanScope, ? super T, GridItemSpan> bm3Var, List<? extends T> list) {
            this.$span = bm3Var;
            this.$items = list;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
            return GridItemSpan.m2171boximpl(m2180invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /* JADX INFO: renamed from: invoke-_-orMbw, reason: not valid java name */
        public final long m2180invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
            return this.$span.invoke(lazyGridItemSpanScope, (T) this.$items.get(i)).m2178unboximpl();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$8, reason: invalid class name */
    public static final class AnonymousClass8 implements bm3<LazyGridItemSpanScope, Integer, GridItemSpan> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ bm3<LazyGridItemSpanScope, T, GridItemSpan> $span;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass8(bm3<? super LazyGridItemSpanScope, ? super T, GridItemSpan> bm3Var, T[] tArr) {
            this.$span = bm3Var;
            this.$items = tArr;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
            return GridItemSpan.m2171boximpl(m2181invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
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
        /* JADX INFO: renamed from: invoke-_-orMbw, reason: not valid java name */
        public final long m2181invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
            return this.$span.invoke(lazyGridItemSpanScope, this.$items[i]).m2178unboximpl();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$3, reason: invalid class name and case insensitive filesystem */
    public static final class C05333 implements bm3<LazyGridItemSpanScope, Integer, GridItemSpan> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ dm3<LazyGridItemSpanScope, Integer, T, GridItemSpan> $span;

        /* JADX WARN: Multi-variable type inference failed */
        public C05333(dm3<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> dm3Var, List<? extends T> list) {
            this.$span = dm3Var;
            this.$items = list;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
            return GridItemSpan.m2171boximpl(m2182invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /* JADX INFO: renamed from: invoke-_-orMbw, reason: not valid java name */
        public final long m2182invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
            return this.$span.invoke(lazyGridItemSpanScope, Integer.valueOf(i), (T) this.$items.get(i)).m2178unboximpl();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$8, reason: invalid class name and case insensitive filesystem */
    public static final class C05388 implements bm3<LazyGridItemSpanScope, Integer, GridItemSpan> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ dm3<LazyGridItemSpanScope, Integer, T, GridItemSpan> $span;

        /* JADX WARN: Multi-variable type inference failed */
        public C05388(dm3<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> dm3Var, T[] tArr) {
            this.$span = dm3Var;
            this.$items = tArr;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
            return GridItemSpan.m2171boximpl(m2183invoke_orMbw(lazyGridItemSpanScope, num.intValue()));
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
        /* JADX INFO: renamed from: invoke-_-orMbw, reason: not valid java name */
        public final long m2183invoke_orMbw(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
            return this.$span.invoke(lazyGridItemSpanScope, Integer.valueOf(i), this.$items[i]).m2178unboximpl();
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x010f  */
    /* JADX WARN: Code duplicated, block: B:103:0x011a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:106:0x0121  */
    /* JADX WARN: Code duplicated, block: B:109:0x0129  */
    /* JADX WARN: Code duplicated, block: B:111:0x012f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0132  */
    /* JADX WARN: Code duplicated, block: B:114:0x0139  */
    /* JADX WARN: Code duplicated, block: B:117:0x014a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0152  */
    /* JADX WARN: Code duplicated, block: B:124:0x015c  */
    /* JADX WARN: Code duplicated, block: B:126:0x016d  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:143:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:144:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:156:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:158:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:159:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:161:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:163:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:167:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:168:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:174:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:176:0x0218  */
    /* JADX WARN: Code duplicated, block: B:179:0x0227  */
    /* JADX WARN: Code duplicated, block: B:182:0x0274  */
    /* JADX WARN: Code duplicated, block: B:184:0x0287  */
    /* JADX WARN: Code duplicated, block: B:187:0x029f  */
    /* JADX WARN: Code duplicated, block: B:189:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0042  */
    /* JADX WARN: Code duplicated, block: B:27:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:36:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x007d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x0091  */
    /* JADX WARN: Code duplicated, block: B:58:0x0097  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00de A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:94:0x0101  */
    /* JADX WARN: Code duplicated, block: B:98:0x010b  */
    public static final void LazyHorizontalGrid(final GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, final nl3<? super LazyGridScope, j59> nl3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        LazyGridState lazyGridState2;
        int i5;
        PaddingValues paddingValues2;
        int i6;
        int i7;
        boolean z3;
        int i8;
        int i9;
        Arrangement.Vertical vertical2;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z4;
        Composer composer2;
        final Arrangement.Horizontal horizontal2;
        final FlingBehavior flingBehavior2;
        final OverscrollEffect overscrollEffect2;
        final LazyGridState lazyGridState3;
        final PaddingValues paddingValues3;
        final boolean z5;
        final boolean z6;
        final Modifier modifier3;
        final Arrangement.Vertical vertical3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        LazyGridState lazyGridStateRememberLazyGridState;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        Arrangement.Horizontal end;
        Arrangement.Vertical top;
        FlingBehavior flingBehavior3;
        Arrangement.Vertical vertical4;
        OverscrollEffect overscrollEffectRememberOverscrollEffect;
        boolean z7;
        boolean z8;
        PaddingValues paddingValues4;
        Arrangement.Horizontal horizontal3;
        FlingBehavior flingBehavior4;
        LazyGridState lazyGridState4;
        int i14;
        Arrangement arrangement;
        int i15;
        int i16;
        Composer composerStartRestartGroup = composer.startRestartGroup(635941664);
        if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(gridCells) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        int i17 = i3 & 2;
        if (i17 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    lazyGridState2 = lazyGridState;
                    int i18 = composerStartRestartGroup.changed(lazyGridState2) ? 256 : 128;
                    i4 |= i18;
                } else {
                    lazyGridState2 = lazyGridState;
                }
                i4 |= i18;
            } else {
                lazyGridState2 = lazyGridState;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerStartRestartGroup.changed(paddingValues2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        z3 = z;
                        if (composerStartRestartGroup.changed(z3)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i4 |= i8;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(horizontal)) {
                            i16 = 65536;
                        } else {
                            i16 = 131072;
                        }
                        i4 |= i16;
                    }
                    i9 = i3 & 64;
                    if (i9 != 0) {
                        if ((i & 1572864) == 0) {
                            vertical2 = vertical;
                            if (composerStartRestartGroup.changed(vertical2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i4 |= i10;
                        }
                        if ((i & 12582912) != 0) {
                            i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                        }
                        i11 = i3 & 256;
                        if (i11 != 0) {
                            i4 |= 100663296;
                        } else if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i12 = 67108864;
                            } else {
                                i12 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i4 |= i12;
                        }
                        if ((i & 805306368) != 0) {
                            i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                        }
                        if ((i2 & 6) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i15 = 4;
                            } else {
                                i15 = 2;
                            }
                            i13 = i2 | i15;
                        } else {
                            i13 = i2;
                        }
                        if ((i4 & 306783379) == 306783378 || (i13 & 3) != 2) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i17 != 0) {
                                    modifier4 = Modifier.Companion;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if ((i3 & 4) != 0) {
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                    i4 &= -897;
                                } else {
                                    lazyGridStateRememberLazyGridState = lazyGridState2;
                                }
                                if (i5 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                } else {
                                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                }
                                if (i7 != 0) {
                                    z3 = false;
                                }
                                if ((i3 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getEnd();
                                    } else {
                                        end = arrangement.getStart();
                                    }
                                    i4 &= -458753;
                                } else {
                                    end = horizontal;
                                }
                                if (i9 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                } else {
                                    top = vertical2;
                                }
                                if ((i3 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i4 &= -29360129;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                boolean z9 = i11 == 0 ? z2 : true;
                                if ((i3 & 512) != 0) {
                                    i4 &= -1879048193;
                                    vertical4 = top;
                                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                                } else {
                                    vertical4 = top;
                                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                }
                                z7 = z3;
                                z8 = z9;
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                horizontal3 = end;
                                flingBehavior4 = flingBehavior3;
                                lazyGridState4 = lazyGridStateRememberLazyGridState;
                                i14 = 635941664;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 4) != 0) {
                                    i4 &= -897;
                                }
                                if ((i3 & 32) != 0) {
                                    i4 &= -458753;
                                }
                                if ((i3 & 128) != 0) {
                                    i4 &= -29360129;
                                }
                                if ((i3 & 512) != 0) {
                                    i4 &= -1879048193;
                                }
                                horizontal3 = horizontal;
                                z8 = z2;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                modifier4 = modifier2;
                                vertical4 = vertical2;
                                i14 = 635941664;
                                flingBehavior4 = flingBehavior;
                                z7 = z3;
                                paddingValues4 = paddingValues2;
                                lazyGridState4 = lazyGridState2;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                            }
                            int i19 = i4 >> 15;
                            int i20 = i4 >> 3;
                            Arrangement.Vertical vertical5 = vertical4;
                            composer2 = composerStartRestartGroup;
                            LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i19 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical5, horizontal3, nl3Var, composer2, 196608 | (i20 & 14) | (i20 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i20) | (29360128 & i20) | (i20 & 234881024) | ((i4 << 9) & 1879048192), (i19 & 14) | ((i13 << 3) & 112), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            LazyGridState lazyGridState5 = lazyGridState4;
                            modifier3 = modifier4;
                            lazyGridState3 = lazyGridState5;
                            paddingValues3 = paddingValues4;
                            z5 = z7;
                            flingBehavior2 = flingBehavior4;
                            z6 = z8;
                            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                            vertical3 = vertical5;
                            horizontal2 = horizontal3;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            horizontal2 = horizontal;
                            flingBehavior2 = flingBehavior;
                            overscrollEffect2 = overscrollEffect;
                            lazyGridState3 = lazyGridState2;
                            paddingValues3 = paddingValues2;
                            z5 = z3;
                            z6 = z2;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 1572864;
                    vertical2 = vertical;
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                        }
                        int i110 = i4 >> 15;
                        int i21 = i4 >> 3;
                        Arrangement.Vertical vertical6 = vertical4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i110 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical6, horizontal3, nl3Var, composer2, 196608 | (i21 & 14) | (i21 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i21) | (29360128 & i21) | (i21 & 234881024) | ((i4 << 9) & 1879048192), (i110 & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState6 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState6;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical6;
                        horizontal2 = horizontal3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal2 = horizontal;
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                z3 = z;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32) == 0) {
                        i16 = 65536;
                    } else {
                        i16 = 65536;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((i & 1572864) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                        }
                        int i111 = i4 >> 15;
                        int i22 = i4 >> 3;
                        Arrangement.Vertical vertical7 = vertical4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i111 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical7, horizontal3, nl3Var, composer2, 196608 | (i22 & 14) | (i22 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i22) | (29360128 & i22) | (i22 & 234881024) | ((i4 << 9) & 1879048192), (i111 & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState7 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState7;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical7;
                        horizontal2 = horizontal3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal2 = horizontal;
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                vertical2 = vertical;
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                    }
                    int i112 = i4 >> 15;
                    int i23 = i4 >> 3;
                    Arrangement.Vertical vertical8 = vertical4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i112 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical8, horizontal3, nl3Var, composer2, 196608 | (i23 & 14) | (i23 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i23) | (29360128 & i23) | (i23 & 234881024) | ((i4 << 9) & 1879048192), (i112 & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState8 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState8;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical8;
                    horizontal2 = horizontal3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal2 = horizontal;
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            paddingValues2 = paddingValues;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32) == 0) {
                        i16 = 65536;
                    } else {
                        i16 = 65536;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((i & 1572864) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                        }
                        int i113 = i4 >> 15;
                        int i24 = i4 >> 3;
                        Arrangement.Vertical vertical9 = vertical4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i113 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical9, horizontal3, nl3Var, composer2, 196608 | (i24 & 14) | (i24 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i24) | (29360128 & i24) | (i24 & 234881024) | ((i4 << 9) & 1879048192), (i113 & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState9 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState9;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical9;
                        horizontal2 = horizontal3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal2 = horizontal;
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                vertical2 = vertical;
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                    }
                    int i114 = i4 >> 15;
                    int i25 = i4 >> 3;
                    Arrangement.Vertical vertical10 = vertical4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i114 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical10, horizontal3, nl3Var, composer2, 196608 | (i25 & 14) | (i25 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i25) | (29360128 & i25) | (i25 & 234881024) | ((i4 << 9) & 1879048192), (i114 & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState10 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState10;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical10;
                    horizontal2 = horizontal3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal2 = horizontal;
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z3 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0) {
                    i16 = 65536;
                } else {
                    i16 = 65536;
                }
                i4 |= i16;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((i & 1572864) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                    }
                    int i115 = i4 >> 15;
                    int i26 = i4 >> 3;
                    Arrangement.Vertical vertical11 = vertical4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i115 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical11, horizontal3, nl3Var, composer2, 196608 | (i26 & 14) | (i26 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i26) | (29360128 & i26) | (i26 & 234881024) | ((i4 << 9) & 1879048192), (i115 & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState11 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState11;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical11;
                    horizontal2 = horizontal3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal2 = horizontal;
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            vertical2 = vertical;
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                }
                int i116 = i4 >> 15;
                int i27 = i4 >> 3;
                Arrangement.Vertical vertical12 = vertical4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i116 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical12, horizontal3, nl3Var, composer2, 196608 | (i27 & 14) | (i27 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i27) | (29360128 & i27) | (i27 & 234881024) | ((i4 << 9) & 1879048192), (i116 & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState12 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState12;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical12;
                horizontal2 = horizontal3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal2 = horizontal;
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                z6 = z2;
                modifier3 = modifier2;
                vertical3 = vertical2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                lazyGridState2 = lazyGridState;
                if (composerStartRestartGroup.changed(lazyGridState2)) {
                }
                i4 |= i18;
            } else {
                lazyGridState2 = lazyGridState;
            }
            i4 |= i18;
        } else {
            lazyGridState2 = lazyGridState;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                paddingValues2 = paddingValues;
                if (composerStartRestartGroup.changed(paddingValues2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32) == 0) {
                        i16 = 65536;
                    } else {
                        i16 = 65536;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((i & 1572864) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i4 &= -458753;
                            } else {
                                end = horizontal;
                            }
                            if (i9 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                vertical4 = top;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            horizontal3 = end;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = 635941664;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                        }
                        int i117 = i4 >> 15;
                        int i28 = i4 >> 3;
                        Arrangement.Vertical vertical13 = vertical4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i117 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical13, horizontal3, nl3Var, composer2, 196608 | (i28 & 14) | (i28 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i28) | (29360128 & i28) | (i28 & 234881024) | ((i4 << 9) & 1879048192), (i117 & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState13 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState13;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical3 = vertical13;
                        horizontal2 = horizontal3;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal2 = horizontal;
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                vertical2 = vertical;
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                    }
                    int i118 = i4 >> 15;
                    int i29 = i4 >> 3;
                    Arrangement.Vertical vertical14 = vertical4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i118 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical14, horizontal3, nl3Var, composer2, 196608 | (i29 & 14) | (i29 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i29) | (29360128 & i29) | (i29 & 234881024) | ((i4 << 9) & 1879048192), (i118 & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState14 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState14;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical14;
                    horizontal2 = horizontal3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal2 = horizontal;
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z3 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0) {
                    i16 = 65536;
                } else {
                    i16 = 65536;
                }
                i4 |= i16;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((i & 1572864) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                    }
                    int i119 = i4 >> 15;
                    int i210 = i4 >> 3;
                    Arrangement.Vertical vertical15 = vertical4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i119 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical15, horizontal3, nl3Var, composer2, 196608 | (i210 & 14) | (i210 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i210) | (29360128 & i210) | (i210 & 234881024) | ((i4 << 9) & 1879048192), (i119 & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState15 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState15;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical15;
                    horizontal2 = horizontal3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal2 = horizontal;
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            vertical2 = vertical;
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                }
                int i1110 = i4 >> 15;
                int i211 = i4 >> 3;
                Arrangement.Vertical vertical16 = vertical4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i1110 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical16, horizontal3, nl3Var, composer2, 196608 | (i211 & 14) | (i211 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i211) | (29360128 & i211) | (i211 & 234881024) | ((i4 << 9) & 1879048192), (i1110 & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState16 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState16;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical16;
                horizontal2 = horizontal3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal2 = horizontal;
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                z6 = z2;
                modifier3 = modifier2;
                vertical3 = vertical2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        paddingValues2 = paddingValues;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0) {
                    i16 = 65536;
                } else {
                    i16 = 65536;
                }
                i4 |= i16;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((i & 1572864) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i4 &= -458753;
                        } else {
                            end = horizontal;
                        }
                        if (i9 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            vertical4 = top;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        horizontal3 = end;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = 635941664;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                    }
                    int i1111 = i4 >> 15;
                    int i212 = i4 >> 3;
                    Arrangement.Vertical vertical17 = vertical4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i1111 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical17, horizontal3, nl3Var, composer2, 196608 | (i212 & 14) | (i212 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i212) | (29360128 & i212) | (i212 & 234881024) | ((i4 << 9) & 1879048192), (i1111 & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState17 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState17;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical3 = vertical17;
                    horizontal2 = horizontal3;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal2 = horizontal;
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            vertical2 = vertical;
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                }
                int i1112 = i4 >> 15;
                int i213 = i4 >> 3;
                Arrangement.Vertical vertical18 = vertical4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i1112 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical18, horizontal3, nl3Var, composer2, 196608 | (i213 & 14) | (i213 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i213) | (29360128 & i213) | (i213 & 234881024) | ((i4 << 9) & 1879048192), (i1112 & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState18 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState18;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical18;
                horizontal2 = horizontal3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal2 = horizontal;
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                z6 = z2;
                modifier3 = modifier2;
                vertical3 = vertical2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        z3 = z;
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
            if ((i3 & 32) == 0) {
                i16 = 65536;
            } else {
                i16 = 65536;
            }
            i4 |= i16;
        }
        i9 = i3 & 64;
        if (i9 != 0) {
            if ((i & 1572864) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i4 &= -458753;
                    } else {
                        end = horizontal;
                    }
                    if (i9 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        vertical4 = top;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    horizontal3 = end;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = 635941664;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
                }
                int i1113 = i4 >> 15;
                int i214 = i4 >> 3;
                Arrangement.Vertical vertical19 = vertical4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i1113 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical19, horizontal3, nl3Var, composer2, 196608 | (i214 & 14) | (i214 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i214) | (29360128 & i214) | (i214 & 234881024) | ((i4 << 9) & 1879048192), (i1113 & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState19 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState19;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical3 = vertical19;
                horizontal2 = horizontal3;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal2 = horizontal;
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                z6 = z2;
                modifier3 = modifier2;
                vertical3 = vertical2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 1572864;
        vertical2 = vertical;
        if ((i & 12582912) != 0) {
            i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
        }
        i11 = i3 & 256;
        if (i11 != 0) {
            i4 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(z2)) {
                i12 = 67108864;
            } else {
                i12 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i4 |= i12;
        }
        if ((i & 805306368) != 0) {
            i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
        }
        if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i13 = i2 | i15;
        } else {
            i13 = i2;
        }
        if ((i4 & 306783379) == 306783378) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i17 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    i4 &= -897;
                } else {
                    lazyGridStateRememberLazyGridState = lazyGridState2;
                }
                if (i5 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i7 != 0) {
                    z3 = false;
                }
                if ((i3 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i4 &= -458753;
                } else {
                    end = horizontal;
                }
                if (i9 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical2;
                }
                if ((i3 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i4 &= -29360129;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                if (i11 == 0) {
                }
                if ((i3 & 512) != 0) {
                    i4 &= -1879048193;
                    vertical4 = top;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    vertical4 = top;
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                z7 = z3;
                z8 = z9;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                horizontal3 = end;
                flingBehavior4 = flingBehavior3;
                lazyGridState4 = lazyGridStateRememberLazyGridState;
                i14 = 635941664;
            } else {
                if (i17 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    i4 &= -897;
                } else {
                    lazyGridStateRememberLazyGridState = lazyGridState2;
                }
                if (i5 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i7 != 0) {
                    z3 = false;
                }
                if ((i3 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i4 &= -458753;
                } else {
                    end = horizontal;
                }
                if (i9 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical2;
                }
                if ((i3 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i4 &= -29360129;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                if (i11 == 0) {
                }
                if ((i3 & 512) != 0) {
                    i4 &= -1879048193;
                    vertical4 = top;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    vertical4 = top;
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                z7 = z3;
                z8 = z9;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                horizontal3 = end;
                flingBehavior4 = flingBehavior3;
                lazyGridState4 = lazyGridStateRememberLazyGridState;
                i14 = 635941664;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:168)");
            }
            int i1114 = i4 >> 15;
            int i215 = i4 >> 3;
            Arrangement.Vertical vertical110 = vertical4;
            composer2 = composerStartRestartGroup;
            LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberRowHeightSums(gridCells, vertical4, composerStartRestartGroup, (i4 & 14) | (i1114 & 112)), paddingValues4, z7, false, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical110, horizontal3, nl3Var, composer2, 196608 | (i215 & 14) | (i215 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i215) | (29360128 & i215) | (i215 & 234881024) | ((i4 << 9) & 1879048192), (i1114 & 14) | ((i13 << 3) & 112), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            LazyGridState lazyGridState110 = lazyGridState4;
            modifier3 = modifier4;
            lazyGridState3 = lazyGridState110;
            paddingValues3 = paddingValues4;
            z5 = z7;
            flingBehavior2 = flingBehavior4;
            z6 = z8;
            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
            vertical3 = vertical110;
            horizontal2 = horizontal3;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            horizontal2 = horizontal;
            flingBehavior2 = flingBehavior;
            overscrollEffect2 = overscrollEffect;
            lazyGridState3 = lazyGridState2;
            paddingValues3 = paddingValues2;
            z5 = z3;
            z6 = z2;
            modifier3 = modifier2;
            vertical3 = vertical2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rl4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyGridDslKt.LazyHorizontalGrid$lambda$0(gridCells, modifier3, lazyGridState3, paddingValues3, z5, horizontal2, vertical3, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyHorizontalGrid$lambda$0(GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, nl3 nl3Var, int i, int i2, int i3, Composer composer, int i4) {
        LazyHorizontalGrid(gridCells, modifier, lazyGridState, paddingValues, z, horizontal, vertical, flingBehavior, z2, overscrollEffect, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyHorizontalGrid$lambda$1(GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, FlingBehavior flingBehavior, boolean z2, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyHorizontalGrid(gridCells, modifier, lazyGridState, paddingValues, z, horizontal, vertical, flingBehavior, z2, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x010f  */
    /* JADX WARN: Code duplicated, block: B:103:0x011a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:106:0x0121  */
    /* JADX WARN: Code duplicated, block: B:109:0x0129  */
    /* JADX WARN: Code duplicated, block: B:111:0x012f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0132  */
    /* JADX WARN: Code duplicated, block: B:114:0x0139  */
    /* JADX WARN: Code duplicated, block: B:117:0x014a  */
    /* JADX WARN: Code duplicated, block: B:121:0x0152  */
    /* JADX WARN: Code duplicated, block: B:124:0x015c  */
    /* JADX WARN: Code duplicated, block: B:126:0x016d  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:143:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:144:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:156:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:158:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:159:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:161:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:163:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:167:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:168:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:174:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:176:0x0218  */
    /* JADX WARN: Code duplicated, block: B:179:0x0227  */
    /* JADX WARN: Code duplicated, block: B:182:0x0276  */
    /* JADX WARN: Code duplicated, block: B:184:0x0289  */
    /* JADX WARN: Code duplicated, block: B:187:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:189:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0042  */
    /* JADX WARN: Code duplicated, block: B:27:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:36:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x007d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x0091  */
    /* JADX WARN: Code duplicated, block: B:58:0x0097  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00de A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:94:0x0101  */
    /* JADX WARN: Code duplicated, block: B:98:0x010b  */
    public static final void LazyVerticalGrid(final GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, final nl3<? super LazyGridScope, j59> nl3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        LazyGridState lazyGridState2;
        int i5;
        PaddingValues paddingValues2;
        int i6;
        int i7;
        boolean z3;
        int i8;
        int i9;
        Arrangement.Horizontal horizontal2;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z4;
        Composer composer2;
        final FlingBehavior flingBehavior2;
        final OverscrollEffect overscrollEffect2;
        final LazyGridState lazyGridState3;
        final PaddingValues paddingValues3;
        final boolean z5;
        final Arrangement.Horizontal horizontal3;
        final boolean z6;
        final Modifier modifier3;
        final Arrangement.Vertical vertical2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        LazyGridState lazyGridStateRememberLazyGridState;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        Arrangement.Vertical bottom;
        Arrangement.Horizontal start;
        FlingBehavior flingBehavior3;
        Arrangement.Horizontal horizontal4;
        OverscrollEffect overscrollEffectRememberOverscrollEffect;
        Arrangement.Vertical vertical3;
        boolean z7;
        boolean z8;
        PaddingValues paddingValues4;
        FlingBehavior flingBehavior4;
        LazyGridState lazyGridState4;
        int i14;
        Arrangement arrangement;
        int i15;
        int i16;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2072102870);
        if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(gridCells) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        int i17 = i3 & 2;
        if (i17 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    lazyGridState2 = lazyGridState;
                    int i18 = composerStartRestartGroup.changed(lazyGridState2) ? 256 : 128;
                    i4 |= i18;
                } else {
                    lazyGridState2 = lazyGridState;
                }
                i4 |= i18;
            } else {
                lazyGridState2 = lazyGridState;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerStartRestartGroup.changed(paddingValues2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        z3 = z;
                        if (composerStartRestartGroup.changed(z3)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i4 |= i8;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(vertical)) {
                            i16 = 65536;
                        } else {
                            i16 = 131072;
                        }
                        i4 |= i16;
                    }
                    i9 = i3 & 64;
                    if (i9 != 0) {
                        if ((i & 1572864) == 0) {
                            horizontal2 = horizontal;
                            if (composerStartRestartGroup.changed(horizontal2)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i4 |= i10;
                        }
                        if ((i & 12582912) != 0) {
                            i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                        }
                        i11 = i3 & 256;
                        if (i11 != 0) {
                            i4 |= 100663296;
                        } else if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i12 = 67108864;
                            } else {
                                i12 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i4 |= i12;
                        }
                        if ((i & 805306368) != 0) {
                            i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                        }
                        if ((i2 & 6) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i15 = 4;
                            } else {
                                i15 = 2;
                            }
                            i13 = i2 | i15;
                        } else {
                            i13 = i2;
                        }
                        if ((i4 & 306783379) == 306783378 || (i13 & 3) != 2) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i17 != 0) {
                                    modifier4 = Modifier.Companion;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if ((i3 & 4) != 0) {
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                    i4 &= -897;
                                } else {
                                    lazyGridStateRememberLazyGridState = lazyGridState2;
                                }
                                if (i5 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                } else {
                                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                                }
                                if (i7 != 0) {
                                    z3 = false;
                                }
                                if ((i3 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getBottom();
                                    } else {
                                        bottom = arrangement.getTop();
                                    }
                                    i4 &= -458753;
                                } else {
                                    bottom = vertical;
                                }
                                if (i9 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                } else {
                                    start = horizontal2;
                                }
                                if ((i3 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i4 &= -29360129;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                boolean z9 = i11 == 0 ? z2 : true;
                                if ((i3 & 512) != 0) {
                                    i4 &= -1879048193;
                                    horizontal4 = start;
                                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                                } else {
                                    horizontal4 = start;
                                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                }
                                vertical3 = bottom;
                                z7 = z3;
                                z8 = z9;
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                flingBehavior4 = flingBehavior3;
                                lazyGridState4 = lazyGridStateRememberLazyGridState;
                                i14 = -2072102870;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 4) != 0) {
                                    i4 &= -897;
                                }
                                if ((i3 & 32) != 0) {
                                    i4 &= -458753;
                                }
                                if ((i3 & 128) != 0) {
                                    i4 &= -29360129;
                                }
                                if ((i3 & 512) != 0) {
                                    i4 &= -1879048193;
                                }
                                vertical3 = vertical;
                                z8 = z2;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                                modifier4 = modifier2;
                                horizontal4 = horizontal2;
                                i14 = -2072102870;
                                flingBehavior4 = flingBehavior;
                                z7 = z3;
                                paddingValues4 = paddingValues2;
                                lazyGridState4 = lazyGridState2;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                            }
                            int i19 = i4 >> 3;
                            Arrangement.Horizontal horizontal5 = horizontal4;
                            composer2 = composerStartRestartGroup;
                            LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal5, nl3Var, composer2, 196608 | (i19 & 14) | (i19 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i19) | (29360128 & i19) | (i19 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            LazyGridState lazyGridState5 = lazyGridState4;
                            modifier3 = modifier4;
                            lazyGridState3 = lazyGridState5;
                            paddingValues3 = paddingValues4;
                            z5 = z7;
                            flingBehavior2 = flingBehavior4;
                            z6 = z8;
                            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                            vertical2 = vertical3;
                            horizontal3 = horizontal5;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            flingBehavior2 = flingBehavior;
                            overscrollEffect2 = overscrollEffect;
                            lazyGridState3 = lazyGridState2;
                            paddingValues3 = paddingValues2;
                            z5 = z3;
                            horizontal3 = horizontal2;
                            z6 = z2;
                            modifier3 = modifier2;
                            vertical2 = vertical;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    GridCells gridCells2 = gridCells;
                                    Modifier modifier5 = modifier3;
                                    LazyGridState lazyGridState6 = lazyGridState3;
                                    PaddingValues paddingValues5 = paddingValues3;
                                    boolean z10 = z5;
                                    Arrangement.Horizontal horizontal6 = horizontal3;
                                    return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState6, paddingValues5, z10, vertical2, horizontal6, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 1572864;
                    horizontal2 = horizontal;
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                        }
                        int i110 = i4 >> 3;
                        Arrangement.Horizontal horizontal6 = horizontal4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal6, nl3Var, composer2, 196608 | (i110 & 14) | (i110 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i110) | (29360128 & i110) | (i110 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState6 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState6;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical2 = vertical3;
                        horizontal3 = horizontal6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        horizontal3 = horizontal2;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical2 = vertical;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState7 = lazyGridState3;
                                PaddingValues paddingValues5 = paddingValues3;
                                boolean z10 = z5;
                                Arrangement.Horizontal horizontal7 = horizontal3;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState7, paddingValues5, z10, vertical2, horizontal7, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                z3 = z;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32) == 0) {
                        i16 = 65536;
                    } else {
                        i16 = 65536;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((i & 1572864) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                        }
                        int i111 = i4 >> 3;
                        Arrangement.Horizontal horizontal7 = horizontal4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal7, nl3Var, composer2, 196608 | (i111 & 14) | (i111 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i111) | (29360128 & i111) | (i111 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState7 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState7;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical2 = vertical3;
                        horizontal3 = horizontal7;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        horizontal3 = horizontal2;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical2 = vertical;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState8 = lazyGridState3;
                                PaddingValues paddingValues5 = paddingValues3;
                                boolean z10 = z5;
                                Arrangement.Horizontal horizontal8 = horizontal3;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState8, paddingValues5, z10, vertical2, horizontal8, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                horizontal2 = horizontal;
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                    }
                    int i112 = i4 >> 3;
                    Arrangement.Horizontal horizontal8 = horizontal4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal8, nl3Var, composer2, 196608 | (i112 & 14) | (i112 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i112) | (29360128 & i112) | (i112 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState8 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState8;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical2 = vertical3;
                    horizontal3 = horizontal8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    horizontal3 = horizontal2;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical2 = vertical;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState9 = lazyGridState3;
                            PaddingValues paddingValues5 = paddingValues3;
                            boolean z10 = z5;
                            Arrangement.Horizontal horizontal9 = horizontal3;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState9, paddingValues5, z10, vertical2, horizontal9, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            paddingValues2 = paddingValues;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32) == 0) {
                        i16 = 65536;
                    } else {
                        i16 = 65536;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((i & 1572864) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                        }
                        int i113 = i4 >> 3;
                        Arrangement.Horizontal horizontal9 = horizontal4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal9, nl3Var, composer2, 196608 | (i113 & 14) | (i113 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i113) | (29360128 & i113) | (i113 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState9 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState9;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical2 = vertical3;
                        horizontal3 = horizontal9;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        horizontal3 = horizontal2;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical2 = vertical;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState10 = lazyGridState3;
                                PaddingValues paddingValues5 = paddingValues3;
                                boolean z10 = z5;
                                Arrangement.Horizontal horizontal10 = horizontal3;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState10, paddingValues5, z10, vertical2, horizontal10, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                horizontal2 = horizontal;
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                    }
                    int i114 = i4 >> 3;
                    Arrangement.Horizontal horizontal10 = horizontal4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal10, nl3Var, composer2, 196608 | (i114 & 14) | (i114 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i114) | (29360128 & i114) | (i114 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState10 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState10;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical2 = vertical3;
                    horizontal3 = horizontal10;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    horizontal3 = horizontal2;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical2 = vertical;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState11 = lazyGridState3;
                            PaddingValues paddingValues5 = paddingValues3;
                            boolean z10 = z5;
                            Arrangement.Horizontal horizontal11 = horizontal3;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState11, paddingValues5, z10, vertical2, horizontal11, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z3 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0) {
                    i16 = 65536;
                } else {
                    i16 = 65536;
                }
                i4 |= i16;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((i & 1572864) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                    }
                    int i115 = i4 >> 3;
                    Arrangement.Horizontal horizontal11 = horizontal4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal11, nl3Var, composer2, 196608 | (i115 & 14) | (i115 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i115) | (29360128 & i115) | (i115 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState11 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState11;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical2 = vertical3;
                    horizontal3 = horizontal11;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    horizontal3 = horizontal2;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical2 = vertical;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState12 = lazyGridState3;
                            PaddingValues paddingValues5 = paddingValues3;
                            boolean z10 = z5;
                            Arrangement.Horizontal horizontal12 = horizontal3;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState12, paddingValues5, z10, vertical2, horizontal12, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            horizontal2 = horizontal;
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                }
                int i116 = i4 >> 3;
                Arrangement.Horizontal horizontal12 = horizontal4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal12, nl3Var, composer2, 196608 | (i116 & 14) | (i116 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i116) | (29360128 & i116) | (i116 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState12 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState12;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical2 = vertical3;
                horizontal3 = horizontal12;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                horizontal3 = horizontal2;
                z6 = z2;
                modifier3 = modifier2;
                vertical2 = vertical;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState13 = lazyGridState3;
                        PaddingValues paddingValues5 = paddingValues3;
                        boolean z10 = z5;
                        Arrangement.Horizontal horizontal13 = horizontal3;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState13, paddingValues5, z10, vertical2, horizontal13, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                lazyGridState2 = lazyGridState;
                if (composerStartRestartGroup.changed(lazyGridState2)) {
                }
                i4 |= i18;
            } else {
                lazyGridState2 = lazyGridState;
            }
            i4 |= i18;
        } else {
            lazyGridState2 = lazyGridState;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                paddingValues2 = paddingValues;
                if (composerStartRestartGroup.changed(paddingValues2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32) == 0) {
                        i16 = 65536;
                    } else {
                        i16 = 65536;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 64;
                if (i9 != 0) {
                    if ((i & 1572864) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((i & 12582912) != 0) {
                        i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i11 = i3 & 256;
                    if (i11 != 0) {
                        i4 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i12 = 67108864;
                        } else {
                            i12 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i12;
                    }
                    if ((i & 805306368) != 0) {
                        i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                    }
                    if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i13 = i2 | i15;
                    } else {
                        i13 = i2;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        } else {
                            if (i17 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                i4 &= -897;
                            } else {
                                lazyGridStateRememberLazyGridState = lazyGridState2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            if (i7 != 0) {
                                z3 = false;
                            }
                            if ((i3 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i4 &= -458753;
                            } else {
                                bottom = vertical;
                            }
                            if (i9 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if ((i3 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i4 &= -29360129;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            if (i11 == 0) {
                            }
                            if ((i3 & 512) != 0) {
                                i4 &= -1879048193;
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                            } else {
                                horizontal4 = start;
                                overscrollEffectRememberOverscrollEffect = overscrollEffect;
                            }
                            vertical3 = bottom;
                            z7 = z3;
                            z8 = z9;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            flingBehavior4 = flingBehavior3;
                            lazyGridState4 = lazyGridStateRememberLazyGridState;
                            i14 = -2072102870;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                        }
                        int i117 = i4 >> 3;
                        Arrangement.Horizontal horizontal13 = horizontal4;
                        composer2 = composerStartRestartGroup;
                        LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal13, nl3Var, composer2, 196608 | (i117 & 14) | (i117 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i117) | (29360128 & i117) | (i117 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        LazyGridState lazyGridState13 = lazyGridState4;
                        modifier3 = modifier4;
                        lazyGridState3 = lazyGridState13;
                        paddingValues3 = paddingValues4;
                        z5 = z7;
                        flingBehavior2 = flingBehavior4;
                        z6 = z8;
                        overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                        vertical2 = vertical3;
                        horizontal3 = horizontal13;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        flingBehavior2 = flingBehavior;
                        overscrollEffect2 = overscrollEffect;
                        lazyGridState3 = lazyGridState2;
                        paddingValues3 = paddingValues2;
                        z5 = z3;
                        horizontal3 = horizontal2;
                        z6 = z2;
                        modifier3 = modifier2;
                        vertical2 = vertical;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState14 = lazyGridState3;
                                PaddingValues paddingValues5 = paddingValues3;
                                boolean z10 = z5;
                                Arrangement.Horizontal horizontal14 = horizontal3;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState14, paddingValues5, z10, vertical2, horizontal14, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                horizontal2 = horizontal;
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                    }
                    int i118 = i4 >> 3;
                    Arrangement.Horizontal horizontal14 = horizontal4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal14, nl3Var, composer2, 196608 | (i118 & 14) | (i118 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i118) | (29360128 & i118) | (i118 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState14 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState14;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical2 = vertical3;
                    horizontal3 = horizontal14;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    horizontal3 = horizontal2;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical2 = vertical;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState15 = lazyGridState3;
                            PaddingValues paddingValues5 = paddingValues3;
                            boolean z10 = z5;
                            Arrangement.Horizontal horizontal15 = horizontal3;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState15, paddingValues5, z10, vertical2, horizontal15, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z3 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0) {
                    i16 = 65536;
                } else {
                    i16 = 65536;
                }
                i4 |= i16;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((i & 1572864) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                    }
                    int i119 = i4 >> 3;
                    Arrangement.Horizontal horizontal15 = horizontal4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal15, nl3Var, composer2, 196608 | (i119 & 14) | (i119 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i119) | (29360128 & i119) | (i119 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState15 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState15;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical2 = vertical3;
                    horizontal3 = horizontal15;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    horizontal3 = horizontal2;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical2 = vertical;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState16 = lazyGridState3;
                            PaddingValues paddingValues5 = paddingValues3;
                            boolean z10 = z5;
                            Arrangement.Horizontal horizontal16 = horizontal3;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState16, paddingValues5, z10, vertical2, horizontal16, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            horizontal2 = horizontal;
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                }
                int i1110 = i4 >> 3;
                Arrangement.Horizontal horizontal16 = horizontal4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal16, nl3Var, composer2, 196608 | (i1110 & 14) | (i1110 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i1110) | (29360128 & i1110) | (i1110 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState16 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState16;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical2 = vertical3;
                horizontal3 = horizontal16;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                horizontal3 = horizontal2;
                z6 = z2;
                modifier3 = modifier2;
                vertical2 = vertical;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState17 = lazyGridState3;
                        PaddingValues paddingValues5 = paddingValues3;
                        boolean z10 = z5;
                        Arrangement.Horizontal horizontal17 = horizontal3;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState17, paddingValues5, z10, vertical2, horizontal17, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        paddingValues2 = paddingValues;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32) == 0) {
                    i16 = 65536;
                } else {
                    i16 = 65536;
                }
                i4 |= i16;
            }
            i9 = i3 & 64;
            if (i9 != 0) {
                if ((i & 1572864) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((i & 12582912) != 0) {
                    i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i11 = i3 & 256;
                if (i11 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i12 = 67108864;
                    } else {
                        i12 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i12;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i13 = i2 | i15;
                } else {
                    i13 = i2;
                }
                if ((i4 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    } else {
                        if (i17 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            i4 &= -897;
                        } else {
                            lazyGridStateRememberLazyGridState = lazyGridState2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 != 0) {
                            z3 = false;
                        }
                        if ((i3 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i4 &= -458753;
                        } else {
                            bottom = vertical;
                        }
                        if (i9 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if ((i3 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i4 &= -29360129;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        if (i11 == 0) {
                        }
                        if ((i3 & 512) != 0) {
                            i4 &= -1879048193;
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                        } else {
                            horizontal4 = start;
                            overscrollEffectRememberOverscrollEffect = overscrollEffect;
                        }
                        vertical3 = bottom;
                        z7 = z3;
                        z8 = z9;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        flingBehavior4 = flingBehavior3;
                        lazyGridState4 = lazyGridStateRememberLazyGridState;
                        i14 = -2072102870;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                    }
                    int i1111 = i4 >> 3;
                    Arrangement.Horizontal horizontal17 = horizontal4;
                    composer2 = composerStartRestartGroup;
                    LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal17, nl3Var, composer2, 196608 | (i1111 & 14) | (i1111 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i1111) | (29360128 & i1111) | (i1111 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    LazyGridState lazyGridState17 = lazyGridState4;
                    modifier3 = modifier4;
                    lazyGridState3 = lazyGridState17;
                    paddingValues3 = paddingValues4;
                    z5 = z7;
                    flingBehavior2 = flingBehavior4;
                    z6 = z8;
                    overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                    vertical2 = vertical3;
                    horizontal3 = horizontal17;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    flingBehavior2 = flingBehavior;
                    overscrollEffect2 = overscrollEffect;
                    lazyGridState3 = lazyGridState2;
                    paddingValues3 = paddingValues2;
                    z5 = z3;
                    horizontal3 = horizontal2;
                    z6 = z2;
                    modifier3 = modifier2;
                    vertical2 = vertical;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState18 = lazyGridState3;
                            PaddingValues paddingValues5 = paddingValues3;
                            boolean z10 = z5;
                            Arrangement.Horizontal horizontal18 = horizontal3;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState18, paddingValues5, z10, vertical2, horizontal18, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            horizontal2 = horizontal;
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                }
                int i1112 = i4 >> 3;
                Arrangement.Horizontal horizontal18 = horizontal4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal18, nl3Var, composer2, 196608 | (i1112 & 14) | (i1112 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i1112) | (29360128 & i1112) | (i1112 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState18 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState18;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical2 = vertical3;
                horizontal3 = horizontal18;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                horizontal3 = horizontal2;
                z6 = z2;
                modifier3 = modifier2;
                vertical2 = vertical;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState19 = lazyGridState3;
                        PaddingValues paddingValues5 = paddingValues3;
                        boolean z10 = z5;
                        Arrangement.Horizontal horizontal19 = horizontal3;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState19, paddingValues5, z10, vertical2, horizontal19, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        z3 = z;
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
            if ((i3 & 32) == 0) {
                i16 = 65536;
            } else {
                i16 = 65536;
            }
            i4 |= i16;
        }
        i9 = i3 & 64;
        if (i9 != 0) {
            if ((i & 1572864) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            if ((i & 12582912) != 0) {
                i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i11 = i3 & 256;
            if (i11 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i12 = 67108864;
                } else {
                    i12 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i12;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i13 = i2 | i15;
            } else {
                i13 = i2;
            }
            if ((i4 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                } else {
                    if (i17 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        i4 &= -897;
                    } else {
                        lazyGridStateRememberLazyGridState = lazyGridState2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 != 0) {
                        z3 = false;
                    }
                    if ((i3 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i4 &= -458753;
                    } else {
                        bottom = vertical;
                    }
                    if (i9 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if ((i3 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i4 &= -29360129;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    if (i11 == 0) {
                    }
                    if ((i3 & 512) != 0) {
                        i4 &= -1879048193;
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                    } else {
                        horizontal4 = start;
                        overscrollEffectRememberOverscrollEffect = overscrollEffect;
                    }
                    vertical3 = bottom;
                    z7 = z3;
                    z8 = z9;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    flingBehavior4 = flingBehavior3;
                    lazyGridState4 = lazyGridStateRememberLazyGridState;
                    i14 = -2072102870;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
                }
                int i1113 = i4 >> 3;
                Arrangement.Horizontal horizontal19 = horizontal4;
                composer2 = composerStartRestartGroup;
                LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal19, nl3Var, composer2, 196608 | (i1113 & 14) | (i1113 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i1113) | (29360128 & i1113) | (i1113 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                LazyGridState lazyGridState19 = lazyGridState4;
                modifier3 = modifier4;
                lazyGridState3 = lazyGridState19;
                paddingValues3 = paddingValues4;
                z5 = z7;
                flingBehavior2 = flingBehavior4;
                z6 = z8;
                overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
                vertical2 = vertical3;
                horizontal3 = horizontal19;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                flingBehavior2 = flingBehavior;
                overscrollEffect2 = overscrollEffect;
                lazyGridState3 = lazyGridState2;
                paddingValues3 = paddingValues2;
                z5 = z3;
                horizontal3 = horizontal2;
                z6 = z2;
                modifier3 = modifier2;
                vertical2 = vertical;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState110 = lazyGridState3;
                        PaddingValues paddingValues5 = paddingValues3;
                        boolean z10 = z5;
                        Arrangement.Horizontal horizontal110 = horizontal3;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState110, paddingValues5, z10, vertical2, horizontal110, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 1572864;
        horizontal2 = horizontal;
        if ((i & 12582912) != 0) {
            i4 |= ((i3 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
        }
        i11 = i3 & 256;
        if (i11 != 0) {
            i4 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(z2)) {
                i12 = 67108864;
            } else {
                i12 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i4 |= i12;
        }
        if ((i & 805306368) != 0) {
            i4 |= ((i3 & 512) == 0 || !composerStartRestartGroup.changed(overscrollEffect)) ? 268435456 : 536870912;
        }
        if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i13 = i2 | i15;
        } else {
            i13 = i2;
        }
        if ((i4 & 306783379) == 306783378) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i17 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    i4 &= -897;
                } else {
                    lazyGridStateRememberLazyGridState = lazyGridState2;
                }
                if (i5 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i7 != 0) {
                    z3 = false;
                }
                if ((i3 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i4 &= -458753;
                } else {
                    bottom = vertical;
                }
                if (i9 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal2;
                }
                if ((i3 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i4 &= -29360129;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                if (i11 == 0) {
                }
                if ((i3 & 512) != 0) {
                    i4 &= -1879048193;
                    horizontal4 = start;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    horizontal4 = start;
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                vertical3 = bottom;
                z7 = z3;
                z8 = z9;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                flingBehavior4 = flingBehavior3;
                lazyGridState4 = lazyGridStateRememberLazyGridState;
                i14 = -2072102870;
            } else {
                if (i17 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    i4 &= -897;
                } else {
                    lazyGridStateRememberLazyGridState = lazyGridState2;
                }
                if (i5 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i7 != 0) {
                    z3 = false;
                }
                if ((i3 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i4 &= -458753;
                } else {
                    bottom = vertical;
                }
                if (i9 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal2;
                }
                if ((i3 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i4 &= -29360129;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                if (i11 == 0) {
                }
                if ((i3 & 512) != 0) {
                    i4 &= -1879048193;
                    horizontal4 = start;
                    overscrollEffectRememberOverscrollEffect = OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0);
                } else {
                    horizontal4 = start;
                    overscrollEffectRememberOverscrollEffect = overscrollEffect;
                }
                vertical3 = bottom;
                z7 = z3;
                z8 = z9;
                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                flingBehavior4 = flingBehavior3;
                lazyGridState4 = lazyGridStateRememberLazyGridState;
                i14 = -2072102870;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i14, i4, i13, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:79)");
            }
            int i1114 = i4 >> 3;
            Arrangement.Horizontal horizontal110 = horizontal4;
            composer2 = composerStartRestartGroup;
            LazyGridKt.LazyGrid(modifier4, lazyGridState4, rememberColumnWidthSums(gridCells, horizontal4, composerStartRestartGroup, (i4 & 14) | ((i4 >> 15) & 112)), paddingValues4, z7, true, flingBehavior4, z8, overscrollEffectRememberOverscrollEffect, vertical3, horizontal110, nl3Var, composer2, 196608 | (i1114 & 14) | (i1114 & 112) | (i4 & 7168) | (57344 & i4) | (3670016 & i1114) | (29360128 & i1114) | (i1114 & 234881024) | ((i4 << 12) & 1879048192), ((i4 >> 18) & 14) | ((i13 << 3) & 112), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            LazyGridState lazyGridState110 = lazyGridState4;
            modifier3 = modifier4;
            lazyGridState3 = lazyGridState110;
            paddingValues3 = paddingValues4;
            z5 = z7;
            flingBehavior2 = flingBehavior4;
            z6 = z8;
            overscrollEffect2 = overscrollEffectRememberOverscrollEffect;
            vertical2 = vertical3;
            horizontal3 = horizontal110;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            flingBehavior2 = flingBehavior;
            overscrollEffect2 = overscrollEffect;
            lazyGridState3 = lazyGridState2;
            paddingValues3 = paddingValues2;
            z5 = z3;
            horizontal3 = horizontal2;
            z6 = z2;
            modifier3 = modifier2;
            vertical2 = vertical;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ql4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    GridCells gridCells2 = gridCells;
                    Modifier modifier5 = modifier3;
                    LazyGridState lazyGridState111 = lazyGridState3;
                    PaddingValues paddingValues5 = paddingValues3;
                    boolean z10 = z5;
                    Arrangement.Horizontal horizontal111 = horizontal3;
                    return LazyGridDslKt.LazyVerticalGrid$lambda$0(gridCells2, modifier5, lazyGridState111, paddingValues5, z10, vertical2, horizontal111, flingBehavior2, z6, overscrollEffect2, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyVerticalGrid$lambda$0(GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, nl3 nl3Var, int i, int i2, int i3, Composer composer, int i4) {
        LazyVerticalGrid(gridCells, modifier, lazyGridState, paddingValues, z, vertical, horizontal, flingBehavior, z2, overscrollEffect, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyVerticalGrid$lambda$1(GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, nl3 nl3Var, int i, int i2, Composer composer, int i3) {
        LazyVerticalGrid(gridCells, modifier, lazyGridState, paddingValues, z, vertical, horizontal, flingBehavior, z2, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> calculateCellsCrossAxisSizeImpl(int i, int i2, int i3) {
        int i4 = i - ((i2 - 1) * i3);
        int i5 = i4 / i2;
        int i6 = i4 % i2;
        ArrayList arrayList = new ArrayList(i2);
        int i7 = 0;
        while (i7 < i2) {
            arrayList.add(Integer.valueOf((i7 < i6 ? 1 : 0) + i5));
            i7++;
        }
        return arrayList;
    }

    public static final <T> void items(LazyGridScope lazyGridScope, List<? extends T> list, nl3<? super T, ? extends Object> nl3Var, bm3<? super LazyGridItemSpanScope, ? super T, GridItemSpan> bm3Var, nl3<? super T, ? extends Object> nl3Var2, fm3<? super LazyGridItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var) {
        lazyGridScope.items(list.size(), nl3Var != null ? new AnonymousClass2(nl3Var, list) : null, bm3Var != null ? new AnonymousClass3(bm3Var, list) : null, new AnonymousClass4(nl3Var2, list), ComposableLambdaKt.composableLambdaInstance(-1117249557, true, new AnonymousClass5(fm3Var, list)));
    }

    public static /* synthetic */ void items$default(LazyGridScope lazyGridScope, List list, nl3 nl3Var, bm3 bm3Var, nl3 nl3Var2, fm3 fm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            bm3Var = null;
        }
        if ((i & 8) != 0) {
            nl3Var2 = new nl3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridDslKt.items.1
                @Override // defpackage.nl3
                public final Void invoke(Object obj2) {
                    return null;
                }
            };
        }
        lazyGridScope.items(list.size(), nl3Var != null ? new AnonymousClass2(nl3Var, list) : null, bm3Var != null ? new AnonymousClass3(bm3Var, list) : null, new AnonymousClass4(nl3Var2, list), ComposableLambdaKt.composableLambdaInstance(-1117249557, true, new AnonymousClass5(fm3Var, list)));
    }

    public static final <T> void itemsIndexed(LazyGridScope lazyGridScope, List<? extends T> list, bm3<? super Integer, ? super T, ? extends Object> bm3Var, dm3<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> dm3Var, bm3<? super Integer, ? super T, ? extends Object> bm3Var2, gm3<? super LazyGridItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var) {
        lazyGridScope.items(list.size(), bm3Var != null ? new C05322(bm3Var, list) : null, dm3Var != null ? new C05333(dm3Var, list) : null, new C05344(bm3Var2, list), ComposableLambdaKt.composableLambdaInstance(-1942245546, true, new C05355(gm3Var, list)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyGridScope lazyGridScope, List list, bm3 bm3Var, dm3 dm3Var, bm3 bm3Var2, gm3 gm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = null;
        }
        if ((i & 4) != 0) {
            dm3Var = null;
        }
        if ((i & 8) != 0) {
            bm3Var2 = new bm3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridDslKt.itemsIndexed.1
                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), obj3);
                }

                public final Void invoke(int i2, Object obj2) {
                    return null;
                }
            };
        }
        lazyGridScope.items(list.size(), bm3Var != null ? new C05322(bm3Var, list) : null, dm3Var != null ? new C05333(dm3Var, list) : null, new C05344(bm3Var2, list), ComposableLambdaKt.composableLambdaInstance(-1942245546, true, new C05355(gm3Var, list)));
    }

    private static final LazyGridSlotsProvider rememberColumnWidthSums(GridCells gridCells, Arrangement.Horizontal horizontal, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-76500289, i, -1, "androidx.compose.foundation.lazy.grid.rememberColumnWidthSums (LazyGridDsl.kt:221)");
        }
        int i2 = 1;
        boolean z = ((((i & 14) ^ 6) > 4 && composer.changed(gridCells)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer.changed(horizontal)) || (i & 48) == 32);
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new GridSlotCache(new uo3(i2, gridCells, horizontal));
            composer.updateRememberedValue(objRememberedValue);
        }
        LazyGridSlotsProvider lazyGridSlotsProvider = (LazyGridSlotsProvider) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return lazyGridSlotsProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyGridSlots rememberColumnWidthSums$lambda$0$0(GridCells gridCells, Arrangement.Horizontal horizontal, Density density, Constraints constraints) {
        if (!(Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl()) != Integer.MAX_VALUE)) {
            InlineClassHelperKt.throwIllegalArgumentException("LazyVerticalGrid's width should be bound by parent.");
        }
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(constraints.m9001unboximpl());
        int[] iArrS0 = qn1.s0(gridCells.calculateCrossAxisCellSizes(density, iM8995getMaxWidthimpl, density.mo1428roundToPx0680j_4(horizontal.mo1746getSpacingD9Ej5fM())));
        int[] iArr = new int[iArrS0.length];
        horizontal.arrange(density, iM8995getMaxWidthimpl, iArrS0, LayoutDirection.Ltr, iArr);
        return new LazyGridSlots(iArrS0, iArr);
    }

    private static final LazyGridSlotsProvider rememberRowHeightSums(GridCells gridCells, Arrangement.Vertical vertical, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-150818144, i, -1, "androidx.compose.foundation.lazy.grid.rememberRowHeightSums (LazyGridDsl.kt:245)");
        }
        int i2 = 1;
        boolean z = ((((i & 14) ^ 6) > 4 && composer.changed(gridCells)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer.changed(vertical)) || (i & 48) == 32);
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new GridSlotCache(new vo3(i2, gridCells, vertical));
            composer.updateRememberedValue(objRememberedValue);
        }
        LazyGridSlotsProvider lazyGridSlotsProvider = (LazyGridSlotsProvider) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return lazyGridSlotsProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyGridSlots rememberRowHeightSums$lambda$0$0(GridCells gridCells, Arrangement.Vertical vertical, Density density, Constraints constraints) {
        if (!(Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl()) != Integer.MAX_VALUE)) {
            InlineClassHelperKt.throwIllegalArgumentException("LazyHorizontalGrid's height should be bound by parent.");
        }
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl());
        int[] iArrS0 = qn1.s0(gridCells.calculateCrossAxisCellSizes(density, iM8994getMaxHeightimpl, density.mo1428roundToPx0680j_4(vertical.mo1746getSpacingD9Ej5fM())));
        int[] iArr = new int[iArrS0.length];
        vertical.arrange(density, iM8994getMaxHeightimpl, iArrS0, iArr);
        return new LazyGridSlots(iArrS0, iArr);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$7, reason: invalid class name */
    public static final class AnonymousClass7 implements nl3<Integer, Object> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ nl3<T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass7(nl3<? super T, ? extends Object> nl3Var, T[] tArr) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$9, reason: invalid class name */
    public static final class AnonymousClass9 implements nl3<Integer, Object> {
        final /* synthetic */ nl3<T, Object> $contentType;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass9(nl3<? super T, ? extends Object> nl3Var, T[] tArr) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$2, reason: invalid class name */
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$4, reason: invalid class name */
    public static final class AnonymousClass4 implements nl3<Integer, Object> {
        final /* synthetic */ nl3<T, Object> $contentType;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(nl3<? super T, ? extends Object> nl3Var, List<? extends T> list) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$7, reason: invalid class name and case insensitive filesystem */
    public static final class C05377 implements nl3<Integer, Object> {
        final /* synthetic */ T[] $items;
        final /* synthetic */ bm3<Integer, T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public C05377(bm3<? super Integer, ? super T, ? extends Object> bm3Var, T[] tArr) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$9, reason: invalid class name and case insensitive filesystem */
    public static final class C05399 implements nl3<Integer, Object> {
        final /* synthetic */ bm3<Integer, T, Object> $contentType;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05399(bm3<? super Integer, ? super T, ? extends Object> bm3Var, T[] tArr) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$2, reason: invalid class name and case insensitive filesystem */
    public static final class C05322 implements nl3<Integer, Object> {
        final /* synthetic */ List<T> $items;
        final /* synthetic */ bm3<Integer, T, Object> $key;

        /* JADX WARN: Multi-variable type inference failed */
        public C05322(bm3<? super Integer, ? super T, ? extends Object> bm3Var, List<? extends T> list) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$4, reason: invalid class name and case insensitive filesystem */
    public static final class C05344 implements nl3<Integer, Object> {
        final /* synthetic */ bm3<Integer, T, Object> $contentType;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05344(bm3<? super Integer, ? super T, ? extends Object> bm3Var, List<? extends T> list) {
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

    public static final <T> void items(LazyGridScope lazyGridScope, T[] tArr, nl3<? super T, ? extends Object> nl3Var, bm3<? super LazyGridItemSpanScope, ? super T, GridItemSpan> bm3Var, nl3<? super T, ? extends Object> nl3Var2, fm3<? super LazyGridItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var) {
        lazyGridScope.items(tArr.length, nl3Var != null ? new AnonymousClass7(nl3Var, tArr) : null, bm3Var != null ? new AnonymousClass8(bm3Var, tArr) : null, new AnonymousClass9(nl3Var2, tArr), ComposableLambdaKt.composableLambdaInstance(1179065086, true, new AnonymousClass10(fm3Var, tArr)));
    }

    public static final <T> void itemsIndexed(LazyGridScope lazyGridScope, T[] tArr, bm3<? super Integer, ? super T, ? extends Object> bm3Var, dm3<? super LazyGridItemSpanScope, ? super Integer, ? super T, GridItemSpan> dm3Var, bm3<? super Integer, ? super T, ? extends Object> bm3Var2, gm3<? super LazyGridItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var) {
        lazyGridScope.items(tArr.length, bm3Var != null ? new C05377(bm3Var, tArr) : null, dm3Var != null ? new C05388(dm3Var, tArr) : null, new C05399(bm3Var2, tArr), ComposableLambdaKt.composableLambdaInstance(49283819, true, new C053110(gm3Var, tArr)));
    }

    public static /* synthetic */ void items$default(LazyGridScope lazyGridScope, Object[] objArr, nl3 nl3Var, bm3 bm3Var, nl3 nl3Var2, fm3 fm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            bm3Var = null;
        }
        if ((i & 8) != 0) {
            nl3Var2 = new nl3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridDslKt.items.6
                @Override // defpackage.nl3
                public final Void invoke(Object obj2) {
                    return null;
                }
            };
        }
        lazyGridScope.items(objArr.length, nl3Var != null ? new AnonymousClass7(nl3Var, objArr) : null, bm3Var != null ? new AnonymousClass8(bm3Var, objArr) : null, new AnonymousClass9(nl3Var2, objArr), ComposableLambdaKt.composableLambdaInstance(1179065086, true, new AnonymousClass10(fm3Var, objArr)));
    }

    public static /* synthetic */ void itemsIndexed$default(LazyGridScope lazyGridScope, Object[] objArr, bm3 bm3Var, dm3 dm3Var, bm3 bm3Var2, gm3 gm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = null;
        }
        if ((i & 4) != 0) {
            dm3Var = null;
        }
        if ((i & 8) != 0) {
            bm3Var2 = new bm3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridDslKt.itemsIndexed.6
                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    return invoke(((Number) obj2).intValue(), obj3);
                }

                public final Void invoke(int i2, Object obj2) {
                    return null;
                }
            };
        }
        lazyGridScope.items(objArr.length, bm3Var != null ? new C05377(bm3Var, objArr) : null, dm3Var != null ? new C05388(dm3Var, objArr) : null, new C05399(bm3Var2, objArr), ComposableLambdaKt.composableLambdaInstance(49283819, true, new C053110(gm3Var, objArr)));
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$10, reason: invalid class name */
    public static final class AnonymousClass10 implements fm3<LazyGridItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ fm3<LazyGridItemScope, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass10(fm3<? super LazyGridItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var, T[] tArr) {
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
        public final void invoke(LazyGridItemScope lazyGridItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyGridItemScope) ? 4 : 2) | i2;
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
                ComposerKt.traceEventStart(1179065086, i3, -1, "androidx.compose.foundation.lazy.grid.items.<anonymous> (LazyGridDsl.kt:613)");
            }
            this.$itemContent.invoke(lazyGridItemScope, this.$items[i], composer, Integer.valueOf(i3 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$items$5, reason: invalid class name */
    public static final class AnonymousClass5 implements fm3<LazyGridItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ fm3<LazyGridItemScope, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass5(fm3<? super LazyGridItemScope, ? super T, ? super Composer, ? super Integer, j59> fm3Var, List<? extends T> list) {
            this.$itemContent = fm3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final void invoke(LazyGridItemScope lazyGridItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyGridItemScope) ? 4 : 2) | i2;
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
                ComposerKt.traceEventStart(-1117249557, i3, -1, "androidx.compose.foundation.lazy.grid.items.<anonymous> (LazyGridDsl.kt:539)");
            }
            this.$itemContent.invoke(lazyGridItemScope, (T) this.$items.get(i), composer, Integer.valueOf(i3 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$10, reason: invalid class name and case insensitive filesystem */
    public static final class C053110 implements fm3<LazyGridItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ gm3<LazyGridItemScope, Integer, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ T[] $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C053110(gm3<? super LazyGridItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var, T[] tArr) {
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
        public final void invoke(LazyGridItemScope lazyGridItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyGridItemScope) ? 4 : 2) | i2;
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
                ComposerKt.traceEventStart(49283819, i3, -1, "androidx.compose.foundation.lazy.grid.itemsIndexed.<anonymous> (LazyGridDsl.kt:650)");
            }
            this.$itemContent.invoke(lazyGridItemScope, Integer.valueOf(i), this.$items[i], composer, Integer.valueOf(i3 & 126));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridDslKt$itemsIndexed$5, reason: invalid class name and case insensitive filesystem */
    public static final class C05355 implements fm3<LazyGridItemScope, Integer, Composer, Integer, j59> {
        final /* synthetic */ gm3<LazyGridItemScope, Integer, T, Composer, Integer, j59> $itemContent;
        final /* synthetic */ List<T> $items;

        /* JADX WARN: Multi-variable type inference failed */
        public C05355(gm3<? super LazyGridItemScope, ? super Integer, ? super T, ? super Composer, ? super Integer, j59> gm3Var, List<? extends T> list) {
            this.$itemContent = gm3Var;
            this.$items = list;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public final void invoke(LazyGridItemScope lazyGridItemScope, int i, Composer composer, int i2) {
            int i3;
            if ((i2 & 6) == 0) {
                i3 = (composer.changed(lazyGridItemScope) ? 4 : 2) | i2;
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
                ComposerKt.traceEventStart(-1942245546, i3, -1, "androidx.compose.foundation.lazy.grid.itemsIndexed.<anonymous> (LazyGridDsl.kt:576)");
            }
            this.$itemContent.invoke(lazyGridItemScope, Integer.valueOf(i), (T) this.$items.get(i), composer, Integer.valueOf(i3 & 126));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ j59 invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
            invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
            return j59.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x010d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0113  */
    /* JADX WARN: Code duplicated, block: B:103:0x0116  */
    /* JADX WARN: Code duplicated, block: B:107:0x0127  */
    /* JADX WARN: Code duplicated, block: B:108:0x012a  */
    /* JADX WARN: Code duplicated, block: B:111:0x0133  */
    /* JADX WARN: Code duplicated, block: B:113:0x0140  */
    /* JADX WARN: Code duplicated, block: B:126:0x0164 A[PHI: r0 r4 r5 r6 r7 r8 r9 r10
      0x0164: PHI (r0v34 int) = (r0v16 int), (r0v39 int) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r4v28 androidx.compose.ui.Modifier) = (r4v22 androidx.compose.ui.Modifier), (r4v32 androidx.compose.ui.Modifier) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r5v7 androidx.compose.foundation.lazy.grid.LazyGridState) = (r5v3 androidx.compose.foundation.lazy.grid.LazyGridState), (r5v8 androidx.compose.foundation.lazy.grid.LazyGridState) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r6v10 androidx.compose.foundation.layout.PaddingValues) = (r6v6 androidx.compose.foundation.layout.PaddingValues), (r6v11 androidx.compose.foundation.layout.PaddingValues) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r7v14 boolean) = (r7v10 boolean), (r7v15 boolean) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r8v4 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r8v2 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r8v5 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r9v10 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r9v6 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r9v11 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r10v10 androidx.compose.foundation.gestures.FlingBehavior) = (r10v7 androidx.compose.foundation.gestures.FlingBehavior), (r10v11 androidx.compose.foundation.gestures.FlingBehavior) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:127:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x016a  */
    /* JADX WARN: Code duplicated, block: B:131:0x0171  */
    /* JADX WARN: Code duplicated, block: B:133:0x017b  */
    /* JADX WARN: Code duplicated, block: B:135:0x0187  */
    /* JADX WARN: Code duplicated, block: B:138:0x018c  */
    /* JADX WARN: Code duplicated, block: B:140:0x0190  */
    /* JADX WARN: Code duplicated, block: B:141:0x0195  */
    /* JADX WARN: Code duplicated, block: B:144:0x019e  */
    /* JADX WARN: Code duplicated, block: B:147:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:151:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:154:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:157:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:159:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:162:0x020f  */
    /* JADX WARN: Code duplicated, block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044  */
    /* JADX WARN: Code duplicated, block: B:27:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0055  */
    /* JADX WARN: Code duplicated, block: B:34:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0076  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0092  */
    /* JADX WARN: Code duplicated, block: B:58:0x0096  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00af  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00be  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:80:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:83:0x00da A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:95:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:96:0x0101  */
    @ul2
    public static final /* synthetic */ void LazyHorizontalGrid(final GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, FlingBehavior flingBehavior, boolean z2, final nl3 nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        LazyGridState lazyGridStateRememberLazyGridState;
        int i4;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        int i5;
        int i6;
        final boolean z3;
        int i7;
        Arrangement.Horizontal horizontal2;
        int i8;
        Arrangement.Vertical top;
        int i9;
        int i10;
        int i11;
        boolean z4;
        final LazyGridState lazyGridState2;
        final PaddingValues paddingValues2;
        final FlingBehavior flingBehavior2;
        final Modifier modifier3;
        final Arrangement.Horizontal horizontal3;
        final Arrangement.Vertical vertical2;
        final boolean z5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        FlingBehavior flingBehavior3;
        FlingBehavior flingBehavior4;
        int i12;
        Modifier modifier4;
        LazyGridState lazyGridState3;
        PaddingValues paddingValues3;
        boolean z6;
        Arrangement.Horizontal horizontal4;
        Arrangement.Vertical vertical3;
        boolean z7;
        Arrangement arrangement;
        Arrangement.Horizontal end;
        int i13;
        Composer composerStartRestartGroup = composer.startRestartGroup(2123608858);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(gridCells) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i14 = i2 & 2;
        if (i14 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    lazyGridStateRememberLazyGridState = lazyGridState;
                    int i15 = composerStartRestartGroup.changed(lazyGridStateRememberLazyGridState) ? 256 : 128;
                    i3 |= i15;
                } else {
                    lazyGridStateRememberLazyGridState = lazyGridState;
                }
                i3 |= i15;
            } else {
                lazyGridStateRememberLazyGridState = lazyGridState;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues;
                    if (composerStartRestartGroup.changed(paddingValuesM2026PaddingValues0680j_4)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        z3 = z;
                        if (composerStartRestartGroup.changed(z3)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            horizontal2 = horizontal;
                            int i16 = composerStartRestartGroup.changed(horizontal2) ? 131072 : 65536;
                            i3 |= i16;
                        } else {
                            horizontal2 = horizontal;
                        }
                        i3 |= i16;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        if ((1572864 & i) == 0) {
                            top = vertical;
                            if (composerStartRestartGroup.changed(top)) {
                                i9 = 1048576;
                            } else {
                                i9 = 524288;
                            }
                            i3 |= i9;
                        }
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                        }
                        i10 = i2 & 256;
                        if (i10 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(z2)) {
                                    i11 = 67108864;
                                } else {
                                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i11;
                            }
                            if ((i & 805306368) == 0) {
                                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                    i13 = 536870912;
                                } else {
                                    i13 = 268435456;
                                }
                                i3 |= i13;
                            }
                            if ((i3 & 306783379) != 306783378) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    if ((i2 & 4) != 0) {
                                        i3 &= -897;
                                    }
                                    if ((i2 & 32) != 0) {
                                        i3 &= -458753;
                                    }
                                    if ((i2 & 128) != 0) {
                                        i3 &= -29360129;
                                    }
                                    flingBehavior4 = flingBehavior;
                                    i12 = i3;
                                    modifier4 = modifier2;
                                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                    z6 = z3;
                                    horizontal4 = horizontal2;
                                    vertical3 = top;
                                } else {
                                    if (i14 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if ((i2 & 4) != 0) {
                                        i3 &= -897;
                                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                    }
                                    if (i4 != 0) {
                                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                    }
                                    if (i6 != 0) {
                                        z3 = false;
                                    }
                                    if ((i2 & 32) != 0) {
                                        arrangement = Arrangement.INSTANCE;
                                        if (z3) {
                                            end = arrangement.getEnd();
                                        } else {
                                            end = arrangement.getStart();
                                        }
                                        i3 &= -458753;
                                        horizontal2 = end;
                                    }
                                    if (i8 != 0) {
                                        top = Arrangement.INSTANCE.getTop();
                                    }
                                    if ((i2 & 128) != 0) {
                                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                        i3 = (-29360129) & i3;
                                    } else {
                                        flingBehavior3 = flingBehavior;
                                    }
                                    flingBehavior4 = flingBehavior3;
                                    i12 = i3;
                                    modifier4 = modifier2;
                                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                    z6 = z3;
                                    horizontal4 = horizontal2;
                                    vertical3 = top;
                                    if (i10 != 0) {
                                        z7 = true;
                                    }
                                    composerStartRestartGroup.endDefaults();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                                    }
                                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    FlingBehavior flingBehavior5 = flingBehavior4;
                                    modifier3 = modifier4;
                                    flingBehavior2 = flingBehavior5;
                                    z5 = z7;
                                    z3 = z6;
                                    paddingValues2 = paddingValues3;
                                    vertical2 = vertical3;
                                    lazyGridState2 = lazyGridState3;
                                    horizontal3 = horizontal4;
                                }
                                z7 = z2;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                                }
                                LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                FlingBehavior flingBehavior6 = flingBehavior4;
                                modifier3 = modifier4;
                                flingBehavior2 = flingBehavior6;
                                z5 = z7;
                                z3 = z6;
                                paddingValues2 = paddingValues3;
                                vertical2 = vertical3;
                                lazyGridState2 = lazyGridState3;
                                horizontal3 = horizontal4;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                PaddingValues paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                lazyGridState2 = lazyGridStateRememberLazyGridState;
                                paddingValues2 = paddingValues4;
                                flingBehavior2 = flingBehavior;
                                modifier3 = modifier2;
                                horizontal3 = horizontal2;
                                vertical2 = top;
                                z5 = z2;
                            }
                            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                            }
                            LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior7 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior7;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical2 = vertical3;
                            lazyGridState2 = lazyGridState3;
                            horizontal3 = horizontal4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues5 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues5;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            vertical2 = top;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    top = vertical;
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                            }
                            LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior8 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior8;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical2 = vertical3;
                            lazyGridState2 = lazyGridState3;
                            horizontal3 = horizontal4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues6 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues6;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            vertical2 = top;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior9 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior9;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues7 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues7;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z3 = z;
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                        }
                        i3 |= i16;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i3 |= i16;
                } else {
                    horizontal2 = horizontal;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        top = vertical;
                        if (composerStartRestartGroup.changed(top)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                            }
                            LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior10 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior10;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical2 = vertical3;
                            lazyGridState2 = lazyGridState3;
                            horizontal3 = horizontal4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues8 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues8;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            vertical2 = top;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior11 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior11;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues9 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues9;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                top = vertical;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior12 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior12;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues10 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues10;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior13 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior13;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues11 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues11;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            paddingValuesM2026PaddingValues0680j_4 = paddingValues;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                        }
                        i3 |= i16;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i3 |= i16;
                } else {
                    horizontal2 = horizontal;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        top = vertical;
                        if (composerStartRestartGroup.changed(top)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                            }
                            LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior14 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior14;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical2 = vertical3;
                            lazyGridState2 = lazyGridState3;
                            horizontal3 = horizontal4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues12 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues12;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            vertical2 = top;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior15 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior15;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues13 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues13;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                top = vertical;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior16 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior16;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues14 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues14;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior17 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior17;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues15 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues15;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z3 = z;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i16;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i16;
            } else {
                horizontal2 = horizontal;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    top = vertical;
                    if (composerStartRestartGroup.changed(top)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior18 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior18;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues16 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues16;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior19 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior19;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues17 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues17;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            top = vertical;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior110 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior110;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues18 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues18;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                }
                LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior111 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior111;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical2 = vertical3;
                lazyGridState2 = lazyGridState3;
                horizontal3 = horizontal4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues19 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues19;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                vertical2 = top;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                lazyGridStateRememberLazyGridState = lazyGridState;
                if (composerStartRestartGroup.changed(lazyGridStateRememberLazyGridState)) {
                }
                i3 |= i15;
            } else {
                lazyGridStateRememberLazyGridState = lazyGridState;
            }
            i3 |= i15;
        } else {
            lazyGridStateRememberLazyGridState = lazyGridState;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                paddingValuesM2026PaddingValues0680j_4 = paddingValues;
                if (composerStartRestartGroup.changed(paddingValuesM2026PaddingValues0680j_4)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        horizontal2 = horizontal;
                        if (composerStartRestartGroup.changed(horizontal2)) {
                        }
                        i3 |= i16;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i3 |= i16;
                } else {
                    horizontal2 = horizontal;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        top = vertical;
                        if (composerStartRestartGroup.changed(top)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        end = arrangement.getStart();
                                    } else {
                                        end = arrangement.getEnd();
                                    }
                                    i3 &= -458753;
                                    horizontal2 = end;
                                }
                                if (i8 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                horizontal4 = horizontal2;
                                vertical3 = top;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                            }
                            LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior112 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior112;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical2 = vertical3;
                            lazyGridState2 = lazyGridState3;
                            horizontal3 = horizontal4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues110 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues110;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            vertical2 = top;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior113 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior113;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues111 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues111;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                top = vertical;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior114 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior114;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues112 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues112;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior115 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior115;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues113 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues113;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z3 = z;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i16;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i16;
            } else {
                horizontal2 = horizontal;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    top = vertical;
                    if (composerStartRestartGroup.changed(top)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior116 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior116;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues114 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues114;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior117 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior117;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues115 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues115;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            top = vertical;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior118 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior118;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues116 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues116;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                }
                LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior119 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior119;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical2 = vertical3;
                lazyGridState2 = lazyGridState3;
                horizontal3 = horizontal4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues117 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues117;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                vertical2 = top;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        paddingValuesM2026PaddingValues0680j_4 = paddingValues;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    horizontal2 = horizontal;
                    if (composerStartRestartGroup.changed(horizontal2)) {
                    }
                    i3 |= i16;
                } else {
                    horizontal2 = horizontal;
                }
                i3 |= i16;
            } else {
                horizontal2 = horizontal;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    top = vertical;
                    if (composerStartRestartGroup.changed(top)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    end = arrangement.getStart();
                                } else {
                                    end = arrangement.getEnd();
                                }
                                i3 &= -458753;
                                horizontal2 = end;
                            }
                            if (i8 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            horizontal4 = horizontal2;
                            vertical3 = top;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                        }
                        LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior1110 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior1110;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical2 = vertical3;
                        lazyGridState2 = lazyGridState3;
                        horizontal3 = horizontal4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues118 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues118;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        vertical2 = top;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior1111 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior1111;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues119 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues119;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            top = vertical;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior1112 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior1112;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues1110 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues1110;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                }
                LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior1113 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior1113;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical2 = vertical3;
                lazyGridState2 = lazyGridState3;
                horizontal3 = horizontal4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues1111 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues1111;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                vertical2 = top;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z3 = z;
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                horizontal2 = horizontal;
                if (composerStartRestartGroup.changed(horizontal2)) {
                }
                i3 |= i16;
            } else {
                horizontal2 = horizontal;
            }
            i3 |= i16;
        } else {
            horizontal2 = horizontal;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            if ((1572864 & i) == 0) {
                top = vertical;
                if (composerStartRestartGroup.changed(top)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                end = arrangement.getStart();
                            } else {
                                end = arrangement.getEnd();
                            }
                            i3 &= -458753;
                            horizontal2 = end;
                        }
                        if (i8 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        horizontal4 = horizontal2;
                        vertical3 = top;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                    }
                    LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior1114 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior1114;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical2 = vertical3;
                    lazyGridState2 = lazyGridState3;
                    horizontal3 = horizontal4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues1112 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues1112;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    vertical2 = top;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                }
                LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior1115 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior1115;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical2 = vertical3;
                lazyGridState2 = lazyGridState3;
                horizontal3 = horizontal4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues1113 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues1113;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                vertical2 = top;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        top = vertical;
        if ((i & 12582912) != 0) {
            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
        }
        i10 = i2 & 256;
        if (i10 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            end = arrangement.getStart();
                        } else {
                            end = arrangement.getEnd();
                        }
                        i3 &= -458753;
                        horizontal2 = end;
                    }
                    if (i8 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    horizontal4 = horizontal2;
                    vertical3 = top;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
                }
                LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior1116 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior1116;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical2 = vertical3;
                lazyGridState2 = lazyGridState3;
                horizontal3 = horizontal4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues1114 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues1114;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                vertical2 = top;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i13 = 536870912;
            } else {
                i13 = 268435456;
            }
            i3 |= i13;
        }
        if ((i3 & 306783379) != 306783378) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                }
                if (i4 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                }
                if (i6 != 0) {
                    z3 = false;
                }
                if ((i2 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -458753;
                    horizontal2 = end;
                }
                if (i8 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                }
                if ((i2 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 = (-29360129) & i3;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                flingBehavior4 = flingBehavior3;
                i12 = i3;
                modifier4 = modifier2;
                lazyGridState3 = lazyGridStateRememberLazyGridState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                horizontal4 = horizontal2;
                vertical3 = top;
                if (i10 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
            } else {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                }
                if (i4 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                }
                if (i6 != 0) {
                    z3 = false;
                }
                if ((i2 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        end = arrangement.getStart();
                    } else {
                        end = arrangement.getEnd();
                    }
                    i3 &= -458753;
                    horizontal2 = end;
                }
                if (i8 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                }
                if ((i2 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 = (-29360129) & i3;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                flingBehavior4 = flingBehavior3;
                i12 = i3;
                modifier4 = modifier2;
                lazyGridState3 = lazyGridStateRememberLazyGridState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                horizontal4 = horizontal2;
                vertical3 = top;
                if (i10 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2123608858, i12, -1, "androidx.compose.foundation.lazy.grid.LazyHorizontalGrid (LazyGridDsl.kt:199)");
            }
            LazyHorizontalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, horizontal4, vertical3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            FlingBehavior flingBehavior1117 = flingBehavior4;
            modifier3 = modifier4;
            flingBehavior2 = flingBehavior1117;
            z5 = z7;
            z3 = z6;
            paddingValues2 = paddingValues3;
            vertical2 = vertical3;
            lazyGridState2 = lazyGridState3;
            horizontal3 = horizontal4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            PaddingValues paddingValues1115 = paddingValuesM2026PaddingValues0680j_4;
            lazyGridState2 = lazyGridStateRememberLazyGridState;
            paddingValues2 = paddingValues1115;
            flingBehavior2 = flingBehavior;
            modifier3 = modifier2;
            horizontal3 = horizontal2;
            vertical2 = top;
            z5 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sl4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyGridDslKt.LazyHorizontalGrid$lambda$1(gridCells, modifier3, lazyGridState2, paddingValues2, z3, horizontal3, vertical2, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x010d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0113  */
    /* JADX WARN: Code duplicated, block: B:103:0x0116  */
    /* JADX WARN: Code duplicated, block: B:107:0x0127  */
    /* JADX WARN: Code duplicated, block: B:108:0x012a  */
    /* JADX WARN: Code duplicated, block: B:111:0x0133  */
    /* JADX WARN: Code duplicated, block: B:113:0x0140  */
    /* JADX WARN: Code duplicated, block: B:126:0x0164 A[PHI: r0 r4 r5 r6 r7 r8 r9 r10
      0x0164: PHI (r0v34 int) = (r0v16 int), (r0v39 int) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r4v28 androidx.compose.ui.Modifier) = (r4v22 androidx.compose.ui.Modifier), (r4v32 androidx.compose.ui.Modifier) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r5v7 androidx.compose.foundation.lazy.grid.LazyGridState) = (r5v3 androidx.compose.foundation.lazy.grid.LazyGridState), (r5v8 androidx.compose.foundation.lazy.grid.LazyGridState) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r6v10 androidx.compose.foundation.layout.PaddingValues) = (r6v6 androidx.compose.foundation.layout.PaddingValues), (r6v11 androidx.compose.foundation.layout.PaddingValues) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r7v14 boolean) = (r7v10 boolean), (r7v15 boolean) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r8v4 androidx.compose.foundation.layout.Arrangement$Vertical) = 
      (r8v2 androidx.compose.foundation.layout.Arrangement$Vertical)
      (r8v5 androidx.compose.foundation.layout.Arrangement$Vertical)
     binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r9v10 androidx.compose.foundation.layout.Arrangement$Horizontal) = 
      (r9v6 androidx.compose.foundation.layout.Arrangement$Horizontal)
      (r9v11 androidx.compose.foundation.layout.Arrangement$Horizontal)
     binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r10v10 androidx.compose.foundation.gestures.FlingBehavior) = (r10v7 androidx.compose.foundation.gestures.FlingBehavior), (r10v11 androidx.compose.foundation.gestures.FlingBehavior) binds: [B:150:0x01bd, B:125:0x015b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:127:0x0168 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x016a  */
    /* JADX WARN: Code duplicated, block: B:131:0x0171  */
    /* JADX WARN: Code duplicated, block: B:133:0x017b  */
    /* JADX WARN: Code duplicated, block: B:135:0x0187  */
    /* JADX WARN: Code duplicated, block: B:138:0x018c  */
    /* JADX WARN: Code duplicated, block: B:140:0x0190  */
    /* JADX WARN: Code duplicated, block: B:141:0x0195  */
    /* JADX WARN: Code duplicated, block: B:144:0x019e  */
    /* JADX WARN: Code duplicated, block: B:147:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:151:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:154:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:157:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:159:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:162:0x0210  */
    /* JADX WARN: Code duplicated, block: B:164:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044  */
    /* JADX WARN: Code duplicated, block: B:27:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0055  */
    /* JADX WARN: Code duplicated, block: B:34:0x005b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0076  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:56:0x0092  */
    /* JADX WARN: Code duplicated, block: B:58:0x0096  */
    /* JADX WARN: Code duplicated, block: B:60:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00af  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00be  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:80:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:83:0x00da A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:86:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:95:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:96:0x0101  */
    @ul2
    public static final /* synthetic */ void LazyVerticalGrid(final GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z2, final nl3 nl3Var, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        LazyGridState lazyGridStateRememberLazyGridState;
        int i4;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        int i5;
        int i6;
        final boolean z3;
        int i7;
        Arrangement.Vertical vertical2;
        int i8;
        Arrangement.Horizontal start;
        int i9;
        int i10;
        int i11;
        boolean z4;
        final LazyGridState lazyGridState2;
        final PaddingValues paddingValues2;
        final FlingBehavior flingBehavior2;
        final Modifier modifier3;
        final Arrangement.Vertical vertical3;
        final Arrangement.Horizontal horizontal2;
        final boolean z5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        FlingBehavior flingBehavior3;
        FlingBehavior flingBehavior4;
        int i12;
        Modifier modifier4;
        LazyGridState lazyGridState3;
        PaddingValues paddingValues3;
        boolean z6;
        Arrangement.Vertical vertical4;
        Arrangement.Horizontal horizontal3;
        boolean z7;
        Arrangement arrangement;
        Arrangement.Vertical bottom;
        int i13;
        Composer composerStartRestartGroup = composer.startRestartGroup(1485410512);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(gridCells) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i14 = i2 & 2;
        if (i14 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) == 0) {
                    lazyGridStateRememberLazyGridState = lazyGridState;
                    int i15 = composerStartRestartGroup.changed(lazyGridStateRememberLazyGridState) ? 256 : 128;
                    i3 |= i15;
                } else {
                    lazyGridStateRememberLazyGridState = lazyGridState;
                }
                i3 |= i15;
            } else {
                lazyGridStateRememberLazyGridState = lazyGridState;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues;
                    if (composerStartRestartGroup.changed(paddingValuesM2026PaddingValues0680j_4)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        z3 = z;
                        if (composerStartRestartGroup.changed(z3)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    if ((196608 & i) == 0) {
                        if ((i2 & 32) == 0) {
                            vertical2 = vertical;
                            int i16 = composerStartRestartGroup.changed(vertical2) ? 131072 : 65536;
                            i3 |= i16;
                        } else {
                            vertical2 = vertical;
                        }
                        i3 |= i16;
                    } else {
                        vertical2 = vertical;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        if ((1572864 & i) == 0) {
                            start = horizontal;
                            if (composerStartRestartGroup.changed(start)) {
                                i9 = 1048576;
                            } else {
                                i9 = 524288;
                            }
                            i3 |= i9;
                        }
                        if ((i & 12582912) != 0) {
                            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                        }
                        i10 = i2 & 256;
                        if (i10 != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(z2)) {
                                    i11 = 67108864;
                                } else {
                                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i11;
                            }
                            if ((i & 805306368) == 0) {
                                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                    i13 = 536870912;
                                } else {
                                    i13 = 268435456;
                                }
                                i3 |= i13;
                            }
                            if ((i3 & 306783379) != 306783378) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    if ((i2 & 4) != 0) {
                                        i3 &= -897;
                                    }
                                    if ((i2 & 32) != 0) {
                                        i3 &= -458753;
                                    }
                                    if ((i2 & 128) != 0) {
                                        i3 &= -29360129;
                                    }
                                    flingBehavior4 = flingBehavior;
                                    i12 = i3;
                                    modifier4 = modifier2;
                                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                    z6 = z3;
                                    vertical4 = vertical2;
                                    horizontal3 = start;
                                } else {
                                    if (i14 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if ((i2 & 4) != 0) {
                                        i3 &= -897;
                                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                    }
                                    if (i4 != 0) {
                                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                    }
                                    if (i6 != 0) {
                                        z3 = false;
                                    }
                                    if ((i2 & 32) != 0) {
                                        arrangement = Arrangement.INSTANCE;
                                        if (z3) {
                                            bottom = arrangement.getBottom();
                                        } else {
                                            bottom = arrangement.getTop();
                                        }
                                        i3 &= -458753;
                                        vertical2 = bottom;
                                    }
                                    if (i8 != 0) {
                                        start = Arrangement.INSTANCE.getStart();
                                    }
                                    if ((i2 & 128) != 0) {
                                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                        i3 = (-29360129) & i3;
                                    } else {
                                        flingBehavior3 = flingBehavior;
                                    }
                                    flingBehavior4 = flingBehavior3;
                                    i12 = i3;
                                    modifier4 = modifier2;
                                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                    z6 = z3;
                                    vertical4 = vertical2;
                                    horizontal3 = start;
                                    if (i10 != 0) {
                                        z7 = true;
                                    }
                                    composerStartRestartGroup.endDefaults();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                                    }
                                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    FlingBehavior flingBehavior5 = flingBehavior4;
                                    modifier3 = modifier4;
                                    flingBehavior2 = flingBehavior5;
                                    Arrangement.Horizontal horizontal4 = horizontal3;
                                    lazyGridState2 = lazyGridState3;
                                    horizontal2 = horizontal4;
                                    z5 = z7;
                                    z3 = z6;
                                    paddingValues2 = paddingValues3;
                                    vertical3 = vertical4;
                                }
                                z7 = z2;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                                }
                                LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                FlingBehavior flingBehavior6 = flingBehavior4;
                                modifier3 = modifier4;
                                flingBehavior2 = flingBehavior6;
                                Arrangement.Horizontal horizontal5 = horizontal3;
                                lazyGridState2 = lazyGridState3;
                                horizontal2 = horizontal5;
                                z5 = z7;
                                z3 = z6;
                                paddingValues2 = paddingValues3;
                                vertical3 = vertical4;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                PaddingValues paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                lazyGridState2 = lazyGridStateRememberLazyGridState;
                                paddingValues2 = paddingValues4;
                                flingBehavior2 = flingBehavior;
                                modifier3 = modifier2;
                                vertical3 = vertical2;
                                horizontal2 = start;
                                z5 = z2;
                            }
                            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        GridCells gridCells2 = gridCells;
                                        Modifier modifier5 = modifier3;
                                        LazyGridState lazyGridState4 = lazyGridState2;
                                        PaddingValues paddingValues5 = paddingValues2;
                                        boolean z8 = z3;
                                        Arrangement.Horizontal horizontal6 = horizontal2;
                                        return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues5, z8, vertical3, horizontal6, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                            }
                            LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior7 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior7;
                            Arrangement.Horizontal horizontal6 = horizontal3;
                            lazyGridState2 = lazyGridState3;
                            horizontal2 = horizontal6;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical3 = vertical4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues5 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues5;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            horizontal2 = start;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    GridCells gridCells2 = gridCells;
                                    Modifier modifier5 = modifier3;
                                    LazyGridState lazyGridState4 = lazyGridState2;
                                    PaddingValues paddingValues6 = paddingValues2;
                                    boolean z8 = z3;
                                    Arrangement.Horizontal horizontal7 = horizontal2;
                                    return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues6, z8, vertical3, horizontal7, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    start = horizontal;
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                            }
                            LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior8 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior8;
                            Arrangement.Horizontal horizontal7 = horizontal3;
                            lazyGridState2 = lazyGridState3;
                            horizontal2 = horizontal7;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical3 = vertical4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues6 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues6;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            horizontal2 = start;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    GridCells gridCells2 = gridCells;
                                    Modifier modifier5 = modifier3;
                                    LazyGridState lazyGridState4 = lazyGridState2;
                                    PaddingValues paddingValues7 = paddingValues2;
                                    boolean z8 = z3;
                                    Arrangement.Horizontal horizontal8 = horizontal2;
                                    return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues7, z8, vertical3, horizontal8, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior9 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior9;
                        Arrangement.Horizontal horizontal8 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal8;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues7 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues7;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues8 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal9 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues8, z8, vertical3, horizontal9, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z3 = z;
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                        }
                        i3 |= i16;
                    } else {
                        vertical2 = vertical;
                    }
                    i3 |= i16;
                } else {
                    vertical2 = vertical;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        start = horizontal;
                        if (composerStartRestartGroup.changed(start)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                            }
                            LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior10 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior10;
                            Arrangement.Horizontal horizontal9 = horizontal3;
                            lazyGridState2 = lazyGridState3;
                            horizontal2 = horizontal9;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical3 = vertical4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues8 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues8;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            horizontal2 = start;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    GridCells gridCells2 = gridCells;
                                    Modifier modifier5 = modifier3;
                                    LazyGridState lazyGridState4 = lazyGridState2;
                                    PaddingValues paddingValues9 = paddingValues2;
                                    boolean z8 = z3;
                                    Arrangement.Horizontal horizontal10 = horizontal2;
                                    return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues9, z8, vertical3, horizontal10, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior11 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior11;
                        Arrangement.Horizontal horizontal10 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal10;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues9 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues9;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues10 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal11 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues10, z8, vertical3, horizontal11, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                start = horizontal;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior12 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior12;
                        Arrangement.Horizontal horizontal11 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal11;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues10 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues10;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues11 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal12 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues11, z8, vertical3, horizontal12, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior13 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior13;
                    Arrangement.Horizontal horizontal12 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal12;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues11 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues11;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues12 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal13 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues12, z8, vertical3, horizontal13, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            paddingValuesM2026PaddingValues0680j_4 = paddingValues;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                        }
                        i3 |= i16;
                    } else {
                        vertical2 = vertical;
                    }
                    i3 |= i16;
                } else {
                    vertical2 = vertical;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        start = horizontal;
                        if (composerStartRestartGroup.changed(start)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                            }
                            LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior14 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior14;
                            Arrangement.Horizontal horizontal13 = horizontal3;
                            lazyGridState2 = lazyGridState3;
                            horizontal2 = horizontal13;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical3 = vertical4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues12 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues12;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            horizontal2 = start;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    GridCells gridCells2 = gridCells;
                                    Modifier modifier5 = modifier3;
                                    LazyGridState lazyGridState4 = lazyGridState2;
                                    PaddingValues paddingValues13 = paddingValues2;
                                    boolean z8 = z3;
                                    Arrangement.Horizontal horizontal14 = horizontal2;
                                    return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues13, z8, vertical3, horizontal14, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior15 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior15;
                        Arrangement.Horizontal horizontal14 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal14;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues13 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues13;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues14 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal15 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues14, z8, vertical3, horizontal15, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                start = horizontal;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior16 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior16;
                        Arrangement.Horizontal horizontal15 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal15;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues14 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues14;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues15 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal16 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues15, z8, vertical3, horizontal16, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior17 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior17;
                    Arrangement.Horizontal horizontal16 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal16;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues15 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues15;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues16 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal17 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues16, z8, vertical3, horizontal17, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z3 = z;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i16;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i16;
            } else {
                vertical2 = vertical;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    start = horizontal;
                    if (composerStartRestartGroup.changed(start)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior18 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior18;
                        Arrangement.Horizontal horizontal17 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal17;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues16 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues16;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues17 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal18 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues17, z8, vertical3, horizontal18, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior19 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior19;
                    Arrangement.Horizontal horizontal18 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal18;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues17 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues17;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues18 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal19 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues18, z8, vertical3, horizontal19, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            start = horizontal;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior110 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior110;
                    Arrangement.Horizontal horizontal19 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal19;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues18 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues18;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues19 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal110 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues19, z8, vertical3, horizontal110, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                }
                LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior111 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior111;
                Arrangement.Horizontal horizontal110 = horizontal3;
                lazyGridState2 = lazyGridState3;
                horizontal2 = horizontal110;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical3 = vertical4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues19 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues19;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                vertical3 = vertical2;
                horizontal2 = start;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState4 = lazyGridState2;
                        PaddingValues paddingValues110 = paddingValues2;
                        boolean z8 = z3;
                        Arrangement.Horizontal horizontal111 = horizontal2;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues110, z8, vertical3, horizontal111, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                lazyGridStateRememberLazyGridState = lazyGridState;
                if (composerStartRestartGroup.changed(lazyGridStateRememberLazyGridState)) {
                }
                i3 |= i15;
            } else {
                lazyGridStateRememberLazyGridState = lazyGridState;
            }
            i3 |= i15;
        } else {
            lazyGridStateRememberLazyGridState = lazyGridState;
        }
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                paddingValuesM2026PaddingValues0680j_4 = paddingValues;
                if (composerStartRestartGroup.changed(paddingValuesM2026PaddingValues0680j_4)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        vertical2 = vertical;
                        if (composerStartRestartGroup.changed(vertical2)) {
                        }
                        i3 |= i16;
                    } else {
                        vertical2 = vertical;
                    }
                    i3 |= i16;
                } else {
                    vertical2 = vertical;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        start = horizontal;
                        if (composerStartRestartGroup.changed(start)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    if ((i & 12582912) != 0) {
                        i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i10 = i2 & 256;
                    if (i10 != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i11 = 67108864;
                            } else {
                                i11 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i11;
                        }
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i13 = 536870912;
                            } else {
                                i13 = 268435456;
                            }
                            i3 |= i13;
                        }
                        if ((i3 & 306783379) != 306783378) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) == 0) {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            } else {
                                if (i14 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                                }
                                if (i4 != 0) {
                                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                                }
                                if (i6 != 0) {
                                    z3 = false;
                                }
                                if ((i2 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z3) {
                                        bottom = arrangement.getTop();
                                    } else {
                                        bottom = arrangement.getBottom();
                                    }
                                    i3 &= -458753;
                                    vertical2 = bottom;
                                }
                                if (i8 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                }
                                if ((i2 & 128) != 0) {
                                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                    i3 = (-29360129) & i3;
                                } else {
                                    flingBehavior3 = flingBehavior;
                                }
                                flingBehavior4 = flingBehavior3;
                                i12 = i3;
                                modifier4 = modifier2;
                                lazyGridState3 = lazyGridStateRememberLazyGridState;
                                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                                z6 = z3;
                                vertical4 = vertical2;
                                horizontal3 = start;
                                if (i10 != 0) {
                                    z7 = true;
                                } else {
                                    z7 = z2;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                            }
                            LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            FlingBehavior flingBehavior112 = flingBehavior4;
                            modifier3 = modifier4;
                            flingBehavior2 = flingBehavior112;
                            Arrangement.Horizontal horizontal111 = horizontal3;
                            lazyGridState2 = lazyGridState3;
                            horizontal2 = horizontal111;
                            z5 = z7;
                            z3 = z6;
                            paddingValues2 = paddingValues3;
                            vertical3 = vertical4;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            PaddingValues paddingValues110 = paddingValuesM2026PaddingValues0680j_4;
                            lazyGridState2 = lazyGridStateRememberLazyGridState;
                            paddingValues2 = paddingValues110;
                            flingBehavior2 = flingBehavior;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            horizontal2 = start;
                            z5 = z2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    GridCells gridCells2 = gridCells;
                                    Modifier modifier5 = modifier3;
                                    LazyGridState lazyGridState4 = lazyGridState2;
                                    PaddingValues paddingValues111 = paddingValues2;
                                    boolean z8 = z3;
                                    Arrangement.Horizontal horizontal112 = horizontal2;
                                    return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues111, z8, vertical3, horizontal112, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior113 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior113;
                        Arrangement.Horizontal horizontal112 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal112;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues111 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues111;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues112 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal113 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues112, z8, vertical3, horizontal113, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                start = horizontal;
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior114 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior114;
                        Arrangement.Horizontal horizontal113 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal113;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues112 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues112;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues113 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal114 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues113, z8, vertical3, horizontal114, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior115 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior115;
                    Arrangement.Horizontal horizontal114 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal114;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues113 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues113;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues114 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal115 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues114, z8, vertical3, horizontal115, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z3 = z;
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i16;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i16;
            } else {
                vertical2 = vertical;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    start = horizontal;
                    if (composerStartRestartGroup.changed(start)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior116 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior116;
                        Arrangement.Horizontal horizontal115 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal115;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues114 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues114;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues115 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal116 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues115, z8, vertical3, horizontal116, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior117 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior117;
                    Arrangement.Horizontal horizontal116 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal116;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues115 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues115;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues116 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal117 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues116, z8, vertical3, horizontal117, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            start = horizontal;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior118 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior118;
                    Arrangement.Horizontal horizontal117 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal117;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues116 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues116;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues117 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal118 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues117, z8, vertical3, horizontal118, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                }
                LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior119 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior119;
                Arrangement.Horizontal horizontal118 = horizontal3;
                lazyGridState2 = lazyGridState3;
                horizontal2 = horizontal118;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical3 = vertical4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues117 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues117;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                vertical3 = vertical2;
                horizontal2 = start;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState4 = lazyGridState2;
                        PaddingValues paddingValues118 = paddingValues2;
                        boolean z8 = z3;
                        Arrangement.Horizontal horizontal119 = horizontal2;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues118, z8, vertical3, horizontal119, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        paddingValuesM2026PaddingValues0680j_4 = paddingValues;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    vertical2 = vertical;
                    if (composerStartRestartGroup.changed(vertical2)) {
                    }
                    i3 |= i16;
                } else {
                    vertical2 = vertical;
                }
                i3 |= i16;
            } else {
                vertical2 = vertical;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    start = horizontal;
                    if (composerStartRestartGroup.changed(start)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                if ((i & 12582912) != 0) {
                    i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
                }
                i10 = i2 & 256;
                if (i10 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i11;
                    }
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i13 = 536870912;
                        } else {
                            i13 = 268435456;
                        }
                        i3 |= i13;
                    }
                    if ((i3 & 306783379) != 306783378) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) == 0) {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        } else {
                            if (i14 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                i3 &= -897;
                                lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                            }
                            if (i4 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            }
                            if (i6 != 0) {
                                z3 = false;
                            }
                            if ((i2 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z3) {
                                    bottom = arrangement.getTop();
                                } else {
                                    bottom = arrangement.getBottom();
                                }
                                i3 &= -458753;
                                vertical2 = bottom;
                            }
                            if (i8 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            }
                            if ((i2 & 128) != 0) {
                                flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i3 = (-29360129) & i3;
                            } else {
                                flingBehavior3 = flingBehavior;
                            }
                            flingBehavior4 = flingBehavior3;
                            i12 = i3;
                            modifier4 = modifier2;
                            lazyGridState3 = lazyGridStateRememberLazyGridState;
                            paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                            z6 = z3;
                            vertical4 = vertical2;
                            horizontal3 = start;
                            if (i10 != 0) {
                                z7 = true;
                            } else {
                                z7 = z2;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                        }
                        LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        FlingBehavior flingBehavior1110 = flingBehavior4;
                        modifier3 = modifier4;
                        flingBehavior2 = flingBehavior1110;
                        Arrangement.Horizontal horizontal119 = horizontal3;
                        lazyGridState2 = lazyGridState3;
                        horizontal2 = horizontal119;
                        z5 = z7;
                        z3 = z6;
                        paddingValues2 = paddingValues3;
                        vertical3 = vertical4;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        PaddingValues paddingValues118 = paddingValuesM2026PaddingValues0680j_4;
                        lazyGridState2 = lazyGridStateRememberLazyGridState;
                        paddingValues2 = paddingValues118;
                        flingBehavior2 = flingBehavior;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        horizontal2 = start;
                        z5 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                GridCells gridCells2 = gridCells;
                                Modifier modifier5 = modifier3;
                                LazyGridState lazyGridState4 = lazyGridState2;
                                PaddingValues paddingValues119 = paddingValues2;
                                boolean z8 = z3;
                                Arrangement.Horizontal horizontal1110 = horizontal2;
                                return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues119, z8, vertical3, horizontal1110, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior1111 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior1111;
                    Arrangement.Horizontal horizontal1110 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal1110;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues119 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues119;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues1110 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal1111 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1110, z8, vertical3, horizontal1111, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            start = horizontal;
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior1112 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior1112;
                    Arrangement.Horizontal horizontal1111 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal1111;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues1110 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues1110;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues1111 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal1112 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1111, z8, vertical3, horizontal1112, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                }
                LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior1113 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior1113;
                Arrangement.Horizontal horizontal1112 = horizontal3;
                lazyGridState2 = lazyGridState3;
                horizontal2 = horizontal1112;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical3 = vertical4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues1111 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues1111;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                vertical3 = vertical2;
                horizontal2 = start;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState4 = lazyGridState2;
                        PaddingValues paddingValues1112 = paddingValues2;
                        boolean z8 = z3;
                        Arrangement.Horizontal horizontal1113 = horizontal2;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1112, z8, vertical3, horizontal1113, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z3 = z;
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                vertical2 = vertical;
                if (composerStartRestartGroup.changed(vertical2)) {
                }
                i3 |= i16;
            } else {
                vertical2 = vertical;
            }
            i3 |= i16;
        } else {
            vertical2 = vertical;
        }
        i8 = i2 & 64;
        if (i8 != 0) {
            if ((1572864 & i) == 0) {
                start = horizontal;
                if (composerStartRestartGroup.changed(start)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            if ((i & 12582912) != 0) {
                i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
            }
            i10 = i2 & 256;
            if (i10 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i3 |= i11;
                }
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i13 = 536870912;
                    } else {
                        i13 = 268435456;
                    }
                    i3 |= i13;
                }
                if ((i3 & 306783379) != 306783378) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0) {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    } else {
                        if (i14 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            i3 &= -897;
                            lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                        }
                        if (i4 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        }
                        if (i6 != 0) {
                            z3 = false;
                        }
                        if ((i2 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z3) {
                                bottom = arrangement.getTop();
                            } else {
                                bottom = arrangement.getBottom();
                            }
                            i3 &= -458753;
                            vertical2 = bottom;
                        }
                        if (i8 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        }
                        if ((i2 & 128) != 0) {
                            flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i3 = (-29360129) & i3;
                        } else {
                            flingBehavior3 = flingBehavior;
                        }
                        flingBehavior4 = flingBehavior3;
                        i12 = i3;
                        modifier4 = modifier2;
                        lazyGridState3 = lazyGridStateRememberLazyGridState;
                        paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                        z6 = z3;
                        vertical4 = vertical2;
                        horizontal3 = start;
                        if (i10 != 0) {
                            z7 = true;
                        } else {
                            z7 = z2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                    }
                    LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    FlingBehavior flingBehavior1114 = flingBehavior4;
                    modifier3 = modifier4;
                    flingBehavior2 = flingBehavior1114;
                    Arrangement.Horizontal horizontal1113 = horizontal3;
                    lazyGridState2 = lazyGridState3;
                    horizontal2 = horizontal1113;
                    z5 = z7;
                    z3 = z6;
                    paddingValues2 = paddingValues3;
                    vertical3 = vertical4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    PaddingValues paddingValues1112 = paddingValuesM2026PaddingValues0680j_4;
                    lazyGridState2 = lazyGridStateRememberLazyGridState;
                    paddingValues2 = paddingValues1112;
                    flingBehavior2 = flingBehavior;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    horizontal2 = start;
                    z5 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            GridCells gridCells2 = gridCells;
                            Modifier modifier5 = modifier3;
                            LazyGridState lazyGridState4 = lazyGridState2;
                            PaddingValues paddingValues1113 = paddingValues2;
                            boolean z8 = z3;
                            Arrangement.Horizontal horizontal1114 = horizontal2;
                            return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1113, z8, vertical3, horizontal1114, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 100663296;
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                }
                LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior1115 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior1115;
                Arrangement.Horizontal horizontal1114 = horizontal3;
                lazyGridState2 = lazyGridState3;
                horizontal2 = horizontal1114;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical3 = vertical4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues1113 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues1113;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                vertical3 = vertical2;
                horizontal2 = start;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState4 = lazyGridState2;
                        PaddingValues paddingValues1114 = paddingValues2;
                        boolean z8 = z3;
                        Arrangement.Horizontal horizontal1115 = horizontal2;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1114, z8, vertical3, horizontal1115, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        start = horizontal;
        if ((i & 12582912) != 0) {
            i3 |= ((i2 & 128) == 0 || !composerStartRestartGroup.changed(flingBehavior)) ? 4194304 : 8388608;
        }
        i10 = i2 & 256;
        if (i10 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i11;
            }
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i13 = 536870912;
                } else {
                    i13 = 268435456;
                }
                i3 |= i13;
            }
            if ((i3 & 306783379) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                } else {
                    if (i14 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                    }
                    if (i4 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    }
                    if (i6 != 0) {
                        z3 = false;
                    }
                    if ((i2 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z3) {
                            bottom = arrangement.getTop();
                        } else {
                            bottom = arrangement.getBottom();
                        }
                        i3 &= -458753;
                        vertical2 = bottom;
                    }
                    if (i8 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    }
                    if ((i2 & 128) != 0) {
                        flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i3 = (-29360129) & i3;
                    } else {
                        flingBehavior3 = flingBehavior;
                    }
                    flingBehavior4 = flingBehavior3;
                    i12 = i3;
                    modifier4 = modifier2;
                    lazyGridState3 = lazyGridStateRememberLazyGridState;
                    paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                    z6 = z3;
                    vertical4 = vertical2;
                    horizontal3 = start;
                    if (i10 != 0) {
                        z7 = true;
                    } else {
                        z7 = z2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
                }
                LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                FlingBehavior flingBehavior1116 = flingBehavior4;
                modifier3 = modifier4;
                flingBehavior2 = flingBehavior1116;
                Arrangement.Horizontal horizontal1115 = horizontal3;
                lazyGridState2 = lazyGridState3;
                horizontal2 = horizontal1115;
                z5 = z7;
                z3 = z6;
                paddingValues2 = paddingValues3;
                vertical3 = vertical4;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                PaddingValues paddingValues1114 = paddingValuesM2026PaddingValues0680j_4;
                lazyGridState2 = lazyGridStateRememberLazyGridState;
                paddingValues2 = paddingValues1114;
                flingBehavior2 = flingBehavior;
                modifier3 = modifier2;
                vertical3 = vertical2;
                horizontal2 = start;
                z5 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        GridCells gridCells2 = gridCells;
                        Modifier modifier5 = modifier3;
                        LazyGridState lazyGridState4 = lazyGridState2;
                        PaddingValues paddingValues1115 = paddingValues2;
                        boolean z8 = z3;
                        Arrangement.Horizontal horizontal1116 = horizontal2;
                        return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1115, z8, vertical3, horizontal1116, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 100663296;
        if ((i & 805306368) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i13 = 536870912;
            } else {
                i13 = 268435456;
            }
            i3 |= i13;
        }
        if ((i3 & 306783379) != 306783378) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) == 0) {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                }
                if (i4 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                }
                if (i6 != 0) {
                    z3 = false;
                }
                if ((i2 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -458753;
                    vertical2 = bottom;
                }
                if (i8 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                }
                if ((i2 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 = (-29360129) & i3;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                flingBehavior4 = flingBehavior3;
                i12 = i3;
                modifier4 = modifier2;
                lazyGridState3 = lazyGridStateRememberLazyGridState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                vertical4 = vertical2;
                horizontal3 = start;
                if (i10 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
            } else {
                if (i14 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(0, 0, composerStartRestartGroup, 0, 3);
                }
                if (i4 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                }
                if (i6 != 0) {
                    z3 = false;
                }
                if ((i2 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z3) {
                        bottom = arrangement.getTop();
                    } else {
                        bottom = arrangement.getBottom();
                    }
                    i3 &= -458753;
                    vertical2 = bottom;
                }
                if (i8 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                }
                if ((i2 & 128) != 0) {
                    flingBehavior3 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i3 = (-29360129) & i3;
                } else {
                    flingBehavior3 = flingBehavior;
                }
                flingBehavior4 = flingBehavior3;
                i12 = i3;
                modifier4 = modifier2;
                lazyGridState3 = lazyGridStateRememberLazyGridState;
                paddingValues3 = paddingValuesM2026PaddingValues0680j_4;
                z6 = z3;
                vertical4 = vertical2;
                horizontal3 = start;
                if (i10 != 0) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1485410512, i12, -1, "androidx.compose.foundation.lazy.grid.LazyVerticalGrid (LazyGridDsl.kt:110)");
            }
            LazyVerticalGrid(gridCells, modifier4, lazyGridState3, paddingValues3, z6, vertical4, horizontal3, flingBehavior4, z7, OverscrollKt.rememberOverscrollEffect(composerStartRestartGroup, 0), nl3Var, composerStartRestartGroup, i12 & 268435454, (i12 >> 27) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            FlingBehavior flingBehavior1117 = flingBehavior4;
            modifier3 = modifier4;
            flingBehavior2 = flingBehavior1117;
            Arrangement.Horizontal horizontal1116 = horizontal3;
            lazyGridState2 = lazyGridState3;
            horizontal2 = horizontal1116;
            z5 = z7;
            z3 = z6;
            paddingValues2 = paddingValues3;
            vertical3 = vertical4;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            PaddingValues paddingValues1115 = paddingValuesM2026PaddingValues0680j_4;
            lazyGridState2 = lazyGridStateRememberLazyGridState;
            paddingValues2 = paddingValues1115;
            flingBehavior2 = flingBehavior;
            modifier3 = modifier2;
            vertical3 = vertical2;
            horizontal2 = start;
            z5 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    GridCells gridCells2 = gridCells;
                    Modifier modifier5 = modifier3;
                    LazyGridState lazyGridState4 = lazyGridState2;
                    PaddingValues paddingValues1116 = paddingValues2;
                    boolean z8 = z3;
                    Arrangement.Horizontal horizontal1117 = horizontal2;
                    return LazyGridDslKt.LazyVerticalGrid$lambda$1(gridCells2, modifier5, lazyGridState4, paddingValues1116, z8, vertical3, horizontal1117, flingBehavior2, z5, nl3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
