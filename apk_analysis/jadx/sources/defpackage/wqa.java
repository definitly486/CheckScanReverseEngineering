package defpackage;

import com.google.android.gms.internal.measurement.zzae;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class wqa implements Iterator {
    public int b = 0;
    public final /* synthetic */ zzae c;

    public wqa(zzae zzaeVar) {
        this.c = zzaeVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c.zzh();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        int i = this.b;
        zzae zzaeVar = this.c;
        int iZzh = zzaeVar.zzh();
        int i2 = this.b;
        if (i < iZzh) {
            this.b = i2 + 1;
            return zzaeVar.zzl(i2);
        }
        ag.g(ag.d(new StringBuilder(String.valueOf(i2).length() + 21), "Out of bounds index: ", i2));
        return null;
    }
}
