package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.InvalidationResult;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.ReusableRememberObserverHolder;
import androidx.compose.runtime.ScopeInvalidated;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.CompositionGroup;
import androidx.compose.runtime.tooling.ObjectLocation;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.av;
import defpackage.b36;
import defpackage.h2;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p9;
import defpackage.q9;
import defpackage.qn1;
import defpackage.ra8;
import java.util.ConcurrentModificationException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableKt {
    private static final int LIVE_EDIT_INVALID_KEY = -3;

    public static final void adoptScopesInGroupToNewParent(SlotTable slotTable, int i, RecomposeScopeOwner recomposeScopeOwner) {
        int i2;
        int[] groups = slotTable.getAddressSpace().getGroups();
        Object[] slots = slotTable.getAddressSpace().getSlots();
        SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups2 = addressSpace.getGroups();
        int iPop = i;
        while (true) {
            RecomposeScopeImpl recomposeScopeImplRecomposeScopeOrNullInRegion = recomposeScopeOrNullInRegion(slots, groups[iPop + 5]);
            if (recomposeScopeImplRecomposeScopeOrNullInRegion != null) {
                recomposeScopeImplRecomposeScopeOrNullInRegion.adoptedBy(recomposeScopeOwner);
            }
            if (iPop != i && (i2 = groups2[iPop + 1]) >= 0) {
                intStack.push(i2);
            }
            iPop = groups2[iPop + 3];
            if (iPop < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    iPop = intStack.pop();
                }
            }
        }
    }

    public static final SlotTable asLinkBufferSlotTable(SlotStorage slotStorage) {
        SlotTable slotTable = slotStorage instanceof SlotTable ? (SlotTable) slotStorage : null;
        if (slotTable != null) {
            return slotTable;
        }
        throw av.b("Inconsistent composer");
    }

    public static final CompositionGroup compositionGroupOf(SlotTable slotTable, int i) {
        return new SlotTableGroup(slotTable, i, slotTable.getVersion());
    }

    public static final void deactivateCurrentGroup(SlotTableEditor slotTableEditor, RememberManager rememberManager) {
        slotTableEditor.visitSlotsInRememberOrder(slotTableEditor.getCurrentGroup(), new p9(rememberManager, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean deactivateCurrentGroup$lambda$0(RememberManager rememberManager, int i, int i2, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            rememberManager.deactivating((ComposeNodeLifecycleCallback) obj);
            return false;
        }
        if (obj instanceof ReusableRememberObserverHolder) {
            return false;
        }
        if (obj instanceof RememberObserverHolder) {
            rememberManager.forgetting((RememberObserverHolder) obj);
            return true;
        }
        if (!(obj instanceof RecomposeScopeImpl)) {
            return false;
        }
        ((RecomposeScopeImpl) obj).release();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MovableContentState extractMovableContentAtCurrent(final ControlledComposition controlledComposition, final MovableContentStateReference movableContentStateReference, SlotTableEditor slotTableEditor, Applier<?> applier) {
        int currentGroup = slotTableEditor.getCurrentGroup();
        if (applier != null && slotTableEditor.nodeCountOf(currentGroup) > 0) {
            SlotTableAddressSpace addressSpace = slotTableEditor.getTable().getAddressSpace();
            int parentGroup = slotTableEditor.getParentGroup();
            int[] groups = addressSpace.getGroups();
            int i = groups[parentGroup + 2];
            while (true) {
                if (i <= 0) {
                    if (!(i != 0)) {
                        h2.b(parentGroup, "Traversing parent of group not in the slot table: ");
                    }
                    i = -1;
                    break;
                }
                if (slotTableEditor.isNode(i)) {
                    break;
                }
                i = groups[i + 2];
            }
            if (i >= 0 && slotTableEditor.isNode(i)) {
                Object objNode = slotTableEditor.node(i);
                if (objNode == null) {
                    ComposerKt.composeImmediateRuntimeError("Invalid slot table structure");
                    objNode = j59.a;
                }
                int iNodeIndexOf = nodeIndexOf(currentGroup, slotTableEditor.getTable());
                int iNodeCountOf = slotTableEditor.nodeCountOf(currentGroup);
                applier.down(objNode);
                applier.remove(iNodeIndexOf, iNodeCountOf);
                applier.up();
            }
        }
        SlotTable table = slotTableEditor.getTable();
        SlotTable.Companion companion = SlotTable.Companion;
        SlotTableBuilder slotTableBuilder = new SlotTableBuilder(table.getAddressSpace(), false, false);
        slotTableBuilder.buildStart();
        MovableContent<Object> content$runtime = movableContentStateReference.getContent$runtime();
        slotTableBuilder.startNewGroup(MovableContentKt.movableContentKey, content$runtime == Composer.Companion.getEmpty() ? 0 : 16777216, content$runtime, null, null);
        slotTableBuilder.addFlags(268435456);
        slotTableBuilder.append(movableContentStateReference.getParameter$runtime());
        slotTableBuilder.moveFrom(slotTableEditor, ((long) slotTableEditor.firstChildOf(LinkAnchorKt.asLinkAnchor(movableContentStateReference.getAnchor$runtime()).getAddress())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        slotTableBuilder.endGroup();
        SlotTable slotTableBuild = slotTableBuilder.build();
        MovableContentState movableContentState = new MovableContentState(slotTableBuild);
        if (slotTableBuild.getHasEditor()) {
            ComposerKt.composeImmediateRuntimeError("Cannot read while an editor is pending");
        }
        SlotTableAddressSpace addressSpace2 = slotTableBuild.getAddressSpace();
        int root = slotTableBuild.getRoot();
        if (root < 0) {
            return movableContentState;
        }
        IntStack intStack = new IntStack();
        int[] groups2 = addressSpace2.getGroups();
        RecomposeScopeOwner recomposeScopeOwner = null;
        while (true) {
            int i2 = slotTableBuild.getGroups()[root + 5];
            if (i2 != -1) {
                SlotTableAddressSpace addressSpace3 = slotTableBuild.getAddressSpace();
                int i3 = (i2 & 15) + 1;
                int i4 = i2 >> 4;
                if (i3 > 15) {
                    i3 = addressSpace3.getLargeSizes().get(i4);
                }
                for (int i5 = 0; i5 < i3; i5++) {
                    Object obj = slotTableBuild.getSlots()[i4 + i5];
                    if (aa4.e(obj, Composer.Companion.getEmpty())) {
                        break;
                    }
                    if (obj instanceof RecomposeScopeImpl) {
                        if (recomposeScopeOwner == null) {
                            recomposeScopeOwner = new RecomposeScopeOwner() { // from class: androidx.compose.runtime.composer.linkbuffer.SlotTableKt$extractMovableContentAtCurrent$1$owner$1
                                @Override // androidx.compose.runtime.RecomposeScopeOwner
                                public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj2) {
                                    InvalidationResult invalidationResultInvalidate;
                                    ControlledComposition controlledComposition2 = controlledComposition;
                                    RecomposeScopeOwner recomposeScopeOwner2 = controlledComposition2 instanceof RecomposeScopeOwner ? (RecomposeScopeOwner) controlledComposition2 : null;
                                    if (recomposeScopeOwner2 == null || (invalidationResultInvalidate = recomposeScopeOwner2.invalidate(recomposeScopeImpl, obj2)) == null) {
                                        invalidationResultInvalidate = InvalidationResult.IGNORED;
                                    }
                                    if (invalidationResultInvalidate != InvalidationResult.IGNORED) {
                                        return invalidationResultInvalidate;
                                    }
                                    MovableContentStateReference movableContentStateReference2 = movableContentStateReference;
                                    List<b36<RecomposeScopeImpl, Object>> invalidations$runtime = movableContentStateReference2.getInvalidations$runtime();
                                    if (obj2 == null) {
                                        obj2 = ScopeInvalidated.INSTANCE;
                                    }
                                    movableContentStateReference2.setInvalidations$runtime(qn1.i0(new b36(recomposeScopeImpl, obj2), invalidations$runtime));
                                    return InvalidationResult.SCHEDULED;
                                }

                                @Override // androidx.compose.runtime.RecomposeScopeOwner
                                public void recomposeScopeReleased(RecomposeScopeImpl recomposeScopeImpl) {
                                }

                                @Override // androidx.compose.runtime.RecomposeScopeOwner
                                public void recordReadOf(Object obj2) {
                                }
                            };
                        }
                        ((RecomposeScopeImpl) obj).adoptedBy(recomposeScopeOwner);
                        recomposeScopeOwner = recomposeScopeOwner;
                    }
                }
            }
            int i6 = groups2[root + 1];
            if (i6 >= 0) {
                intStack.push(i6);
            }
            root = groups2[root + 3];
            if (root < 0) {
                if (intStack.tos == 0) {
                    return movableContentState;
                }
                root = intStack.pop();
            }
        }
    }

    public static final ObjectLocation findLocation(SlotTable slotTable, nl3<Object, Boolean> nl3Var) {
        int i;
        SlotTableReader slotTableReaderOpenReader = slotTable.openReader();
        try {
            int root = slotTable.getRoot();
            SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
            if (root >= 0) {
                IntStack intStack = new IntStack();
                int[] groups = addressSpace.getGroups();
                int iPop = root;
                while (true) {
                    if (slotTableReaderOpenReader.isNode(iPop) && nl3Var.invoke(slotTableReaderOpenReader.node(iPop)).booleanValue()) {
                        ObjectLocation objectLocation = new ObjectLocation(iPop, null);
                        slotTableReaderOpenReader.close();
                        return objectLocation;
                    }
                    int i2 = slotTable.getGroups()[iPop + 5];
                    if (i2 != -1) {
                        SlotTableAddressSpace addressSpace2 = slotTable.getAddressSpace();
                        int i3 = (i2 & 15) + 1;
                        int i4 = i2 >> 4;
                        if (i3 > 15) {
                            i3 = addressSpace2.getLargeSizes().get(i4);
                        }
                        for (int i5 = 0; i5 < i3; i5++) {
                            Object obj = slotTable.getSlots()[i4 + i5];
                            if (aa4.e(obj, Composer.Companion.getEmpty())) {
                                break;
                            }
                            if (nl3Var.invoke(obj).booleanValue()) {
                                ObjectLocation objectLocation2 = new ObjectLocation(iPop, Integer.valueOf(i5));
                                slotTableReaderOpenReader.close();
                                return objectLocation2;
                            }
                        }
                    }
                    if (iPop != root && (i = groups[iPop + 1]) >= 0) {
                        intStack.push(i);
                    }
                    iPop = groups[iPop + 3];
                    if (iPop < 0) {
                        if (intStack.tos == 0) {
                            break;
                        }
                        iPop = intStack.pop();
                    }
                }
            }
            j59 j59Var = j59.a;
            slotTableReaderOpenReader.close();
            return null;
        } catch (Throwable th) {
            slotTableReaderOpenReader.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String flagsNames(int i) {
        String strConcat = (i & 8388608) == 8388608 ? "N" : "";
        if ((i & 16777216) == 16777216) {
            strConcat = strConcat.concat("O");
        }
        if ((i & GroupFlagsKt.HasAuxSlotFlag) == 33554432) {
            strConcat = strConcat.concat(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
        }
        if ((i & 67108864) == 67108864) {
            strConcat = strConcat.concat("R");
        }
        if ((i & 134217728) == 134217728) {
            strConcat = strConcat.concat("r");
        }
        if ((i & 268435456) == 268435456) {
            strConcat = strConcat.concat("C");
        }
        if ((i & 536870912) == 536870912) {
            strConcat = strConcat.concat("c");
        }
        if ((i & 1073741824) == 1073741824) {
            strConcat = strConcat.concat(ExifInterface.LATITUDE_SOUTH);
        }
        if ((i & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            strConcat = strConcat.concat(CmcdData.STREAMING_FORMAT_SS);
        }
        int i2 = 8388607 & i;
        if (i2 == 0) {
            return strConcat;
        }
        if ((i & (-8388608)) != 0) {
            strConcat = strConcat.concat(" ");
        }
        return strConcat + "CC(" + i2 + ')';
    }

    public static final int nodeIndexOf(int i, SlotTable slotTable) {
        SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
        int[] groups = addressSpace.getGroups();
        int i2 = 0;
        while (i > 0) {
            int i3 = groups[i + 2];
            int[] groups2 = addressSpace.getGroups();
            for (int i4 = groups2[i3 + 3]; i4 > 0 && i4 != i; i4 = groups2[i4 + 1]) {
                int i5 = groups[i + 4];
                i2 += (i5 & 8388608) == 8388608 ? 1 : 8388607 & i5;
            }
            if ((groups[i3 + 4] & 8388608) == 8388608) {
                return i2;
            }
            i = i3;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RecomposeScopeImpl recomposeScopeOrNullInRegion(Object[] objArr, int i) {
        if (i < 0) {
            return null;
        }
        Object obj = objArr[i >> 4];
        if (obj instanceof RecomposeScopeImpl) {
            return (RecomposeScopeImpl) obj;
        }
        return null;
    }

    public static final void removeCurrentGroup(SlotTableEditor slotTableEditor, RememberManager rememberManager) {
        slotTableEditor.visitSlotsInRememberOrder(slotTableEditor.getCurrentGroup(), new q9(rememberManager, 4));
        SlotTableEditor.removeGroup$default(slotTableEditor, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeCurrentGroup$lambda$0(RememberManager rememberManager, int i, int i2, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            rememberManager.releasing((ComposeNodeLifecycleCallback) obj);
        }
        if (obj instanceof RememberObserverHolder) {
            rememberManager.forgetting((RememberObserverHolder) obj);
        }
        if (!(obj instanceof RecomposeScopeImpl)) {
            return false;
        }
        ((RecomposeScopeImpl) obj).release();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String summarize(Object obj, int i) {
        String str = obj instanceof String ? (String) obj : null;
        if (str != null) {
            return str;
        }
        String strY = ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(String.valueOf(obj), "androidx.", "a."), "compose.", "c."), "runtime.", "r."), "internal.", "ι."), "ui.", "u."), "foundation.", "f."), "Modifier", "μ"), "material.", "m."), "Function", "λ"), "OpaqueKey", "κ"), "MutableState", "σ");
        return strY.substring(0, Math.min(i, strY.length()));
    }

    public static final void throwConcurrentModificationException() {
        throw new ConcurrentModificationException();
    }

    private static final long toGroupHandle(int i) {
        return ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }
}
