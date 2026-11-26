package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.linkbuffer.GroupHandleKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTable;
import androidx.compose.runtime.composer.linkbuffer.SlotTableAddressSpace;
import androidx.compose.runtime.composer.linkbuffer.SlotTableReader;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ar4;
import defpackage.av;
import defpackage.b36;
import defpackage.h2;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class LinkComposerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean asBool(int i) {
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int asInt(boolean z) {
        return z ? 1 : 0;
    }

    public static final LinkComposer asLinkComposer(Composer composer) {
        LinkComposer linkComposer = composer instanceof LinkComposer ? (LinkComposer) composer : null;
        if (linkComposer != null) {
            return linkComposer;
        }
        throw av.b("Inconsistent composition");
    }

    public static final LinkRememberObserverHolder asLinkRememberObserverHolder(RememberObserverHolder rememberObserverHolder) {
        LinkRememberObserverHolder linkRememberObserverHolder = rememberObserverHolder instanceof LinkRememberObserverHolder ? (LinkRememberObserverHolder) rememberObserverHolder : null;
        if (linkRememberObserverHolder != null) {
            return linkRememberObserverHolder;
        }
        throw av.b("Inconsistent composition");
    }

    private static final <T> ScatterSet<T> buildScatterSet(nl3<? super MutableScatterSet<T>, j59> nl3Var) {
        MutableScatterSet mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
        nl3Var.invoke(mutableScatterSetMutableScatterSetOf);
        return mutableScatterSetMutableScatterSetOf;
    }

    private static final boolean childOf(SlotTableAddressSpace slotTableAddressSpace, int i, int i2) {
        int[] groups = slotTableAddressSpace.getGroups();
        int i3 = i2;
        while (true) {
            if (i3 <= 0) {
                if (!(i3 != 0)) {
                    h2.b(i2, "Traversing parent of group not in the slot table: ");
                }
                return false;
            }
            if (i3 == i) {
                return true;
            }
            i3 = groups[i3 + 2];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Object> collectNodesFrom(SlotTable slotTable, int i) {
        boolean z;
        int i2;
        ArrayList arrayList = new ArrayList();
        SlotTableReader slotTableReaderOpenReader = slotTable.openReader();
        try {
            SlotTableAddressSpace slotTableAddressSpace = slotTableReaderOpenReader.addressSpace;
            if (i >= 0) {
                IntStack intStack = new IntStack();
                int[] groups = slotTableAddressSpace.getGroups();
                int iPop = i;
                while (true) {
                    if (slotTableReaderOpenReader.isNode(iPop)) {
                        arrayList.add(slotTableReaderOpenReader.node(iPop));
                        z = false;
                    } else {
                        z = true;
                    }
                    if (iPop != i && (i2 = groups[iPop + 1]) >= 0) {
                        intStack.push(i2);
                    }
                    iPop = groups[iPop + 3];
                    if (!z || iPop < 0) {
                        if (intStack.tos == 0) {
                            break;
                        }
                        iPop = intStack.pop();
                    }
                }
            }
            j59 j59Var = j59.a;
            return arrayList;
        } finally {
            slotTableReaderOpenReader.close();
        }
    }

    private static final int findFirstSibling(SlotTableAddressSpace slotTableAddressSpace, int i, int i2, int i3) {
        if (i2 != -1) {
            if (i3 != -1) {
                int[] groups = slotTableAddressSpace.getGroups();
                for (int i4 = groups[i + 3]; i4 > 0; i4 = groups[i4 + 1]) {
                    if (i4 != i2) {
                        if (i4 != i3) {
                        }
                    }
                }
                throw av.b("Unexpected slot table structure");
            }
            return i2;
        }
        return i3;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a4 A[LOOP:1: B:26:0x005d->B:38:0x00a4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7 A[EDGE_INSN: B:47:0x00a7->B:39:0x00a7 BREAK  A[LOOP:1: B:26:0x005d->B:38:0x00a4], SYNTHETIC] */
    /* JADX INFO: renamed from: findInvalidations-Vpaz1Sg, reason: not valid java name */
    public static final List<b36<RecomposeScopeImpl, Object>> m5326findInvalidationsVpaz1Sg(SlotTableReader slotTableReader, int i, MutableScatterMap<Object, Object> mutableScatterMap) {
        int i2;
        if (ScopeMap.m5405isEmptyimpl(mutableScatterMap)) {
            return kx2.b;
        }
        ar4 ar4VarE = u96.e();
        MutableScatterSet mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
        SlotTableAddressSpace addressSpace = slotTableReader.getTable().getAddressSpace();
        if (i >= 0) {
            IntStack intStack = new IntStack();
            int[] groups = addressSpace.getGroups();
            int iPop = i;
            while (true) {
                RecomposeScopeImpl recomposeScopeOrNull = getRecomposeScopeOrNull(slotTableReader, iPop);
                if (recomposeScopeOrNull != null) {
                    mutableScatterSetMutableScatterSetOf.add(recomposeScopeOrNull);
                }
                if (iPop != i && (i2 = groups[iPop + 1]) >= 0) {
                    intStack.push(i2);
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
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j = jArr[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i3 != length) {
                        break;
                        break;
                    }
                    i3++;
                } else {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j) < 128) {
                            int i6 = (i3 << 3) + i5;
                            Object obj = objArr[i6];
                            Object obj2 = objArr2[i6];
                            obj.getClass();
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                            if (mutableScatterSetMutableScatterSetOf.contains(recomposeScopeImpl)) {
                                ar4VarE.add(new b36(recomposeScopeImpl, obj2));
                            }
                        }
                        j >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                    if (i3 != length) {
                        break;
                    }
                    i3++;
                }
            }
        }
        return u96.d(ar4VarE);
    }

    public static final Integer findSubcompositionContextGroup(SlotTable slotTable, CompositionContext compositionContext) {
        int i;
        SlotTableReader slotTableReaderOpenReader = slotTable.openReader();
        try {
            int root = slotTable.getRoot();
            int iFirstChildOf = slotTableReaderOpenReader.firstChildOf(root);
            loop0: while (iFirstChildOf != -1) {
                if ((slotTable.groupFlags$runtime(iFirstChildOf) & 1073741824) == 1073741824 && (i = slotTable.getGroups()[iFirstChildOf + 5]) != -1) {
                    SlotTableAddressSpace addressSpace = slotTable.getAddressSpace();
                    int i2 = (i & 15) + 1;
                    int i3 = i >> 4;
                    if (i2 > 15) {
                        i2 = addressSpace.getLargeSizes().get(i3);
                    }
                    for (int i4 = 0; i4 < i2; i4++) {
                        Object obj = slotTable.getSlots()[i3 + i4];
                        if (aa4.e(obj, Composer.Companion.getEmpty())) {
                            break;
                        }
                        RememberObserverHolder rememberObserverHolder = obj instanceof RememberObserverHolder ? (RememberObserverHolder) obj : null;
                        RememberObserver wrapped = rememberObserverHolder != null ? rememberObserverHolder.getWrapped() : null;
                        LinkComposer.CompositionContextHolder compositionContextHolder = wrapped instanceof LinkComposer.CompositionContextHolder ? (LinkComposer.CompositionContextHolder) wrapped : null;
                        if (compositionContextHolder != null && aa4.e(compositionContextHolder.getRef(), compositionContext)) {
                            Integer numValueOf = Integer.valueOf(iFirstChildOf);
                            slotTableReaderOpenReader.close();
                            return numValueOf;
                        }
                    }
                }
                int iFirstChildOf2 = slotTableReaderOpenReader.firstChildOf(iFirstChildOf);
                if (iFirstChildOf2 == -1 || (slotTable.groupFlags$runtime(iFirstChildOf) & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
                    int iParentOf = iFirstChildOf;
                    iFirstChildOf = slotTableReaderOpenReader.nextSiblingOf(iFirstChildOf);
                    while (iFirstChildOf == -1) {
                        iParentOf = slotTableReaderOpenReader.parentOf(iParentOf);
                        if (iParentOf == -1 || iParentOf == root) {
                            break loop0;
                            break loop0;
                        }
                        iFirstChildOf = slotTableReaderOpenReader.nextSiblingOf(iParentOf);
                    }
                } else {
                    iFirstChildOf = iFirstChildOf2;
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
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c6, code lost:
    
        if (r2 == r3) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00dd, code lost:
    
        if (r3 == r2) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long firstGroupInTopologicalOrder(androidx.compose.runtime.composer.linkbuffer.SlotTable r12, long r13, long r15) {
        /*
            Method dump skipped, instruction units count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.LinkComposerKt.firstGroupInTopologicalOrder(androidx.compose.runtime.composer.linkbuffer.SlotTable, long, long):long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object getKey(Object obj, Object obj2, Object obj3) {
        JoinedKey joinedKey = obj instanceof JoinedKey ? (JoinedKey) obj : null;
        if (joinedKey == null) {
            return null;
        }
        if (aa4.e(joinedKey.getLeft(), obj2) && aa4.e(joinedKey.getRight(), obj3)) {
            return obj;
        }
        Object key = getKey(joinedKey.getLeft(), obj2, obj3);
        return key == null ? getKey(joinedKey.getRight(), obj2, obj3) : key;
    }

    public static final RecomposeScopeImpl getRecomposeScopeOrNull(SlotTableReader slotTableReader, int i) {
        Object orNull = slotTableReader.getOrNull(i, 0);
        if (orNull instanceof RecomposeScopeImpl) {
            return (RecomposeScopeImpl) orNull;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isInsertHandle(long j) {
        return GroupHandleKt.getGroup(j) < -8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> MutableScatterMap<Object, Object> multiMap(int i) {
        return MultiValueMap.m5371constructorimpl(new MutableScatterMap(i));
    }

    private static final long toGroupHandle(int i) {
        return ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long toInsertAddress(long j) {
        int context = GroupHandleKt.getContext(j);
        return (((long) ((-10) - GroupHandleKt.getGroup(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) context) << 32);
    }

    private static final long toGroupHandle(long j) {
        isInsertHandle(j);
        return j;
    }

    public static final ReusableLinkRememberObserverHolder asLinkRememberObserverHolder(ReusableRememberObserverHolder reusableRememberObserverHolder) {
        ReusableLinkRememberObserverHolder reusableLinkRememberObserverHolder = reusableRememberObserverHolder instanceof ReusableLinkRememberObserverHolder ? (ReusableLinkRememberObserverHolder) reusableRememberObserverHolder : null;
        if (reusableLinkRememberObserverHolder != null) {
            return reusableLinkRememberObserverHolder;
        }
        throw av.b("Inconsistent composition");
    }
}
