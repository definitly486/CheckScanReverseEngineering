package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;

/* JADX INFO: loaded from: classes5.dex */
public final class yn3 extends Fragment {
    public final cl4 b;

    public static final class a implements ll3<ViewModelStoreOwner> {
        public a() {
        }

        @Override // defpackage.ll3
        public final ViewModelStoreOwner invoke() {
            return yn3.this;
        }
    }

    public static final class b implements ll3<no3> {
        public final /* synthetic */ a c;
        public final /* synthetic */ sk d;

        public b(a aVar, sk skVar) {
            this.c = aVar;
            this.d = skVar;
        }

        /* JADX WARN: Type inference failed for: r5v4, types: [androidx.lifecycle.ViewModel, no3] */
        @Override // defpackage.ll3
        public final no3 invoke() {
            ViewModelStore viewModelStore = yn3.this.getViewModelStore();
            yn3 yn3Var = yn3.this;
            CreationExtras defaultViewModelCreationExtras = yn3Var.getDefaultViewModelCreationExtras();
            defaultViewModelCreationExtras.getClass();
            ze7 ze7VarE = e.e(yn3Var);
            zk1 zk1VarA = x07.a(no3.class);
            viewModelStore.getClass();
            ze7VarE.getClass();
            ViewModelProvider viewModelProviderCreate = ViewModelProvider.Companion.create(viewModelStore, new pg4(zk1VarA, ze7VarE, this.d), defaultViewModelCreationExtras);
            zk1VarA.a();
            return viewModelProviderCreate.get(zk1VarA);
        }
    }

    public yn3() {
        sk skVar = new sk(this, 2);
        this.b = nm4.a(po4.NONE, new b(new a(), skVar));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getParentFragmentManager().setFragmentResultListener("games_tab_shown", this, new l3(this, 4));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.INSTANCE);
        composeView.setContent(ComposableLambdaKt.composableLambdaInstance(331146754, true, new bm3() { // from class: vn3
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.shouldExecute((iIntValue & 3) != 2, iIntValue & 1)) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(331146754, iIntValue, -1, "com.warefly.checkscan.features.games.presentation.GamesFragment.onCreateView.<anonymous>.<anonymous> (GamesFragment.kt:32)");
                    }
                    final yn3 yn3Var = this.b;
                    u49.a(ComposableLambdaKt.rememberComposableLambda(14212817, true, new bm3() { // from class: wn3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            if (composer2.shouldExecute((iIntValue2 & 3) != 2, iIntValue2 & 1)) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(14212817, iIntValue2, -1, "com.warefly.checkscan.features.games.presentation.GamesFragment.onCreateView.<anonymous>.<anonymous>.<anonymous> (GamesFragment.kt:34)");
                                }
                                Modifier.Companion companion = Modifier.Companion;
                                Object objRememberedValue = composer2.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new xn3(0);
                                    composer2.updateRememberedValue(objRememberedValue);
                                }
                                Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null);
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer2, 0));
                                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierSemantics$default);
                                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor = companion2.getConstructor();
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
                                jg.d(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                io3.a((no3) yn3Var.b.getValue(), composer2, 0);
                                composer2.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            } else {
                                composer2.skipToGroupEnd();
                            }
                            return j59.a;
                        }
                    }, composer, 54), composer, 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composer.skipToGroupEnd();
                }
                return j59.a;
            }
        }));
        return composeView;
    }
}
