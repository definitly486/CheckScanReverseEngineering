package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollNodeKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt$findNearestAttachedAncestor$1, reason: invalid class name */
    public static final class AnonymousClass1<T> extends gh4 implements nl3<T, Boolean> {
        final /* synthetic */ r07<T> $node;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(r07<T> r07Var) {
            super(1);
            this.$node = r07Var;
        }

        /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Boolean; */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final Boolean invoke(TraversableNode traversableNode) {
            boolean z;
            if (traversableNode.getNode().isAttached()) {
                this.$node.b = traversableNode;
                z = false;
            } else {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends TraversableNode> T findNearestAttachedAncestor(T t) {
        r07 r07Var = new r07();
        TraversableNodeKt.traverseAncestors(t, new AnonymousClass1(r07Var));
        return (T) r07Var.b;
    }

    public static final DelegatableNode nestedScrollModifierNode(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        return new NestedScrollNode(nestedScrollConnection, nestedScrollDispatcher);
    }
}
