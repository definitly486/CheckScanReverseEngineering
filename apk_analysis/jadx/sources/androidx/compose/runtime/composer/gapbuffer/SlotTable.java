package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.collection.ExtensionsKt;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bg;
import defpackage.j59;
import defpackage.lk;
import defpackage.ly1;
import defpackage.n07;
import defpackage.nl3;
import defpackage.p07;
import defpackage.ra8;
import defpackage.re4;
import defpackage.ta8;
import defpackage.yr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTable extends SlotStorage implements CompositionData, Iterable<CompositionGroup>, re4 {
    public static final int $stable = 8;
    private MutableIntObjectMap<MutableIntSet> calledByMap;
    private int groupsSize;
    private int readers;
    private int slotsSize;
    private HashMap<GapAnchor, GapGroupSourceInformation> sourceInformationMap;
    private int version;
    private boolean writer;
    private int[] groups = new int[0];
    private Object[] slots = new Object[0];
    private final Object lock = new Object();
    private ArrayList<GapAnchor> anchors = new ArrayList<>();

    /* JADX INFO: renamed from: androidx.compose.runtime.composer.gapbuffer.SlotTable$getSlots$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterable<Object>, re4 {
        public AnonymousClass1() {
        }

        @Override // java.lang.Iterable
        public Iterator<Object> iterator() {
            return ly1.d(new SlotTable$getSlots$1$iterator$1(SlotTable.this, null));
        }
    }

    private final List<Integer> dataIndexes() {
        return SlotTableKt.dataAnchors(this.groups, this.groupsSize * 5);
    }

    private final int emitGroup(StringBuilder sb, int i, int i2) {
        String sourceInformation;
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(' ');
        }
        sb.append("Group(");
        sb.append(i);
        sb.append(")");
        GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf = sourceInformationOf(i);
        if (gapGroupSourceInformationSourceInformationOf != null && (sourceInformation = gapGroupSourceInformationSourceInformationOf.getSourceInformation()) != null && (ra8.C(sourceInformation, "C(", false) || ra8.C(sourceInformation, "CC(", false))) {
            int iK = ta8.K(sourceInformation, "(", 0, false, 6) + 1;
            int iJ = ta8.J(')', 0, 6, sourceInformation);
            sb.append(" ");
            sb.append(sourceInformation.substring(iK, iJ));
            sb.append("()");
        }
        sb.append(" key=");
        int i4 = i * 5;
        sb.append(this.groups[i4]);
        int iGroupSize = SlotTableKt.groupSize(this.groups, i);
        sb.append(", nodes=");
        int i5 = i4 + 1;
        sb.append(this.groups[i5] & 67108863);
        sb.append(", size=");
        sb.append(iGroupSize);
        if ((this.groups[i5] & 134217728) != 0) {
            sb.append(", mark");
        }
        if ((this.groups[i5] & 67108864) != 0) {
            sb.append(", contains mark");
        }
        int iEmitGroup$dataIndex = emitGroup$dataIndex(this, i);
        int iEmitGroup = i + 1;
        int iEmitGroup$dataIndex2 = emitGroup$dataIndex(this, iEmitGroup);
        if (iEmitGroup$dataIndex < 0 || iEmitGroup$dataIndex > iEmitGroup$dataIndex2 || iEmitGroup$dataIndex2 > this.slotsSize) {
            sb.append(", *invalid data offsets " + iEmitGroup$dataIndex + '-' + iEmitGroup$dataIndex2 + '*');
        } else {
            if ((this.groups[i5] & 536870912) != 0) {
                sb.append(" objectKey=" + SlotTableKt.summarize(String.valueOf(this.slots[SlotTableKt.objectKeyIndex(this.groups, i)]), 10));
            }
            if ((this.groups[i5] & 1073741824) != 0) {
                sb.append(" node=" + SlotTableKt.summarize(String.valueOf(this.slots[this.groups[i4 + 4]]), 10));
            }
            if ((this.groups[i5] & 268435456) != 0) {
                sb.append(" aux=" + SlotTableKt.summarize(String.valueOf(this.slots[SlotTableKt.auxIndex(this.groups, i)]), 10));
            }
            int iSlotAnchor = SlotTableKt.slotAnchor(this.groups, i);
            if (iSlotAnchor < iEmitGroup$dataIndex2) {
                sb.append(", slots=[");
                sb.append(iSlotAnchor);
                sb.append(": ");
                for (int i6 = iSlotAnchor; i6 < iEmitGroup$dataIndex2; i6++) {
                    if (i6 != iSlotAnchor) {
                        sb.append(", ");
                    }
                    sb.append(SlotTableKt.summarize(String.valueOf(this.slots[i6]), 10));
                }
                sb.append("]");
            }
        }
        sb.append('\n');
        int i7 = i + iGroupSize;
        while (iEmitGroup < i7) {
            iEmitGroup += emitGroup(sb, iEmitGroup, i2 + 1);
        }
        return iGroupSize;
    }

    private static final int emitGroup$dataIndex(SlotTable slotTable, int i) {
        return i >= slotTable.groupsSize ? slotTable.slotsSize : slotTable.groups[(i * 5) + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer extractNestedStates$lambda$1(SlotTable slotTable, MovableContentStateReference movableContentStateReference) {
        return Integer.valueOf(slotTable.anchorIndex(GapAnchorKt.asGapAnchor(movableContentStateReference.getAnchor$runtime())));
    }

    private static final void extractNestedStates$lambda$2$closeToGroupContaining(SlotWriter slotWriter, int i) {
        while (slotWriter.getParent() >= 0 && slotWriter.getCurrentGroupEnd() <= i) {
            slotWriter.skipToGroupEnd();
            slotWriter.endGroup();
        }
    }

    private static final void extractNestedStates$lambda$2$openParent(SlotWriter slotWriter, int i) {
        extractNestedStates$lambda$2$closeToGroupContaining(slotWriter, i);
        while (slotWriter.getCurrentGroup() != i && !slotWriter.isGroupEnd()) {
            if (i < SlotTableKt.getNextGroup(slotWriter)) {
                slotWriter.startGroup();
            } else {
                slotWriter.skipGroup();
            }
        }
        if (!(slotWriter.getCurrentGroup() == i)) {
            ComposerKt.composeImmediateRuntimeError("Unexpected slot table structure");
        }
        slotWriter.startGroup();
    }

    private final RecomposeScopeImpl findEffectiveRecomposeScope(int i) {
        int i2 = i;
        while (i2 > 0) {
            for (Object obj : new DataIterator(this, i2)) {
                if (obj instanceof RecomposeScopeImpl) {
                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                    if (recomposeScopeImpl.getUsed() && i2 != i) {
                        return recomposeScopeImpl;
                    }
                    recomposeScopeImpl.setForcedRecompose(true);
                }
            }
            i2 = this.groups[(i2 * 5) + 2];
        }
        return null;
    }

    private final List<Integer> groupSizes() {
        return SlotTableKt.groupSizes(this.groups, this.groupsSize * 5);
    }

    private static final void invalidateGroupsWithKey$lambda$2$scanGroup(SlotReader slotReader, MutableIntSet mutableIntSet, List<GapAnchor> list, n07 n07Var, SlotTable slotTable, List<RecomposeScopeImpl> list2) {
        GapAnchor gapAnchorAsGapAnchor;
        RecomposeScopeImpl recomposeScopeImplFindEffectiveRecomposeScope;
        int groupKey = slotReader.getGroupKey();
        if (!mutableIntSet.contains(groupKey)) {
            slotReader.startGroup();
            while (!slotReader.isGroupEnd()) {
                invalidateGroupsWithKey$lambda$2$scanGroup(slotReader, mutableIntSet, list, n07Var, slotTable, list2);
            }
            slotReader.endGroup();
            return;
        }
        if (groupKey != -3) {
            list.add(SlotReader.anchor$default(slotReader, 0, 1, null));
        }
        if (n07Var.b) {
            RecomposeScopeImpl recomposeScopeImplFindEffectiveRecomposeScope2 = slotTable.findEffectiveRecomposeScope(slotReader.getCurrentGroup());
            if (recomposeScopeImplFindEffectiveRecomposeScope2 != null) {
                list2.add(recomposeScopeImplFindEffectiveRecomposeScope2);
                Anchor anchor = recomposeScopeImplFindEffectiveRecomposeScope2.getAnchor();
                if (anchor != null && (gapAnchorAsGapAnchor = GapAnchorKt.asGapAnchor(anchor)) != null && gapAnchorAsGapAnchor.getLocation$runtime() == slotReader.getCurrentGroup() && (recomposeScopeImplFindEffectiveRecomposeScope = slotTable.findEffectiveRecomposeScope(slotReader.getParent())) != null) {
                    list2.add(recomposeScopeImplFindEffectiveRecomposeScope);
                }
            } else {
                n07Var.b = false;
                list2.clear();
            }
        }
        slotReader.skipGroup();
    }

    private final List<Integer> keys() {
        return SlotTableKt.keys(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> nodes() {
        return SlotTableKt.nodeCounts(this.groups, this.groupsSize * 5);
    }

    private final List<Integer> parentIndexes() {
        return SlotTableKt.parentAnchors(this.groups, this.groupsSize * 5);
    }

    private final GapAnchor tryAnchor(int i) {
        int i2;
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to crate an anchor for location instead");
        }
        if (i < 0 || i >= (i2 = this.groupsSize)) {
            return null;
        }
        return SlotTableKt.find(this.anchors, i, i2);
    }

    private final void validateRecomposeScopeAnchors() {
        GapAnchor gapAnchorAsGapAnchor;
        Object[] objArr = this.slots;
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
            if (recomposeScopeImpl != null) {
                arrayList.add(recomposeScopeImpl);
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) arrayList.get(i);
            Anchor anchor = recomposeScopeImpl2.getAnchor();
            if (anchor != null && (gapAnchorAsGapAnchor = GapAnchorKt.asGapAnchor(anchor)) != null && !slotsOf$runtime(gapAnchorAsGapAnchor.toIndexFor(this)).contains(recomposeScopeImpl2)) {
                PreconditionsKt.throwIllegalStateException("Misaligned anchor " + gapAnchorAsGapAnchor + " in scope " + recomposeScopeImpl2 + " encountered, scope found at " + yr.Q(recomposeScopeImpl2, this.slots));
            }
        }
    }

    private static final int verifyWellFormed$validateGroup(p07 p07Var, SlotTable slotTable, int i, int i2) {
        int i3 = p07Var.b;
        int i4 = i3 + 1;
        p07Var.b = i4;
        int i5 = i3 * 5;
        int i6 = slotTable.groups[i5 + 2];
        if (!(i6 == i)) {
            StringBuilder sbF = bg.f(i3, i, "Invalid parent index detected at ", ", expected parent index to be ", " found ");
            sbF.append(i6);
            PreconditionsKt.throwIllegalStateException(sbF.toString());
        }
        int iGroupSize = SlotTableKt.groupSize(slotTable.groups, i3) + i3;
        if (!(iGroupSize <= slotTable.groupsSize)) {
            PreconditionsKt.throwIllegalStateException("A group extends past the end of the table at " + i3);
        }
        if (!(iGroupSize <= i2)) {
            PreconditionsKt.throwIllegalStateException("A group extends past its parent group at " + i3);
        }
        int[] iArr = slotTable.groups;
        int i7 = i5 + 4;
        int i8 = iArr[i7];
        int i9 = i3 >= slotTable.groupsSize - 1 ? slotTable.slotsSize : iArr[(i4 * 5) + 4];
        if (!(i9 <= slotTable.slots.length)) {
            PreconditionsKt.throwIllegalStateException("Slots for " + i3 + " extend past the end of the slot table");
        }
        if (!(i8 <= i9)) {
            PreconditionsKt.throwIllegalStateException("Invalid data anchor at " + i3);
        }
        if (!(SlotTableKt.slotAnchor(slotTable.groups, i3) <= i9)) {
            PreconditionsKt.throwIllegalStateException("Slots start out of range at " + i3);
        }
        int i10 = i5 + 1;
        int i11 = slotTable.groups[i10];
        if (!(i9 - i8 >= (((i11 & 1073741824) != 0 ? 1 : 0) + ((536870912 & i11) != 0 ? 1 : 0)) + ((i11 & 268435456) != 0 ? 1 : 0))) {
            PreconditionsKt.throwIllegalStateException("Not enough slots added for group " + i3);
        }
        int[] iArr2 = slotTable.groups;
        boolean z = (iArr2[i10] & 1073741824) != 0;
        if (!((z && slotTable.slots[iArr2[i7]] == null) ? false : true)) {
            PreconditionsKt.throwIllegalStateException("No node recorded for a node group at " + i3);
        }
        int iVerifyWellFormed$validateGroup = 0;
        while (p07Var.b < iGroupSize) {
            iVerifyWellFormed$validateGroup += verifyWellFormed$validateGroup(p07Var, slotTable, i3, iGroupSize);
        }
        int[] iArr3 = slotTable.groups;
        int i12 = iArr3[i10] & 67108863;
        int iGroupSize2 = SlotTableKt.groupSize(iArr3, i3);
        if (!(i12 == iVerifyWellFormed$validateGroup)) {
            StringBuilder sbF2 = bg.f(i3, i12, "Incorrect node count detected at ", ", expected ", ", received ");
            sbF2.append(iVerifyWellFormed$validateGroup);
            PreconditionsKt.throwIllegalStateException(sbF2.toString());
        }
        int i13 = p07Var.b - i3;
        if (!(iGroupSize2 == i13)) {
            StringBuilder sbF3 = bg.f(i3, iGroupSize2, "Incorrect slot count detected at ", ", expected ", ", received ");
            sbF3.append(i13);
            PreconditionsKt.throwIllegalStateException(sbF3.toString());
        }
        int[] iArr4 = slotTable.groups;
        if ((iArr4[i10] & 201326592) != 0) {
            if (!(i3 <= 0 || (iArr4[(i * 5) + 1] & 67108864) != 0)) {
                PreconditionsKt.throwIllegalStateException("Expected group " + i + " to record it contains a mark because " + i3 + " does");
            }
        }
        if (z) {
            return 1;
        }
        return iVerifyWellFormed$validateGroup;
    }

    private static final void verifyWellFormed$verifySourceGroup(SlotTable slotTable, GapGroupSourceInformation gapGroupSourceInformation) {
        ArrayList<Object> groups = gapGroupSourceInformation.getGroups();
        if (groups != null) {
            int size = groups.size();
            for (int i = 0; i < size; i++) {
                Object obj = groups.get(i);
                if (obj instanceof GapAnchor) {
                    GapAnchor gapAnchor = (GapAnchor) obj;
                    if (!gapAnchor.getValid()) {
                        PreconditionsKt.throwIllegalArgumentException("Source map contains invalid anchor");
                    }
                    if (!slotTable.ownsAnchor(gapAnchor)) {
                        PreconditionsKt.throwIllegalArgumentException("Source map anchor is not owned by the slot table");
                    }
                } else if (obj instanceof GapGroupSourceInformation) {
                    verifyWellFormed$verifySourceGroup(slotTable, (GapGroupSourceInformation) obj);
                }
            }
        }
    }

    public final GapAnchor anchor(int i) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("use active SlotWriter to create an anchor location instead");
        }
        boolean z = false;
        if (i >= 0 && i < this.groupsSize) {
            z = true;
        }
        if (!z) {
            PreconditionsKt.throwIllegalArgumentException("Parameter index is out of range");
        }
        ArrayList<GapAnchor> arrayList = this.anchors;
        int iSearch = SlotTableKt.search(arrayList, i, this.groupsSize);
        if (iSearch >= 0) {
            return arrayList.get(iSearch);
        }
        GapAnchor gapAnchor = new GapAnchor(i);
        arrayList.add(-(iSearch + 1), gapAnchor);
        return gapAnchor;
    }

    public final int anchorIndex(GapAnchor gapAnchor) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Use active SlotWriter to determine anchor location instead");
        }
        if (!gapAnchor.getValid()) {
            PreconditionsKt.throwIllegalArgumentException("Anchor refers to a group that was removed");
        }
        return gapAnchor.getLocation$runtime();
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void clear(RememberManager rememberManager) {
        SlotWriter slotWriterOpenWriter = openWriter();
        try {
            ComposerKt.removeCurrentGroup(slotWriterOpenWriter, rememberManager);
            j59 j59Var = j59.a;
            boolean z = true;
        } finally {
            slotWriterOpenWriter.close(false);
        }
    }

    public final void close$runtime(SlotReader slotReader, HashMap<GapAnchor, GapGroupSourceInformation> map) {
        if (!(slotReader.getTable$runtime() == this && this.readers > 0)) {
            ComposerKt.composeImmediateRuntimeError("Unexpected reader close()");
        }
        this.readers--;
        if (map != null) {
            synchronized (this.lock) {
                try {
                    HashMap<GapAnchor, GapGroupSourceInformation> map2 = this.sourceInformationMap;
                    if (map2 != null) {
                        map2.putAll(map);
                    } else {
                        this.sourceInformationMap = map;
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void collectCalledByInformation() {
        this.calledByMap = new MutableIntObjectMap<>(0, 1, null);
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void collectSourceInformation() {
        this.sourceInformationMap = new HashMap<>();
    }

    public final boolean containsMark() {
        return this.groupsSize > 0 && (this.groups[1] & 67108864) != 0;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void deactivateAll(RememberManager rememberManager) {
        SlotWriter slotWriterOpenWriter = openWriter();
        try {
            GapComposerKt.deactivateCurrentGroup(slotWriterOpenWriter, rememberManager);
            j59 j59Var = j59.a;
            boolean z = true;
        } finally {
            slotWriterOpenWriter.close(false);
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void dispose() {
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void disposeUnusedMovableContent(RememberManager rememberManager, MovableContentState movableContentState) {
        SlotWriter slotWriterOpenWriter = openWriter();
        try {
            ComposerKt.removeCurrentGroup(slotWriterOpenWriter, rememberManager);
            j59 j59Var = j59.a;
            boolean z = true;
        } finally {
            slotWriterOpenWriter.close(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.SlotStorage
    public ScatterMap<MovableContentStateReference, MovableContentState> extractNestedStates(Applier<?> applier, ObjectList<MovableContentStateReference> objectList) {
        Object[] objArr = objectList.content;
        int i = objectList._size;
        Object[] objArr2 = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            char c = 1;
            if (i4 >= i) {
                break;
            }
            if (!ownsAnchor(GapAnchorKt.asGapAnchor(((MovableContentStateReference) objArr[i4]).getAnchor$runtime()))) {
                MutableObjectList mutableObjectList = new MutableObjectList(objArr2 == true ? 1 : 0, c == true ? 1 : 0, null);
                Object[] objArr3 = objectList.content;
                int i5 = objectList._size;
                for (int i6 = i2; i6 < i5; i6++) {
                    Object obj = objArr3[i6];
                    if (ownsAnchor(GapAnchorKt.asGapAnchor(((MovableContentStateReference) obj).getAnchor$runtime()))) {
                        mutableObjectList.add(obj);
                    }
                }
                objectList = mutableObjectList;
                break;
            }
            i4++;
        }
        ObjectList objectListSortedBy = ExtensionsKt.sortedBy(objectList, new lk(this, 4));
        if (objectListSortedBy.isEmpty()) {
            return ScatterMapKt.emptyScatterMap();
        }
        MutableScatterMap mutableScatterMapMutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
        SlotWriter slotWriterOpenWriter = openWriter();
        try {
            Object[] objArr4 = objectListSortedBy.content;
            int i7 = objectListSortedBy._size;
            for (int i8 = i3; i8 < i7; i8++) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr4[i8];
                int iAnchorIndex = slotWriterOpenWriter.anchorIndex(GapAnchorKt.asGapAnchor(movableContentStateReference.getAnchor$runtime()));
                int iParent = slotWriterOpenWriter.parent(iAnchorIndex);
                extractNestedStates$lambda$2$closeToGroupContaining(slotWriterOpenWriter, iParent);
                extractNestedStates$lambda$2$openParent(slotWriterOpenWriter, iParent);
                slotWriterOpenWriter.advanceBy(iAnchorIndex - slotWriterOpenWriter.getCurrentGroup());
                mutableScatterMapMutableScatterMapOf.set(movableContentStateReference, ComposerKt.extractMovableContentAtCurrent(movableContentStateReference.getComposition$runtime(), movableContentStateReference, slotWriterOpenWriter, applier));
            }
            extractNestedStates$lambda$2$closeToGroupContaining(slotWriterOpenWriter, Integer.MAX_VALUE);
            j59 j59Var = j59.a;
            return mutableScatterMapMutableScatterMapOf;
        } finally {
            slotWriterOpenWriter.close(z);
        }
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public CompositionGroup find(Object obj) {
        return new SlotTableGroup(this, 0, 0, 4, null).find(obj);
    }

    public final ArrayList<GapAnchor> getAnchors$runtime() {
        return this.anchors;
    }

    public final MutableIntObjectMap<MutableIntSet> getCalledByMap$runtime() {
        return this.calledByMap;
    }

    @Override // androidx.compose.runtime.tooling.CompositionData
    public Iterable<CompositionGroup> getCompositionGroups() {
        return this;
    }

    public final int[] getGroups() {
        return this.groups;
    }

    public final int getGroupsSize() {
        return this.groupsSize;
    }

    @Override // androidx.compose.runtime.SlotStorage
    /* JADX INFO: renamed from: getSlots */
    public Iterable<Object> mo5506getSlots() {
        return new AnonymousClass1();
    }

    public final int getSlotsSize() {
        return this.slotsSize;
    }

    public final HashMap<GapAnchor, GapGroupSourceInformation> getSourceInformationMap$runtime() {
        return this.sourceInformationMap;
    }

    public final int getVersion$runtime() {
        return this.version;
    }

    public final boolean getWriter$runtime() {
        return this.writer;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public boolean groupContainsAnchor(int i, Anchor anchor) {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Writer is active");
        }
        if (!(i >= 0 && i < this.groupsSize)) {
            ComposerKt.composeImmediateRuntimeError("Invalid group index");
        }
        GapAnchor gapAnchorAsGapAnchor = GapAnchorKt.asGapAnchor(anchor);
        if (ownsAnchor(gapAnchorAsGapAnchor)) {
            int iGroupSize = SlotTableKt.groupSize(this.groups, i) + i;
            int location$runtime = gapAnchorAsGapAnchor.getLocation$runtime();
            if (i <= location$runtime && location$runtime < iGroupSize) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public boolean inGroup(Anchor anchor, Anchor anchor2) {
        int location$runtime = GapAnchorKt.asGapAnchor(anchor).getLocation$runtime();
        int iGroupSize = SlotTableKt.groupSize(this.groups, location$runtime) + location$runtime;
        int location$runtime2 = GapAnchorKt.asGapAnchor(anchor2).getLocation$runtime();
        return location$runtime <= location$runtime2 && location$runtime2 < iGroupSize;
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void invalidateAll() {
        for (Object obj : this.slots) {
            RecomposeScope recomposeScope = obj instanceof RecomposeScope ? (RecomposeScope) obj : null;
            if (recomposeScope != null) {
                recomposeScope.invalidate();
            }
        }
    }

    @Override // androidx.compose.runtime.SlotStorage
    public List<RecomposeScopeImpl> invalidateGroupsWithKey(int i) {
        MutableIntSet mutableIntSet;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        n07 n07Var = new n07();
        n07Var.b = true;
        MutableIntSet mutableIntSet2 = new MutableIntSet(0, 1, null);
        mutableIntSet2.add(i);
        mutableIntSet2.add(-3);
        MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
        if (mutableIntObjectMap != null && (mutableIntSet = mutableIntObjectMap.get(i)) != null) {
            mutableIntSet2.addAll(mutableIntSet);
        }
        SlotReader slotReaderOpenReader = openReader();
        try {
            invalidateGroupsWithKey$lambda$2$scanGroup(slotReaderOpenReader, mutableIntSet2, arrayList, n07Var, this, arrayList2);
            j59 j59Var = j59.a;
            slotReaderOpenReader.close();
            SlotWriter slotWriterOpenWriter = openWriter();
            try {
                slotWriterOpenWriter.startGroup();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    GapAnchor gapAnchor = (GapAnchor) arrayList.get(i2);
                    if (gapAnchor.toIndexFor(slotWriterOpenWriter) >= slotWriterOpenWriter.getCurrentGroup()) {
                        slotWriterOpenWriter.seek(gapAnchor);
                        slotWriterOpenWriter.bashCurrentGroup();
                    }
                }
                slotWriterOpenWriter.skipToGroupEnd();
                slotWriterOpenWriter.endGroup();
                slotWriterOpenWriter.close(true);
                if (n07Var.b) {
                    return arrayList2;
                }
                return null;
            } catch (Throwable th) {
                slotWriterOpenWriter.close(false);
                throw th;
            }
        } catch (Throwable th2) {
            slotReaderOpenReader.close();
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.SlotStorage, androidx.compose.runtime.tooling.CompositionData
    public boolean isEmpty() {
        return this.groupsSize == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<CompositionGroup> iterator() {
        return new GroupIterator(this, 0, this.groupsSize);
    }

    public final SlotReader openReader() {
        if (this.writer) {
            ah.f("Cannot read while a writer is pending");
            return null;
        }
        this.readers++;
        return new SlotReader(this);
    }

    public final SlotWriter openWriter() {
        if (this.writer) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when another writer is pending");
        }
        if (!(this.readers <= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot start a writer when a reader is pending");
        }
        this.writer = true;
        this.version++;
        return new SlotWriter(this);
    }

    public final boolean ownsAnchor(GapAnchor gapAnchor) {
        int iSearch;
        return gapAnchor.getValid() && (iSearch = SlotTableKt.search(this.anchors, gapAnchor.getLocation$runtime(), this.groupsSize)) >= 0 && aa4.e(this.anchors.get(iSearch), gapAnchor);
    }

    @Override // androidx.compose.runtime.SlotStorage
    public boolean ownsRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        Anchor anchor = recomposeScopeImpl.getAnchor();
        return anchor != null && ownsAnchor(GapAnchorKt.asGapAnchor(anchor));
    }

    public final <T> T read(nl3<? super SlotReader, ? extends T> nl3Var) {
        SlotReader slotReaderOpenReader = openReader();
        try {
            return nl3Var.invoke(slotReaderOpenReader);
        } finally {
            slotReaderOpenReader.close();
        }
    }

    public final void setAnchors$runtime(ArrayList<GapAnchor> arrayList) {
        this.anchors = arrayList;
    }

    public final void setCalledByMap$runtime(MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        this.calledByMap = mutableIntObjectMap;
    }

    public final void setSourceInformationMap$runtime(HashMap<GapAnchor, GapGroupSourceInformation> map) {
        this.sourceInformationMap = map;
    }

    public final void setTo$runtime(int[] iArr, int i, Object[] objArr, int i2, ArrayList<GapAnchor> arrayList, HashMap<GapAnchor, GapGroupSourceInformation> map, MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        this.groups = iArr;
        this.groupsSize = i;
        this.slots = objArr;
        this.slotsSize = i2;
        this.anchors = arrayList;
        this.sourceInformationMap = map;
        this.calledByMap = mutableIntObjectMap;
    }

    public final void setVersion$runtime(int i) {
        this.version = i;
    }

    public final Object slot$runtime(int i, int i2) {
        int iSlotAnchor = SlotTableKt.slotAnchor(this.groups, i);
        int i3 = i + 1;
        return (i2 < 0 || i2 >= (i3 < this.groupsSize ? this.groups[(i3 * 5) + 4] : this.slots.length) - iSlotAnchor) ? Composer.Companion.getEmpty() : this.slots[iSlotAnchor + i2];
    }

    public final List<Object> slotsOf$runtime(int i) {
        int[] iArr = this.groups;
        int i2 = iArr[(i * 5) + 4];
        int i3 = i + 1;
        return yr.h0(this.slots).subList(i2, i3 < this.groupsSize ? iArr[(i3 * 5) + 4] : this.slots.length);
    }

    public final GapGroupSourceInformation sourceInformationOf(int i) {
        GapAnchor gapAnchorTryAnchor;
        HashMap<GapAnchor, GapGroupSourceInformation> map = this.sourceInformationMap;
        if (map == null || (gapAnchorTryAnchor = tryAnchor(i)) == null) {
            return null;
        }
        return map.get(gapAnchorTryAnchor);
    }

    @Override // androidx.compose.runtime.SlotStorage
    public String toDebugString() {
        if (this.writer) {
            return toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(toString());
        sb.append('\n');
        int i = this.groupsSize;
        if (i > 0) {
            int iEmitGroup = 0;
            while (iEmitGroup < i) {
                iEmitGroup += emitGroup(sb, iEmitGroup, 0);
            }
        } else {
            sb.append("<EMPTY>");
        }
        return sb.toString();
    }

    @Override // androidx.compose.runtime.SlotStorage
    public void verifyWellFormed() {
        int i;
        int i2;
        p07 p07Var = new p07();
        int i3 = -1;
        if (this.groupsSize > 0) {
            while (true) {
                i = p07Var.b;
                i2 = this.groupsSize;
                if (i >= i2) {
                    break;
                } else {
                    verifyWellFormed$validateGroup(p07Var, this, -1, SlotTableKt.groupSize(this.groups, i) + i);
                }
            }
            if (!(i == i2)) {
                PreconditionsKt.throwIllegalStateException("Incomplete group at root " + p07Var.b + " expected to be " + this.groupsSize);
            }
        }
        int length = this.slots.length;
        for (int i4 = this.slotsSize; i4 < length; i4++) {
            if (!(this.slots[i4] == null)) {
                PreconditionsKt.throwIllegalStateException("Non null value in the slot gap at index " + i4);
            }
        }
        ArrayList<GapAnchor> arrayList = this.anchors;
        int size = arrayList.size();
        int i5 = 0;
        while (i5 < size) {
            int indexFor = arrayList.get(i5).toIndexFor(this);
            if (!(indexFor >= 0 && indexFor <= this.groupsSize)) {
                PreconditionsKt.throwIllegalArgumentException("Invalid anchor, location out of bound");
            }
            if (!(i3 < indexFor)) {
                PreconditionsKt.throwIllegalArgumentException("Anchor is out of order");
            }
            i5++;
            i3 = indexFor;
        }
        HashMap<GapAnchor, GapGroupSourceInformation> map = this.sourceInformationMap;
        if (map != null) {
            for (Map.Entry<GapAnchor, GapGroupSourceInformation> entry : map.entrySet()) {
                GapAnchor key = entry.getKey();
                GapGroupSourceInformation value = entry.getValue();
                if (!key.getValid()) {
                    PreconditionsKt.throwIllegalArgumentException("Source map contains invalid anchor");
                }
                if (!ownsAnchor(key)) {
                    PreconditionsKt.throwIllegalArgumentException("Source map anchor is not owned by the slot table");
                }
                verifyWellFormed$verifySourceGroup(this, value);
            }
        }
        validateRecomposeScopeAnchors();
    }

    public final <T> T write(nl3<? super SlotWriter, ? extends T> nl3Var) {
        SlotWriter slotWriterOpenWriter = openWriter();
        try {
            boolean z = true;
            return nl3Var.invoke(slotWriterOpenWriter);
        } finally {
            slotWriterOpenWriter.close(false);
        }
    }

    /* JADX INFO: renamed from: getSlots, reason: collision with other method in class */
    public final Object[] m5441getSlots() {
        return this.slots;
    }

    public final void close$runtime(SlotWriter slotWriter, int[] iArr, int i, Object[] objArr, int i2, ArrayList<GapAnchor> arrayList, HashMap<GapAnchor, GapGroupSourceInformation> map, MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        if (!(slotWriter.getTable$runtime() == this && this.writer)) {
            PreconditionsKt.throwIllegalArgumentException("Unexpected writer close()");
        }
        this.writer = false;
        setTo$runtime(iArr, i, objArr, i2, arrayList, map, mutableIntObjectMap);
    }
}
