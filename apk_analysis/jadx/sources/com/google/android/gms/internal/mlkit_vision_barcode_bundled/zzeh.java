package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeb;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import defpackage.ah;
import defpackage.d6b;
import defpackage.h2;
import defpackage.i29;
import defpackage.jh;
import defpackage.jib;
import defpackage.lgb;
import defpackage.mg;
import defpackage.qlb;
import defpackage.s9b;
import defpackage.ud;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzeh<MessageType extends zzeh<MessageType, BuilderType>, BuilderType extends zzeb<MessageType, BuilderType>> extends zzcq<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzgt zzc = zzgt.zzc();

    public static zzeh c(Class cls) {
        Map map = zzb;
        zzeh zzehVar = (zzeh) map.get(cls);
        if (zzehVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzehVar = (zzeh) map.get(cls);
            } catch (ClassNotFoundException e) {
                h2.e("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzehVar != null) {
            return zzehVar;
        }
        try {
            zzeh zzehVar2 = (zzeh) ((zzeh) qlb.a.allocateInstance(cls)).j(6, null);
            if (zzehVar2 != null) {
                map.put(cls, zzehVar2);
                return zzehVar2;
            }
            ud.g();
            return null;
        } catch (InstantiationException e2) {
            i29.a(e2);
            return null;
        }
    }

    public static Object d(Method method, zzeh zzehVar, Object... objArr) {
        try {
            return method.invoke(zzehVar, objArr);
        } catch (IllegalAccessException e) {
            mg.e("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            mg.e("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static void f(Class cls, zzeh zzehVar) {
        zzehVar.e();
        zzb.put(cls, zzehVar);
    }

    public static final boolean h(zzeh zzehVar, boolean z) {
        byte bByteValue = ((Byte) zzehVar.j(1, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zA = lgb.c.a(zzehVar.getClass()).a(zzehVar);
        if (z) {
            zzehVar.j(2, true == zA ? zzehVar : null);
        }
        return zA;
    }

    public static zzef zzI(zzfm zzfmVar, Object obj, zzfm zzfmVar2, zzek zzekVar, int i, zzhf zzhfVar, Class cls) {
        return new zzef(zzfmVar, zzfmVar2, new s9b(i, zzhfVar));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzcq
    public final int a(jib jibVar) {
        if (i()) {
            int iH = jibVar.h(this);
            if (iH >= 0) {
                return iH;
            }
            ah.f(jh.b(iH, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iH2 = jibVar.h(this);
        if (iH2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iH2;
            return iH2;
        }
        ah.f(jh.b(iH2, "serialized size must be non-negative, was "));
        return 0;
    }

    public final zzeb b() {
        return (zzeb) j(5, null);
    }

    public final void e() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return lgb.c.a(getClass()).e(this, (zzeh) obj);
    }

    public final void g() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final int hashCode() {
        if (i()) {
            return lgb.c.a(getClass()).f(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iF = lgb.c.a(getClass()).f(this);
        this.zza = iF;
        return iF;
    }

    public final boolean i() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object j(int i, zzeh zzehVar);

    public final String toString() {
        String string = super.toString();
        char[] cArr = a.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        a.c(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm
    public final int zzF() {
        if (i()) {
            int iH = lgb.c.a(getClass()).h(this);
            if (iH >= 0) {
                return iH;
            }
            ah.f(jh.b(iH, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iH2 = lgb.c.a(getClass()).h(this);
        if (iH2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iH2;
            return iH2;
        }
        ah.f(jh.b(iH2, "serialized size must be non-negative, was "));
        return 0;
    }

    public final zzeb zzH() {
        zzeb zzebVar = (zzeb) j(5, null);
        zzebVar.zzg(this);
        return zzebVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm
    public final /* synthetic */ zzfl zzZ() {
        return (zzeb) j(5, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm
    public final /* synthetic */ zzfl zzaa() {
        zzeb zzebVar = (zzeb) j(5, null);
        zzebVar.zzg(this);
        return zzebVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm
    public final void zzab(zzdn zzdnVar) {
        jib jibVarA = lgb.c.a(getClass());
        d6b d6bVar = zzdnVar.a;
        if (d6bVar == null) {
            d6bVar = new d6b(zzdnVar);
        }
        jibVarA.g(this, d6bVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn
    public final /* synthetic */ zzfm zzac() {
        return (zzeh) j(6, null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn
    public final boolean zzad() {
        return h(this, true);
    }
}
