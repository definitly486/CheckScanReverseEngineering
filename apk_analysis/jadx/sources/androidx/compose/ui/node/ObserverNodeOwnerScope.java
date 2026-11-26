package androidx.compose.ui.node;

import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ObserverNodeOwnerScope implements OwnerScope {
    private final ObserverModifierNode observerNode;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final nl3<ObserverNodeOwnerScope, j59> OnObserveReadsChanged = ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1.INSTANCE;

    public ObserverNodeOwnerScope(ObserverModifierNode observerModifierNode) {
        this.observerNode = observerModifierNode;
    }

    public final ObserverModifierNode getObserverNode$ui() {
        return this.observerNode;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return this.observerNode.getNode().isAttached();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final nl3<ObserverNodeOwnerScope, j59> getOnObserveReadsChanged$ui() {
            return ObserverNodeOwnerScope.OnObserveReadsChanged;
        }

        private Companion() {
        }
    }
}
