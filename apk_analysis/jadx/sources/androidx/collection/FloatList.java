package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import defpackage.ag;
import defpackage.ah;
import defpackage.bh;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.n1;
import defpackage.nl3;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
public abstract class FloatList {
    public int _size;
    public float[] content;

    private FloatList(int i) {
        this.content = i == 0 ? FloatSetKt.getEmptyFloatArray() : new float[i];
    }

    public static /* synthetic */ int binarySearch$default(FloatList floatList, int i, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: binarySearch");
            return 0;
        }
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = floatList._size;
        }
        return floatList.binarySearch(i, i2, i3);
    }

    public static /* synthetic */ void getContent$annotations() {
    }

    public static /* synthetic */ void get_size$annotations() {
    }

    public static /* synthetic */ String joinToString$default(FloatList floatList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3 nl3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = floatList.content;
        int i3 = floatList._size;
        for (int i4 = 0; i4 < i3; i4++) {
            float f = fArr[i4];
            if (i4 == i) {
                sb.append(charSequence4);
                return sb.toString();
            }
            if (i4 != 0) {
                sb.append(charSequence);
            }
            sb.append((CharSequence) nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append(charSequence3);
        return sb.toString();
    }

    public final boolean any(nl3<? super Float, Boolean> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (nl3Var.invoke(Float.valueOf(fArr[i2])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final int binarySearch(int i, int i2, int i3) {
        if (i2 < 0 || i2 >= i3 || i3 > this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("");
        }
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            float f = this.content[i5];
            float f2 = i;
            if (f < f2) {
                i2 = i5 + 1;
            } else {
                if (f <= f2) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i2 + 1);
    }

    public final boolean contains(float f) {
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (fArr[i2] == f) {
                return true;
            }
        }
        return false;
    }

    public final boolean containsAll(FloatList floatList) {
        floatList.getClass();
        y74 y74VarN = kx6.n(0, floatList._size);
        int i = y74VarN.b;
        int i2 = y74VarN.c;
        if (i > i2) {
            return true;
        }
        while (contains(floatList.get(i))) {
            if (i == i2) {
                return true;
            }
            i++;
        }
        return false;
    }

    public final int count(nl3<? super Float, Boolean> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (nl3Var.invoke(Float.valueOf(fArr[i3])).booleanValue()) {
                i2++;
            }
        }
        return i2;
    }

    public final float elementAt(int i) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.content[i];
    }

    public final float elementAtOrElse(int i, nl3<? super Integer, Float> nl3Var) {
        nl3Var.getClass();
        return (i < 0 || i >= this._size) ? nl3Var.invoke(Integer.valueOf(i)).floatValue() : this.content[i];
    }

    public boolean equals(Object obj) {
        if (obj instanceof FloatList) {
            FloatList floatList = (FloatList) obj;
            int i = floatList._size;
            int i2 = this._size;
            if (i == i2) {
                float[] fArr = this.content;
                float[] fArr2 = floatList.content;
                y74 y74VarN = kx6.n(0, i2);
                int i3 = y74VarN.b;
                int i4 = y74VarN.c;
                if (i3 > i4) {
                    return true;
                }
                while (fArr[i3] == fArr2[i3]) {
                    if (i3 == i4) {
                        return true;
                    }
                    i3++;
                }
                return false;
            }
        }
        return false;
    }

    public final float first(nl3<? super Float, Boolean> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            if (nl3Var.invoke(Float.valueOf(f)).booleanValue()) {
                return f;
            }
        }
        ag.g("FloatList contains no element matching the predicate.");
        return 0.0f;
    }

    public final <R> R fold(R r, bm3<? super R, ? super Float, ? extends R> bm3Var) {
        bm3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            r = bm3Var.invoke(r, Float.valueOf(fArr[i2]));
        }
        return r;
    }

    public final <R> R foldIndexed(R r, dm3<? super Integer, ? super R, ? super Float, ? extends R> dm3Var) {
        dm3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            R r2 = r;
            r = dm3Var.invoke(Integer.valueOf(i2), r2, Float.valueOf(fArr[i2]));
        }
        return r;
    }

    public final <R> R foldRight(R r, bm3<? super Float, ? super R, ? extends R> bm3Var) {
        bm3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return r;
            }
            r = bm3Var.invoke(Float.valueOf(fArr[i]), r);
        }
    }

    public final <R> R foldRightIndexed(R r, dm3<? super Integer, ? super Float, ? super R, ? extends R> dm3Var) {
        dm3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return r;
            }
            r = dm3Var.invoke(Integer.valueOf(i), Float.valueOf(fArr[i]), r);
        }
    }

    public final void forEach(nl3<? super Float, j59> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            nl3Var.invoke(Float.valueOf(fArr[i2]));
        }
    }

    public final void forEachIndexed(bm3<? super Integer, ? super Float, j59> bm3Var) {
        bm3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            bm3Var.invoke(Integer.valueOf(i2), Float.valueOf(fArr[i2]));
        }
    }

    public final void forEachReversed(nl3<? super Float, j59> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                nl3Var.invoke(Float.valueOf(fArr[i]));
            }
        }
    }

    public final void forEachReversedIndexed(bm3<? super Integer, ? super Float, j59> bm3Var) {
        bm3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                bm3Var.invoke(Integer.valueOf(i), Float.valueOf(fArr[i]));
            }
        }
    }

    public final float get(int i) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.content[i];
    }

    public final y74 getIndices() {
        return kx6.n(0, this._size);
    }

    public final int getLastIndex() {
        return this._size - 1;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        float[] fArr = this.content;
        int i = this._size;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iHashCode += Float.hashCode(fArr[i2]) * 31;
        }
        return iHashCode;
    }

    public final int indexOf(float f) {
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (f == fArr[i2]) {
                return i2;
            }
        }
        return -1;
    }

    public final int indexOfFirst(nl3<? super Float, Boolean> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (nl3Var.invoke(Float.valueOf(fArr[i2])).booleanValue()) {
                return i2;
            }
        }
        return -1;
    }

    public final int indexOfLast(nl3<? super Float, Boolean> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (!nl3Var.invoke(Float.valueOf(fArr[i])).booleanValue());
        return i;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super Float, ? extends CharSequence> nl3Var) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            float f = fArr[i3];
            if (i3 == i) {
                sb.append(charSequence4);
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append(charSequence);
            }
            sb.append(nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append(charSequence3);
        return sb.toString();
    }

    public final float last(nl3<? super Float, Boolean> nl3Var) {
        float f;
        nl3Var.getClass();
        float[] fArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                ag.g("FloatList contains no element matching the predicate.");
                return 0.0f;
            }
            f = fArr[i];
        } while (!nl3Var.invoke(Float.valueOf(f)).booleanValue());
        return f;
    }

    public final int lastIndexOf(float f) {
        float[] fArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (fArr[i] != f);
        return i;
    }

    public final boolean none() {
        return this._size == 0;
    }

    public final boolean reversedAny(nl3<? super Float, Boolean> nl3Var) {
        nl3Var.getClass();
        float[] fArr = this.content;
        for (int i = this._size - 1; -1 < i; i--) {
            if (nl3Var.invoke(Float.valueOf(fArr[i])).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    public /* synthetic */ FloatList(int i, jh2 jh2Var) {
        this(i);
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final int count() {
        return this._size;
    }

    public final float first() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("FloatList is empty.");
        }
        return this.content[0];
    }

    public final float last() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("FloatList is empty.");
        }
        return this.content[this._size - 1];
    }

    public final int binarySearch(int i, int i2) {
        return binarySearch$default(this, i, i2, 0, 4, null);
    }

    public final int binarySearch(int i) {
        return binarySearch$default(this, i, 0, 0, 6, null);
    }

    public final String joinToString(CharSequence charSequence) {
        charSequence.getClass();
        return joinToString$default(this, charSequence, null, null, 0, null, 30, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, 28, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, 24, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, 16, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4) {
        StringBuilder sbE = ah.e(charSequence, charSequence2, charSequence3, charSequence4, charSequence2);
        float[] fArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            float f = fArr[i3];
            if (i3 == i) {
                sbE.append(charSequence4);
                return sbE.toString();
            }
            if (i3 != 0) {
                sbE.append(charSequence);
            }
            sbE.append(f);
        }
        sbE.append(charSequence3);
        return sbE.toString();
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, nl3<? super Float, ? extends CharSequence> nl3Var) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            float f = fArr[i3];
            if (i3 == i) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append(charSequence);
            }
            sb.append(nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append(charSequence3);
        return sb.toString();
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, nl3<? super Float, ? extends CharSequence> nl3Var) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i2 != 0) {
                sb.append(charSequence);
            }
            sb.append(nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append(charSequence3);
        return sb.toString();
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, nl3<? super Float, ? extends CharSequence> nl3Var) {
        charSequence.getClass();
        charSequence2.getClass();
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i2 != 0) {
                sb.append(charSequence);
            }
            sb.append(nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static /* synthetic */ String joinToString$default(FloatList floatList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: joinToString");
            return null;
        }
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return floatList.joinToString(charSequence, charSequence2, charSequence6, i, charSequence5);
    }

    public final String joinToString(CharSequence charSequence, nl3<? super Float, ? extends CharSequence> nl3Var) {
        charSequence.getClass();
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder("");
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i2 != 0) {
                sb.append(charSequence);
            }
            sb.append(nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public final String joinToString(nl3<? super Float, ? extends CharSequence> nl3Var) {
        nl3Var.getClass();
        StringBuilder sb = new StringBuilder("");
        float[] fArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i2 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append(nl3Var.invoke(Float.valueOf(f)));
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }
}
