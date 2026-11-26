package defpackage;

import com.google.android.gms.internal.measurement.zzadx;
import com.google.android.gms.internal.measurement.zzaed;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class cra extends eqa implements RandomAccess, zzadx, jsa {
    public static final double[] e;
    public double[] c;
    public int d;

    static {
        double[] dArr = new double[0];
        e = dArr;
        new cra(dArr, 0, false);
    }

    public cra() {
        this(e, 0, true);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        double dDoubleValue = ((Double) obj).doubleValue();
        a();
        if (i < 0 || i > (i2 = this.d)) {
            yq.d(gqa.a(this.d, i, (byte) 13, "Index:", ", Size:"));
            return;
        }
        int i3 = i + 1;
        double[] dArr = this.c;
        int length = dArr.length;
        if (i2 < length) {
            System.arraycopy(dArr, i, dArr, i3, i2 - i);
        } else {
            double[] dArr2 = new double[dh.c(length, 3, 2, 1, 10)];
            System.arraycopy(this.c, 0, dArr2, 0, i);
            System.arraycopy(this.c, i, dArr2, i3, this.d - i);
            this.c = dArr2;
        }
        this.c[i] = dDoubleValue;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.eqa, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        collection.getClass();
        if (!(collection instanceof cra)) {
            return super.addAll(collection);
        }
        cra craVar = (cra) collection;
        int i = craVar.d;
        if (i == 0) {
            return false;
        }
        int i2 = this.d;
        if (Integer.MAX_VALUE - i2 < i) {
            vh.c();
            return false;
        }
        int i3 = i2 + i;
        double[] dArrCopyOf = this.c;
        if (i3 > dArrCopyOf.length) {
            dArrCopyOf = Arrays.copyOf(dArrCopyOf, i3);
            this.c = dArrCopyOf;
        }
        System.arraycopy(craVar.c, 0, dArrCopyOf, this.d, craVar.d);
        this.d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void b(double d) {
        a();
        int i = this.d;
        double[] dArr = this.c;
        int length = dArr.length;
        if (i == length) {
            dArr = new double[dh.c(length, 3, 2, 1, 10)];
            System.arraycopy(this.c, 0, dArr, 0, this.d);
            this.c = dArr;
        }
        int i2 = this.d;
        this.d = i2 + 1;
        dArr[i2] = d;
    }

    public final void c(int i) {
        if (i < 0 || i >= this.d) {
            yq.d(gqa.a(this.d, i, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // defpackage.eqa, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cra)) {
            return super.equals(obj);
        }
        cra craVar = (cra) obj;
        if (this.d != craVar.d) {
            return false;
        }
        double[] dArr = craVar.c;
        for (int i = 0; i < this.d; i++) {
            if (Double.doubleToLongBits(this.c[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        c(i);
        return Double.valueOf(this.c[i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.d; i2++) {
            long jDoubleToLongBits = Double.doubleToLongBits(this.c[i2]);
            byte[] bArr = zzaed.zza;
            i = (i * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.c[i2] == dDoubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // defpackage.eqa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        c(i);
        double[] dArr = this.c;
        double d = dArr[i];
        int i2 = this.d;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 < i) {
            yq.d("toIndex < fromIndex");
            return;
        }
        double[] dArr = this.c;
        System.arraycopy(dArr, i2, dArr, i, this.d - i2);
        this.d -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        a();
        c(i);
        double[] dArr = this.c;
        double d = dArr[i];
        dArr[i] = dDoubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.measurement.zzaef
    /* JADX INFO: renamed from: zzd */
    public final zzadx zzg(int i) {
        if (i >= this.d) {
            return new cra(i == 0 ? e : Arrays.copyOf(this.c, i), this.d, true);
        }
        mi2.b();
        return null;
    }

    public cra(double[] dArr, int i, boolean z) {
        super(z);
        this.c = dArr;
        this.d = i;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        b(((Double) obj).doubleValue());
        return true;
    }
}
