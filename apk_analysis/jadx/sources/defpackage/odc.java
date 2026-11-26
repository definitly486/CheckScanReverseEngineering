package defpackage;

import com.google.android.gms.internal.measurement.zzai;
import com.google.android.gms.internal.measurement.zzao;
import com.google.android.gms.internal.measurement.zzg;
import com.google.android.gms.internal.measurement.zzh;
import com.google.android.gms.internal.measurement.zzt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class odc extends zzai {
    public final boolean d;
    public final boolean e;
    public final /* synthetic */ zzt f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public odc(zzt zztVar, boolean z, boolean z2) {
        super("log");
        this.f = zztVar;
        this.d = z;
        this.e = z2;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006c  */
    /* JADX WARN: Code duplicated, block: B:22:0x007a  */
    /* JADX WARN: Code duplicated, block: B:25:0x0089 A[LOOP:0: B:23:0x007f->B:25:0x0089, LOOP_END] */
    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        int i;
        int i2;
        String strZzc;
        ArrayList arrayList;
        zzh.zzb("log", 1, list);
        int size = list.size();
        zzt zztVar = this.f;
        if (size == 1) {
            zztVar.d.zza(3, zzgVar.zza((zzao) list.get(0)).zzc(), Collections.EMPTY_LIST, this.d, this.e);
            return zzao.zzf;
        }
        int iZzg = zzh.zzg(zzgVar.zza((zzao) list.get(0)).zzd().doubleValue());
        if (iZzg != 2) {
            i = 3;
            if (iZzg == 3) {
                i2 = 1;
            } else if (iZzg == 5) {
                i2 = 5;
            } else if (iZzg == 6) {
                i2 = 2;
            }
            strZzc = zzgVar.zza((zzao) list.get(1)).zzc();
            if (list.size() == 2) {
                zztVar.d.zza(i2, strZzc, Collections.EMPTY_LIST, this.d, this.e);
                return zzao.zzf;
            }
            arrayList = new ArrayList();
            for (int i3 = 2; i3 < Math.min(list.size(), 5); i3++) {
                arrayList.add(zzgVar.zza((zzao) list.get(i3)).zzc());
            }
            zztVar.d.zza(i2, strZzc, arrayList, this.d, this.e);
            return zzao.zzf;
        }
        i = 4;
        i2 = i;
        strZzc = zzgVar.zza((zzao) list.get(1)).zzc();
        if (list.size() == 2) {
            zztVar.d.zza(i2, strZzc, Collections.EMPTY_LIST, this.d, this.e);
            return zzao.zzf;
        }
        arrayList = new ArrayList();
        while (i3 < Math.min(list.size(), 5)) {
            arrayList.add(zzgVar.zza((zzao) list.get(i3)).zzc());
        }
        zztVar.d.zza(i2, strZzc, arrayList, this.d, this.e);
        return zzao.zzf;
    }
}
