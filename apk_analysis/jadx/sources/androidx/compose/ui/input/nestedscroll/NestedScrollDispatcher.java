package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.ll3;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollDispatcher {
    public static final int $stable = 8;
    private ll3<? extends y22> calculateNestedScrollScope = new NestedScrollDispatcher$calculateNestedScrollScope$1(this);
    private NestedScrollNode lastKnownParentNode;
    private NestedScrollNode nestedScrollNode;
    private y22 scope;

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
    
        if (r0 == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
    
        if (r0 == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0069, code lost:
    
        return r1;
     */
    /* JADX INFO: renamed from: dispatchPostFling-RZ2iAVY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m7419dispatchPostFlingRZ2iAVY(long r6, long r8, defpackage.e02<? super androidx.compose.ui.unit.Velocity> r10) {
        /*
            r5 = this;
            boolean r0 = r10 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            if (r0 == 0) goto L14
            r0 = r10
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r10 = r0
            goto L1a
        L14:
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            r0.<init>(r5, r10)
            goto L12
        L1a:
            java.lang.Object r0 = r10.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r10.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 == r4) goto L33
            if (r2 != r3) goto L2c
            defpackage.r57.b(r0)
            goto L6a
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L33:
            defpackage.r57.b(r0)
            goto L4d
        L37:
            defpackage.r57.b(r0)
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r0 = r5.getParent$ui()
            if (r0 != 0) goto L5b
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r5 = r5.lastKnownParentNode
            if (r5 == 0) goto L54
            r10.label = r4
            java.lang.Object r0 = r5.mo1601onPostFlingRZ2iAVY(r6, r8, r10)
            if (r0 != r1) goto L4d
            goto L69
        L4d:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r5 = r0.m9289unboximpl()
            goto L77
        L54:
            androidx.compose.ui.unit.Velocity$Companion r5 = androidx.compose.ui.unit.Velocity.Companion
            long r5 = r5.m9291getZero9UxMQ8M()
            goto L77
        L5b:
            androidx.compose.ui.input.nestedscroll.NestedScrollConnection r5 = r5.getParent$ui()
            if (r5 == 0) goto L71
            r10.label = r3
            java.lang.Object r0 = r5.mo1601onPostFlingRZ2iAVY(r6, r8, r10)
            if (r0 != r1) goto L6a
        L69:
            return r1
        L6a:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r5 = r0.m9289unboximpl()
            goto L77
        L71:
            androidx.compose.ui.unit.Velocity$Companion r5 = androidx.compose.ui.unit.Velocity.Companion
            long r5 = r5.m9291getZero9UxMQ8M()
        L77:
            androidx.compose.ui.unit.Velocity r5 = androidx.compose.ui.unit.Velocity.m9271boximpl(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher.m7419dispatchPostFlingRZ2iAVY(long, long, e02):java.lang.Object");
    }

    /* JADX INFO: renamed from: dispatchPostScroll-DzOQY0M, reason: not valid java name */
    public final long m7420dispatchPostScrollDzOQY0M(long j, long j2, int i) {
        NestedScrollConnection parent$ui = getParent$ui();
        return parent$ui != null ? parent$ui.mo1602onPostScrollDzOQY0M(j, j2, i) : Offset.Companion.m6003getZeroF1C5BW0();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: dispatchPreFling-QWom1Mo, reason: not valid java name */
    public final Object m7421dispatchPreFlingQWom1Mo(long j, e02<? super Velocity> e02Var) {
        NestedScrollDispatcher$dispatchPreFling$1 nestedScrollDispatcher$dispatchPreFling$1;
        long jM9291getZero9UxMQ8M;
        if (e02Var instanceof NestedScrollDispatcher$dispatchPreFling$1) {
            nestedScrollDispatcher$dispatchPreFling$1 = (NestedScrollDispatcher$dispatchPreFling$1) e02Var;
            int i = nestedScrollDispatcher$dispatchPreFling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                nestedScrollDispatcher$dispatchPreFling$1.label = i - Integer.MIN_VALUE;
            } else {
                nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, e02Var);
            }
        } else {
            nestedScrollDispatcher$dispatchPreFling$1 = new NestedScrollDispatcher$dispatchPreFling$1(this, e02Var);
        }
        Object objMo2130onPreFlingQWom1Mo = nestedScrollDispatcher$dispatchPreFling$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = nestedScrollDispatcher$dispatchPreFling$1.label;
        if (i2 == 0) {
            r57.b(objMo2130onPreFlingQWom1Mo);
            NestedScrollConnection parent$ui = getParent$ui();
            if (parent$ui != null) {
                nestedScrollDispatcher$dispatchPreFling$1.label = 1;
                objMo2130onPreFlingQWom1Mo = parent$ui.mo2130onPreFlingQWom1Mo(j, nestedScrollDispatcher$dispatchPreFling$1);
                if (objMo2130onPreFlingQWom1Mo == a32Var) {
                    return a32Var;
                }
            } else {
                jM9291getZero9UxMQ8M = Velocity.Companion.m9291getZero9UxMQ8M();
            }
            return Velocity.m9271boximpl(jM9291getZero9UxMQ8M);
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(objMo2130onPreFlingQWom1Mo);
        jM9291getZero9UxMQ8M = ((Velocity) objMo2130onPreFlingQWom1Mo).m9289unboximpl();
        return Velocity.m9271boximpl(jM9291getZero9UxMQ8M);
    }

    /* JADX INFO: renamed from: dispatchPreScroll-OzD1aCk, reason: not valid java name */
    public final long m7422dispatchPreScrollOzD1aCk(long j, int i) {
        NestedScrollConnection parent$ui = getParent$ui();
        return parent$ui != null ? parent$ui.mo2131onPreScrollOzD1aCk(j, i) : Offset.Companion.m6003getZeroF1C5BW0();
    }

    public final ll3<y22> getCalculateNestedScrollScope$ui() {
        return this.calculateNestedScrollScope;
    }

    public final y22 getCoroutineScope() {
        y22 y22VarInvoke = this.calculateNestedScrollScope.invoke();
        if (y22VarInvoke != null) {
            return y22VarInvoke;
        }
        ah.f("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }

    public final NestedScrollNode getLastKnownParentNode$ui() {
        return this.lastKnownParentNode;
    }

    public final NestedScrollNode getNestedScrollNode$ui() {
        return this.nestedScrollNode;
    }

    public final NestedScrollConnection getParent$ui() {
        NestedScrollNode nestedScrollNode = this.nestedScrollNode;
        if (nestedScrollNode != null) {
            return nestedScrollNode.getParentNestedScrollNode$ui();
        }
        return null;
    }

    public final y22 getScope$ui() {
        return this.scope;
    }

    public final void setCalculateNestedScrollScope$ui(ll3<? extends y22> ll3Var) {
        this.calculateNestedScrollScope = ll3Var;
    }

    public final void setLastKnownParentNode$ui(NestedScrollNode nestedScrollNode) {
        this.lastKnownParentNode = nestedScrollNode;
    }

    public final void setNestedScrollNode$ui(NestedScrollNode nestedScrollNode) {
        this.nestedScrollNode = nestedScrollNode;
    }

    public final void setScope$ui(y22 y22Var) {
        this.scope = y22Var;
    }
}
