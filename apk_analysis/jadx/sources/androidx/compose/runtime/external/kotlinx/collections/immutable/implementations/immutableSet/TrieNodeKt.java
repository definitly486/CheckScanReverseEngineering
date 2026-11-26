package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import defpackage.aq5;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TrieNodeKt {
    public static final int LOG_MAX_BRANCHING_FACTOR = 5;
    public static final int MAX_BRANCHING_FACTOR = 32;
    public static final int MAX_BRANCHING_FACTOR_MINUS_ONE = 31;
    public static final int MAX_SHIFT = 30;

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> Object[] addElementAtIndex(Object[] objArr, int i, E e) {
        Object[] objArr2 = new Object[objArr.length + 1];
        aq5.q(objArr, objArr2, 0, 0, i, 6);
        aq5.m(objArr, i + 1, objArr2, i, objArr.length);
        objArr2[i] = e;
        return objArr2;
    }

    private static final int filterTo(Object[] objArr, Object[] objArr2, int i, nl3<Object, Boolean> nl3Var) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < objArr.length) {
            CommonFunctionsKt.m5571assert(i3 <= i2);
            if (nl3Var.invoke(objArr[i2]).booleanValue()) {
                objArr2[i + i3] = objArr[i2];
                i3++;
                CommonFunctionsKt.m5571assert(i + i3 <= objArr2.length);
            }
            i2++;
        }
        return i3;
    }

    public static /* synthetic */ int filterTo$default(Object[] objArr, Object[] objArr2, int i, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            nl3Var = new nl3<Object, Boolean>() { // from class: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableSet.TrieNodeKt.filterTo.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // defpackage.nl3
                public final Boolean invoke(Object obj2) {
                    return Boolean.valueOf(obj2 != TrieNode.Companion.getEMPTY$runtime());
                }
            };
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < objArr.length) {
            CommonFunctionsKt.m5571assert(i4 <= i3);
            if (((Boolean) nl3Var.invoke(objArr[i3])).booleanValue()) {
                objArr2[i + i4] = objArr[i3];
                i4++;
                CommonFunctionsKt.m5571assert(i + i4 <= objArr2.length);
            }
            i3++;
        }
        return i4;
    }

    public static final int indexSegment(int i, int i2) {
        return (i >> i2) & 31;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] removeCellAtIndex(Object[] objArr, int i) {
        Object[] objArr2 = new Object[objArr.length - 1];
        aq5.q(objArr, objArr2, 0, 0, i, 6);
        aq5.m(objArr, i, objArr2, i + 1, objArr.length);
        return objArr2;
    }
}
