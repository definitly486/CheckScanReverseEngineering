package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzax;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class k0b extends aya {
    public final Object b;
    public int c;
    public final /* synthetic */ p0b d;

    public k0b(p0b p0bVar, int i) {
        this.d = p0bVar;
        Object obj = p0b.k;
        this.b = p0bVar.b()[i];
        this.c = i;
    }

    public final void a() {
        int i = this.c;
        Object obj = this.b;
        p0b p0bVar = this.d;
        if (i != -1 && i < p0bVar.size()) {
            if (zzax.zza(obj, p0bVar.b()[this.c])) {
                return;
            }
        }
        Object obj2 = p0b.k;
        this.c = p0bVar.m(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        p0b p0bVar = this.d;
        Map mapE = p0bVar.e();
        if (mapE != null) {
            return mapE.get(this.b);
        }
        a();
        int i = this.c;
        if (i == -1) {
            return null;
        }
        return p0bVar.d()[i];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        p0b p0bVar = this.d;
        Map mapE = p0bVar.e();
        Object obj2 = this.b;
        if (mapE != null) {
            return mapE.put(obj2, obj);
        }
        a();
        int i = this.c;
        if (i == -1) {
            p0bVar.put(obj2, obj);
            return null;
        }
        Object obj3 = p0bVar.d()[i];
        p0bVar.d()[this.c] = obj;
        return obj3;
    }
}
