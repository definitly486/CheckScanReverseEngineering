package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpp;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes4.dex */
public final class ug4 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ug4(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                zya.b((tg4) obj2).resumeWith(r57.a((Throwable) obj));
                break;
            default:
                zzlj zzljVar = (zzlj) obj2;
                Bundle bundle = (Bundle) obj;
                fc3 fc3Var = zzljVar.v;
                zzic zzicVar = zzljVar.a;
                if (!bundle.isEmpty()) {
                    Bundle bundle2 = new Bundle(zzicVar.zzd().y.zza());
                    for (String str : bundle.keySet()) {
                        Object obj3 = bundle.get(str);
                        if (obj3 != null && !(obj3 instanceof String) && !(obj3 instanceof Long) && !(obj3 instanceof Double)) {
                            zzicVar.zzk().getClass();
                            if (zzpp.V(obj3)) {
                                zzicVar.zzk().getClass();
                                zzpp.p(fc3Var, null, 27, null, null, 0);
                            }
                            zzicVar.zzaW().zzh().zzc("Invalid default event parameter type. Name, value", str, obj3);
                        } else if (zzpp.A(str)) {
                            zzicVar.zzaW().zzh().zzb("Invalid default event parameter name. Name", str);
                        } else if (obj3 == null) {
                            bundle2.remove(str);
                        } else {
                            zzpp zzppVarZzk = zzicVar.zzk();
                            zzicVar.zzc().getClass();
                            if (zzppVarZzk.d("param", str, 500, obj3)) {
                                zzicVar.zzk().o(bundle2, str, obj3);
                            }
                        }
                    }
                    zzicVar.zzk();
                    int iZzc = zzicVar.zzc().zzc();
                    if (bundle2.size() > iZzc) {
                        int i2 = 0;
                        for (String str2 : new TreeSet(bundle2.keySet())) {
                            i2++;
                            if (i2 > iZzc) {
                                bundle2.remove(str2);
                            }
                        }
                        zzicVar.zzk().getClass();
                        zzpp.p(fc3Var, null, 26, null, null, 0);
                        zzicVar.zzaW().zzh().zza("Too many default event parameters set. Discarding beyond event parameter limit");
                    }
                    bundle = bundle2;
                }
                zzicVar.zzd().y.zzb(bundle);
                zzicVar.zzt().zzH(bundle);
                break;
        }
    }
}
