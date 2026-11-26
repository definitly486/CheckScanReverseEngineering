package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzet;
import com.google.android.gms.internal.auth.zzev;
import defpackage.h2;
import defpackage.i29;
import defpackage.mg;
import defpackage.pnb;
import defpackage.qib;
import defpackage.ud;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzev<MessageType extends zzev<MessageType, BuilderType>, BuilderType extends zzet<MessageType, BuilderType>> extends zzdq<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzha zzc = zzha.zza();

    public static zzev a(Class cls) {
        Map map = zzb;
        zzev zzevVar = (zzev) map.get(cls);
        if (zzevVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzevVar = (zzev) map.get(cls);
            } catch (ClassNotFoundException e) {
                h2.e("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzevVar != null) {
            return zzevVar;
        }
        try {
            zzev zzevVar2 = (zzev) ((zzev) pnb.a.allocateInstance(cls)).h(6);
            if (zzevVar2 != null) {
                map.put(cls, zzevVar2);
                return zzevVar2;
            }
            ud.g();
            return null;
        } catch (InstantiationException e2) {
            i29.a(e2);
            return null;
        }
    }

    public static Object c(Method method, zzev zzevVar, Object... objArr) {
        try {
            return method.invoke(zzevVar, objArr);
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

    public static void e(zzhs zzhsVar) {
        zzhsVar.d();
        zzb.put(zzhs.class, zzhsVar);
    }

    public final zzev b() {
        return (zzev) h(4);
    }

    public final void d() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return qib.c.a(getClass()).b(this, (zzev) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean g() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public abstract Object h(int i);

    public final int hashCode() {
        if (g()) {
            return qib.c.a(getClass()).a(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iA = qib.c.a(getClass()).a(this);
        this.zza = iA;
        return iA;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = b.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        b.c(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.auth.zzfy
    public final /* synthetic */ zzfx zze() {
        return (zzev) h(6);
    }
}
