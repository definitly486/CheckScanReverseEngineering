package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import defpackage.aa4;
import defpackage.ag;
import defpackage.ah;
import defpackage.bh;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.n1;
import defpackage.n7;
import defpackage.nl3;
import defpackage.y74;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ObjectList<E> {
    public int _size;
    public Object[] content;

    /* JADX INFO: renamed from: androidx.collection.ObjectList$toString$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<E, CharSequence> {
        final /* synthetic */ ObjectList<E> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ObjectList<E> objectList) {
            super(1);
            this.this$0 = objectList;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.nl3
        public final CharSequence invoke(E e) {
            return e == this.this$0 ? "(this)" : String.valueOf(e);
        }
    }

    private ObjectList(int i) {
        this.content = i == 0 ? ObjectListKt.EmptyArray : new Object[i];
    }

    public static /* synthetic */ void getContent$annotations() {
    }

    public static /* synthetic */ void get_size$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String joinToString$default(ObjectList objectList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3 nl3Var, int i2, Object obj) {
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
        if ((i2 & 32) != 0) {
            nl3Var = null;
        }
        CharSequence charSequence5 = charSequence4;
        nl3 nl3Var2 = nl3Var;
        return objectList.joinToString(charSequence, charSequence2, charSequence3, i, charSequence5, nl3Var2);
    }

    public final boolean any(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (nl3Var.invoke(objArr[i2]).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public abstract List<E> asList();

    public final boolean contains(E e) {
        return indexOf(e) >= 0;
    }

    public final boolean containsAll(List<? extends E> list) {
        list.getClass();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!contains(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final int count(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (nl3Var.invoke(objArr[i3]).booleanValue()) {
                i2++;
            }
        }
        return i2;
    }

    public final E elementAt(int i) {
        if (i < 0 || i >= this._size) {
            throwIndexOutOfBoundsExclusiveException$collection(i);
        }
        return (E) this.content[i];
    }

    public final E elementAtOrElse(int i, nl3<? super Integer, ? extends E> nl3Var) {
        nl3Var.getClass();
        return (i < 0 || i >= this._size) ? nl3Var.invoke(Integer.valueOf(i)) : (E) this.content[i];
    }

    public boolean equals(Object obj) {
        if (obj instanceof ObjectList) {
            ObjectList objectList = (ObjectList) obj;
            int i = objectList._size;
            int i2 = this._size;
            if (i == i2) {
                Object[] objArr = this.content;
                Object[] objArr2 = objectList.content;
                y74 y74VarN = kx6.n(0, i2);
                int i3 = y74VarN.b;
                int i4 = y74VarN.c;
                if (i3 > i4) {
                    return true;
                }
                while (aa4.e(objArr[i3], objArr2[i3])) {
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

    /* JADX WARN: Type inference failed for: r2v0, types: [E, java.lang.Object] */
    public final E first(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            ?? r2 = (Object) objArr[i2];
            if (nl3Var.invoke(r2).booleanValue()) {
                return r2;
            }
        }
        ag.g("ObjectList contains no element matching the predicate.");
        return null;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [E, java.lang.Object] */
    public final E firstOrNull(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            ?? r2 = (Object) objArr[i2];
            if (nl3Var.invoke(r2).booleanValue()) {
                return r2;
            }
        }
        return null;
    }

    public final <R> R fold(R r, bm3<? super R, ? super E, ? extends R> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            r = bm3Var.invoke(r, objArr[i2]);
        }
        return r;
    }

    public final <R> R foldIndexed(R r, dm3<? super Integer, ? super R, ? super E, ? extends R> dm3Var) {
        dm3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            r = dm3Var.invoke(Integer.valueOf(i2), r, objArr[i2]);
        }
        return r;
    }

    public final <R> R foldRight(R r, bm3<? super E, ? super R, ? extends R> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return r;
            }
            r = bm3Var.invoke(objArr[i], r);
        }
    }

    public final <R> R foldRightIndexed(R r, dm3<? super Integer, ? super E, ? super R, ? extends R> dm3Var) {
        dm3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return r;
            }
            r = dm3Var.invoke(Integer.valueOf(i), objArr[i], r);
        }
    }

    public final void forEach(nl3<? super E, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            nl3Var.invoke(objArr[i2]);
        }
    }

    public final void forEachIndexed(bm3<? super Integer, ? super E, j59> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            bm3Var.invoke(Integer.valueOf(i2), objArr[i2]);
        }
    }

    public final void forEachReversed(nl3<? super E, j59> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                nl3Var.invoke(objArr[i]);
            }
        }
    }

    public final void forEachReversedIndexed(bm3<? super Integer, ? super E, j59> bm3Var) {
        bm3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            } else {
                bm3Var.invoke(Integer.valueOf(i), objArr[i]);
            }
        }
    }

    public final E get(int i) {
        if (i < 0 || i >= this._size) {
            throwIndexOutOfBoundsExclusiveException$collection(i);
        }
        return (E) this.content[i];
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
        Object[] objArr = this.content;
        int i = this._size;
        int iHashCode = 0;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = objArr[i2];
            iHashCode += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return iHashCode;
    }

    public final int indexOf(E e) {
        Object[] objArr = this.content;
        int i = 0;
        if (e == null) {
            int i2 = this._size;
            while (i < i2) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int i3 = this._size;
        while (i < i3) {
            if (e.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public final int indexOfFirst(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (nl3Var.invoke(objArr[i2]).booleanValue()) {
                return i2;
            }
        }
        return -1;
    }

    public final int indexOfLast(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (!nl3Var.invoke(objArr[i]).booleanValue());
        return i;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super E, ? extends CharSequence> nl3Var) {
        StringBuilder sbE = ah.e(charSequence, charSequence2, charSequence3, charSequence4, charSequence2);
        Object[] objArr = this.content;
        int i2 = this._size;
        for (int i3 = 0; i3 < i2; i3++) {
            Object obj = objArr[i3];
            if (i3 == i) {
                sbE.append(charSequence4);
                return sbE.toString();
            }
            if (i3 != 0) {
                sbE.append(charSequence);
            }
            if (nl3Var == null) {
                sbE.append(obj);
            } else {
                sbE.append(nl3Var.invoke(obj));
            }
        }
        sbE.append(charSequence3);
        return sbE.toString();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [E, java.lang.Object] */
    public final E last(nl3<? super E, Boolean> nl3Var) {
        ?? r1;
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                ag.g("ObjectList contains no element matching the predicate.");
                return null;
            }
            r1 = (Object) objArr[i];
        } while (!nl3Var.invoke(r1).booleanValue());
        return r1;
    }

    public final int lastIndexOf(E e) {
        Object[] objArr = this.content;
        if (e == null) {
            for (int i = this._size - 1; -1 < i; i--) {
                if (objArr[i] == null) {
                    return i;
                }
            }
        } else {
            for (int i2 = this._size - 1; -1 < i2; i2--) {
                if (e.equals(objArr[i2])) {
                    return i2;
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [E, java.lang.Object] */
    public final E lastOrNull(nl3<? super E, Boolean> nl3Var) {
        ?? r1;
        nl3Var.getClass();
        Object[] objArr = this.content;
        int i = this._size;
        do {
            i--;
            if (-1 >= i) {
                return null;
            }
            r1 = (Object) objArr[i];
        } while (!nl3Var.invoke(r1).booleanValue());
        return r1;
    }

    public final boolean none() {
        return isEmpty();
    }

    public final boolean reversedAny(nl3<? super E, Boolean> nl3Var) {
        nl3Var.getClass();
        Object[] objArr = this.content;
        for (int i = this._size - 1; -1 < i; i--) {
            if (nl3Var.invoke(objArr[i]).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public final void throwIndexOutOfBoundsExclusiveException$collection(int i) {
        StringBuilder sbC = n7.c(i, "Index ", " must be in 0..");
        sbC.append(this._size - 1);
        RuntimeHelpersKt.throwIndexOutOfBoundsException(sbC.toString());
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, new AnonymousClass1(this), 25, null);
    }

    public /* synthetic */ ObjectList(int i, jh2 jh2Var) {
        this(i);
    }

    public final boolean containsAll(E[] eArr) {
        eArr.getClass();
        for (E e : eArr) {
            if (!contains(e)) {
                return false;
            }
        }
        return true;
    }

    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return get(0);
    }

    public final boolean any() {
        return isNotEmpty();
    }

    public final int count() {
        return this._size;
    }

    public final boolean containsAll(Iterable<? extends E> iterable) {
        iterable.getClass();
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final E lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.content[this._size - 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean containsAll(ObjectList<E> objectList) {
        objectList.getClass();
        Object[] objArr = objectList.content;
        int i = objectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!contains(objArr[i2])) {
                return false;
            }
        }
        return true;
    }

    public final E first() {
        if (isEmpty()) {
            RuntimeHelpersKt.throwNoSuchElementException("ObjectList is empty.");
        }
        return (E) this.content[0];
    }

    public final E last() {
        if (isEmpty()) {
            RuntimeHelpersKt.throwNoSuchElementException("ObjectList is empty.");
        }
        return (E) this.content[this._size - 1];
    }

    public final String joinToString(CharSequence charSequence) {
        charSequence.getClass();
        return joinToString$default(this, charSequence, null, null, 0, null, null, 62, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        charSequence.getClass();
        charSequence2.getClass();
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, null, 60, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, null, 56, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        bh.c(charSequence, charSequence2, charSequence3);
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, null, 48, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        charSequence4.getClass();
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, charSequence4, null, 32, null);
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, null, 63, null);
    }
}
