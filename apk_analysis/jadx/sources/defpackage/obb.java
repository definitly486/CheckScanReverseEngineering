package defpackage;

import com.google.android.gms.internal.auth.zzef;
import com.google.android.gms.internal.auth.zzep;
import com.google.android.gms.internal.auth.zzev;
import com.google.android.gms.internal.auth.zzex;
import com.google.android.gms.internal.auth.zzfa;
import com.google.android.gms.internal.auth.zzfc;
import com.google.android.gms.internal.auth.zzfx;
import com.google.android.gms.internal.auth.zzho;
import com.google.android.gms.internal.auth.zzhp;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class obb {
    public static final /* synthetic */ int c = 0;
    public final ojb a = new ojb(16);
    public boolean b;

    static {
        new obb(0);
    }

    public obb(int i) {
        a();
        a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void c(zzep zzepVar, Object obj) {
        boolean z;
        zzepVar.zzb();
        Charset charset = zzfa.a;
        obj.getClass();
        zzho zzhoVar = zzho.zza;
        zzhp zzhpVar = zzhp.INT;
        switch (r0.zza()) {
            case INT:
                z = obj instanceof Integer;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case LONG:
                z = obj instanceof Long;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case FLOAT:
                z = obj instanceof Float;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case DOUBLE:
                z = obj instanceof Double;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case BOOLEAN:
                z = obj instanceof Boolean;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case STRING:
                z = obj instanceof String;
                if (z) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case BYTE_STRING:
                if ((obj instanceof zzef) || (obj instanceof byte[])) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof zzex)) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            case MESSAGE:
                if ((obj instanceof zzfx) || (obj instanceof zzfc)) {
                }
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
            default:
                nz0.d("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zzepVar.zza()), zzepVar.zzb().zza(), obj.getClass().getName()});
                break;
        }
    }

    public final void a() {
        if (this.b) {
            return;
        }
        int i = 0;
        while (true) {
            ojb ojbVar = this.a;
            if (i >= ojbVar.c.size()) {
                ojbVar.a();
                this.b = true;
                return;
            }
            Map.Entry entry = (Map.Entry) ojbVar.c.get(i);
            if (entry.getValue() instanceof zzev) {
                zzev zzevVar = (zzev) entry.getValue();
                zzevVar.getClass();
                qib.c.a(zzevVar.getClass()).zze(zzevVar);
                zzevVar.d();
            }
            i++;
        }
    }

    public final void b(zzep zzepVar, Object obj) {
        if (!zzepVar.zzc()) {
            c(zzepVar, obj);
        } else {
            if (!(obj instanceof List)) {
                fg.c("Wrong object type used with protocol message reflection.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                c(zzepVar, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.a.put(zzepVar, obj);
    }

    public final Object clone() {
        ojb ojbVar;
        obb obbVar = new obb();
        int i = 0;
        while (true) {
            ojbVar = this.a;
            if (i >= ojbVar.c.size()) {
                break;
            }
            Map.Entry entry = (Map.Entry) ojbVar.c.get(i);
            obbVar.b((zzep) entry.getKey(), entry.getValue());
            i++;
        }
        for (Map.Entry entry2 : ojbVar.d.isEmpty() ? aq5.f : ojbVar.d.entrySet()) {
            obbVar.b((zzep) entry2.getKey(), entry2.getValue());
        }
        return obbVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof obb) {
            return this.a.equals(((obb) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public obb() {
    }
}
