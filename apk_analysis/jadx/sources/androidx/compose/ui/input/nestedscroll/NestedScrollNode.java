package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollNode extends Modifier.Node implements TraversableNode, NestedScrollConnection {
    public static final int $stable = 8;
    private NestedScrollConnection connection;
    private NestedScrollNode lastKnownParentNode;
    private NestedScrollDispatcher resolvedDispatcher;
    private final Object traverseKey;

    /* JADX INFO: renamed from: androidx.compose.ui.input.nestedscroll.NestedScrollNode$updateDispatcherFields$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<y22> {
        public AnonymousClass1() {
            super(0);
        }

        @Override // defpackage.ll3
        public final y22 invoke() {
            return NestedScrollNode.this.getNestedCoroutineScope();
        }
    }

    public NestedScrollNode(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.connection = nestedScrollConnection;
        this.resolvedDispatcher = nestedScrollDispatcher == null ? new NestedScrollDispatcher() : nestedScrollDispatcher;
        this.traverseKey = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final y22 getNestedCoroutineScope() {
        NestedScrollNode parentNestedScrollNode$ui = getParentNestedScrollNode$ui();
        y22 nestedCoroutineScope = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.getNestedCoroutineScope() : null;
        if (nestedCoroutineScope != null && z22.e(nestedCoroutineScope)) {
            return nestedCoroutineScope;
        }
        y22 scope$ui = this.resolvedDispatcher.getScope$ui();
        if (scope$ui != null) {
            return scope$ui;
        }
        ah.f("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }

    private static /* synthetic */ void getNestedCoroutineScope$annotations() {
    }

    private final NestedScrollConnection getParentConnection() {
        if (isAttached()) {
            return getParentNestedScrollNode$ui();
        }
        return null;
    }

    private final void resetDispatcherFields() {
        if (this.resolvedDispatcher.getNestedScrollNode$ui() == this) {
            this.resolvedDispatcher.setNestedScrollNode$ui(null);
        }
    }

    private final void updateDispatcher(NestedScrollDispatcher nestedScrollDispatcher) {
        resetDispatcherFields();
        if (nestedScrollDispatcher == null) {
            this.resolvedDispatcher = new NestedScrollDispatcher();
        } else if (nestedScrollDispatcher != this.resolvedDispatcher) {
            this.resolvedDispatcher = nestedScrollDispatcher;
        }
        if (isAttached()) {
            updateDispatcherFields();
        }
    }

    private final void updateDispatcherFields() {
        this.resolvedDispatcher.setNestedScrollNode$ui(this);
        this.resolvedDispatcher.setLastKnownParentNode$ui(null);
        this.lastKnownParentNode = null;
        this.resolvedDispatcher.setCalculateNestedScrollScope$ui(new AnonymousClass1());
        this.resolvedDispatcher.setScope$ui(getCoroutineScope());
    }

    public final NestedScrollConnection getConnection() {
        return this.connection;
    }

    public final NestedScrollNode getLastKnownParentNode$ui() {
        return this.lastKnownParentNode;
    }

    public final NestedScrollNode getParentNestedScrollNode$ui() {
        if (isAttached()) {
            return (NestedScrollNode) TraversableNodeKt.findNearestAncestor(this);
        }
        return null;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateDispatcherFields();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        NestedScrollNode nestedScrollNode = (NestedScrollNode) NestedScrollNodeKt.findNearestAttachedAncestor(this);
        this.lastKnownParentNode = nestedScrollNode;
        this.resolvedDispatcher.setLastKnownParentNode$ui(nestedScrollNode);
        resetDispatcherFields();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$1;
        long j3;
        long jM9289unboximpl;
        long jM9291getZero9UxMQ8M;
        long j4;
        if (e02Var instanceof NestedScrollNode$onPostFling$1) {
            nestedScrollNode$onPostFling$1 = (NestedScrollNode$onPostFling$1) e02Var;
            int i = nestedScrollNode$onPostFling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPostFling$1.label = i - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, e02Var);
            }
        } else {
            nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, e02Var);
        }
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$2 = nestedScrollNode$onPostFling$1;
        Object objMo1601onPostFlingRZ2iAVY = nestedScrollNode$onPostFling$2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = nestedScrollNode$onPostFling$2.label;
        if (i2 == 0) {
            r57.b(objMo1601onPostFlingRZ2iAVY);
            NestedScrollConnection nestedScrollConnection = this.connection;
            nestedScrollNode$onPostFling$2.J$0 = j;
            nestedScrollNode$onPostFling$2.J$1 = j2;
            nestedScrollNode$onPostFling$2.label = 1;
            objMo1601onPostFlingRZ2iAVY = nestedScrollConnection.mo1601onPostFlingRZ2iAVY(j, j2, nestedScrollNode$onPostFling$2);
            if (objMo1601onPostFlingRZ2iAVY != a32Var) {
                j3 = j2;
            }
            return a32Var;
        }
        if (i2 == 1) {
            long j5 = nestedScrollNode$onPostFling$2.J$1;
            long j6 = nestedScrollNode$onPostFling$2.J$0;
            r57.b(objMo1601onPostFlingRZ2iAVY);
            j3 = j5;
            j = j6;
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j4 = nestedScrollNode$onPostFling$2.J$0;
            r57.b(objMo1601onPostFlingRZ2iAVY);
        }
        jM9291getZero9UxMQ8M = ((Velocity) objMo1601onPostFlingRZ2iAVY).m9289unboximpl();
        jM9289unboximpl = j4;
        return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(jM9289unboximpl, jM9291getZero9UxMQ8M));
        jM9289unboximpl = ((Velocity) objMo1601onPostFlingRZ2iAVY).m9289unboximpl();
        NestedScrollConnection parentConnection = isAttached() ? getParentConnection() : this.lastKnownParentNode;
        if (parentConnection != null) {
            long jM9284plusAH228Gc = Velocity.m9284plusAH228Gc(j, jM9289unboximpl);
            long jM9283minusAH228Gc = Velocity.m9283minusAH228Gc(j3, jM9289unboximpl);
            nestedScrollNode$onPostFling$2.J$0 = jM9289unboximpl;
            nestedScrollNode$onPostFling$2.label = 2;
            objMo1601onPostFlingRZ2iAVY = parentConnection.mo1601onPostFlingRZ2iAVY(jM9284plusAH228Gc, jM9283minusAH228Gc, nestedScrollNode$onPostFling$2);
            if (objMo1601onPostFlingRZ2iAVY != a32Var) {
                j4 = jM9289unboximpl;
                jM9291getZero9UxMQ8M = ((Velocity) objMo1601onPostFlingRZ2iAVY).m9289unboximpl();
                jM9289unboximpl = j4;
            }
            return a32Var;
        }
        jM9291getZero9UxMQ8M = Velocity.Companion.m9291getZero9UxMQ8M();
        return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(jM9289unboximpl, jM9291getZero9UxMQ8M));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        long jMo1602onPostScrollDzOQY0M = this.connection.mo1602onPostScrollDzOQY0M(j, j2, i);
        NestedScrollConnection parentConnection = getParentConnection();
        return Offset.m5992plusMKHz9U(jMo1602onPostScrollDzOQY0M, parentConnection != null ? parentConnection.mo1602onPostScrollDzOQY0M(Offset.m5992plusMKHz9U(j, jMo1602onPostScrollDzOQY0M), Offset.m5991minusMKHz9U(j2, jMo1602onPostScrollDzOQY0M), i) : Offset.Companion.m6003getZeroF1C5BW0());
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
    
        if (r9 == r1) goto L25;
     */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo2130onPreFlingQWom1Mo(long j, e02<? super Velocity> e02Var) {
        NestedScrollNode$onPreFling$1 nestedScrollNode$onPreFling$1;
        long jM9291getZero9UxMQ8M;
        long j2;
        if (e02Var instanceof NestedScrollNode$onPreFling$1) {
            nestedScrollNode$onPreFling$1 = (NestedScrollNode$onPreFling$1) e02Var;
            int i = nestedScrollNode$onPreFling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPreFling$1.label = i - Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, e02Var);
            }
        } else {
            nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, e02Var);
        }
        Object objMo2130onPreFlingQWom1Mo = nestedScrollNode$onPreFling$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = nestedScrollNode$onPreFling$1.label;
        if (i2 != 0) {
            if (i2 == 1) {
                j = nestedScrollNode$onPreFling$1.J$0;
                r57.b(objMo2130onPreFlingQWom1Mo);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j2 = nestedScrollNode$onPreFling$1.J$0;
                r57.b(objMo2130onPreFlingQWom1Mo);
            }
            return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(j2, ((Velocity) objMo2130onPreFlingQWom1Mo).m9289unboximpl()));
        }
        r57.b(objMo2130onPreFlingQWom1Mo);
        NestedScrollConnection parentConnection = getParentConnection();
        if (parentConnection != null) {
            nestedScrollNode$onPreFling$1.J$0 = j;
            nestedScrollNode$onPreFling$1.label = 1;
            objMo2130onPreFlingQWom1Mo = parentConnection.mo2130onPreFlingQWom1Mo(j, nestedScrollNode$onPreFling$1);
        } else {
            jM9291getZero9UxMQ8M = Velocity.Companion.m9291getZero9UxMQ8M();
            NestedScrollConnection nestedScrollConnection = this.connection;
            long jM9283minusAH228Gc = Velocity.m9283minusAH228Gc(j, jM9291getZero9UxMQ8M);
            nestedScrollNode$onPreFling$1.J$0 = jM9291getZero9UxMQ8M;
            nestedScrollNode$onPreFling$1.label = 2;
            objMo2130onPreFlingQWom1Mo = nestedScrollConnection.mo2130onPreFlingQWom1Mo(jM9283minusAH228Gc, nestedScrollNode$onPreFling$1);
            if (objMo2130onPreFlingQWom1Mo != a32Var) {
                j2 = jM9291getZero9UxMQ8M;
                return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(j2, ((Velocity) objMo2130onPreFlingQWom1Mo).m9289unboximpl()));
            }
        }
        return a32Var;
        jM9291getZero9UxMQ8M = ((Velocity) objMo2130onPreFlingQWom1Mo).m9289unboximpl();
        NestedScrollConnection nestedScrollConnection2 = this.connection;
        long jM9283minusAH228Gc2 = Velocity.m9283minusAH228Gc(j, jM9291getZero9UxMQ8M);
        nestedScrollNode$onPreFling$1.J$0 = jM9291getZero9UxMQ8M;
        nestedScrollNode$onPreFling$1.label = 2;
        objMo2130onPreFlingQWom1Mo = nestedScrollConnection2.mo2130onPreFlingQWom1Mo(jM9283minusAH228Gc2, nestedScrollNode$onPreFling$1);
        if (objMo2130onPreFlingQWom1Mo != a32Var) {
            j2 = jM9291getZero9UxMQ8M;
            return Velocity.m9271boximpl(Velocity.m9284plusAH228Gc(j2, ((Velocity) objMo2130onPreFlingQWom1Mo).m9289unboximpl()));
        }
        return a32Var;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    public long mo2131onPreScrollOzD1aCk(long j, int i) {
        NestedScrollConnection parentConnection = getParentConnection();
        long jMo2131onPreScrollOzD1aCk = parentConnection != null ? parentConnection.mo2131onPreScrollOzD1aCk(j, i) : Offset.Companion.m6003getZeroF1C5BW0();
        return Offset.m5992plusMKHz9U(jMo2131onPreScrollOzD1aCk, this.connection.mo2131onPreScrollOzD1aCk(Offset.m5991minusMKHz9U(j, jMo2131onPreScrollOzD1aCk), i));
    }

    public final void setConnection(NestedScrollConnection nestedScrollConnection) {
        this.connection = nestedScrollConnection;
    }

    public final void setLastKnownParentNode$ui(NestedScrollNode nestedScrollNode) {
        this.lastKnownParentNode = nestedScrollNode;
    }

    public final void updateNode$ui(NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        this.connection = nestedScrollConnection;
        updateDispatcher(nestedScrollDispatcher);
    }
}
