package defpackage;

import com.google.android.gms.internal.measurement.zzaaa;
import com.google.android.gms.internal.measurement.zzyl;
import com.google.android.gms.internal.measurement.zzzj;
import com.google.android.gms.internal.measurement.zzzq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class ajc extends zzaaa {
    public final Map b;

    public /* synthetic */ ajc(zzzj zzzjVar, zzzj zzzjVar2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        a(linkedHashMap, zzzjVar);
        a(linkedHashMap, zzzjVar2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((zzyl) entry.getKey()).zzf()) {
                entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
            }
        }
        this.b = Collections.unmodifiableMap(linkedHashMap);
    }

    public static void a(LinkedHashMap linkedHashMap, zzzj zzzjVar) {
        for (int i = 0; i < zzzjVar.zza(); i++) {
            zzyl zzylVarZzb = zzzjVar.zzb(i);
            Object obj = linkedHashMap.get(zzylVarZzb);
            if (zzylVarZzb.zzf()) {
                List arrayList = (List) obj;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(zzylVarZzb, arrayList);
                }
                arrayList.add(zzylVarZzb.zze(zzzjVar.zzc(i)));
            } else {
                linkedHashMap.put(zzylVarZzb, zzylVarZzb.zze(zzzjVar.zzc(i)));
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final void zza(zzzq zzzqVar, Object obj) {
        for (Map.Entry entry : this.b.entrySet()) {
            zzyl zzylVar = (zzyl) entry.getKey();
            Object value = entry.getValue();
            if (zzylVar.zzf()) {
                zzzqVar.b(zzylVar, ((List) value).iterator(), obj);
            } else {
                zzzqVar.a(zzylVar, value, obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final int zzb() {
        return this.b.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final Set zzc() {
        return this.b.keySet();
    }
}
