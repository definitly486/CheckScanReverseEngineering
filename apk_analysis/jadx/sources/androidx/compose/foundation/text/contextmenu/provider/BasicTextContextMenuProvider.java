package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.gm3;
import defpackage.j59;
import defpackage.l91;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.x81;

/* JADX INFO: loaded from: classes.dex */
public final class BasicTextContextMenuProvider implements TextContextMenuProvider {
    public static final int $stable = 0;
    private final gm3<TextContextMenuSession, TextContextMenuDataProvider, ll3<? extends LayoutCoordinates>, Composer, Integer, j59> contextMenuBlock;
    private final MutatorMutex mutatorMutex = new MutatorMutex();
    private final MutableState session$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);

    public final class SessionImpl implements TextContextMenuSession {
        private final x81<j59> channel = l91.a(0, null, null, 7);
        private final TextContextMenuDataProvider dataProvider;

        public SessionImpl(TextContextMenuDataProvider textContextMenuDataProvider) {
            this.dataProvider = textContextMenuDataProvider;
        }

        public final Object awaitClose(e02<? super j59> e02Var) {
            Object objB = this.channel.b(e02Var);
            return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
        }

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public void close() {
            this.channel.mo0trySendJP2dKIU(j59.a);
        }

        public final TextContextMenuDataProvider getDataProvider() {
            return this.dataProvider;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider$showTextContextMenu$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider$showTextContextMenu$2", f = "BasicTextContextMenuProvider.kt", l = {TsExtractor.TS_STREAM_TYPE_HDMV_DTS}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ SessionImpl $localSession;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SessionImpl sessionImpl, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$localSession = sessionImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return BasicTextContextMenuProvider.this.new AnonymousClass2(this.$localSession, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v4, types: [j59, java.lang.Object] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    BasicTextContextMenuProvider.this.setSession(this.$localSession);
                    SessionImpl sessionImpl = this.$localSession;
                    this.label = 1;
                    if (sessionImpl.awaitClose(this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                BasicTextContextMenuProvider.this.setSession(null);
                this = j59.a;
                return this;
            } catch (Throwable th) {
                BasicTextContextMenuProvider.this.setSession(null);
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BasicTextContextMenuProvider(gm3<? super TextContextMenuSession, ? super TextContextMenuDataProvider, ? super ll3<? extends LayoutCoordinates>, ? super Composer, ? super Integer, j59> gm3Var) {
        this.contextMenuBlock = gm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenu$lambda$0(BasicTextContextMenuProvider basicTextContextMenuProvider, ll3 ll3Var, int i, Composer composer, int i2) {
        basicTextContextMenuProvider.ContextMenu(ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContextMenu$lambda$1(BasicTextContextMenuProvider basicTextContextMenuProvider, ll3 ll3Var, int i, Composer composer, int i2) {
        basicTextContextMenuProvider.ContextMenu(ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final SessionImpl getSession() {
        return (SessionImpl) this.session$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setSession(SessionImpl sessionImpl) {
        this.session$delegate.setValue(sessionImpl);
    }

    public final void ContextMenu(final ll3<? extends LayoutCoordinates> ll3Var, Composer composer, final int i) {
        int i2;
        final ll3<? extends LayoutCoordinates> ll3Var2;
        Composer composerStartRestartGroup = composer.startRestartGroup(723898654);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(this) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(723898654, i2, -1, "androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider.ContextMenu (BasicTextContextMenuProvider.kt:137)");
            }
            SessionImpl session = getSession();
            if (session == null) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTextContextMenuProvider.ContextMenu$lambda$0(this.b, ll3Var, i, (Composer) obj, iIntValue);
                        }
                    });
                    return;
                }
                return;
            }
            ll3Var2 = ll3Var;
            this.contextMenuBlock.invoke(session, session.getDataProvider(), ll3Var2, composerStartRestartGroup, Integer.valueOf((i2 << 6) & 896));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            ll3Var2 = ll3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup2 = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup2 != null) {
            scopeUpdateScopeEndRestartGroup2.updateScope(new bm3() { // from class: lf0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTextContextMenuProvider.ContextMenu$lambda$1(this.b, ll3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final void cancel() {
        SessionImpl session = getSession();
        if (session != null) {
            session.close();
        }
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public Object showTextContextMenu(TextContextMenuDataProvider textContextMenuDataProvider, e02<? super j59> e02Var) {
        Object objMutate$default = MutatorMutex.mutate$default(this.mutatorMutex, null, new AnonymousClass2(new SessionImpl(textContextMenuDataProvider), null), e02Var, 1, null);
        return objMutate$default == a32.COROUTINE_SUSPENDED ? objMutate$default : j59.a;
    }
}
