package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzgl;
import com.google.android.gms.internal.play_billing.zzgp;
import defpackage.ah;
import defpackage.bhb;
import defpackage.ceb;
import defpackage.h2;
import defpackage.i29;
import defpackage.jh;
import defpackage.kpb;
import defpackage.kqb;
import defpackage.mg;
import defpackage.ud;
import defpackage.wtb;
import defpackage.ydb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzgp<MessageType extends zzgp<MessageType, BuilderType>, BuilderType extends zzgl<MessageType, BuilderType>> extends zzfa<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzir zzc = zzir.zzc();

    public static void c(Class cls, zzgp zzgpVar) {
        zzgpVar.b();
        zzb.put(cls, zzgpVar);
    }

    public static final boolean f(zzgp zzgpVar, boolean z) {
        byte bByteValue = ((Byte) zzgpVar.g(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zA = kpb.b.a(zzgpVar.getClass()).a(zzgpVar);
        if (z) {
            zzgpVar.g(2);
        }
        return zA;
    }

    public static zzgp i(Class cls) {
        Map map = zzb;
        zzgp zzgpVar = (zzgp) map.get(cls);
        if (zzgpVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgpVar = (zzgp) map.get(cls);
            } catch (ClassNotFoundException e) {
                h2.e("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzgpVar != null) {
            return zzgpVar;
        }
        try {
            zzgp zzgpVar2 = (zzgp) ((zzgp) wtb.a.allocateInstance(cls)).g(6);
            if (zzgpVar2 != null) {
                map.put(cls, zzgpVar2);
                return zzgpVar2;
            }
            ud.g();
            return null;
        } catch (InstantiationException e2) {
            i29.a(e2);
            return null;
        }
    }

    public static zzgp j(zzgp zzgpVar, byte[] bArr) throws zzhb {
        int length = bArr.length;
        zzgc zzgcVar = zzgc.b;
        int i = ydb.a;
        zzgc zzgcVar2 = zzgc.b;
        if (length != 0) {
            zzgp zzgpVar2 = (zzgp) zzgpVar.g(4);
            try {
                kqb kqbVarA = kpb.b.a(zzgpVar2.getClass());
                kqbVarA.d(zzgpVar2, bArr, 0, length, new ceb(zzgcVar2));
                kqbVarA.b(zzgpVar2);
                zzgpVar = zzgpVar2;
            } catch (zzhb e) {
                throw e;
            } catch (zzip e2) {
                throw e2.zza();
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzhb) {
                    throw ((zzhb) e3.getCause());
                }
                throw new zzhb(e3);
            } catch (IndexOutOfBoundsException unused) {
                ah.g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return null;
            }
        }
        if (zzgpVar == null || f(zzgpVar, true)) {
            return zzgpVar;
        }
        throw new zzip(zzgpVar).zza();
    }

    public static Object k(Method method, zzgp zzgpVar, Object... objArr) {
        try {
            return method.invoke(zzgpVar, objArr);
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

    @Override // com.google.android.gms.internal.play_billing.zzfa
    public final int a(kqb kqbVar) {
        if (e()) {
            int iE = kqbVar.e(this);
            if (iE >= 0) {
                return iE;
            }
            ah.f(jh.b(iE, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iE2 = kqbVar.e(this);
        if (iE2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iE2;
            return iE2;
        }
        ah.f(jh.b(iE2, "serialized size must be non-negative, was "));
        return 0;
    }

    public final void b() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final void d() {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean e() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return kpb.b.a(getClass()).g(this, (zzgp) obj);
    }

    public abstract Object g(int i);

    public final zzgl h() {
        return (zzgl) g(5);
    }

    public final int hashCode() {
        if (e()) {
            return kpb.b.a(getClass()).f(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iF = kpb.b.a(getClass()).f(this);
        this.zza = iF;
        return iF;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = o.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        o.c(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.zzhr
    public final void zzD(zzfx zzfxVar) {
        kqb kqbVarA = kpb.b.a(getClass());
        bhb bhbVar = zzfxVar.a;
        if (bhbVar == null) {
            bhbVar = new bhb(zzfxVar);
        }
        kqbVarA.h(this, bhbVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhs
    public final /* synthetic */ zzhr zzl() {
        return (zzgp) g(6);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhr
    public final int zzn() {
        if (e()) {
            int iE = kpb.b.a(getClass()).e(this);
            if (iE >= 0) {
                return iE;
            }
            ah.f(jh.b(iE, "serialized size must be non-negative, was "));
            return 0;
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iE2 = kpb.b.a(getClass()).e(this);
        if (iE2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iE2;
            return iE2;
        }
        ah.f(jh.b(iE2, "serialized size must be non-negative, was "));
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhs
    public final boolean zzo() {
        return f(this, true);
    }

    public final zzgl zzq() {
        zzgl zzglVar = (zzgl) g(5);
        zzglVar.zzh(this);
        return zzglVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhr
    public final /* synthetic */ zzhq zzw() {
        return (zzgl) g(5);
    }
}
