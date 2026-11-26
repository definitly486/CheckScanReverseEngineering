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
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo2130onPreFlingQWom1Mo(long r7, defpackage.e02<? super androidx.compose.ui.unit.Velocity> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollNode$onPreFling$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            long r6 = r0.J$0
            defpackage.r57.b(r9)
            goto L6c
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L33:
            long r7 = r0.J$0
            defpackage.r57.b(r9)
            goto L4d
        L39:
            defpackage.r57.b(r9)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r9 = r6.getParentConnection()
            if (r9 == 0) goto L54
            r0.J$0 = r7
            r0.label = r4
            java.lang.Object r9 = r9.mo2130onPreFlingQWom1Mo(r7, r0)
            if (r9 != r1) goto L4d
            goto L6a
        L4d:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r4 = r9.m9289unboximpl()
            goto L5a
        L54:
            androidx.compose.ui.unit.Velocity$Companion r9 = androidx.compose.ui.unit.Velocity.Companion
            long r4 = r9.m9291getZero9UxMQ8M()
        L5a:
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r6 = r6.connection
            long r7 = androidx.compose.ui.unit.Velocity.m9283minusAH228Gc(r7, r4)
            r0.J$0 = r4
            r0.label = r3
            java.lang.Object r9 = r6.mo2130onPreFlingQWom1Mo(r7, r0)
            if (r9 != r1) goto L6b
        L6a:
            return r1
        L6b:
            r6 = r4
        L6c:
            androidx.compose.ui.unit.Velocity r9 = (androidx.compose.ui.unit.Velocity) r9
            long r8 = r9.m9289unboximpl()
            long r6 = androidx.compose.ui.unit.Velocity.m9284plusAH228Gc(r6, r8)
            androidx.compose.ui.unit.Velocity r6 = androidx.compose.ui.unit.Velocity.m9271boximpl(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollNode.mo2130onPreFlingQWom1Mo(long, e02):java.lang.Object");
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
