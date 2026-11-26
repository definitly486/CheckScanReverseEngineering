package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ul2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TestModifierUpdaterKt {
    @ul2
    public static final void TestModifierUpdaterLayout(nl3<? super TestModifierUpdater, j59> nl3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1673066036);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(nl3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1673066036, i2, -1, "androidx.compose.ui.layout.TestModifierUpdaterLayout (TestModifierUpdater.kt:48)");
            }
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new MeasurePolicy() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                        return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j), null, AnonymousClass1.INSTANCE, 4, null);
                    }

                    /* JADX INFO: renamed from: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$1$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
                        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

                        public AnonymousClass1() {
                            super(1);
                        }

                        @Override // defpackage.nl3
                        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return j59.a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope placementScope) {
                        }
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
            ll3<LayoutNode> constructor$ui = LayoutNode.Companion.getConstructor$ui();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor$ui);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Updater.m5363setimpl(composerM5355constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
            Updater.m5363setimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion.getSetCompositeKeyHash());
            Updater.m5360initimpl(composerM5355constructorimpl, new TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1(nl3Var));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass2(nl3Var, i));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ nl3<TestModifierUpdater, j59> $onAttached;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(nl3<? super TestModifierUpdater, j59> nl3Var, int i) {
            super(2);
            this.$onAttached = nl3Var;
            this.$$changed = i;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            TestModifierUpdaterKt.TestModifierUpdaterLayout(this.$onAttached, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
        }
    }
}
