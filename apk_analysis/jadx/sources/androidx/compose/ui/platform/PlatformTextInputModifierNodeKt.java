package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.Owner;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.gh4;
import defpackage.h8;
import defpackage.j59;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class PlatformTextInputModifierNodeKt {
    private static final ProvidableCompositionLocal<ChainedPlatformTextInputInterceptor> LocalChainedPlatformTextInputInterceptor = CompositionLocalKt.staticCompositionLocalOf(PlatformTextInputModifierNodeKt$LocalChainedPlatformTextInputInterceptor$1.INSTANCE);

    /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$establishTextInputSession$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.ui.platform.PlatformTextInputModifierNodeKt", f = "PlatformTextInputModifierNode.kt", l = {136}, m = "establishTextInputSession", v = 1)
    public static final class C06501 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C06501(e02<? super C06501> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlatformTextInputModifierNodeKt.establishTextInputSession(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.ui.platform.PlatformTextInputModifierNodeKt", f = "PlatformTextInputModifierNode.kt", l = {184, WebmConstants.MkvEbmlElement.PIXEL_HEIGHT}, m = "interceptedTextInputSession", v = 1)
    public static final class C06511 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C06511(e02<? super C06511> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlatformTextInputModifierNodeKt.interceptedTextInputSession(null, null, null, this);
        }
    }

    public static final void InterceptPlatformTextInput(PlatformTextInputInterceptor platformTextInputInterceptor, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1892278287);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(platformTextInputInterceptor) : composerStartRestartGroup.changedInstance(platformTextInputInterceptor) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1892278287, i2, -1, "androidx.compose.ui.platform.InterceptPlatformTextInput (PlatformTextInputModifierNode.kt:155)");
            }
            ProvidableCompositionLocal<ChainedPlatformTextInputInterceptor> providableCompositionLocal = LocalChainedPlatformTextInputInterceptor;
            ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor = (ChainedPlatformTextInputInterceptor) composerStartRestartGroup.consume(providableCompositionLocal);
            boolean zChanged = composerStartRestartGroup.changed(chainedPlatformTextInputInterceptor);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ChainedPlatformTextInputInterceptor(platformTextInputInterceptor, chainedPlatformTextInputInterceptor);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor2 = (ChainedPlatformTextInputInterceptor) objRememberedValue;
            chainedPlatformTextInputInterceptor2.updateInterceptor(platformTextInputInterceptor);
            CompositionLocalKt.CompositionLocalProvider(providableCompositionLocal.provides(chainedPlatformTextInputInterceptor2), bm3Var, composerStartRestartGroup, (i2 & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass1(platformTextInputInterceptor, bm3Var, i));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object establishTextInputSession(PlatformTextInputModifierNode platformTextInputModifierNode, bm3<? super PlatformTextInputSessionScope, ? super e02<?>, ? extends Object> bm3Var, e02<?> e02Var) {
        C06501 c06501;
        if (e02Var instanceof C06501) {
            c06501 = (C06501) e02Var;
            int i = c06501.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c06501.label = i - Integer.MIN_VALUE;
            } else {
                c06501 = new C06501(e02Var);
            }
        } else {
            c06501 = new C06501(e02Var);
        }
        Object obj = c06501.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c06501.label;
        if (i2 == 0) {
            r57.b(obj);
            if (!platformTextInputModifierNode.getNode().isAttached()) {
                fg.c("establishTextInputSession called from an unattached node");
                return null;
            }
            Owner ownerRequireOwner = DelegatableNodeKt.requireOwner(platformTextInputModifierNode);
            ChainedPlatformTextInputInterceptor chainedPlatformTextInputInterceptor = (ChainedPlatformTextInputInterceptor) DelegatableNodeKt.requireLayoutNode(platformTextInputModifierNode).getCompositionLocalMap().get(LocalChainedPlatformTextInputInterceptor);
            c06501.label = 1;
            if (interceptedTextInputSession(ownerRequireOwner, chainedPlatformTextInputInterceptor, bm3Var, c06501) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
    
        if (r6.textInputSession(r8, r0) == r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        if (r7.textInputSession(r6, r8, r0) == r1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object interceptedTextInputSession(androidx.compose.ui.node.Owner r6, androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor r7, defpackage.bm3<? super androidx.compose.ui.platform.PlatformTextInputSessionScope, ? super defpackage.e02<?>, ? extends java.lang.Object> r8, defpackage.e02<?> r9) {
        /*
            boolean r0 = r9 instanceof androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.C06511
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 r0 = (androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.C06511) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 r0 = new androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$interceptedTextInputSession$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L35
            if (r2 == r5) goto L31
            if (r2 == r4) goto L2d
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r3
        L2d:
            defpackage.r57.b(r9)
            goto L50
        L31:
            defpackage.r57.b(r9)
            goto L43
        L35:
            defpackage.r57.b(r9)
            if (r7 != 0) goto L47
            r0.label = r5
            java.lang.Object r6 = r6.textInputSession(r8, r0)
            if (r6 != r1) goto L43
            goto L4f
        L43:
            defpackage.h8.d()
            return r3
        L47:
            r0.label = r4
            java.lang.Object r6 = r7.textInputSession(r6, r8, r0)
            if (r6 != r1) goto L50
        L4f:
            return r1
        L50:
            defpackage.h8.d()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt.interceptedTextInputSession(androidx.compose.ui.node.Owner, androidx.compose.ui.platform.ChainedPlatformTextInputInterceptor, bm3, e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: androidx.compose.ui.platform.PlatformTextInputModifierNodeKt$InterceptPlatformTextInput$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ bm3<Composer, Integer, j59> $content;
        final /* synthetic */ PlatformTextInputInterceptor $interceptor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(PlatformTextInputInterceptor platformTextInputInterceptor, bm3<? super Composer, ? super Integer, j59> bm3Var, int i) {
            super(2);
            this.$interceptor = platformTextInputInterceptor;
            this.$content = bm3Var;
            this.$$changed = i;
        }

        public final void invoke(Composer composer, int i) {
            PlatformTextInputModifierNodeKt.InterceptPlatformTextInput(this.$interceptor, this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}
