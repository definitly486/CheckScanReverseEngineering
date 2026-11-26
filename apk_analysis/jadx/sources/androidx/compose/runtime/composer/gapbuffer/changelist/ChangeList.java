package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Changes;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.ad2;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.v39;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ChangeList extends Changes {
    public static final int $stable = 8;
    private final Operations operations = new Operations();

    public static /* synthetic */ void pushExecuteOperationsIn$default(ChangeList changeList, ChangeList changeList2, IntRef intRef, int i, Object obj) {
        if ((i & 2) != 0) {
            intRef = null;
        }
        changeList.pushExecuteOperationsIn(changeList2, intRef);
    }

    @Override // androidx.compose.runtime.Changes
    public void clear() {
        this.operations.clear();
    }

    @Override // androidx.compose.runtime.Changes
    public void execute(SlotStorage slotStorage, Applier<?> applier, RememberManager rememberManager, CompositionErrorContextImpl compositionErrorContextImpl) {
        SlotWriter slotWriterOpenWriter = SlotTableKt.asGapBufferSlotTable(slotStorage).openWriter();
        try {
            executeAndFlushAllPendingChanges(applier, slotWriterOpenWriter, rememberManager, compositionErrorContextImpl);
            j59 j59Var = j59.a;
            boolean z = true;
        } finally {
            slotWriterOpenWriter.close(false);
        }
    }

    public final void executeAndFlushAllPendingChanges(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, rememberManager, operationErrorContext);
    }

    public final int getSize() {
        return this.operations.getSize();
    }

    @Override // androidx.compose.runtime.Changes
    public boolean isEmpty() {
        return this.operations.isEmpty();
    }

    public final void pushAdvanceSlotsBy(int i) {
        Operations operations = this.operations;
        Operation.AdvanceSlotsBy advanceSlotsBy = Operation.AdvanceSlotsBy.INSTANCE;
        operations.pushOp(advanceSlotsBy);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(advanceSlotsBy);
    }

    public final void pushAppendValue(GapAnchor gapAnchor, Object obj) {
        Operations operations = this.operations;
        Operation.AppendValue appendValue = Operation.AppendValue.INSTANCE;
        operations.pushOp(appendValue);
        Operations.WriteScope.m5501setObjectsEsEZvaA(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), gapAnchor, Operation.ObjectParameter.m5469constructorimpl(1), obj);
        operations.ensureAllArgumentsPushedFor(appendValue);
    }

    public final void pushCopyNodesToNewAnchorLocation(List<? extends Object> list, IntRef intRef) {
        if (list.isEmpty()) {
            return;
        }
        Operations operations = this.operations;
        Operation.CopyNodesToNewAnchorLocation copyNodesToNewAnchorLocation = Operation.CopyNodesToNewAnchorLocation.INSTANCE;
        operations.pushOp(copyNodesToNewAnchorLocation);
        Operations.WriteScope.m5501setObjectsEsEZvaA(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(1), list, Operation.ObjectParameter.m5469constructorimpl(0), intRef);
        operations.ensureAllArgumentsPushedFor(copyNodesToNewAnchorLocation);
    }

    public final void pushCopySlotTableToAnchorLocation(MovableContentState movableContentState, CompositionContext compositionContext, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        Operations operations = this.operations;
        Operation.CopySlotTableToAnchorLocation copySlotTableToAnchorLocation = Operation.CopySlotTableToAnchorLocation.INSTANCE;
        operations.pushOp(copySlotTableToAnchorLocation);
        Operations.WriteScope.m5503setObjectsfiWQlIY(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), movableContentState, Operation.ObjectParameter.m5469constructorimpl(1), compositionContext, Operation.ObjectParameter.m5469constructorimpl(3), movableContentStateReference2, Operation.ObjectParameter.m5469constructorimpl(2), movableContentStateReference);
        operations.ensureAllArgumentsPushedFor(copySlotTableToAnchorLocation);
    }

    public final void pushDeactivateCurrentGroup() {
        this.operations.push(Operation.DeactivateCurrentGroup.INSTANCE);
    }

    public final void pushDetermineMovableContentNodeIndex(IntRef intRef, GapAnchor gapAnchor) {
        Operations operations = this.operations;
        Operation.DetermineMovableContentNodeIndex determineMovableContentNodeIndex = Operation.DetermineMovableContentNodeIndex.INSTANCE;
        operations.pushOp(determineMovableContentNodeIndex);
        Operations.WriteScope.m5501setObjectsEsEZvaA(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), intRef, Operation.ObjectParameter.m5469constructorimpl(1), gapAnchor);
        operations.ensureAllArgumentsPushedFor(determineMovableContentNodeIndex);
    }

    public final void pushDowns(Object[] objArr) {
        if (objArr.length == 0) {
            return;
        }
        Operations operations = this.operations;
        Operation.Downs downs = Operation.Downs.INSTANCE;
        operations.pushOp(downs);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), objArr);
        operations.ensureAllArgumentsPushedFor(downs);
    }

    public final void pushEndCompositionScope(nl3<? super Composition, j59> nl3Var, Composition composition) {
        Operations operations = this.operations;
        Operation.EndCompositionScope endCompositionScope = Operation.EndCompositionScope.INSTANCE;
        operations.pushOp(endCompositionScope);
        Operations.WriteScope.m5501setObjectsEsEZvaA(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), nl3Var, Operation.ObjectParameter.m5469constructorimpl(1), composition);
        operations.ensureAllArgumentsPushedFor(endCompositionScope);
    }

    public final void pushEndCurrentGroup() {
        this.operations.push(Operation.EndCurrentGroup.INSTANCE);
    }

    public final void pushEndMovableContentPlacement() {
        this.operations.push(Operation.EndMovableContentPlacement.INSTANCE);
    }

    public final void pushEndResumingScope(RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.EndResumingScope endResumingScope = Operation.EndResumingScope.INSTANCE;
        operations.pushOp(endResumingScope);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(endResumingScope);
    }

    public final void pushEnsureGroupStarted(GapAnchor gapAnchor) {
        Operations operations = this.operations;
        Operation.EnsureGroupStarted ensureGroupStarted = Operation.EnsureGroupStarted.INSTANCE;
        operations.pushOp(ensureGroupStarted);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), gapAnchor);
        operations.ensureAllArgumentsPushedFor(ensureGroupStarted);
    }

    public final void pushEnsureRootStarted() {
        this.operations.push(Operation.EnsureRootGroupStarted.INSTANCE);
    }

    public final void pushExecuteOperationsIn(ChangeList changeList, IntRef intRef) {
        if (changeList.isNotEmpty()) {
            Operations operations = this.operations;
            Operation.ApplyChangeList applyChangeList = Operation.ApplyChangeList.INSTANCE;
            operations.pushOp(applyChangeList);
            Operations.WriteScope.m5501setObjectsEsEZvaA(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), changeList, Operation.ObjectParameter.m5469constructorimpl(1), intRef);
            operations.ensureAllArgumentsPushedFor(applyChangeList);
        }
    }

    public final void pushInsertSlots(GapAnchor gapAnchor, SlotTable slotTable, FixupList fixupList) {
        Operations operations = this.operations;
        Operation.InsertSlotsWithFixups insertSlotsWithFixups = Operation.InsertSlotsWithFixups.INSTANCE;
        operations.pushOp(insertSlotsWithFixups);
        Operations.WriteScope.m5502setObjectsJOGOPjs(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), gapAnchor, Operation.ObjectParameter.m5469constructorimpl(1), slotTable, Operation.ObjectParameter.m5469constructorimpl(2), fixupList);
        operations.ensureAllArgumentsPushedFor(insertSlotsWithFixups);
    }

    public final void pushMoveCurrentGroup(int i) {
        Operations operations = this.operations;
        Operation.MoveCurrentGroup moveCurrentGroup = Operation.MoveCurrentGroup.INSTANCE;
        operations.pushOp(moveCurrentGroup);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(moveCurrentGroup);
    }

    public final void pushMoveNode(int i, int i2, int i3) {
        Operations operations = this.operations;
        Operation.MoveNode moveNode = Operation.MoveNode.INSTANCE;
        operations.pushOp(moveNode);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        int ints = operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = operationsM5492constructorimpl.intArgs;
        iArr[ints + 1] = i;
        iArr[ints] = i2;
        iArr[ints + 2] = i3;
        operations.ensureAllArgumentsPushedFor(moveNode);
    }

    public final void pushReleaseMovableGroupAtCurrent(ControlledComposition controlledComposition, CompositionContext compositionContext, MovableContentStateReference movableContentStateReference) {
        Operations operations = this.operations;
        Operation.ReleaseMovableGroupAtCurrent releaseMovableGroupAtCurrent = Operation.ReleaseMovableGroupAtCurrent.INSTANCE;
        operations.pushOp(releaseMovableGroupAtCurrent);
        Operations.WriteScope.m5502setObjectsJOGOPjs(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), controlledComposition, Operation.ObjectParameter.m5469constructorimpl(1), compositionContext, Operation.ObjectParameter.m5469constructorimpl(2), movableContentStateReference);
        operations.ensureAllArgumentsPushedFor(releaseMovableGroupAtCurrent);
    }

    public final void pushRemember(RememberObserverHolder rememberObserverHolder) {
        Operations operations = this.operations;
        Operation.Remember remember = Operation.Remember.INSTANCE;
        operations.pushOp(remember);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), rememberObserverHolder);
        operations.ensureAllArgumentsPushedFor(remember);
    }

    public final void pushRememberPausingScope(RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.RememberPausingScope rememberPausingScope = Operation.RememberPausingScope.INSTANCE;
        operations.pushOp(rememberPausingScope);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(rememberPausingScope);
    }

    public final void pushRemoveCurrentGroup() {
        this.operations.push(Operation.RemoveCurrentGroup.INSTANCE);
    }

    public final void pushRemoveNode(int i, int i2) {
        Operations operations = this.operations;
        Operation.RemoveNode removeNode = Operation.RemoveNode.INSTANCE;
        operations.pushOp(removeNode);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        int ints = operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = operationsM5492constructorimpl.intArgs;
        iArr[ints] = i;
        iArr[ints + 1] = i2;
        operations.ensureAllArgumentsPushedFor(removeNode);
    }

    public final void pushResetSlots() {
        this.operations.push(Operation.ResetSlots.INSTANCE);
    }

    public final void pushSideEffect(ll3<j59> ll3Var) {
        Operations operations = this.operations;
        Operation.SideEffect sideEffect = Operation.SideEffect.INSTANCE;
        operations.pushOp(sideEffect);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), ll3Var);
        operations.ensureAllArgumentsPushedFor(sideEffect);
    }

    public final void pushSkipToEndOfCurrentGroup() {
        this.operations.push(Operation.SkipToEndOfCurrentGroup.INSTANCE);
    }

    public final void pushStartResumingScope(RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.StartResumingScope startResumingScope = Operation.StartResumingScope.INSTANCE;
        operations.pushOp(startResumingScope);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(startResumingScope);
    }

    public final void pushTrimValues(int i) {
        Operations operations = this.operations;
        Operation.TrimParentValues trimParentValues = Operation.TrimParentValues.INSTANCE;
        operations.pushOp(trimParentValues);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(trimParentValues);
    }

    public final void pushUpdateAnchoredValue(Object obj, GapAnchor gapAnchor, int i) {
        Operations operations = this.operations;
        Operation.UpdateAnchoredValue updateAnchoredValue = Operation.UpdateAnchoredValue.INSTANCE;
        operations.pushOp(updateAnchoredValue);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        Operations.WriteScope.m5501setObjectsEsEZvaA(operationsM5492constructorimpl, Operation.ObjectParameter.m5469constructorimpl(0), obj, Operation.ObjectParameter.m5469constructorimpl(1), gapAnchor);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(updateAnchoredValue);
    }

    public final void pushUpdateAuxData(Object obj) {
        Operations operations = this.operations;
        Operation.UpdateAuxData updateAuxData = Operation.UpdateAuxData.INSTANCE;
        operations.pushOp(updateAuxData);
        Operations.WriteScope.m5500setObjectsGr0YRc(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), obj);
        operations.ensureAllArgumentsPushedFor(updateAuxData);
    }

    public final <T, V> void pushUpdateNode(V v, bm3<? super T, ? super V, j59> bm3Var) {
        Operations operations = this.operations;
        Operation.UpdateNode updateNode = Operation.UpdateNode.INSTANCE;
        operations.pushOp(updateNode);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        int iM5469constructorimpl = Operation.ObjectParameter.m5469constructorimpl(0);
        int iM5469constructorimpl2 = Operation.ObjectParameter.m5469constructorimpl(1);
        bm3Var.getClass();
        v39.c(2, bm3Var);
        Operations.WriteScope.m5501setObjectsEsEZvaA(operationsM5492constructorimpl, iM5469constructorimpl, v, iM5469constructorimpl2, bm3Var);
        operations.ensureAllArgumentsPushedFor(updateNode);
    }

    public final void pushUpdateValue(Object obj, int i) {
        Operations operations = this.operations;
        Operation.UpdateValue updateValue = Operation.UpdateValue.INSTANCE;
        operations.pushOp(updateValue);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        Operations.WriteScope.m5500setObjectsGr0YRc(operationsM5492constructorimpl, Operation.ObjectParameter.m5469constructorimpl(0), obj);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(updateValue);
    }

    public final void pushUps(int i) {
        Operations operations = this.operations;
        Operation.Ups ups = Operation.Ups.INSTANCE;
        operations.pushOp(ups);
        Operations operationsM5492constructorimpl = Operations.WriteScope.m5492constructorimpl(operations);
        operationsM5492constructorimpl.intArgs[operationsM5492constructorimpl.intArgsSize - operationsM5492constructorimpl.opCodes[operationsM5492constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(ups);
    }

    public final void pushUseNode(Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            this.operations.push(Operation.UseCurrentNode.INSTANCE);
        }
    }

    @Override // androidx.compose.runtime.composer.DebugStringFormattable
    public String toDebugString(String str) {
        StringBuilder sbC = ad2.c("ChangeList instance containing ");
        sbC.append(getSize());
        sbC.append(" operations");
        if (sbC.length() > 0) {
            sbC.append(":\n");
            sbC.append(this.operations.toDebugString(str));
        }
        return sbC.toString();
    }

    public final void pushInsertSlots(GapAnchor gapAnchor, SlotTable slotTable) {
        Operations operations = this.operations;
        Operation.InsertSlots insertSlots = Operation.InsertSlots.INSTANCE;
        operations.pushOp(insertSlots);
        Operations.WriteScope.m5501setObjectsEsEZvaA(Operations.WriteScope.m5492constructorimpl(operations), Operation.ObjectParameter.m5469constructorimpl(0), gapAnchor, Operation.ObjectParameter.m5469constructorimpl(1), slotTable);
        operations.ensureAllArgumentsPushedFor(insertSlots);
    }
}
