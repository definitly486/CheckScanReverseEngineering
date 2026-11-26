package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzadp;
import com.google.android.gms.internal.measurement.zzadu;
import defpackage.bra;
import defpackage.eta;
import defpackage.gqa;
import defpackage.h2;
import defpackage.i29;
import defpackage.ksa;
import defpackage.mg;
import defpackage.nsa;
import defpackage.r01;
import defpackage.ud;
import defpackage.xg;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzadu<MessageType extends zzadu<MessageType, BuilderType>, BuilderType extends zzadp<MessageType, BuilderType>> extends zzacb<MessageType, BuilderType> {
    public static final /* synthetic */ int zzd = 0;
    private static final Map zze = new ConcurrentHashMap();
    private int zzb = -1;
    protected zzaga zzc = zzaga.zza();

    public static zzadu b(zzadu zzaduVar, byte[] bArr, zzadf zzadfVar) throws zzaeh {
        int length = bArr.length;
        if (length != 0) {
            zzadu zzaduVarE = zzaduVar.e();
            try {
                nsa nsaVarA = ksa.c.a(zzaduVarE.getClass());
                nsaVarA.c(zzaduVarE, bArr, 0, length, new gqa(zzadfVar));
                nsaVarA.a(zzaduVarE);
                zzaduVar = zzaduVarE;
            } catch (zzaeh e) {
                if (e.b) {
                    throw new zzaeh(e);
                }
                throw e;
            } catch (zzafy e2) {
                throw e2.zza();
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzaeh) {
                    throw ((zzaeh) e3.getCause());
                }
                throw new zzaeh(e3);
            } catch (IndexOutOfBoundsException unused) {
                xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return null;
            }
        }
        l(zzaduVar);
        return zzaduVar;
    }

    public static zzadu h(Class cls) {
        Map map = zze;
        zzadu zzaduVar = (zzadu) map.get(cls);
        if (zzaduVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzaduVar = (zzadu) map.get(cls);
            } catch (ClassNotFoundException e) {
                h2.e("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzaduVar != null) {
            return zzaduVar;
        }
        try {
            zzadu zzaduVar2 = (zzadu) ((zzadu) eta.a.allocateInstance(cls)).m(6);
            if (zzaduVar2 != null) {
                map.put(cls, zzaduVar2);
                return zzaduVar2;
            }
            ud.g();
            return null;
        } catch (InstantiationException e2) {
            i29.a(e2);
            return null;
        }
    }

    public static void i(Class cls, zzadu zzaduVar) {
        zzaduVar.d();
        zze.put(cls, zzaduVar);
    }

    public static Object j(Method method, zzadu zzaduVar, Object... objArr) {
        try {
            return method.invoke(zzaduVar, objArr);
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

    public static final boolean k(zzadu zzaduVar, boolean z) {
        byte bByteValue = ((Byte) zzaduVar.m(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zH = ksa.c.a(zzaduVar.getClass()).h(zzaduVar);
        if (z) {
            zzaduVar.m(2);
        }
        return zH;
    }

    public static void l(zzadu zzaduVar) throws zzaeh {
        if (zzaduVar != null && !k(zzaduVar, true)) {
            throw new zzafy(zzaduVar).zza();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzacb
    public final int a(nsa nsaVar) {
        if (c()) {
            int iG = nsaVar.g(this);
            if (iG >= 0) {
                return iG;
            }
            r01.d(String.valueOf(iG).length() + 42, iG, "serialized size must be non-negative, was ");
            return 0;
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iG2 = nsaVar.g(this);
        if (iG2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iG2;
            return iG2;
        }
        r01.d(String.valueOf(iG2).length() + 42, iG2, "serialized size must be non-negative, was ");
        return 0;
    }

    public final boolean c() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final void d() {
        this.zzb &= Integer.MAX_VALUE;
    }

    public final zzadu e() {
        return (zzadu) m(4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return ksa.c.a(getClass()).i(this, (zzadu) obj);
    }

    public final zzadp f() {
        return (zzadp) m(5);
    }

    public final void g() {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final int hashCode() {
        if (c()) {
            return ksa.c.a(getClass()).e(this);
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iE = ksa.c.a(getClass()).e(this);
        this.zza = iE;
        return iE;
    }

    public abstract Object m(int i);

    public final String toString() {
        String string = super.toString();
        char[] cArr = c.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        c.b(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final void zzcH(zzada zzadaVar) {
        nsa nsaVarA = ksa.c.a(getClass());
        bra braVar = zzadaVar.a;
        if (braVar == null) {
            braVar = new bra(zzadaVar);
        }
        nsaVarA.d(this, braVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final /* synthetic */ zzafb zzcI() {
        return (zzadp) m(5);
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final boolean zzcJ() {
        return k(this, true);
    }

    @Override // com.google.android.gms.internal.measurement.zzafd
    public final /* synthetic */ zzafc zzcK() {
        return (zzadu) m(6);
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final zzafj zzcj() {
        return (zzafj) m(7);
    }

    public final zzadp zzco() {
        zzadp zzadpVar = (zzadp) m(5);
        zzadpVar.zzbe(this);
        return zzadpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final int zzcq() {
        if (c()) {
            int iG = ksa.c.a(getClass()).g(this);
            if (iG >= 0) {
                return iG;
            }
            r01.d(String.valueOf(iG).length() + 42, iG, "serialized size must be non-negative, was ");
            return 0;
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iG2 = ksa.c.a(getClass()).g(this);
        if (iG2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iG2;
            return iG2;
        }
        r01.d(String.valueOf(iG2).length() + 42, iG2, "serialized size must be non-negative, was ");
        return 0;
    }
}
