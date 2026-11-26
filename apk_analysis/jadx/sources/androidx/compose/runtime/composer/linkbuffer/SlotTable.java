package androidx.compose.runtime.composer.linkbuffer;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.ap7;
import defpackage.bg;
import defpackage.bm3;
import defpackage.ga1;
import defpackage.h2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ly1;
import defpackage.n7;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.re4;
import defpackage.u96;
import defpackage.ud;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTable extends SlotStorage implements CompositionData, Iterable<CompositionGroup>, re4 {
    private final SlotTableAddressSpace addressSpace;
    private SlotTableEditor currentEditor;
    private int openReaders;
    private boolean recordCallByInformation;
    private boolean recordSourceInformation;
    private int root;
    private int version;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public final class DebugGroup {
        private final int address;

        public DebugGroup(int i) {
            this.address = i;
        }

        public final int getAddress() {
            return this.address;
        }

        public final Object getAux() {
            if ((getFlags() & GroupFlagsKt.HasAuxSlotFlag) != 33554432) {
                return Composer.Companion.getEmpty();
            }
            return SlotTable.this.getSlots()[Integer.bitCount(getFlags() & 25165824) + getSlotRange().getAddress()];
        }

        public final List<DebugGroup> getChildren() {
            ap7 ap7VarD = ly1.d(new SlotTable$DebugGroup$children$1(SlotTable.this, this, null));
            if (!ap7VarD.hasNext()) {
                return kx2.b;
            }
            Object next = ap7VarD.next();
            if (!ap7VarD.hasNext()) {
                return u96.h(next);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(next);
            while (ap7VarD.hasNext()) {
                arrayList.add(ap7VarD.next());
            }
            return arrayList;
        }

        public final int getFlags() {
            return SlotTable.this.getGroups()[this.address + 4];
        }

        public final boolean getHasMovableContent() {
            return (getFlags() & 536870912) == 536870912;
        }

        public final boolean getHasRecomposeRequired() {
            return (getFlags() & 134217728) == 134217728;
        }

        public final boolean getHasSubComposition() {
            return (getFlags() & Integer.MIN_VALUE) == Integer.MIN_VALUE;
        }

        public final int getKey() {
            return SlotTable.this.getGroups()[this.address];
        }

        public final Object getNode() {
            if ((getFlags() & 8388608) != 8388608) {
                return Composer.Companion.getEmpty();
            }
            Object[] slots = SlotTable.this.getSlots();
            int address = getSlotRange().getAddress();
            getFlags();
            return slots[address];
        }

        public final Object getObjectKey() {
            if ((getFlags() & 16777216) != 16777216) {
                return Composer.Companion.getEmpty();
            }
            return SlotTable.this.getSlots()[Integer.bitCount(getFlags() & 8388608) + getSlotRange().getAddress()];
        }

        public final DebugSlotRange getSlotRange() {
            SlotTable slotTable = SlotTable.this;
            return slotTable.new DebugSlotRange(slotTable.getGroups()[this.address + 5]);
        }

        public final List<Object> getSlots() {
            ap7 ap7VarD = ly1.d(new SlotTable$DebugGroup$slots$1(this, SlotTable.this, null));
            if (!ap7VarD.hasNext()) {
                return kx2.b;
            }
            Object next = ap7VarD.next();
            if (!ap7VarD.hasNext()) {
                return u96.h(next);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(next);
            while (ap7VarD.hasNext()) {
                arrayList.add(ap7VarD.next());
            }
            return arrayList;
        }

        public final boolean isMovableContent() {
            return (getFlags() & 268435456) == 268435456;
        }

        public final boolean isNode() {
            return (getFlags() & 8388608) == 8388608;
        }

        public final boolean isRecomposeRequired() {
            return (getFlags() & 67108864) == 67108864;
        }

        public final boolean isSubComposition() {
            return (getFlags() & 67108864) == 67108864;
        }

        public String toString() {
            SlotTable slotTable = SlotTable.this;
            StringBuilder sb = new StringBuilder("Group(");
            sb.append(getKey());
            if ((getFlags() & (-67108864)) != 0) {
                sb.append(", flags=");
                if (isMovableContent()) {
                    sb.append('C');
                }
                if (getHasMovableContent()) {
                    sb.append('c');
                }
                if (isSubComposition()) {
                    sb.append('S');
                }
                if (getHasSubComposition()) {
                    sb.append('s');
                }
                if (isRecomposeRequired()) {
                    sb.append('R');
                }
                if (getHasRecomposeRequired()) {
                    sb.append('r');
                }
            }
            if ((getFlags() & 16777216) == 16777216) {
                sb.append(", object key");
            }
            if ((getFlags() & GroupFlagsKt.HasAuxSlotFlag) == 33554432) {
                sb.append(", aux");
            }
            if (isNode()) {
                sb.append(", node");
            }
            int[] groups = slotTable.getGroups();
            int i = this.address;
            if (groups[i + 3] != -1) {
                int[] groups2 = slotTable.getAddressSpace().getGroups();
                int i2 = 0;
                for (int i3 = groups2[i + 3]; i3 > 0; i3 = groups2[i3 + 1]) {
                    i2++;
                }
                sb.append(", ");
                sb.append(i2);
                sb.append(i2 == 1 ? " child" : " children");
            }
            if (slotTable.getGroups()[this.address + 5] != -1) {
                sb.append(", ");
                sb.append(getSlotRange().getSize());
                sb.append(" slots");
            }
            sb.append(')');
            return sb.toString();
        }
    }

    public final class DebugSlotRange {
        private final int range;

        public DebugSlotRange(int i) {
            this.range = i;
        }

        public final int getAddress() {
            return this.range >> 4;
        }

        public final int getEnd() {
            return getSize() + getAddress();
        }

        public final int getRange() {
            return this.range;
        }

        public final int getSize() {
            SlotTableAddressSpace addressSpace = SlotTable.this.getAddressSpace();
            int i = this.range;
            if (i == -1) {
                return 0;
            }
            int i2 = (i & 15) + 1;
            return i2 > 15 ? addressSpace.getLargeSizes().get(i >> 4) : i2;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.composer.linkbuffer.SlotTable$getSlots$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterable<Object>, re4 {
        public AnonymousClass1() {
        }

        @Override // java.lang.Iterable
        public Iterator<Object> iterator() {
            return ly1.d(new SlotTable$getSlots$1$iterator$1(SlotTable.this, null));
        }
    }

    public /* synthetic */ SlotTable(int i, SlotTableAddressSpace slotTableAddressSpace, boolean z, boolean z2, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? -1 : i, (i2 & 2) != 0 ? new SlotTableAddressSpace() : slotTableAddressSpace, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? false : z2);
    }

    private final RecomposeScopeImpl findEffectiveRecomposeScope(int i) {
        int[] groups = getAddressSpace().getGroups();
        int i2 = i;
        while (true) {
            if (i2 <= 0) {
                if (i2 != 0) {
                    return null;
                }
                h2.b(i, "Traversing parent of group not in the slot table: ");
                return null;
            }
            RecomposeScopeImpl recomposeScopeOrNull$runtime = getRecomposeScopeOrNull$runtime(i2);
            if (recomposeScopeOrNull$runtime != null) {
                if (recomposeScopeOrNull$runtime.getUsed() && i2 != i) {
                    return recomposeScopeOrNull$runtime;
                }
                recomposeScopeOrNull$runtime.setForcedRecompose(true);
            }
            i2 = groups[i2 + 2];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int[] getGroups() {
        return this.addressSpace.getGroups();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object[] getSlots() {
        return this.addressSpace.getSlots();
    }

    private static final void toDebugString$lambda$0$dumpGroup(StringBuilder sb, SlotTable slotTable, boolean z, int i, String str) {
        int i2;
        sb.append(str);
        int[] groups = slotTable.addressSpace.getGroups();
        StringBuilder sbC = n7.c(i, "Group(", ") key: ");
        sbC.append(groups[i]);
        sb.append(sbC.toString());
        Object[] slots = slotTable.addressSpace.getSlots();
        int i3 = groups[i + 5];
        int i4 = groups[i + 4];
        int i5 = 8388607 & i4;
        if (i5 > 0) {
            sb.append(" Nodes: ");
            sb.append(i5);
        }
        if (((-67108864) & i4) != 0) {
            sb.append(" Marks: ");
            if ((i4 & 268435456) == 268435456) {
                sb.append('C');
            }
            if ((i4 & 536870912) == 536870912) {
                sb.append('c');
            }
            if ((i4 & 1073741824) == 1073741824) {
                sb.append('S');
            }
            if ((i4 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                sb.append('s');
            }
            if ((i4 & 67108864) == 67108864) {
                sb.append('R');
            }
            if ((i4 & 134217728) == 134217728) {
                sb.append('r');
            }
        }
        if (z) {
            int i6 = i3 >> 4;
            if (i3 != -1) {
                SlotTableAddressSpace slotTableAddressSpace = slotTable.addressSpace;
                if (i3 == -1) {
                    i2 = 0;
                } else {
                    i2 = (i3 & 15) + 1;
                    if (i2 > 15) {
                        i2 = slotTableAddressSpace.getLargeSizes().get(i6);
                    }
                }
                int i7 = i2 + i6;
                if ((i4 & 8388608) == 8388608) {
                    sb.append(" Node: ");
                    sb.append(SlotTableKt.summarize(slots[i6], 10));
                    i6++;
                }
                if ((i4 & 16777216) == 16777216) {
                    sb.append(" Key: ");
                    sb.append(SlotTableKt.summarize(slots[i6], 10));
                    i6++;
                }
                if ((i4 & GroupFlagsKt.HasAuxSlotFlag) == 33554432) {
                    sb.append(" Aux: ");
                    sb.append(SlotTableKt.summarize(slots[i6], 10));
                    i6++;
                }
                if (i6 < i7) {
                    sb.append(" (" + i6 + '-' + i7 + ")[");
                    while (i6 < i7) {
                        int i8 = i6 + 1;
                        sb.append(SlotTableKt.summarize(slots[i6], 10));
                        if (i8 < i7) {
                            sb.append(", ");
                        }
                        i6 = i8;
                    }
                    sb.append("]");
                }
            }
        }
        sb.append(':');
        sb.append('\n');
        String str2 = str + "  ";
        int[] groups2 = slotTable.getAddressSpace().getGroups();
        for (int i9 = groups2[i + 3]; i9 > 0; i9 = groups2[i9 + 1]) {
            toDebugString$lambda$0$dumpGroup(sb, slotTable, z, i9, str2);
        }
    }

    public static /* synthetic */ void traverseGroup$runtime$default(SlotTable slotTable, int i, boolean z, nl3 nl3Var, int i2, Object obj) {
        int i3;
        if ((i2 & 2) != 0) {
            z = false;
        }
        SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        int iPop = i;
        while (true) {
            nl3Var.invoke(Integer.valueOf(iPop));
            if ((iPop != i || z) && (i3 = groups[iPop + 1]) >= 0) {
                intStack.push(i3);
            }
            iPop = groups[iPop + 3];
            if (iPop < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    iPop = intStack.pop();
                }
            }
        }
    }

    private static final int verifyWellFormed$validateGroup(MutableIntSet mutableIntSet, int[] iArr, SlotTable slotTable, Object[] objArr, int i, int i2) {
        if (i2 == -1) {
            return 0;
        }
        if (mutableIntSet.contains(i2)) {
            ud.e(i2, "Circular group encountered at ");
            return 0;
        }
        mutableIntSet.add(i2);
        if (i2 % 6 != 0) {
            ud.e(i2, "Invalid group address: ");
            return 0;
        }
        if (iArr[i2 + 2] != i) {
            ud.e(i2, "Invalid parent link in group ");
            return 0;
        }
        SlotTable slotTable2 = slotTable;
        Object[] objArr2 = objArr;
        verifyWellFormed$validateSlotRange(slotTable2, objArr2, i2, iArr[i2 + 5]);
        int i3 = i2 + 4;
        int i4 = iArr[i3] & GroupFlagsKt.HasMarkFlags;
        int[] groups = slotTable2.getAddressSpace().getGroups();
        int i5 = groups[i2 + 3];
        int iVerifyWellFormed$validateGroup = 0;
        int i6 = 0;
        while (i5 > 0) {
            iVerifyWellFormed$validateGroup += verifyWellFormed$validateGroup(mutableIntSet, iArr, slotTable2, objArr2, i2, i5);
            int iPropagatingFlagsOf = GroupFlagsKt.propagatingFlagsOf(iArr[i5 + 4]);
            i6 |= iPropagatingFlagsOf;
            if (iPropagatingFlagsOf != 0 && (i4 & iPropagatingFlagsOf) == 0) {
                StringBuilder sbF = bg.f(i5, i2, "Group ", " contains a flag that the parent, ", ", is not recorded as having, ");
                ga1.b(16);
                String string = Integer.toString(iPropagatingFlagsOf, 16);
                string.getClass();
                sbF.append(string);
                sbF.append(' ');
                sbF.append(SlotTableKt.flagsNames(iPropagatingFlagsOf));
                throw new IllegalStateException(sbF.toString().toString());
            }
            i5 = groups[i5 + 1];
            slotTable2 = slotTable;
            objArr2 = objArr;
        }
        int i7 = iArr[i3];
        int i8 = 8388607 & i7;
        if (i8 != iVerifyWellFormed$validateGroup) {
            StringBuilder sbF2 = bg.f(i2, iVerifyWellFormed$validateGroup, "Unexpected node count for group ", ", expected ", ", received: ");
            sbF2.append(i8);
            throw new IllegalStateException(sbF2.toString().toString());
        }
        if (i4 == i6) {
            if ((i7 & 8388608) == 8388608) {
                return 1;
            }
            return i8;
        }
        ga1.b(16);
        String string2 = Integer.toString(i6, 16);
        string2.getClass();
        String strFlagsNames = SlotTableKt.flagsNames(i6);
        ga1.b(16);
        String string3 = Integer.toString(i4, 16);
        string3.getClass();
        throw new IllegalStateException(("Unexpected has mark flags for group " + i2 + ", expected " + string2 + ' ' + strFlagsNames + ", received " + string3 + ' ' + SlotTableKt.flagsNames(i4)).toString());
    }

    private static final void verifyWellFormed$validateSlotRange(SlotTable slotTable, Object[] objArr, int i, int i2) {
        if (i2 == -1) {
            return;
        }
        SlotTableAddressSpace slotTableAddressSpace = slotTable.addressSpace;
        int i3 = (i2 & 15) + 1;
        int i4 = i2 >> 4;
        if (i3 > 15) {
            slotTableAddressSpace.getLargeSizes().get(i4);
        }
        if (i4 < 0 || i4 >= objArr.length) {
            throw new IllegalStateException(("Slot index for group " + i + " out of bounds: " + i4).toString());
        }
    }

    public final SlotTable buildSubTable(nl3<? super SlotTableBuilder, j59> nl3Var) {
        SlotTableBuilder slotTableBuilder = new SlotTableBuilder(getAddressSpace(), false, false);
        slotTableBuilder.buildStart();
        nl3Var.invoke(slotTableBuilder);
        return slotTableBuilder.build();
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void clear(RememberManager rememberManager) {
        SlotTableEditor slotTableEditorOpenEditor = openEditor();
        try {
            SlotTableKt.removeCurrentGroup(slotTableEditorOpenEditor, rememberManager);
            j59 j59Var = j59.a;
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    public final void closeEditor(SlotTableEditor slotTableEditor) {
        if (!(this.currentEditor == slotTableEditor)) {
            ComposerKt.composeImmediateRuntimeError("Attempted to close an editor that was not the current editor");
        }
        this.currentEditor = null;
    }

    public final void closeReader(SlotTableReader slotTableReader) {
        if (!(slotTableReader.getTable() == this && this.openReaders > 0)) {
            ComposerKt.composeImmediateRuntimeError("Unexpected reader close()");
        }
        this.openReaders--;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void collectCalledByInformation() {
        this.recordCallByInformation = true;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void collectSourceInformation() {
        this.recordSourceInformation = true;
    }

    public final boolean contains(int i) {
        if (i >= 0 && this.addressSpace.contains(i)) {
            int[] groups = this.addressSpace.getGroups();
            int i2 = groups[i + 2];
            while (true) {
                if (i2 <= 0) {
                    if (!(i2 != 0)) {
                        h2.b(i, "Traversing parent of group not in the slot table: ");
                        break;
                    }
                    break;
                }
                if (i2 == this.root) {
                    return true;
                }
                i2 = groups[i2 + 2];
            }
        }
        return false;
    }

    public final boolean containsFlags(int i) {
        return !isEmpty() && (this.addressSpace.getGroups()[this.root + 4] & i) == i;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void deactivateAll(RememberManager rememberManager) {
        SlotTableEditor slotTableEditorOpenEditor = openEditor();
        try {
            SlotTableKt.deactivateCurrentGroup(slotTableEditorOpenEditor, rememberManager);
            j59 j59Var = j59.a;
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void dispose() {
        int i = this.root;
        if (i != -1) {
            this.addressSpace.freeGroupTree(i);
            this.root = -1;
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void disposeUnusedMovableContent(RememberManager rememberManager, MovableContentState movableContentState) {
        SlotTableEditor slotTableEditorOpenEditor = openEditor();
        try {
            SlotTableKt.removeCurrentGroup(slotTableEditorOpenEditor, rememberManager);
            j59 j59Var = j59.a;
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    public final <T> T edit(nl3<? super SlotTableEditor, ? extends T> nl3Var) {
        SlotTableEditor slotTableEditorOpenEditor = openEditor();
        try {
            return nl3Var.invoke(slotTableEditorOpenEditor);
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public ScatterMap<MovableContentStateReference, MovableContentState> extractNestedStates(Applier<?> applier, ObjectList<MovableContentStateReference> objectList) {
        MutableScatterMap mutableScatterMapMutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
        SlotTableEditor slotTableEditorOpenEditor = openEditor();
        try {
            Object[] objArr = objectList.content;
            int i = objectList._size;
            for (int i2 = 0; i2 < i; i2++) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr[i2];
                LinkAnchor linkAnchorAsLinkAnchor = LinkAnchorKt.asLinkAnchor(movableContentStateReference.getAnchor$runtime());
                if (slotTableEditorOpenEditor.getTable().contains(linkAnchorAsLinkAnchor)) {
                    slotTableEditorOpenEditor.seek(linkAnchorAsLinkAnchor);
                    mutableScatterMapMutableScatterMapOf.set(movableContentStateReference, SlotTableKt.extractMovableContentAtCurrent(movableContentStateReference.getComposition$runtime(), movableContentStateReference, slotTableEditorOpenEditor, applier));
                }
            }
            j59 j59Var = j59.a;
            return mutableScatterMapMutableScatterMapOf;
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public CompositionGroup find(Object obj) {
        return new SlotTableGroup(this, this.root, this.version).find(obj);
    }

    public final int firstChildOf$runtime(int i) {
        return getGroups()[i + 3];
    }

    public final void forEachGroupSlot$runtime(int i, bm3<Object, ? super Integer, j59> bm3Var) {
        int i2 = getGroups()[i + 5];
        if (i2 != -1) {
            SlotTableAddressSpace addressSpace = getAddressSpace();
            int i3 = (i2 & 15) + 1;
            int i4 = i2 >> 4;
            if (i3 > 15) {
                i3 = addressSpace.getLargeSizes().get(i4);
            }
            for (int i5 = 0; i5 < i3; i5++) {
                Object obj = getSlots()[i4 + i5];
                if (aa4.e(obj, Composer.Companion.getEmpty())) {
                    return;
                }
                bm3Var.invoke(obj, Integer.valueOf(i5));
            }
        }
    }

    public final void forEachSlot$runtime(nl3<Object, j59> nl3Var) {
        if (getHasEditor()) {
            ComposerKt.composeImmediateRuntimeError("Cannot read while an editor is pending");
        }
        SlotTableAddressSpace addressSpace = getAddressSpace();
        int root = getRoot();
        if (root < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        while (true) {
            int i = getGroups()[root + 5];
            if (i != -1) {
                SlotTableAddressSpace addressSpace2 = getAddressSpace();
                int i2 = (i & 15) + 1;
                int i3 = i >> 4;
                if (i2 > 15) {
                    i2 = addressSpace2.getLargeSizes().get(i3);
                }
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj = getSlots()[i3 + i4];
                    if (aa4.e(obj, Composer.Companion.getEmpty())) {
                        break;
                    }
                    nl3Var.invoke(obj);
                }
            }
            int i5 = groups[root + 1];
            if (i5 >= 0) {
                intStack.push(i5);
            }
            root = groups[root + 3];
            if (root < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    root = intStack.pop();
                }
            }
        }
    }

    public final SlotTableAddressSpace getAddressSpace() {
        return this.addressSpace;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }

    public final boolean getHasEditor() {
        return this.currentEditor != null;
    }

    public final RecomposeScopeImpl getRecomposeScopeOrNull$runtime(int i) {
        SlotTableAddressSpace slotTableAddressSpace = this.addressSpace;
        int[] groups = slotTableAddressSpace.getGroups();
        Object[] slots = slotTableAddressSpace.getSlots();
        int i2 = groups[i + 5];
        if (i2 == -1) {
            return null;
        }
        int i3 = (i2 & 15) + 1;
        int i4 = i2 >> 4;
        if (i3 > 15) {
            i3 = slotTableAddressSpace.getLargeSizes().get(i4);
        }
        int i5 = i3 + i4;
        int iUtilitySlotsCountForFlags = GroupFlagsKt.utilitySlotsCountForFlags(groups[i + 4]) + i4;
        if (iUtilitySlotsCountForFlags <= i5) {
            Object obj = slots[iUtilitySlotsCountForFlags];
            if (obj instanceof RecomposeScopeImpl) {
                return (RecomposeScopeImpl) obj;
            }
        }
        return null;
    }

    public final boolean getRecordCallByInformation() {
        return this.recordCallByInformation;
    }

    public final boolean getRecordSourceInformation() {
        return this.recordSourceInformation;
    }

    public final int getRoot() {
        return this.root;
    }

    public final int getVersion() {
        return this.version;
    }

    public final Object groupAux$runtime(int i) {
        int i2 = getGroups()[i + 4];
        if ((i2 & GroupFlagsKt.HasAuxSlotFlag) == 33554432) {
            return groupSlotAtIndex$runtime(i, Integer.bitCount(i2 & 25165824));
        }
        return null;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public boolean groupContainsAnchor(int i, Anchor anchor) {
        LinkAnchor linkAnchorAsLinkAnchor = LinkAnchorKt.asLinkAnchor(anchor);
        return this.addressSpace.ownsAnchor(linkAnchorAsLinkAnchor) && isGroupAChildOf$runtime(linkAnchorAsLinkAnchor.getAddress(), i);
    }

    public final int groupFlags$runtime(int i) {
        return getGroups()[i + 4];
    }

    public final boolean groupHasAux$runtime(int i) {
        return (getGroups()[i + 4] & GroupFlagsKt.HasAuxSlotFlag) == 33554432;
    }

    public final int groupKeyOf$runtime(int i) {
        return getGroups()[i];
    }

    public final Object groupNode$runtime(int i) {
        if ((getGroups()[i + 4] & 8388608) == 8388608) {
            return groupSlotAtIndex$runtime(i, 0);
        }
        return null;
    }

    public final Object groupObjectKey$runtime(int i) {
        int i2 = getGroups()[i + 4];
        if ((i2 & 16777216) == 16777216) {
            return groupSlotAtIndex$runtime(i, Integer.bitCount(i2 & 8388608));
        }
        return null;
    }

    public final Object groupSlotAtIndex$runtime(int i, int i2) {
        int i3 = i + 5;
        if (getGroups()[i3] == -1 || i2 < 0) {
            return null;
        }
        int i4 = getGroups()[i3];
        SlotTableAddressSpace slotTableAddressSpace = this.addressSpace;
        int i5 = (i4 & 15) + 1;
        int i6 = i4 >> 4;
        if (i5 > 15) {
            i5 = slotTableAddressSpace.getLargeSizes().get(i6);
        }
        if (i2 >= i5) {
            return null;
        }
        return getSlots()[i6 + i2];
    }

    public final int groupSlotRange$runtime(int i) {
        return getGroups()[i + 5];
    }

    public final boolean hasRecomposeScopes(int i) {
        int i2;
        int[] groups = this.addressSpace.getGroups();
        Object[] slots = this.addressSpace.getSlots();
        SlotTableAddressSpace addressSpace = getAddressSpace();
        if (i < 0) {
            return false;
        }
        IntStack intStack = new IntStack();
        int[] groups2 = addressSpace.getGroups();
        int iPop = i;
        while (SlotTableKt.recomposeScopeOrNullInRegion(slots, groups[iPop + 5]) == null) {
            if (iPop != i && (i2 = groups2[iPop + 1]) >= 0) {
                intStack.push(i2);
            }
            iPop = groups2[iPop + 3];
            if (iPop < 0) {
                if (intStack.tos == 0) {
                    return false;
                }
                iPop = intStack.pop();
            }
        }
        return true;
    }

    public final boolean inGroup(LinkAnchor linkAnchor, LinkAnchor linkAnchor2) {
        if (!linkAnchor.getValid() || !linkAnchor2.getValid()) {
            return false;
        }
        if (linkAnchor == linkAnchor2) {
            return true;
        }
        SlotTableAddressSpace slotTableAddressSpace = this.addressSpace;
        if (!slotTableAddressSpace.ownsAnchor(linkAnchor2) || !slotTableAddressSpace.ownsAnchor(linkAnchor)) {
            return false;
        }
        int address = linkAnchor.getAddress();
        int address2 = linkAnchor2.getAddress();
        if (!slotTableAddressSpace.contains(address) || !slotTableAddressSpace.contains(address2)) {
            return false;
        }
        int[] groups = slotTableAddressSpace.getGroups();
        int i = groups[address2 + 2];
        while (i > 0) {
            if (i == address) {
                return true;
            }
            if (address <= 0) {
                return false;
            }
            i = groups[i + 2];
        }
        if (!(i != 0)) {
            h2.b(address2, "Traversing parent of group not in the slot table: ");
        }
        return false;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void invalidateAll() {
        if (getHasEditor()) {
            ComposerKt.composeImmediateRuntimeError("Cannot read while an editor is pending");
        }
        SlotTableAddressSpace addressSpace = getAddressSpace();
        int root = getRoot();
        if (root < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        while (true) {
            int i = getGroups()[root + 5];
            if (i != -1) {
                SlotTableAddressSpace addressSpace2 = getAddressSpace();
                int i2 = (i & 15) + 1;
                int i3 = i >> 4;
                if (i2 > 15) {
                    i2 = addressSpace2.getLargeSizes().get(i3);
                }
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj = getSlots()[i3 + i4];
                    if (aa4.e(obj, Composer.Companion.getEmpty())) {
                        break;
                    }
                    RecomposeScope recomposeScope = obj instanceof RecomposeScope ? (RecomposeScope) obj : null;
                    if (recomposeScope != null) {
                        recomposeScope.invalidate();
                    }
                }
            }
            int i5 = groups[root + 1];
            if (i5 >= 0) {
                intStack.push(i5);
            }
            root = groups[root + 3];
            if (root < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    root = intStack.pop();
                }
            }
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public List<RecomposeScopeImpl> invalidateGroupsWithKey(int i) {
        int i2;
        int i3;
        RecomposeScopeImpl recomposeScopeImplFindEffectiveRecomposeScope;
        LinkAnchor linkAnchorAsLinkAnchor;
        MutableIntSet mutableIntSet;
        int i4 = 0;
        int i5 = 1;
        jh2 jh2Var = null;
        MutableIntSet mutableIntSet2 = new MutableIntSet(i4, i5, jh2Var);
        ArrayList arrayList = new ArrayList();
        MutableIntSet mutableIntSet3 = new MutableIntSet(i4, i5, jh2Var);
        mutableIntSet3.add(i);
        mutableIntSet3.add(-3);
        MutableIntObjectMap<MutableIntSet> calledByMap$runtime = this.addressSpace.getCalledByMap$runtime();
        if (calledByMap$runtime != null && (mutableIntSet = calledByMap$runtime.get(i)) != null) {
            mutableIntSet3.addAll(mutableIntSet);
        }
        int i6 = this.root;
        SlotTableAddressSpace addressSpace = getAddressSpace();
        if (i6 >= 0) {
            IntStack intStack = new IntStack();
            int[] groups = addressSpace.getGroups();
            int iPop = i6;
            while (true) {
                int i7 = this.addressSpace.getGroups()[iPop];
                if (mutableIntSet3.contains(i7)) {
                    if (i7 != -3) {
                        mutableIntSet2.plusAssign(iPop);
                    }
                    if (i5 != 0) {
                        RecomposeScopeImpl recomposeScopeImplFindEffectiveRecomposeScope2 = findEffectiveRecomposeScope(iPop);
                        if (recomposeScopeImplFindEffectiveRecomposeScope2 != null) {
                            arrayList.add(recomposeScopeImplFindEffectiveRecomposeScope2);
                            Anchor anchor = recomposeScopeImplFindEffectiveRecomposeScope2.getAnchor();
                            Integer numValueOf = (anchor == null || (linkAnchorAsLinkAnchor = LinkAnchorKt.asLinkAnchor(anchor)) == null) ? null : Integer.valueOf(linkAnchorAsLinkAnchor.getAddress());
                            if (numValueOf != null && numValueOf.intValue() == iPop && (recomposeScopeImplFindEffectiveRecomposeScope = findEffectiveRecomposeScope(this.addressSpace.getGroups()[iPop + 2])) != null) {
                                arrayList.add(recomposeScopeImplFindEffectiveRecomposeScope);
                            }
                        } else {
                            arrayList.clear();
                            i5 = 0;
                        }
                    }
                }
                if (iPop != i6 && (i3 = groups[iPop + 1]) >= 0) {
                    intStack.push(i3);
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
        SlotTableEditor slotTableEditorOpenEditor = openEditor();
        try {
            int[] iArr = mutableIntSet2.elements;
            long[] jArr = mutableIntSet2.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i8 = 0;
                while (true) {
                    long j = jArr[i8];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i9 = 8 - ((~(i8 - length)) >>> 31);
                        int i10 = i4;
                        while (i10 < i9) {
                            if ((255 & j) < 128) {
                                slotTableEditorOpenEditor.seek(((long) iArr[(i8 << 3) + i10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                                slotTableEditorOpenEditor.bashGroup$runtime(-3);
                            }
                            j >>= 8;
                            i10++;
                            i5 = i5;
                        }
                        i2 = i5;
                        if (i9 != 8) {
                            break;
                        }
                    } else {
                        i2 = i5;
                    }
                    if (i8 == length) {
                        break;
                    }
                    i8++;
                    i5 = i2;
                    i4 = 0;
                }
            } else {
                i2 = i5;
            }
            j59 j59Var = j59.a;
            slotTableEditorOpenEditor.close();
            if (i2 != 0) {
                return arrayList;
            }
            return null;
        } catch (Throwable th) {
            slotTableEditorOpenEditor.close();
            throw th;
        }
    }

    @Override // androidx.compose.runtime.SlotStorage, androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        return this.root == -1;
    }

    public final boolean isGroupAChildOf$runtime(int i, int i2) {
        int[] groups = getAddressSpace().getGroups();
        int i3 = i;
        while (true) {
            if (i3 <= 0) {
                if (!(i3 != 0)) {
                    h2.b(i, "Traversing parent of group not in the slot table: ");
                }
                return false;
            }
            if (i3 == i2) {
                return true;
            }
            i3 = groups[i3 + 2];
        }
    }

    @Override // java.lang.Iterable
    public Iterator<CompositionGroup> iterator() {
        return new GroupIterator(this, this.root);
    }

    public final SlotTable newTableInSameAddressSpace() {
        return new SlotTable(0, this.addressSpace, this.recordSourceInformation, this.recordCallByInformation, 1, null);
    }

    public final int nextSiblingOf$runtime(int i) {
        return getGroups()[i + 1];
    }

    public final SlotTableEditor openEditor() {
        if (getHasEditor()) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when another writer is pending");
        }
        if (!(this.openReaders <= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when a reader is pending");
        }
        this.version++;
        SlotTableEditor slotTableEditor = new SlotTableEditor(this);
        this.currentEditor = slotTableEditor;
        return slotTableEditor;
    }

    public final SlotTableReader openReader() {
        if (getHasEditor()) {
            ComposerKt.composeImmediateRuntimeError("Cannot read while a writer is pending");
        }
        this.openReaders++;
        return new SlotTableReader(this);
    }

    @Override // androidx.compose.runtime.SlotStorage
    public boolean ownsRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor != null) {
            LinkAnchor linkAnchorAsLinkAnchor = LinkAnchorKt.asLinkAnchor(anchor);
            if (this.addressSpace.ownsAnchor(linkAnchorAsLinkAnchor) && isGroupAChildOf$runtime(linkAnchorAsLinkAnchor.getAddress(), this.root)) {
                return true;
            }
        }
        return false;
    }

    public final <T> T read(nl3<? super SlotTableReader, ? extends T> nl3Var) {
        SlotTableReader slotTableReaderOpenReader = openReader();
        try {
            return nl3Var.invoke(slotTableReaderOpenReader);
        } finally {
            slotTableReaderOpenReader.close();
        }
    }

    public final long rootHandle() {
        return (((long) this.root) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (-4294967296L);
    }

    public final void setRecordCallByInformation(boolean z) {
        this.recordCallByInformation = z;
    }

    public final void setRecordSourceInformation(boolean z) {
        this.recordSourceInformation = z;
    }

    public final void setRoot(int i) {
        this.root = i;
    }

    public final String toDebugString(boolean z) {
        StringBuilder sbC = ad2.c("SlotTable(\n");
        int[] groups = getAddressSpace().getGroups();
        for (int i = this.root; i >= 0; i = groups[i + 1]) {
            toDebugString$lambda$0$dumpGroup(sbC, this, z, i, "  ");
        }
        sbC.append(")");
        return sbC.toString();
    }

    public final Object toDebugTree$runtime() {
        List listH;
        ap7 ap7VarD = ly1.d(new SlotTable$toDebugTree$1(this, null));
        if (ap7VarD.hasNext()) {
            Object next = ap7VarD.next();
            if (ap7VarD.hasNext()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(next);
                while (ap7VarD.hasNext()) {
                    arrayList.add(ap7VarD.next());
                }
                listH = arrayList;
            } else {
                listH = u96.h(next);
            }
        } else {
            listH = kx2.b;
        }
        return listH.size() == 1 ? qn1.T(listH) : listH;
    }

    public final void traverseChildren$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getAddressSpace().getGroups();
        for (int i2 = groups[i + 3]; i2 > 0; i2 = groups[i2 + 1]) {
            nl3Var.invoke(Integer.valueOf(i2));
        }
    }

    public final void traverseGroup$runtime(int i, boolean z, nl3<? super Integer, j59> nl3Var) {
        int i2;
        SlotTableAddressSpace addressSpace = getAddressSpace();
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        int iPop = i;
        while (true) {
            nl3Var.invoke(Integer.valueOf(iPop));
            if ((iPop != i || z) && (i2 = groups[iPop + 1]) >= 0) {
                intStack.push(i2);
            }
            iPop = groups[iPop + 3];
            if (iPop < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    iPop = intStack.pop();
                }
            }
        }
    }

    public final void traverseGroupAndParents$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getAddressSpace().getGroups();
        int i2 = i;
        while (i2 > 0) {
            nl3Var.invoke(Integer.valueOf(i2));
            i2 = groups[i2 + 2];
        }
        if (i2 != 0) {
            return;
        }
        h2.b(i, "Traversing parent of group not in the slot table: ");
    }

    public final void traverseSiblings$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getAddressSpace().getGroups();
        while (i >= 0) {
            nl3Var.invoke(Integer.valueOf(i));
            i = groups[i + 1];
        }
    }

    public final void traverseTable$runtime(nl3<? super Integer, j59> nl3Var) {
        SlotTableAddressSpace addressSpace = getAddressSpace();
        int root = getRoot();
        if (root < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = addressSpace.getGroups();
        while (true) {
            nl3Var.invoke(Integer.valueOf(root));
            int i = groups[root + 1];
            if (i >= 0) {
                intStack.push(i);
            }
            root = groups[root + 3];
            if (root < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    root = intStack.pop();
                }
            }
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void verifyWellFormed() {
        this.addressSpace.validate();
        int[] groups = this.addressSpace.getGroups();
        Object[] slots = this.addressSpace.getSlots();
        MutableIntSet mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
        int i = this.root;
        int[] groups2 = getAddressSpace().getGroups();
        for (int i2 = i; i2 >= 0; i2 = groups2[i2 + 1]) {
            verifyWellFormed$validateGroup(mutableIntSetMutableIntSetOf, groups, this, slots, -1, i2);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ SlotTable build$default(Companion companion, SlotTableAddressSpace slotTableAddressSpace, nl3 nl3Var, int i, Object obj) {
            if ((i & 1) != 0) {
                slotTableAddressSpace = new SlotTableAddressSpace();
            }
            SlotTableBuilder slotTableBuilder = new SlotTableBuilder(slotTableAddressSpace, false, false);
            slotTableBuilder.buildStart();
            nl3Var.invoke(slotTableBuilder);
            return slotTableBuilder.build();
        }

        public final SlotTable build(SlotTableAddressSpace slotTableAddressSpace, nl3<? super SlotTableBuilder, j59> nl3Var) {
            SlotTableBuilder slotTableBuilder = new SlotTableBuilder(slotTableAddressSpace, false, false);
            slotTableBuilder.buildStart();
            nl3Var.invoke(slotTableBuilder);
            return slotTableBuilder.build();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    /* JADX INFO: renamed from: getSlots, reason: collision with other method in class */
    public Iterable<Object> mo5506getSlots() {
        return new AnonymousClass1();
    }

    public SlotTable(int i, SlotTableAddressSpace slotTableAddressSpace, boolean z, boolean z2) {
        this.root = i;
        this.addressSpace = slotTableAddressSpace;
        this.recordSourceInformation = z;
        this.recordCallByInformation = z2;
    }

    public SlotTable() {
        this(0, null, false, false, 15, null);
    }

    @Override // androidx.compose.runtime.SlotStorage
    public String toDebugString() {
        return toDebugString(true);
    }

    public final boolean contains(LinkAnchor linkAnchor) {
        return linkAnchor.getValid() && this.addressSpace.ownsAnchor(linkAnchor) && contains(linkAnchor.getAddress());
    }

    @Override // androidx.compose.runtime.SlotStorage
    public boolean inGroup(Anchor anchor, Anchor anchor2) {
        return inGroup(LinkAnchorKt.asLinkAnchor(anchor), LinkAnchorKt.asLinkAnchor(anchor2));
    }
}
