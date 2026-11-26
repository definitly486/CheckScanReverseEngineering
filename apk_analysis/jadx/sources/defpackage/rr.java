package defpackage;

import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public final class rr extends u0<Integer> implements RandomAccess {
    public final /* synthetic */ int[] c;

    public rr(int[] iArr) {
        this.c = iArr;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        return yr.C(this.c, ((Number) obj).intValue());
    }

    @Override // defpackage.u0, java.util.List
    public final Object get(int i) {
        return Integer.valueOf(this.c[i]);
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.c.length;
    }

    @Override // defpackage.u0, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            return yr.P(((Number) obj).intValue(), this.c);
        }
        return -1;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.c.length == 0;
    }

    @Override // defpackage.u0, java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Integer) {
            int iIntValue = ((Number) obj).intValue();
            int[] iArr = this.c;
            int length = iArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i = length - 1;
                    if (iIntValue == iArr[length]) {
                        return length;
                    }
                    if (i >= 0) {
                        length = i;
                    }
                }
            }
        }
        return -1;
    }
}
