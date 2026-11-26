package androidx.compose.runtime.composer.linkbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.composer.DebugStringFormattable;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.v39;

/* JADX INFO: loaded from: classes2.dex */
public final class FixupList extends DebugStringFormattable {
    public static final int $stable = 8;
    private final Operations operations = new Operations();
    private final Operations pendingOperations = new Operations();

    public final void clear() {
        this.pendingOperations.clear();
        this.operations.clear();
    }

    public final void createAndInsertNode(ll3<? extends Object> ll3Var, int i, long j) {
        Operations operations = this.operations;
        Operation.InsertNodeFixup insertNodeFixup = Operation.InsertNodeFixup.INSTANCE;
        operations.pushOp(insertNodeFixup);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), ll3Var);
        operationsM5555constructorimpl.intArgs[operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5564setLongimpl(operationsM5555constructorimpl, 1, 2, j);
        operations.ensureAllArgumentsPushedFor(insertNodeFixup);
        Operations operations2 = this.pendingOperations;
        Operation.PostInsertNodeFixup postInsertNodeFixup = Operation.PostInsertNodeFixup.INSTANCE;
        operations2.pushOp(postInsertNodeFixup);
        Operations operationsM5555constructorimpl2 = Operations.WriteScope.m5555constructorimpl(operations2);
        operationsM5555constructorimpl2.intArgs[operationsM5555constructorimpl2.intArgsSize - operationsM5555constructorimpl2.opCodes[operationsM5555constructorimpl2.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5564setLongimpl(operationsM5555constructorimpl2, 1, 2, j);
        operations2.ensureAllArgumentsPushedFor(postInsertNodeFixup);
    }

    public final void createAndInsertNodeByAnchor(ll3<? extends Object> ll3Var, int i, LinkAnchor linkAnchor) {
        Operations operations = this.operations;
        Operation.InsertNodeFixupByAnchor insertNodeFixupByAnchor = Operation.InsertNodeFixupByAnchor.INSTANCE;
        operations.pushOp(insertNodeFixupByAnchor);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), ll3Var);
        operationsM5555constructorimpl.intArgs[operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(1), linkAnchor);
        operations.ensureAllArgumentsPushedFor(insertNodeFixupByAnchor);
        Operations operations2 = this.pendingOperations;
        Operation.PostInsertNodeFixupByAnchor postInsertNodeFixupByAnchor = Operation.PostInsertNodeFixupByAnchor.INSTANCE;
        operations2.pushOp(postInsertNodeFixupByAnchor);
        Operations operationsM5555constructorimpl2 = Operations.WriteScope.m5555constructorimpl(operations2);
        operationsM5555constructorimpl2.intArgs[operationsM5555constructorimpl2.intArgsSize - operationsM5555constructorimpl2.opCodes[operationsM5555constructorimpl2.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl2, Operation.ObjectParameter.m5530constructorimpl(0), linkAnchor);
        operations2.ensureAllArgumentsPushedFor(postInsertNodeFixupByAnchor);
    }

    public final void endNodeInsert() {
        if (!this.pendingOperations.isNotEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Cannot end node insertion, there are no pending operations that can be realized.");
        }
        this.pendingOperations.popInto(this.operations);
    }

    public final void executeAndFlushAllPendingFixups(Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        if (!this.pendingOperations.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
        this.operations.executeAndFlushAllPendingOperations(applier, slotTableEditor, rememberManager, operationErrorContext);
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

    @Override // androidx.compose.runtime.composer.DebugStringFormattable
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
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), v);
        int iM5530constructorimpl = Operation.ObjectParameter.m5530constructorimpl(1);
        bm3Var.getClass();
        v39.c(2, bm3Var);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, iM5530constructorimpl, bm3Var);
        operations.ensureAllArgumentsPushedFor(updateNode);
    }
}
