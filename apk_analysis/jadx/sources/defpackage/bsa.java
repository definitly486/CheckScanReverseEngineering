package defpackage;

import com.google.android.gms.internal.common.zzah;
import com.google.android.gms.internal.common.zzr;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class bsa extends zzah {
    public final transient zzah d;

    public bsa(zzah zzahVar) {
        this.d = zzahVar;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.d.contains(obj);
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final boolean f() {
        return this.d.f();
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzah zzahVar = this.d;
        zzr.zzb(i, zzahVar.size(), FirebaseAnalytics.Param.INDEX);
        return zzahVar.get((zzahVar.size() - 1) - i);
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    public final int indexOf(Object obj) {
        zzah zzahVar = this.d;
        int iLastIndexOf = zzahVar.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (zzahVar.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    public final int lastIndexOf(Object obj) {
        zzah zzahVar = this.d;
        int iIndexOf = zzahVar.indexOf(obj);
        if (iIndexOf >= 0) {
            return (zzahVar.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.size();
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final zzah zzh() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final zzah subList(int i, int i2) {
        zzah zzahVar = this.d;
        zzr.zzd(i, i2, zzahVar.size());
        return zzahVar.subList(zzahVar.size() - i2, zzahVar.size() - i).zzh();
    }
}
