package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzcm;
import com.google.android.gms.internal.mlkit_vision_barcode.zzcn;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class x0b extends zzcm {
    public Object[] a;
    public int b;
    public boolean c;

    public final void a(int i) {
        Object[] objArr = this.a;
        int length = objArr.length;
        if (length >= i) {
            if (this.c) {
                this.a = (Object[]) objArr.clone();
                this.c = false;
                return;
            }
            return;
        }
        int i2 = length + (length >> 1) + 1;
        if (i2 < i) {
            int iHighestOneBit = Integer.highestOneBit(i - 1);
            i2 = iHighestOneBit + iHighestOneBit;
        }
        if (i2 < 0) {
            i2 = Integer.MAX_VALUE;
        }
        this.a = Arrays.copyOf(objArr, i2);
        this.c = false;
    }

    public final x0b zza(Object obj) {
        obj.getClass();
        a(this.b + 1);
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcm
    public /* bridge */ /* synthetic */ zzcm zzb(Object obj) {
        throw null;
    }

    public final zzcm zzc(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            a(collection.size() + this.b);
            if (collection instanceof zzcn) {
                this.b = ((zzcn) collection).a(this.b, this.a);
                return this;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            zzb(it.next());
        }
        return this;
    }
}
