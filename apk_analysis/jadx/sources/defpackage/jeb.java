package defpackage;

import com.google.android.gms.internal.play_billing.zzgu;
import com.google.android.gms.internal.play_billing.zzgv;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class jeb extends vdb implements RandomAccess {
    public static final boolean[] e;
    public boolean[] c;
    public int d;

    static {
        boolean[] zArr = new boolean[0];
        e = zArr;
        new jeb(zArr, 0, false);
    }

    public jeb() {
        this(e, 0, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i < 0 || i > (i2 = this.d)) {
            yq.d(rz0.c(i, this.d, "Index:", ", Size:"));
            return;
        }
        int i3 = i + 1;
        boolean[] zArr = this.c;
        int length = zArr.length;
        if (i2 < length) {
            System.arraycopy(zArr, i, zArr, i3, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[dh.c(length, 3, 2, 1, 10)];
            System.arraycopy(this.c, 0, zArr2, 0, i);
            System.arraycopy(this.c, i, zArr2, i3, this.d - i);
            this.c = zArr2;
        }
        this.c[i] = zBooleanValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.vdb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        collection.getClass();
        if (!(collection instanceof jeb)) {
            return super.addAll(collection);
        }
        jeb jebVar = (jeb) collection;
        int i = jebVar.d;
        if (i == 0) {
            return false;
        }
        int i2 = this.d;
        if (Integer.MAX_VALUE - i2 < i) {
            vh.c();
            return false;
        }
        int i3 = i2 + i;
        boolean[] zArrCopyOf = this.c;
        if (i3 > zArrCopyOf.length) {
            zArrCopyOf = Arrays.copyOf(zArrCopyOf, i3);
            this.c = zArrCopyOf;
        }
        System.arraycopy(jebVar.c, 0, zArrCopyOf, this.d, jebVar.d);
        this.d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void b(boolean z) {
        a();
        int i = this.d;
        boolean[] zArr = this.c;
        int length = zArr.length;
        if (i == length) {
            zArr = new boolean[dh.c(length, 3, 2, 1, 10)];
            System.arraycopy(this.c, 0, zArr, 0, this.d);
            this.c = zArr;
        }
        int i2 = this.d;
        this.d = i2 + 1;
        zArr[i2] = z;
    }

    public final void c(int i) {
        if (i < 0 || i >= this.d) {
            yq.d(rz0.c(i, this.d, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.vdb, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jeb)) {
            return super.equals(obj);
        }
        jeb jebVar = (jeb) obj;
        if (this.d != jebVar.d) {
            return false;
        }
        boolean[] zArr = jebVar.c;
        for (int i = 0; i < this.d; i++) {
            if (this.c[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        c(i);
        return Boolean.valueOf(this.c[i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZza = 1;
        for (int i = 0; i < this.d; i++) {
            iZza = (iZza * 31) + zzgv.zza(this.c[i]);
        }
        return iZza;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.c[i2] == zBooleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.vdb, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        c(i);
        boolean[] zArr = this.c;
        boolean z = zArr[i];
        int i2 = this.d;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 < i) {
            yq.d("toIndex < fromIndex");
            return;
        }
        boolean[] zArr = this.c;
        System.arraycopy(zArr, i2, zArr, i, this.d - i2);
        this.d -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        a();
        c(i);
        boolean[] zArr = this.c;
        boolean z = zArr[i];
        zArr[i] = zBooleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgu
    public final /* bridge */ /* synthetic */ zzgu zzd(int i) {
        if (i >= this.d) {
            return new jeb(i == 0 ? e : Arrays.copyOf(this.c, i), this.d, true);
        }
        mi2.b();
        return null;
    }

    public jeb(boolean[] zArr, int i, boolean z) {
        super(z);
        this.c = zArr;
        this.d = i;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        b(((Boolean) obj).booleanValue());
        return true;
    }
}
