package androidx.compose.ui.node;

import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface ComposeUiNode {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final ll3<ComposeUiNode> Constructor = LayoutNode.Companion.getConstructor$ui();
        private static final ll3<ComposeUiNode> VirtualConstructor = ComposeUiNode$Companion$VirtualConstructor$1.INSTANCE;
        private static final bm3<ComposeUiNode, Modifier, j59> SetModifier = ComposeUiNode$Companion$SetModifier$1.INSTANCE;
        private static final bm3<ComposeUiNode, Density, j59> SetDensity = ComposeUiNode$Companion$SetDensity$1.INSTANCE;
        private static final bm3<ComposeUiNode, CompositionLocalMap, j59> SetResolvedCompositionLocals = ComposeUiNode$Companion$SetResolvedCompositionLocals$1.INSTANCE;
        private static final bm3<ComposeUiNode, MeasurePolicy, j59> SetMeasurePolicy = ComposeUiNode$Companion$SetMeasurePolicy$1.INSTANCE;
        private static final bm3<ComposeUiNode, LayoutDirection, j59> SetLayoutDirection = ComposeUiNode$Companion$SetLayoutDirection$1.INSTANCE;
        private static final bm3<ComposeUiNode, ViewConfiguration, j59> SetViewConfiguration = ComposeUiNode$Companion$SetViewConfiguration$1.INSTANCE;
        private static final bm3<ComposeUiNode, Integer, j59> SetCompositeKeyHash = ComposeUiNode$Companion$SetCompositeKeyHash$1.INSTANCE;
        private static final nl3<ComposeUiNode, j59> ApplyOnDeactivatedNodeAssertion = ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1.INSTANCE;

        private Companion() {
        }

        public final nl3<ComposeUiNode, j59> getApplyOnDeactivatedNodeAssertion() {
            return ApplyOnDeactivatedNodeAssertion;
        }

        public final ll3<ComposeUiNode> getConstructor() {
            return Constructor;
        }

        public final bm3<ComposeUiNode, Integer, j59> getSetCompositeKeyHash() {
            return SetCompositeKeyHash;
        }

        public final bm3<ComposeUiNode, Density, j59> getSetDensity() {
            return SetDensity;
        }

        public final bm3<ComposeUiNode, LayoutDirection, j59> getSetLayoutDirection() {
            return SetLayoutDirection;
        }

        public final bm3<ComposeUiNode, MeasurePolicy, j59> getSetMeasurePolicy() {
            return SetMeasurePolicy;
        }

        public final bm3<ComposeUiNode, Modifier, j59> getSetModifier() {
            return SetModifier;
        }

        public final bm3<ComposeUiNode, CompositionLocalMap, j59> getSetResolvedCompositionLocals() {
            return SetResolvedCompositionLocals;
        }

        public final bm3<ComposeUiNode, ViewConfiguration, j59> getSetViewConfiguration() {
            return SetViewConfiguration;
        }

        public final ll3<ComposeUiNode> getVirtualConstructor() {
            return VirtualConstructor;
        }
    }

    int getCompositeKeyHash();

    CompositionLocalMap getCompositionLocalMap();

    Density getDensity();

    LayoutDirection getLayoutDirection();

    MeasurePolicy getMeasurePolicy();

    Modifier getModifier();

    ViewConfiguration getViewConfiguration();

    void setCompositeKeyHash(int i);

    void setCompositionLocalMap(CompositionLocalMap compositionLocalMap);

    void setDensity(Density density);

    void setLayoutDirection(LayoutDirection layoutDirection);

    void setMeasurePolicy(MeasurePolicy measurePolicy);

    void setModifier(Modifier modifier);

    void setViewConfiguration(ViewConfiguration viewConfiguration);
}
