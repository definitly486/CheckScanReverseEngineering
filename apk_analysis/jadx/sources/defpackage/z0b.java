package defpackage;

import com.google.android.gms.internal.play_billing.zzca;
import com.google.android.gms.internal.play_billing.zzcf;
import com.google.android.gms.internal.play_billing.zzcs;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class z0b extends zzcf {
    public final transient m1b d;
    public final transient Object[] e;
    public final transient int f;

    public z0b(m1b m1bVar, Object[] objArr, int i) {
        this.d = m1bVar;
        this.e = objArr;
        this.f = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx
    public final int a(Object[] objArr) {
        return zzd().a(objArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbx, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.d.get(key));
    }

    @Override // com.google.android.gms.internal.play_billing.zzcf, com.google.android.gms.internal.play_billing.zzbx, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return zzd().listIterator(0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzcf
    public final zzca j() {
        return new v0b(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcf, com.google.android.gms.internal.play_billing.zzbx
    /* JADX INFO: renamed from: zze */
    public final zzcs iterator() {
        return zzd().listIterator(0);
    }
}
