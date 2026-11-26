package androidx.compose.runtime.composer.linkbuffer;

import androidx.collection.IntIntMapKt;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.IntStack;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aq5;
import defpackage.av;
import defpackage.bm3;
import defpackage.h2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n7;
import defpackage.nh5;
import defpackage.nl3;
import defpackage.o2;
import defpackage.zc5;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableAddressSpace {
    private MutableIntIntMap _largeSizes;
    private MutableIntObjectMap<LinkAnchor> anchors;
    private MutableIntObjectMap<MutableIntSet> calledByMap;
    private int freeSlotCount;
    private int[] groups;
    private Object[] slots;
    private MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> sourceInformationMap;
    private int unallocatedEnd;
    private int unallocatedStart;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final int[] EmptyGroupData = SlotTableAddresSpaceKt.newGroupsArray(6);
    private static final Object[] EmptySlotData = SlotTableAddresSpaceKt.newSlotsArray(0);

    public SlotTableAddressSpace() {
        this(EmptyGroupData, EmptySlotData);
        int[] iArr = this.groups;
        if (iArr[0] == 0 && iArr[1] == -1 && iArr[2] == 0 && iArr[3] == 6 && iArr[4] == 0) {
            int i = iArr[5];
        }
    }

    private final int allocateSlots(int i) {
        int i2 = this.unallocatedStart;
        int i3 = i2 + i;
        if (i3 <= this.unallocatedEnd) {
            this.unallocatedStart = i3;
            if (i > 15) {
                getLargeSizes().set(i2, i);
            }
            aq5.t(Composer.Companion.getEmpty(), this.slots, i2, i3);
            return SlotTableAddresSpaceKt.slotRangeFromAddressAndSize(i2, i);
        }
        compactAndMaybeGrow(i);
        int i4 = this.unallocatedStart;
        int i5 = i4 + i;
        if (i5 > this.unallocatedEnd) {
            throw av.b("compactAndMaybeGrow did not grow enough");
        }
        this.unallocatedStart = i5;
        if (i > 15) {
            getLargeSizes().set(i4, i);
        }
        aq5.t(Composer.Companion.getEmpty(), this.slots, i4, i5);
        return SlotTableAddresSpaceKt.slotRangeFromAddressAndSize(i4, i);
    }

    private final void compactAndMaybeGrow(int i) {
        Object[] objArrNewSlotsArray;
        Object[] objArr = this.slots;
        int length = objArr.length;
        int length2 = objArr.length - ((this.unallocatedEnd - this.unallocatedStart) + this.freeSlotCount);
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros((i + length2) + (objArr.length >> 5)));
        if (iNumberOfLeadingZeros < length) {
            iNumberOfLeadingZeros = length;
        }
        if (iNumberOfLeadingZeros != length) {
            if (iNumberOfLeadingZeros < 256) {
                iNumberOfLeadingZeros = 256;
            }
            objArrNewSlotsArray = SlotTableAddresSpaceKt.newSlotsArray(iNumberOfLeadingZeros);
        } else {
            objArrNewSlotsArray = objArr;
        }
        MutableIntIntMap mutableIntIntMapMutableIntIntMapOf = IntIntMapKt.mutableIntIntMapOf();
        int i2 = this.groups[3];
        SlotMoveManager slotMoveManager = new SlotMoveManager(objArr, objArrNewSlotsArray);
        int i3 = 6;
        int iA = nh5.a(6, i2 - 1, 6);
        int i4 = 0;
        if (6 <= iA) {
            while (true) {
                int i5 = i3 + 5;
                int i6 = this.groups[i5];
                if (i6 != -1) {
                    int i7 = (i6 & 15) + 1;
                    int i8 = i6 >> 4;
                    if (i7 > 15) {
                        i7 = getLargeSizes().get(i8);
                    }
                    slotMoveManager.move(i4, i8, i8 + i7);
                    if (i7 > 15) {
                        mutableIntIntMapMutableIntIntMapOf.set(i4, i7);
                    }
                    this.groups[i5] = SlotTableAddresSpaceKt.slotRangeFromAddressAndSize(i4, i7);
                    i4 += i7;
                }
                if (i3 == iA) {
                    break;
                } else {
                    i3 += 6;
                }
            }
        }
        if (i4 != length2) {
            ComposerKt.composeImmediateRuntimeError("Unexpected slot compaction result, computed we had " + length2 + " slots, but copied " + i4 + " slots");
        }
        this.slots = slotMoveManager.done();
        if (!mutableIntIntMapMutableIntIntMapOf.isNotEmpty()) {
            mutableIntIntMapMutableIntIntMapOf = null;
        }
        this._largeSizes = mutableIntIntMapMutableIntIntMapOf;
        this.unallocatedStart = i4;
        this.unallocatedEnd = objArrNewSlotsArray.length;
        this.freeSlotCount = 0;
    }

    private static final int copyTreeFrom$copyGroup(SlotTableAddressSpace slotTableAddressSpace, SlotTableAddressSpace slotTableAddressSpace2, int i, int i2) {
        int[] iArr = slotTableAddressSpace.groups;
        Object[] objArr = slotTableAddressSpace.slots;
        int i3 = iArr[i2 + 4];
        int i4 = iArr[i2];
        int iGroupAllocate = SlotTableAddresSpaceKt.groupAllocate(slotTableAddressSpace2.getGroups(), i4, i, i3);
        if (iGroupAllocate < 0) {
            slotTableAddressSpace2.growGroups();
            iGroupAllocate = SlotTableAddresSpaceKt.groupAllocate(slotTableAddressSpace2.getGroups(), i4, i, i3);
        }
        slotTableAddressSpace2.moveSourceInformation(slotTableAddressSpace, slotTableAddressSpace2.moveAnchorFrom(slotTableAddressSpace, i2, iGroupAllocate));
        int i5 = iArr[i2 + 5];
        if (i5 != -1) {
            int i6 = (i5 & 15) + 1;
            int i7 = i5 >> 4;
            if (i6 > 15) {
                i6 = slotTableAddressSpace.getLargeSizes().get(i7);
            }
            int iAllocateSlots = slotTableAddressSpace2.allocateSlots(i6);
            aq5.m(objArr, iAllocateSlots >> 4, slotTableAddressSpace2.slots, i7, i6 + i7);
            slotTableAddressSpace2.groups[iGroupAllocate + 5] = iAllocateSlots;
        }
        int i8 = iArr[i2 + 3];
        int i9 = -1;
        while (i8 != -1) {
            int iCopyTreeFrom$copyGroup = copyTreeFrom$copyGroup(slotTableAddressSpace, slotTableAddressSpace2, iGroupAllocate, i8);
            int[] iArr2 = slotTableAddressSpace2.groups;
            if (i9 == -1) {
                iArr2[iGroupAllocate + 3] = iCopyTreeFrom$copyGroup;
            } else {
                iArr2[i9 + 1] = iCopyTreeFrom$copyGroup;
            }
            i8 = iArr[i8 + 1];
            i9 = iCopyTreeFrom$copyGroup;
        }
        return iGroupAllocate;
    }

    private final void freeGroup(int i) {
        int[] iArr = this.groups;
        if (i + 6 > iArr.length) {
            return;
        }
        int i2 = i + 4;
        if ((iArr[i2] & GroupFlagsSpec.CHILD_NODE_COUNT_MASK) == 8388607) {
            h2.b(i, "Recursive loop in group structure detected at ");
        }
        LinkAnchor linkAnchor = this.anchors.get(i);
        if (linkAnchor != null) {
            linkAnchor.setAddress(-1);
            this.anchors.remove(i);
            MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMap = this.sourceInformationMap;
            if (mutableScatterMap != null) {
                mutableScatterMap.remove(linkAnchor);
            }
        }
        int i3 = i + 5;
        freeSlots(iArr[i3]);
        iArr[i3] = -1;
        int i4 = iArr[i + 3];
        while (i4 != -1) {
            if (i4 + 6 > iArr.length) {
                return;
            }
            int i5 = iArr[i4 + 1];
            freeGroup(i4);
            i4 = i5;
        }
        iArr[i + 1] = iArr[1];
        iArr[i + 2] = -1;
        iArr[1] = i;
        iArr[i2] = 8388607;
    }

    private final void freeSlots(int i) {
        if (i != -1) {
            int i2 = (i & 15) + 1;
            int i3 = i >> 4;
            if (i2 > 15) {
                i2 = getLargeSizes().get(i3);
            }
            freeSlotsAt(i3, i2);
        }
    }

    private final void freeSlotsAt(int i, int i2) {
        Object[] objArr = this.slots;
        int i3 = i + i2;
        if (i3 == i + 1) {
            objArr[i] = SlotTableAddresSpaceKt.Unallocated;
        } else {
            aq5.t(SlotTableAddresSpaceKt.Unallocated, objArr, i, i3);
        }
        this.freeSlotCount += i2;
        if (i2 > 15) {
            getLargeSizes().remove(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MutableIntIntMap getLargeSizes() {
        MutableIntIntMap mutableIntIntMap = this._largeSizes;
        if (mutableIntIntMap != null) {
            return mutableIntIntMap;
        }
        MutableIntIntMap mutableIntIntMapMutableIntIntMapOf = IntIntMapKt.mutableIntIntMapOf();
        this._largeSizes = mutableIntIntMapMutableIntIntMapOf;
        return mutableIntIntMapMutableIntIntMapOf;
    }

    public static /* synthetic */ void getSourceInformationMap$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void growGroups() {
        int[] iArr = this.groups;
        int length = iArr.length;
        int length2 = iArr.length * 2;
        if (length2 < 768) {
            length2 = 768;
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, length2);
        this.groups = iArrCopyOf;
        SlotTableAddresSpaceKt.initGroups(iArrCopyOf, length);
    }

    private final int growSlotRangeAtGroup(int i, int i2, int i3) {
        int i4;
        int i5 = this.unallocatedStart;
        int i6 = this.unallocatedEnd;
        int i7 = i + 5;
        int i8 = this.groups[i7] >> 4;
        int i9 = i8 + i2;
        if (i9 == i5 && (i4 = i8 + i3) <= i6) {
            this.unallocatedStart = (i3 - i2) + i5;
            if (i3 > 15) {
                getLargeSizes().set(i8, i3);
            }
            int iSlotRangeFromAddressAndSize = SlotTableAddresSpaceKt.slotRangeFromAddressAndSize(i8, i3);
            Object[] objArr = this.slots;
            if (i4 == i9 + 1) {
                objArr[i9] = SlotTableAddresSpaceKt.Unallocated;
            } else {
                aq5.t(SlotTableAddresSpaceKt.Unallocated, objArr, i9, i4);
            }
            this.groups[i7] = iSlotRangeFromAddressAndSize;
            return iSlotRangeFromAddressAndSize;
        }
        int i10 = i3 - i2;
        Object[] objArr2 = this.slots;
        int i11 = i9 + i10;
        if (i11 < objArr2.length) {
            int i12 = i9;
            while (true) {
                if (i12 >= i11) {
                    if (i3 > 15) {
                        getLargeSizes().set(i8, i3);
                    }
                    int iSlotRangeFromAddressAndSize2 = SlotTableAddresSpaceKt.slotRangeFromAddressAndSize(i8, i3);
                    Object[] objArr3 = this.slots;
                    int i13 = i8 + i3;
                    if (i13 == i9 + 1) {
                        objArr3[i9] = SlotTableAddresSpaceKt.Unallocated;
                    } else {
                        aq5.t(SlotTableAddresSpaceKt.Unallocated, objArr3, i9, i13);
                    }
                    this.groups[i7] = iSlotRangeFromAddressAndSize2;
                    this.freeSlotCount -= i10;
                    return iSlotRangeFromAddressAndSize2;
                }
                if (objArr2[i12] != SlotTableAddresSpaceKt.Unallocated) {
                    break;
                }
                i12++;
            }
        }
        int i14 = i3 + 8;
        int iShrinkSlotRange = shrinkSlotRange(allocateSlots(i14), i14, i3);
        int i15 = iShrinkSlotRange >> 4;
        int i16 = this.groups[i7] >> 4;
        if (i15 != i16) {
            Object[] objArr4 = this.slots;
            aq5.m(objArr4, i15, objArr4, i16, i16 + i2);
            freeSlotsAt(i16, i2);
        }
        this.groups[i7] = iShrinkSlotRange;
        return iShrinkSlotRange;
    }

    private final void removeSourceInformation(int i) {
        LinkAnchor linkAnchor;
        LinkAnchor linkAnchor2;
        LinkGroupSourceInformation linkGroupSourceInformation;
        MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMap = this.sourceInformationMap;
        if (mutableScatterMap == null || (linkAnchor = this.anchors.get(i)) == null || (linkAnchor2 = this.anchors.get(this.groups[i + 2])) == null || (linkGroupSourceInformation = mutableScatterMap.get(linkAnchor2)) == null) {
            return;
        }
        linkGroupSourceInformation.removeGroup(linkAnchor);
    }

    private final int shrinkSlotRange(int i, int i2, int i3) {
        int i4 = i >> 4;
        if (i3 == 0) {
            if (i != -1) {
                freeSlotsAt(i4, i2);
            }
            return -1;
        }
        int i5 = i2 - i3;
        int i6 = i4 + i3;
        if (i5 > 0) {
            freeSlotsAt(i6, i5);
        }
        if (i3 > 15) {
            getLargeSizes().set(i4, i3);
        }
        return SlotTableAddresSpaceKt.slotRangeFromAddressAndSize(i4, i3);
    }

    private final int shrinkSlotRangeAtGroup(int i, int i2, int i3) {
        int i4 = i + 5;
        int iShrinkSlotRange = shrinkSlotRange(this.groups[i4], i2, i3);
        this.groups[i4] = iShrinkSlotRange;
        return iShrinkSlotRange;
    }

    public static /* synthetic */ void traverseGroup$runtime$default(SlotTableAddressSpace slotTableAddressSpace, int i, boolean z, nl3 nl3Var, int i2, Object obj) {
        int i3;
        if ((i2 & 2) != 0) {
            z = false;
        }
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = slotTableAddressSpace.getGroups();
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

    public static /* synthetic */ void traverseGroupAndParents$runtime$default(SlotTableAddressSpace slotTableAddressSpace, int i, boolean z, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        int[] groups = slotTableAddressSpace.getGroups();
        int i3 = !z ? groups[i + 2] : i;
        while (i3 > 0) {
            nl3Var.invoke(Integer.valueOf(i3));
            i3 = groups[i3 + 2];
        }
        if (i3 != 0) {
            return;
        }
        h2.b(i, "Traversing parent of group not in the slot table: ");
    }

    public static /* synthetic */ void traverseGroupPartially$runtime$default(SlotTableAddressSpace slotTableAddressSpace, int i, boolean z, nl3 nl3Var, int i2, Object obj) {
        int i3;
        if ((i2 & 2) != 0) {
            z = false;
        }
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = slotTableAddressSpace.getGroups();
        int iPop = i;
        while (true) {
            boolean zBooleanValue = ((Boolean) nl3Var.invoke(Integer.valueOf(iPop))).booleanValue();
            if ((iPop != i || z) && (i3 = groups[iPop + 1]) >= 0) {
                intStack.push(i3);
            }
            iPop = groups[iPop + 3];
            if (!zBooleanValue || iPop < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    iPop = intStack.pop();
                }
            }
        }
    }

    private final void validateSlotReferences(int[] iArr) {
        MutableIntIntMap mutableIntIntMapMutableIntIntMapOf = IntIntMapKt.mutableIntIntMapOf();
        int length = this.slots.length;
        int i = 6;
        int iA = nh5.a(6, iArr[3] - 1, 6);
        if (6 <= iA) {
            while (true) {
                int i2 = iArr[i + 5];
                if (i2 != -1) {
                    int i3 = (i2 & 15) + 1;
                    int i4 = i2 >> 4;
                    if (i3 > 15) {
                        i3 = getLargeSizes().get(i4);
                    }
                    if (i4 < 0) {
                        zc5.d(" has an invalid slot address", "Group ", i);
                        return;
                    }
                    int i5 = i3 + i4;
                    if (i5 > length) {
                        zc5.d(" slot range extends beyond the slot size", "Group ", i);
                        return;
                    }
                    while (i4 < i5) {
                        if (mutableIntIntMapMutableIntIntMapOf.containsKey(i4)) {
                            int i6 = mutableIntIntMapMutableIntIntMapOf.get(i4);
                            StringBuilder sbC = n7.c(i, "Group ", " contains a slot address (");
                            o2.e(sbC, validateSlotReferences$slotRangeTextOf(this, iArr, i), ") that overlaps with group ", i6, "'s address (");
                            sbC.append(validateSlotReferences$slotRangeTextOf(this, iArr, i6));
                            sbC.append(')');
                            throw new IllegalStateException(sbC.toString().toString());
                        }
                        mutableIntIntMapMutableIntIntMapOf.set(i4, i);
                        i4++;
                    }
                }
                if (i == iA) {
                    break;
                } else {
                    i += 6;
                }
            }
        }
        int length2 = (this.slots.length - mutableIntIntMapMutableIntIntMapOf.getSize()) - (this.unallocatedEnd - this.unallocatedStart);
        if (this.freeSlotCount == length2) {
            return;
        }
        throw new IllegalStateException(("Unexpected freeSlotCount, " + this.freeSlotCount + ", expected " + length2).toString());
    }

    private static final String validateSlotReferences$slotRangeTextOf(SlotTableAddressSpace slotTableAddressSpace, int[] iArr, int i) {
        int i2 = iArr[i + 5];
        int i3 = (i2 & 15) + 1;
        int i4 = i2 >> 4;
        if (i3 > 15) {
            i3 = slotTableAddressSpace.getLargeSizes().get(i4);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i4);
        sb.append('-');
        sb.append(i4 + i3);
        return sb.toString();
    }

    public final int allocateGroup(int i, int i2, int i3) {
        int iGroupAllocate = SlotTableAddresSpaceKt.groupAllocate(getGroups(), i, i2, i3);
        if (iGroupAllocate >= 0) {
            return iGroupAllocate;
        }
        growGroups();
        return SlotTableAddresSpaceKt.groupAllocate(getGroups(), i, i2, i3);
    }

    public final LinkAnchor anchorOfAddress(int i) {
        if (i == -1) {
            return LinkAnchorKt.getNullAnchor();
        }
        if (i == 0) {
            return LinkAnchorKt.getLazyAnchor();
        }
        if (!(i >= 0)) {
            h2.b(i, "Invalid anchor address ");
        }
        MutableIntObjectMap<LinkAnchor> mutableIntObjectMap = this.anchors;
        LinkAnchor linkAnchor = mutableIntObjectMap.get(i);
        if (linkAnchor == null) {
            linkAnchor = new LinkAnchor(i);
            mutableIntObjectMap.set(i, linkAnchor);
        }
        return linkAnchor;
    }

    public final boolean contains(int i) {
        return i > 0 && i < this.groups[3];
    }

    public final int copyTreeFrom(SlotTableAddressSpace slotTableAddressSpace, int i) {
        return copyTreeFrom$copyGroup(slotTableAddressSpace, this, -1, i);
    }

    public final int distanceFrom$runtime(int i, int i2) {
        int[] iArr = this.groups;
        int i3 = 0;
        while (i != i2 && i >= 0) {
            i3++;
            i = iArr[i + 2];
        }
        return i3;
    }

    public final void freeGroupTree(int i) {
        removeSourceInformation(i);
        freeGroup(i);
    }

    public final MutableIntObjectMap<MutableIntSet> getCalledByMap$runtime() {
        return this.calledByMap;
    }

    public final int[] getGroups() {
        return this.groups;
    }

    public final Object[] getSlots() {
        return this.slots;
    }

    public final MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> getSourceInformationMap() {
        return this.sourceInformationMap;
    }

    public final LinkAnchor moveAnchorFrom(SlotTableAddressSpace slotTableAddressSpace, int i, int i2) {
        this.anchors.containsKey(i2);
        LinkAnchor linkAnchorRemove = slotTableAddressSpace.anchors.remove(i);
        if (linkAnchorRemove == null) {
            return null;
        }
        linkAnchorRemove.setAddress(i2);
        this.anchors.set(i2, linkAnchorRemove);
        return linkAnchorRemove;
    }

    public final void moveSourceInformation(SlotTableAddressSpace slotTableAddressSpace, LinkAnchor linkAnchor) {
        MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMap;
        LinkGroupSourceInformation linkGroupSourceInformation;
        if (linkAnchor == null || (mutableScatterMap = slotTableAddressSpace.sourceInformationMap) == null || (linkGroupSourceInformation = mutableScatterMap.get(linkAnchor)) == null) {
            return;
        }
        MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMapMutableScatterMapOf = this.sourceInformationMap;
        if (mutableScatterMapMutableScatterMapOf == null) {
            mutableScatterMapMutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
            this.sourceInformationMap = mutableScatterMapMutableScatterMapOf;
        } else {
            mutableScatterMapMutableScatterMapOf.contains(linkAnchor);
        }
        mutableScatterMapMutableScatterMapOf.set(linkAnchor, linkGroupSourceInformation);
        mutableScatterMap.remove(linkAnchor);
    }

    public final boolean ownsAnchor(LinkAnchor linkAnchor) {
        return this.anchors.get(linkAnchor.getAddress()) == linkAnchor;
    }

    public final Object readSlot(int i, int i2) {
        return this.slots[(this.groups[i + 5] >> 4) + i2];
    }

    public final void recordCalledBy(int i, int i2) {
        MutableIntObjectMap<MutableIntSet> mutableIntObjectMapMutableIntObjectMapOf = this.calledByMap;
        if (mutableIntObjectMapMutableIntObjectMapOf == null) {
            mutableIntObjectMapMutableIntObjectMapOf = IntObjectMapKt.mutableIntObjectMapOf();
            this.calledByMap = mutableIntObjectMapMutableIntObjectMapOf;
        }
        MutableIntSet mutableIntSetMutableIntSetOf = mutableIntObjectMapMutableIntObjectMapOf.get(i);
        if (mutableIntSetMutableIntSetOf == null) {
            mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
            mutableIntObjectMapMutableIntObjectMapOf.set(i, mutableIntSetMutableIntSetOf);
        }
        mutableIntSetMutableIntSetOf.add(i2);
    }

    public final void recordLargeBlock(int i, int i2) {
        getLargeSizes().set(i, i2);
    }

    public final void recordMovedSourceInformation(int i, int i2) {
        LinkGroupSourceInformation linkGroupSourceInformation;
        MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMap = this.sourceInformationMap;
        if (mutableScatterMap == null) {
            return;
        }
        LinkAnchor linkAnchor = this.anchors.get(this.groups[i + 2]);
        if (linkAnchor == null || (linkGroupSourceInformation = mutableScatterMap.get(linkAnchor)) == null) {
            return;
        }
        linkGroupSourceInformation.addGroupAfter(i2 != -1 ? anchorOfAddress(i2) : null, anchorOfAddress(i));
    }

    public final LinkGroupSourceInformation recordSourceInformation(int i, String str, int i2) {
        MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMapMutableScatterMapOf = this.sourceInformationMap;
        if (mutableScatterMapMutableScatterMapOf == null) {
            mutableScatterMapMutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
            this.sourceInformationMap = mutableScatterMapMutableScatterMapOf;
        }
        LinkAnchor linkAnchorAnchorOfAddress = anchorOfAddress(i);
        LinkGroupSourceInformation linkGroupSourceInformation = mutableScatterMapMutableScatterMapOf.get(linkAnchorAnchorOfAddress);
        if (linkGroupSourceInformation == null) {
            linkGroupSourceInformation = new LinkGroupSourceInformation(0, str, 0);
            if (str == null) {
                int i3 = this.groups[i + 3];
                while (i3 != i2 && i3 != -1) {
                    linkGroupSourceInformation.reportGroup(anchorOfAddress(i3));
                    i3 = this.groups[i3 + 1];
                }
            }
            mutableScatterMapMutableScatterMapOf.set(linkAnchorAnchorOfAddress, linkGroupSourceInformation);
        }
        return linkGroupSourceInformation;
    }

    public final long reserveSlots() {
        int i = this.unallocatedStart;
        int i2 = this.unallocatedEnd;
        this.unallocatedStart = i2;
        return ((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    public final int resizeSlotRangeAtGroup(int i, int i2) {
        int i3;
        int i4 = this.groups[i + 5];
        if (i4 == -1 && i2 == 0) {
            return i4;
        }
        if (i4 == -1) {
            i3 = 0;
        } else {
            int i5 = (i4 & 15) + 1;
            i3 = i5 > 15 ? getLargeSizes().get(i4 >> 4) : i5;
        }
        return resizeSlotRangeAtGroup(i, i3, i2);
    }

    public final void restoreSlots(int i, int i2) {
        if (i2 == this.unallocatedEnd) {
            this.unallocatedStart = i;
        }
    }

    public final void setCalledByMap$runtime(MutableIntObjectMap<MutableIntSet> mutableIntObjectMap) {
        this.calledByMap = mutableIntObjectMap;
    }

    public final void setGroups(int[] iArr) {
        this.groups = iArr;
    }

    public final void setSlots(Object[] objArr) {
        this.slots = objArr;
    }

    public final void setSourceInformationMap(MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMap) {
        this.sourceInformationMap = mutableScatterMap;
    }

    public final <R> R slotAddressAndSize(int i, bm3<? super Integer, ? super Integer, ? extends R> bm3Var) {
        int i2 = (i & 15) + 1;
        int i3 = i >> 4;
        if (i2 > 15) {
            i2 = getLargeSizes().get(i3);
        }
        return bm3Var.invoke(Integer.valueOf(i3), Integer.valueOf(i2));
    }

    public final int slotSize(int i) {
        if (i == -1) {
            return 0;
        }
        int i2 = (i & 15) + 1;
        return i2 > 15 ? getLargeSizes().get(i >> 4) : i2;
    }

    public final LinkGroupSourceInformation sourceInformationOf(int i) {
        LinkAnchor linkAnchor;
        MutableScatterMap<LinkAnchor, LinkGroupSourceInformation> mutableScatterMap = this.sourceInformationMap;
        if (mutableScatterMap == null || (linkAnchor = this.anchors.get(i)) == null) {
            return null;
        }
        return mutableScatterMap.get(linkAnchor);
    }

    public final String toDebugString() {
        StringBuilder sb = new StringBuilder("SlotTableAddressSpace:\n  Group size: ");
        int[] iArr = this.groups;
        sb.append(iArr.length);
        sb.append("\n  Slots size: ");
        sb.append(this.slots.length);
        sb.append("\n\n Groups:\n  Unallocated groups: ");
        int length = (iArr.length - iArr[3]) / 6;
        sb.append(length);
        sb.append('\n');
        int i = 0;
        for (int i2 = iArr[1]; i2 != -1; i2 = iArr[i2 + 1]) {
            i++;
        }
        sb.append("  Free groups:        ");
        sb.append(i);
        sb.append("\n  Total free groups:  ");
        int i3 = i + length;
        sb.append(i3);
        sb.append("\n  Used group%:        ");
        sb.append(((double) ((iArr.length / 6) - i3)) / ((double) (iArr.length / 6)));
        sb.append("\n\n Slots:\n  Unallocated slots: ");
        int i4 = this.unallocatedEnd - this.unallocatedStart;
        sb.append(i4);
        sb.append("\n  Slot used%:    ");
        int length2 = this.slots.length;
        sb.append(((double) ((length2 - this.freeSlotCount) - i4)) / ((double) length2));
        sb.append('\n');
        return sb.toString();
    }

    public final void traverseAllChildren$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int iPop;
        if (i < 0 || (iPop = getGroups()[i + 3]) < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = getGroups();
        while (true) {
            nl3Var.invoke(Integer.valueOf(iPop));
            int i2 = groups[iPop + 1];
            if (i2 >= 0) {
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

    public final void traverseChildren$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getGroups();
        for (int i2 = groups[i + 3]; i2 > 0; i2 = groups[i2 + 1]) {
            nl3Var.invoke(Integer.valueOf(i2));
        }
    }

    public final void traverseGroup$runtime(int i, boolean z, nl3<? super Integer, j59> nl3Var) {
        int i2;
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = getGroups();
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

    public final void traverseGroupAndParents$runtime(int i, boolean z, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getGroups();
        int i2 = !z ? groups[i + 2] : i;
        while (i2 > 0) {
            nl3Var.invoke(Integer.valueOf(i2));
            i2 = groups[i2 + 2];
        }
        if (i2 != 0) {
            return;
        }
        h2.b(i, "Traversing parent of group not in the slot table: ");
    }

    public final void traverseGroupPartially$runtime(int i, boolean z, nl3<? super Integer, Boolean> nl3Var) {
        int i2;
        if (i < 0) {
            return;
        }
        IntStack intStack = new IntStack();
        int[] groups = getGroups();
        int iPop = i;
        while (true) {
            boolean zBooleanValue = nl3Var.invoke(Integer.valueOf(iPop)).booleanValue();
            if ((iPop != i || z) && (i2 = groups[iPop + 1]) >= 0) {
                intStack.push(i2);
            }
            iPop = groups[iPop + 3];
            if (!zBooleanValue || iPop < 0) {
                if (intStack.tos == 0) {
                    return;
                } else {
                    iPop = intStack.pop();
                }
            }
        }
    }

    public final void traverseParents$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getGroups();
        int i2 = groups[i + 2];
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
        int[] groups = getGroups();
        while (i >= 0) {
            nl3Var.invoke(Integer.valueOf(i));
            i = groups[i + 1];
        }
    }

    public final void traverseSiblingsAfter$runtime(int i, nl3<? super Integer, j59> nl3Var) {
        int[] groups = getGroups();
        for (int i2 = groups[i + 1]; i2 >= 0; i2 = groups[i2 + 1]) {
            nl3Var.invoke(Integer.valueOf(i2));
        }
    }

    public final void validate() {
        SlotTableAddresSpaceKt.validateFreeList(this.groups);
        validateSlotReferences(this.groups);
    }

    public final int writeSlot(int i, int i2, Object obj) {
        int iAllocateSlots;
        int[] iArr = this.groups;
        int i3 = i + 5;
        int iGrowSlotRangeAtGroup = iArr[i3];
        if (iGrowSlotRangeAtGroup == -1) {
            iAllocateSlots = allocateSlots(i2 + 1);
            iArr[i3] = iAllocateSlots;
        } else {
            int i4 = (iGrowSlotRangeAtGroup & 15) + 1;
            int i5 = iGrowSlotRangeAtGroup >> 4;
            if (i4 > 15) {
                i4 = getLargeSizes().get(i5);
            }
            if (i2 >= i4) {
                iGrowSlotRangeAtGroup = growSlotRangeAtGroup(i, i4, i2 + 1);
            }
            iAllocateSlots = iGrowSlotRangeAtGroup;
        }
        this.slots[(iAllocateSlots >> 4) + i2] = obj;
        return iAllocateSlots;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public SlotTableAddressSpace(int i, int i2) {
        this(SlotTableAddresSpaceKt.newGroupsArray(i), SlotTableAddresSpaceKt.newSlotsArray(i2));
    }

    public SlotTableAddressSpace(int[] iArr, Object[] objArr) {
        this.groups = iArr;
        this.slots = objArr;
        this.unallocatedEnd = objArr.length;
        this.anchors = IntObjectMapKt.mutableIntObjectMapOf();
    }

    public final int resizeSlotRangeAtGroup(int i, int i2, int i3) {
        if (i3 == i2) {
            return this.groups[i + 5];
        }
        if (i3 > i2) {
            return growSlotRangeAtGroup(i, i2, i3);
        }
        return shrinkSlotRangeAtGroup(i, i2, i3);
    }
}
