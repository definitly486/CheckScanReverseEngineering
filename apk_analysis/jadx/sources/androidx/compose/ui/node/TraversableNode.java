package androidx.compose.ui.node;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes2.dex */
public interface TraversableNode extends DelegatableNode {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public enum TraverseDescendantsAction {
            ContinueTraversal,
            SkipSubtreeAndContinueTraversal,
            CancelTraversal;

            private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

            public static g03<TraverseDescendantsAction> getEntries() {
                return $ENTRIES;
            }
        }

        private Companion() {
        }
    }

    Object getTraverseKey();
}
