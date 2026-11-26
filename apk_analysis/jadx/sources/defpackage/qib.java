package defpackage;

import com.google.android.gms.internal.auth.a;
import com.google.android.gms.internal.auth.c;
import com.google.android.gms.internal.auth.d;
import com.google.android.gms.internal.auth.e;
import com.google.android.gms.internal.auth.zzev;
import com.google.android.gms.internal.auth.zzfa;
import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class qib {
    public static final qib c = new qib();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final yfb a = new yfb();

    public final cjb a(Class cls) {
        cjb cjbVarK;
        Class cls2;
        Charset charset = zzfa.a;
        if (cls == null) {
            o2.d("messageType");
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.b;
        cjb cjbVar = (cjb) concurrentHashMap.get(cls);
        if (cjbVar != null) {
            return cjbVar;
        }
        Class cls3 = ljb.a;
        if (!zzev.class.isAssignableFrom(cls) && (cls2 = ljb.a) != null && !cls2.isAssignableFrom(cls)) {
            fg.c("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            return null;
        }
        ogb ogbVarA = ((ufb) this.a.b).a(cls);
        if (ogbVarA.zzb()) {
            if (zzev.class.isAssignableFrom(cls)) {
                cjbVarK = new d(ljb.c, gbb.a, ogbVarA.zza());
            } else {
                tlb tlbVar = ljb.b;
                yab yabVar = gbb.b;
                if (yabVar == null) {
                    ah.f("Protobuf runtime is not correctly loaded.");
                    return null;
                }
                cjbVarK = new d(tlbVar, yabVar, ogbVarA.zza());
            }
        } else if (zzev.class.isAssignableFrom(cls)) {
            if (ogbVarA.zzc() - 1 != 1) {
                int i = hib.a;
                cfb cfbVar = jfb.b;
                e eVar = ljb.c;
                a aVar = gbb.a;
                int i2 = jgb.a;
                cjbVarK = c.k(ogbVarA, cfbVar, eVar);
            } else {
                int i3 = hib.a;
                cfb cfbVar2 = jfb.b;
                e eVar2 = ljb.c;
                int i4 = jgb.a;
                cjbVarK = c.k(ogbVarA, cfbVar2, eVar2);
            }
        } else if (ogbVarA.zzc() - 1 != 1) {
            int i5 = hib.a;
            teb tebVar = jfb.a;
            tlb tlbVar2 = ljb.b;
            if (gbb.b == null) {
                ah.f("Protobuf runtime is not correctly loaded.");
                return null;
            }
            int i6 = jgb.a;
            cjbVarK = c.k(ogbVarA, tebVar, tlbVar2);
        } else {
            int i7 = hib.a;
            teb tebVar2 = jfb.a;
            tlb tlbVar3 = ljb.b;
            int i8 = jgb.a;
            cjbVarK = c.k(ogbVarA, tebVar2, tlbVar3);
        }
        cjb cjbVar2 = (cjb) concurrentHashMap.putIfAbsent(cls, cjbVarK);
        return cjbVar2 == null ? cjbVarK : cjbVar2;
    }
}
