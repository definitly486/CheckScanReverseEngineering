package defpackage;

import android.content.Context;
import android.widget.Toast;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.FlowExtKt;

/* JADX INFO: loaded from: classes2.dex */
public final class io3 {

    /* JADX INFO: loaded from: classes5.dex */
    @bd2(c = "com.warefly.checkscan.features.games.presentation.GamesScreenKt$GamesScreen$1$1$1", f = "GamesScreen.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public final /* synthetic */ Context l;
        public final /* synthetic */ int m;
        public final /* synthetic */ no3 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, int i, no3 no3Var, e02<? super a> e02Var) {
            super(2, e02Var);
            this.l = context;
            this.m = i;
            this.n = no3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new a(this.l, this.m, this.n, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            Toast.makeText(this.l, this.m, 0).show();
            this.n.b(un3.b.a);
            return j59.a;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final /* synthetic */ class b extends qm3 implements nl3<un3, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(un3 un3Var) {
            un3 un3Var2 = un3Var;
            un3Var2.getClass();
            ((no3) this.receiver).b(un3Var2);
            return j59.a;
        }
    }

    public static final void a(final no3 no3Var, Composer composer, final int i) {
        int i2;
        no3Var.getClass();
        Composer composerStartRestartGroup = composer.startRestartGroup(1243796519);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(no3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1243796519, i2, -1, "com.warefly.checkscan.features.games.presentation.GamesScreen (GamesScreen.kt:10)");
            }
            State stateCollectAsStateWithLifecycle = FlowExtKt.collectAsStateWithLifecycle(no3Var.g, (LifecycleOwner) null, (Lifecycle.State) null, (o22) null, composerStartRestartGroup, 0, 7);
            Context context = (Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
            Integer num = ((lo3) stateCollectAsStateWithLifecycle.getValue()).b;
            if (num == null) {
                composerStartRestartGroup.startReplaceGroup(1259432377);
            } else {
                composerStartRestartGroup.startReplaceGroup(1259432378);
                int iIntValue = num.intValue();
                Integer numValueOf = Integer.valueOf(iIntValue);
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(context) | composerStartRestartGroup.changed(iIntValue) | composerStartRestartGroup.changedInstance(no3Var);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new a(context, iIntValue, no3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.LaunchedEffect(numValueOf, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue, composerStartRestartGroup, 0);
            }
            composerStartRestartGroup.endReplaceGroup();
            lo3 lo3Var = (lo3) stateCollectAsStateWithLifecycle.getValue();
            boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(no3Var);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                b bVar = new b(1, no3Var, no3.class, "onEvent", "onEvent(Lcom/warefly/checkscan/features/games/presentation/GamesEvent;)V", 0);
                composerStartRestartGroup.updateRememberedValue(bVar);
                objRememberedValue2 = bVar;
            }
            sn3.b(lo3Var, (nl3) ((qe4) objRememberedValue2), null, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ho3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i | 1);
                    io3.a(no3Var, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }
}
