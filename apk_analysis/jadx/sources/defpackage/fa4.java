package defpackage;

import androidx.collection.SieveCacheKt;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;

/* JADX INFO: loaded from: classes3.dex */
public final class fa4 extends y14 {

    /* JADX INFO: loaded from: classes4.dex */
    public static final class a extends AbstractList<Integer> implements RandomAccess, Serializable {
        public final int[] b;
        public final int c;
        public final int d;

        public a(int[] iArr, int i, int i2) {
            this.b = iArr;
            this.c = i;
            this.d = i2;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001e A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (!(obj instanceof Integer)) {
                return false;
            }
            int iIntValue = ((Integer) obj).intValue();
            int i = this.c;
            while (i < this.d) {
                if (this.b[i] == iIntValue) {
                    if (i != -1) {
                        return true;
                    }
                    return false;
                }
                i++;
            }
            i = -1;
            if (i != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            a aVar = (a) obj;
            int size = size();
            if (aVar.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.b[this.c + i] != aVar.b[aVar.c + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            o8.j(i, size());
            return Integer.valueOf(this.b[this.c + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int iHashCode = 1;
            for (int i = this.c; i < this.d; i++) {
                iHashCode = (iHashCode * 31) + Integer.hashCode(this.b[i]);
            }
            return iHashCode;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x001f  */
        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Integer) {
                int iIntValue = ((Integer) obj).intValue();
                int i = this.c;
                int i2 = i;
                while (i2 < this.d) {
                    if (this.b[i2] != iIntValue) {
                        i2++;
                    } else if (i2 >= 0) {
                        return i2 - i;
                    }
                }
                i2 = -1;
                if (i2 >= 0) {
                    return i2 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Integer) {
                int iIntValue = ((Integer) obj).intValue();
                int i2 = this.d;
                do {
                    i2--;
                    i = this.c;
                    if (i2 < i) {
                        i2 = -1;
                        break;
                    }
                } while (this.b[i2] != iIntValue);
                if (i2 >= 0) {
                    return i2 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            Integer num = (Integer) obj;
            o8.j(i, size());
            int i2 = this.c + i;
            int[] iArr = this.b;
            int i3 = iArr[i2];
            num.getClass();
            iArr[i2] = num.intValue();
            return Integer.valueOf(i3);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.d - this.c;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public final Spliterator spliterator() {
            return Spliterators.spliterator(this.b, this.c, this.d, 0);
        }

        @Override // java.util.AbstractList, java.util.List
        public final List<Integer> subList(int i, int i2) {
            o8.o(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.c;
            return new a(this.b, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            int[] iArr = this.b;
            int i = this.c;
            sb.append(iArr[i]);
            while (true) {
                i++;
                if (i >= this.d) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append(iArr[i]);
            }
        }
    }

    public static List<Integer> U(int... iArr) {
        return iArr.length == 0 ? Collections.EMPTY_LIST : new a(iArr, 0, iArr.length);
    }

    public static int V(long j) {
        int i = (int) j;
        o8.c(j, ((long) i) == j, "Out of range: %s");
        return i;
    }

    public static int W(byte[] bArr) {
        o8.d("array too small: %s < %s", bArr.length, 4, bArr.length >= 4);
        return X(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int X(byte b, byte b2, byte b3, byte b4) {
        return (b << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    public static int Y(long j) {
        if (j > SieveCacheKt.NodeLinkMask) {
            return Integer.MAX_VALUE;
        }
        if (j < SieveCacheKt.NodeMetaAndPreviousMask) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int[] Z(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            a aVar = (a) collection;
            return Arrays.copyOfRange(aVar.b, aVar.c, aVar.d);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            Object obj = array[i];
            obj.getClass();
            iArr[i] = ((Number) obj).intValue();
        }
        return iArr;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a  */
    public static Integer a0(String str) {
        byte b;
        Long lValueOf;
        byte b2;
        str.getClass();
        if (!str.isEmpty()) {
            int i = str.charAt(0) == '-' ? 1 : 0;
            if (i != str.length()) {
                int i2 = i + 1;
                char cCharAt = str.charAt(i);
                if (cCharAt < 128) {
                    b = iw4.a.a[cCharAt];
                } else {
                    byte[] bArr = iw4.a.a;
                    b = -1;
                }
                if (b >= 0 && b < 10) {
                    long j = -b;
                    while (true) {
                        if (i2 >= str.length()) {
                            if (i == 0) {
                                if (j != Long.MIN_VALUE) {
                                    lValueOf = Long.valueOf(-j);
                                    break;
                                }
                                break;
                            }
                            lValueOf = Long.valueOf(j);
                            break;
                        }
                        int i3 = i2 + 1;
                        char cCharAt2 = str.charAt(i2);
                        if (cCharAt2 < 128) {
                            b2 = iw4.a.a[cCharAt2];
                        } else {
                            byte[] bArr2 = iw4.a.a;
                            b2 = -1;
                        }
                        if (b2 >= 0 && b2 < 10 && j >= -922337203685477580L) {
                            long j2 = j * 10;
                            long j3 = b2;
                            if (j2 >= Long.MIN_VALUE + j3) {
                                j = j2 - j3;
                                i2 = i3;
                            }
                        }
                        lValueOf = null;
                        break;
                    }
                }
                lValueOf = null;
                break;
            }
            lValueOf = null;
            break;
        }
        lValueOf = null;
        break;
        if (lValueOf == null || lValueOf.longValue() != lValueOf.intValue()) {
            return null;
        }
        return Integer.valueOf(lValueOf.intValue());
    }
}
