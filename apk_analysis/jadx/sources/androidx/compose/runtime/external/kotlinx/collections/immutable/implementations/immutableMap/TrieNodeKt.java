package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.aq5;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class TrieNodeKt {
    public static final int ENTRY_SIZE = 2;
    public static final int LOG_MAX_BRANCHING_FACTOR = 5;
    public static final int MAX_BRANCHING_FACTOR = 32;
    public static final int MAX_BRANCHING_FACTOR_MINUS_ONE = 31;
    public static final int MAX_SHIFT = 30;

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> Object[] insertEntryAtIndex(Object[] objArr, int i, K k, V v) {
        Object[] objArr2 = new Object[objArr.length + 2];
        aq5.q(objArr, objArr2, 0, 0, i, 6);
        aq5.m(objArr, i + 2, objArr2, i, objArr.length);
        objArr2[i] = k;
        objArr2[i + 1] = v;
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] removeEntryAtIndex(Object[] objArr, int i) {
        Object[] objArr2 = new Object[objArr.length - 2];
        aq5.q(objArr, objArr2, 0, 0, i, 6);
        aq5.m(objArr, i, objArr2, i + 2, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] removeNodeAtIndex(Object[] objArr, int i) {
        Object[] objArr2 = new Object[objArr.length - 1];
        aq5.q(objArr, objArr2, 0, 0, i, 6);
        aq5.m(objArr, i, objArr2, i + 1, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] replaceEntryWithNode(Object[] objArr, int i, int i2, TrieNode<?, ?> trieNode) {
        Object[] objArr2 = new Object[objArr.length - 1];
        aq5.q(objArr, objArr2, 0, 0, i, 6);
        aq5.m(objArr, i, objArr2, i + 2, i2);
        objArr2[i2 - 2] = trieNode;
        aq5.m(objArr, i2 - 1, objArr2, i2, objArr.length);
        return objArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <K, V> Object[] replaceNodeWithEntry(Object[] objArr, int i, int i2, K k, V v) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 1);
        aq5.m(objArrCopyOf, i + 2, objArrCopyOf, i + 1, objArr.length);
        aq5.m(objArrCopyOf, i2 + 2, objArrCopyOf, i2, i);
        objArrCopyOf[i2] = k;
        objArrCopyOf[i2 + 1] = v;
        return objArrCopyOf;
    }
}
