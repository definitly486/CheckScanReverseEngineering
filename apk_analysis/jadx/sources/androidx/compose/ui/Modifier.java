package androidx.compose.ui;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverNodeOwnerScope;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kz1;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nb4;
import defpackage.nl3;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public interface Modifier {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion implements Modifier {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @Override // androidx.compose.ui.Modifier
        public boolean all(nl3<? super Element, Boolean> nl3Var) {
            return true;
        }

        @Override // androidx.compose.ui.Modifier
        public boolean any(nl3<? super Element, Boolean> nl3Var) {
            return false;
        }

        @Override // androidx.compose.ui.Modifier
        public <R> R foldIn(R r, bm3<? super R, ? super Element, ? extends R> bm3Var) {
            return r;
        }

        @Override // androidx.compose.ui.Modifier
        public <R> R foldOut(R r, bm3<? super Element, ? super R, ? extends R> bm3Var) {
            return r;
        }

        @Override // androidx.compose.ui.Modifier
        public Modifier then(Modifier modifier) {
            return modifier;
        }

        public String toString() {
            return "Modifier";
        }
    }

    public static final class DefaultImpls {
        @Deprecated
        public static Modifier then(Modifier modifier, Modifier modifier2) {
            return Modifier.super.then(modifier2);
        }
    }

    public interface Element extends Modifier {

        public static final class DefaultImpls {
            @Deprecated
            public static boolean all(Element element, nl3<? super Element, Boolean> nl3Var) {
                return Element.super.all(nl3Var);
            }

            @Deprecated
            public static boolean any(Element element, nl3<? super Element, Boolean> nl3Var) {
                return Element.super.any(nl3Var);
            }

            @Deprecated
            public static <R> R foldIn(Element element, R r, bm3<? super R, ? super Element, ? extends R> bm3Var) {
                return (R) Element.super.foldIn(r, bm3Var);
            }

            @Deprecated
            public static <R> R foldOut(Element element, R r, bm3<? super Element, ? super R, ? extends R> bm3Var) {
                return (R) Element.super.foldOut(r, bm3Var);
            }

            @Deprecated
            public static Modifier then(Element element, Modifier modifier) {
                return Element.super.then(modifier);
            }
        }

        @Override // androidx.compose.ui.Modifier
        default boolean all(nl3<? super Element, Boolean> nl3Var) {
            return nl3Var.invoke(this).booleanValue();
        }

        @Override // androidx.compose.ui.Modifier
        default boolean any(nl3<? super Element, Boolean> nl3Var) {
            return nl3Var.invoke(this).booleanValue();
        }

        @Override // androidx.compose.ui.Modifier
        default <R> R foldIn(R r, bm3<? super R, ? super Element, ? extends R> bm3Var) {
            return bm3Var.invoke(r, this);
        }

        @Override // androidx.compose.ui.Modifier
        default <R> R foldOut(R r, bm3<? super Element, ? super R, ? extends R> bm3Var) {
            return bm3Var.invoke(this, r);
        }
    }

    public static abstract class Node implements DelegatableNode {
        public static final int $stable = 8;
        private Node child;
        private NodeCoordinator coordinator;
        private ll3<j59> detachedListener;
        private boolean insertedNodeAwaitingAttachForInvalidation;
        private boolean isAttached;
        private int kindSet;
        private boolean onAttachRunExpected;
        private boolean onDetachRunExpected;
        private ObserverNodeOwnerScope ownerScope;
        private Node parent;
        private y22 scope;
        private boolean updatedNodeAwaitingAttachForInvalidation;
        private Node node = this;
        private int aggregateChildKindSet = -1;

        public static /* synthetic */ void getNode$annotations() {
        }

        public static /* synthetic */ void getShouldAutoInvalidate$annotations() {
        }

        public final int getAggregateChildKindSet$ui() {
            return this.aggregateChildKindSet;
        }

        public final Node getChild$ui() {
            return this.child;
        }

        public final NodeCoordinator getCoordinator$ui() {
            return this.coordinator;
        }

        public final y22 getCoroutineScope() {
            y22 y22Var = this.scope;
            if (y22Var != null) {
                return y22Var;
            }
            kz1 kz1VarA = z22.a(DelegatableNodeKt.requireOwner(this).getCoroutineContext().plus(new nb4((mb4) DelegatableNodeKt.requireOwner(this).getCoroutineContext().get(mb4.a.b))));
            this.scope = kz1VarA;
            return kz1VarA;
        }

        public final ll3<j59> getDetachedListener$ui() {
            return this.detachedListener;
        }

        public final boolean getInsertedNodeAwaitingAttachForInvalidation$ui() {
            return this.insertedNodeAwaitingAttachForInvalidation;
        }

        public final int getKindSet$ui() {
            return this.kindSet;
        }

        @Override // androidx.compose.ui.node.DelegatableNode
        public final Node getNode() {
            return this.node;
        }

        public final ObserverNodeOwnerScope getOwnerScope$ui() {
            return this.ownerScope;
        }

        public final Node getParent$ui() {
            return this.parent;
        }

        public boolean getShouldAutoInvalidate() {
            return true;
        }

        public final boolean getUpdatedNodeAwaitingAttachForInvalidation$ui() {
            return this.updatedNodeAwaitingAttachForInvalidation;
        }

        public final boolean isAttached() {
            return this.isAttached;
        }

        /* JADX INFO: renamed from: isKind-H91voCI$ui, reason: not valid java name */
        public final boolean m5667isKindH91voCI$ui(int i) {
            return (getKindSet$ui() & i) != 0;
        }

        public void markAsAttached$ui() {
            if (this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("node attached multiple times");
            }
            if (!(this.coordinator != null)) {
                InlineClassHelperKt.throwIllegalStateException("attach invoked on a node without a coordinator");
            }
            this.isAttached = true;
            this.onAttachRunExpected = true;
        }

        public void markAsDetached$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("Cannot detach a node that is not attached");
            }
            if (this.onAttachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() before markAsDetached()");
            }
            if (this.onDetachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() before markAsDetached()");
            }
            this.isAttached = false;
            y22 y22Var = this.scope;
            if (y22Var != null) {
                z22.b(y22Var, new ModifierNodeDetachedCancellationException());
                this.scope = null;
            }
        }

        public void onAttach() {
        }

        public void onDetach() {
        }

        public void onReset() {
        }

        public void reset$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("reset() called on an unattached node");
            }
            onReset();
        }

        public void runAttachLifecycle$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("Must run markAsAttached() prior to runAttachLifecycle");
            }
            if (!this.onAttachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runAttachLifecycle() only once after markAsAttached()");
            }
            this.onAttachRunExpected = false;
            onAttach();
            this.onDetachRunExpected = true;
        }

        public void runDetachLifecycle$ui() {
            if (!this.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("node detached multiple times");
            }
            if (!(this.coordinator != null)) {
                InlineClassHelperKt.throwIllegalStateException("detach invoked on a node without a coordinator");
            }
            if (!this.onDetachRunExpected) {
                InlineClassHelperKt.throwIllegalStateException("Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()");
            }
            this.onDetachRunExpected = false;
            ll3<j59> ll3Var = this.detachedListener;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            onDetach();
        }

        public final void setAggregateChildKindSet$ui(int i) {
            this.aggregateChildKindSet = i;
        }

        public void setAsDelegateTo$ui(Node node) {
            this.node = node;
        }

        public final void setChild$ui(Node node) {
            this.child = node;
        }

        public final void setDetachedListener$ui(ll3<j59> ll3Var) {
            this.detachedListener = ll3Var;
        }

        public final void setInsertedNodeAwaitingAttachForInvalidation$ui(boolean z) {
            this.insertedNodeAwaitingAttachForInvalidation = z;
        }

        public final void setKindSet$ui(int i) {
            this.kindSet = i;
        }

        public final void setOwnerScope$ui(ObserverNodeOwnerScope observerNodeOwnerScope) {
            this.ownerScope = observerNodeOwnerScope;
        }

        public final void setParent$ui(Node node) {
            this.parent = node;
        }

        public final void setUpdatedNodeAwaitingAttachForInvalidation$ui(boolean z) {
            this.updatedNodeAwaitingAttachForInvalidation = z;
        }

        public final void sideEffect(ll3<j59> ll3Var) {
            DelegatableNodeKt.requireOwner(this).registerOnEndApplyChangesListener(ll3Var);
        }

        public void updateCoordinator$ui(NodeCoordinator nodeCoordinator) {
            this.coordinator = nodeCoordinator;
        }
    }

    boolean all(nl3<? super Element, Boolean> nl3Var);

    boolean any(nl3<? super Element, Boolean> nl3Var);

    <R> R foldIn(R r, bm3<? super R, ? super Element, ? extends R> bm3Var);

    <R> R foldOut(R r, bm3<? super Element, ? super R, ? extends R> bm3Var);

    default Modifier then(Modifier modifier) {
        return modifier == Companion ? this : new CombinedModifier(this, modifier);
    }
}
