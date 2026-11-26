package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.v39;

/* JADX INFO: loaded from: classes2.dex */
public final class FixupList extends OperationsDebugStringFormattable {
    public static final int $stable = 8;
    private final Operations operations = new Operations();
    private final Operations pendingOperations = new Operations();

    public final void clear() {
        this.pendingOperations.clear();
        this.operations.clear();
    }

    public final void createAndInsertNode(ll3<? extends Object> ll3Var, int i, GapAnchor gapAnchor) {
        Operations operations = this.operations;
        Operation.InsertNodeFixup insertNodeFixup = Operation.InsertNodeFixup.INSTANCE;
        operations.pushOp(insertNodeFixup);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        Operations.WriteScope.m5500setObjectsGr0YRc(operationsM5492constructorimpl, Operation.ObjectParameter.m5469constructorimpl(0), ll3Var);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5500setObjectsGr0YRc(operationsM5492constructorimpl, Operation.ObjectParameter.m5469constructorimpl(1), gapAnchor);
        operations.ensureAllArgumentsPushedFor(insertNodeFixup);
        Operations operations2 = this.pendingOperations;
        Operation.PostInsertNodeFixup postInsertNodeFixup = Operation.PostInsertNodeFixup.INSTANCE;
        operations2.pushOp(postInsertNodeFixup);
        Operations operationsM5492constructorimpl2 = Operations.WriteScope.m5492constructorimpl(operations2);
        operationsM5492constructorimpl2.intArgs[operationsM5492constructorimpl2.intArgsSize - operationsM5492constructorimpl2.opCodes[operationsM5492constructorimpl2.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5500setObjectsGr0YRc(operationsM5492constructorimpl2, Operation.ObjectParameter.m5469constructorimpl(0), gapAnchor);
        operations2.ensureAllArgumentsPushedFor(postInsertNodeFixup);
    }

    public final void endNodeInsert() {
        if (!this.pendingOperations.isNotEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Cannot end node insertion, there are no pending operations that can be realized.");
        }
        this.pendingOperations.popInto(this.operations);
    }

    public final void executeAndFlushAllPendingFixups(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        if (!this.pendingOperations.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, rememberManager, operationErrorContext);
    }

    public final int getSize() {
        return this.operations.getSize();
    }

    public final boolean isEmpty() {
        return this.operations.isEmpty();
    }

    public final boolean isNotEmpty() {
        return this.operations.isNotEmpty();
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationsDebugStringFormattable
    public String toDebugString(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("FixupList instance containing " + getSize() + " operations");
        if (sb.length() > 0) {
            sb.append(":\n" + this.operations.toDebugString(str));
        }
        return sb.toString();
    }

    public final <V, T> void updateNode(V v, bm3<? super T, ? super V, j59> bm3Var) {
        Operations operations = this.operations;
        Operation.UpdateNode updateNode = Operation.UpdateNode.INSTANCE;
        operations.pushOp(updateNode);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        Operations.WriteScope.m5500setObjectsGr0YRc(operationsM5492constructorimpl, Operation.ObjectParameter.m5469constructorimpl(0), v);
        int iM5469constructorimpl = Operation.ObjectParameter.m5469constructorimpl(1);
        bm3Var.getClass();
        v39.c(2, bm3Var);
        Operations.WriteScope.m5500setObjectsGr0YRc(operationsM5492constructorimpl, iM5469constructorimpl, bm3Var);
        operations.ensureAllArgumentsPushedFor(updateNode);
    }
}
