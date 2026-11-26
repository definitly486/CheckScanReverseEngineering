package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzcy;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public class vwa extends yxa implements zzcy {
    @Override // defpackage.yxa
    public final wxa a(Object obj, Collection collection) {
        List list = (List) collection;
        return list instanceof RandomAccess ? new mxa(this, obj, list, null) : new wxa(this, obj, list, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcy
    public final List zze(Object obj) {
        return (List) zzj(obj);
    }

    public final List zzf(Object obj) {
        return (List) zzk(obj);
    }
}
