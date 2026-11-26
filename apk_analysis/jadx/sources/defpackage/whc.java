package defpackage;

import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.zzahn;
import com.google.android.gms.internal.measurement.zzhf;
import com.google.android.gms.internal.measurement.zzhg;
import com.google.android.gms.internal.measurement.zzhp;
import com.google.android.gms.internal.measurement.zzhq;
import com.google.android.gms.internal.measurement.zzih;
import com.google.android.gms.internal.measurement.zzii;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.measurement.internal.zzal;
import com.google.android.gms.measurement.internal.zzfx;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzpk;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class whc {
    public final String a;
    public final boolean b;
    public final zzii c;
    public final BitSet d;
    public final BitSet e;
    public final ArrayMap f;
    public final ArrayMap g;
    public final /* synthetic */ zqa h;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ whc(zqa zqaVar, String str, zzii zziiVar, BitSet bitSet, BitSet bitSet2, ArrayMap arrayMap, ArrayMap arrayMap2) {
        Objects.requireNonNull(zqaVar);
        this.h = zqaVar;
        this.a = str;
        this.d = bitSet;
        this.e = bitSet2;
        this.f = arrayMap;
        this.g = new ArrayMap();
        for (K k : arrayMap2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) arrayMap2.get(k));
            this.g.put(k, arrayList);
        }
        this.b = false;
        this.c = zziiVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(kpa kpaVar) {
        int iA = kpaVar.a();
        if (kpaVar.c != null) {
            this.e.set(iA, true);
        }
        Boolean bool = kpaVar.d;
        if (bool != null) {
            this.d.set(iA, bool.booleanValue());
        }
        if (kpaVar.e != null) {
            Integer numValueOf = Integer.valueOf(iA);
            ArrayMap arrayMap = this.f;
            Long l = (Long) arrayMap.get(numValueOf);
            long jLongValue = kpaVar.e.longValue() / 1000;
            if (l == null || jLongValue > l.longValue()) {
                arrayMap.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (kpaVar.f != null) {
            Integer numValueOf2 = Integer.valueOf(iA);
            ArrayMap arrayMap2 = this.g;
            List arrayList = (List) arrayMap2.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                arrayMap2.put(numValueOf2, arrayList);
            }
            if (kpaVar.b()) {
                arrayList.clear();
            }
            zzahn.zza();
            zzic zzicVar = this.h.a;
            zzal zzalVarZzc = zzicVar.zzc();
            zzfx zzfxVar = zzfy.zzaF;
            String str = this.a;
            if (zzalVarZzc.zzp(str, zzfxVar) && kpaVar.c()) {
                arrayList.clear();
            }
            zzahn.zza();
            boolean zZzp = zzicVar.zzc().zzp(str, zzfxVar);
            Long l2 = kpaVar.f;
            if (!zZzp) {
                arrayList.add(Long.valueOf(l2.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(l2.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }

    public final zzhg b(int i) {
        List list;
        zzhf zzhfVarZzi = zzhg.zzi();
        zzhfVarZzi.zza(i);
        zzhfVarZzi.zzd(this.b);
        zzii zziiVar = this.c;
        if (zziiVar != null) {
            zzhfVarZzi.zzc(zziiVar);
        }
        zzih zzihVarZzj = zzii.zzj();
        zzihVarZzj.zzc(zzpk.C(this.d));
        zzihVarZzj.zza(zzpk.C(this.e));
        ArrayMap arrayMap = this.f;
        ArrayList arrayList = new ArrayList(arrayMap.size());
        for (Integer num : arrayMap.keySet()) {
            int iIntValue = num.intValue();
            Long l = (Long) arrayMap.get(num);
            if (l != null) {
                zzhp zzhpVarZze = zzhq.zze();
                zzhpVarZze.zza(iIntValue);
                zzhpVarZze.zzb(l.longValue());
                arrayList.add((zzhq) zzhpVarZze.zzbd());
            }
        }
        zzihVarZzj.zze(arrayList);
        ArrayMap arrayMap2 = this.g;
        if (arrayMap2 == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList2 = new ArrayList(arrayMap2.size());
            for (Integer num2 : arrayMap2.keySet()) {
                zzij zzijVarZzf = zzik.zzf();
                zzijVarZzf.zza(num2.intValue());
                List list2 = (List) arrayMap2.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    zzijVarZzf.zzb(list2);
                }
                arrayList2.add((zzik) zzijVarZzf.zzbd());
            }
            list = arrayList2;
        }
        zzihVarZzj.zzg(list);
        zzhfVarZzi.zzb(zzihVarZzj);
        return (zzhg) zzhfVarZzi.zzbd();
    }

    public /* synthetic */ whc(zqa zqaVar, String str) {
        this.h = zqaVar;
        this.a = str;
        this.b = true;
        this.d = new BitSet();
        this.e = new BitSet();
        this.f = new ArrayMap();
        this.g = new ArrayMap();
    }
}
