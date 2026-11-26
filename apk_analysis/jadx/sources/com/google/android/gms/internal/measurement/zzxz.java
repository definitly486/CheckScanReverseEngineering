package com.google.android.gms.internal.measurement;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ah;
import defpackage.bic;
import defpackage.eic;
import defpackage.gic;
import defpackage.hic;
import defpackage.jic;
import defpackage.lhc;
import defpackage.mhc;
import defpackage.nhc;
import defpackage.ohc;
import defpackage.shc;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzxz implements zzyi, zzzd {
    public static final String h = new String();
    public final Level a;
    public final long b;
    public shc c;
    public zzyc d;
    public zzyq e;
    public zzaaf f;
    public Object[] g;

    public zzxz(Level level) {
        long jZzk = zzaad.zzk();
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        zzabr.zza(level, FirebaseAnalytics.Param.LEVEL);
        this.a = level;
        this.b = jZzk;
    }

    public abstract zzabp a();

    /* JADX WARN: Code duplicated, block: B:24:0x0069  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.internal.measurement.zzxz] */
    /* JADX WARN: Type inference failed for: r12v10, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.google.android.gms.internal.measurement.zzyq] */
    /* JADX WARN: Type inference failed for: r12v9, types: [com.google.android.gms.internal.measurement.l] */
    public boolean b(zzyd zzydVar) {
        int iB;
        int i;
        ?? eicVar;
        j jVar;
        zzyq zzyqVar;
        zzyq zzyqVar2;
        zzyq zzyqVar3;
        ?? r12;
        zzyq zzyqVar4;
        zzyq zzyqVar5;
        shc shcVar = this.c;
        if (shcVar != null) {
            if (zzydVar != null) {
                mhc mhcVar = k.b;
                if (((nhc) shcVar.zzd(zzxx.zzd)) == null) {
                    eicVar = 0;
                } else {
                    k kVar = (k) k.b.zzb(zzydVar, shcVar);
                    long j = this.b;
                    zzabr.zzb(j >= 0, "timestamp cannot be negative");
                    AtomicLong atomicLong = kVar.a;
                    long j2 = atomicLong.get();
                    if (j2 >= 0) {
                        throw null;
                    }
                    atomicLong.compareAndSet(j2, -j);
                    eicVar = kVar;
                }
                shc shcVar2 = this.c;
                lhc lhcVar = j.b;
                Integer num = (Integer) shcVar2.zzd(zzxx.zzb);
                if (num == null) {
                    zzyqVar = null;
                } else {
                    jVar = (j) j.b.zzb(zzydVar, shcVar2);
                    if (jVar.a.incrementAndGet() < num.intValue()) {
                        zzyqVar = jVar;
                        zzyqVar = zzyq.zzc;
                    }
                }
                if (eicVar == 0) {
                    eicVar = zzyqVar;
                } else if (zzyqVar != null && eicVar != (zzyqVar2 = zzyq.zzc) && zzyqVar != (zzyqVar3 = zzyq.zzd)) {
                    if (zzyqVar == zzyqVar2 || eicVar == zzyqVar3) {
                        eicVar = zzyqVar;
                    } else {
                        eicVar = new eic(eicVar, zzyqVar);
                    }
                }
                shc shcVar3 = this.c;
                hic hicVar = l.b;
                Integer num2 = (Integer) shcVar3.zzd(zzxx.zzc);
                if (num2 == null || num2.intValue() <= 0) {
                    r12 = 0;
                } else {
                    r12 = (l) l.b.zzb(zzydVar, shcVar3);
                    if ((((Random) l.c.get()).nextInt(num2.intValue()) == 0 ? r12.a.incrementAndGet() : r12.a.get()) <= 0) {
                        r12 = zzyq.zzc;
                    }
                }
                if (eicVar == 0) {
                    eicVar = r12;
                } else if (r12 != 0 && eicVar != (zzyqVar4 = zzyq.zzc) && r12 != (zzyqVar5 = zzyq.zzd)) {
                    if (r12 == zzyqVar4 || eicVar == zzyqVar5) {
                        eicVar = r12;
                    } else {
                        eicVar = new eic(eicVar, r12);
                    }
                }
                this.e = eicVar;
                if (eicVar == zzyq.zzc) {
                    return false;
                }
            }
            shc shcVar4 = this.c;
            zzyl zzylVar = zzxx.zzi;
            zzyv zzyvVar = (zzyv) shcVar4.zzd(zzylVar);
            if (zzyvVar != null) {
                shc shcVar5 = this.c;
                if (shcVar5 != null && (iB = shcVar5.b(zzylVar)) >= 0) {
                    int i2 = iB + iB;
                    int i3 = i2 + 2;
                    while (true) {
                        i = shcVar5.b;
                        if (i3 >= i + i) {
                            break;
                        }
                        Object obj = shcVar5.a[i3];
                        if (!obj.equals(zzylVar)) {
                            Object[] objArr = shcVar5.a;
                            objArr[i2] = obj;
                            objArr[i2 + 1] = objArr[i3 + 1];
                            i2 += 2;
                        }
                        i3 += 2;
                    }
                    shcVar5.b = i - ((i3 - i2) >> 1);
                    while (i2 < i3) {
                        shcVar5.a[i2] = null;
                        i2++;
                    }
                }
                zzzj zzzjVarZzl = zzl();
                zzyl zzylVar2 = zzxx.zza;
                Throwable th = (Throwable) zzzjVarZzl.zzd(zzylVar2);
                StackTraceElement[] stackTraceElementArrZzb = zzabq.zzb(zzxz.class, zzyvVar.zza(), 1);
                zzyg zzygVar = new zzyg(zzyvVar.toString(), th);
                zzygVar.setStackTrace(stackTraceElementArrZzb);
                e(zzylVar2, zzygVar);
            }
        }
        return true;
    }

    public abstract zzxs c();

    public abstract ohc d();

    public final void e(zzyl zzylVar, Object obj) {
        shc shcVar = this.c;
        if (shcVar == null) {
            shcVar = new shc();
            shcVar.a = new Object[8];
            shcVar.b = 0;
            this.c = shcVar;
        }
        shcVar.a(zzylVar, obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final Level zze() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final long zzf() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final zzyc zzg() {
        zzyc zzycVar = this.d;
        if (zzycVar != null) {
            return zzycVar;
        }
        ah.f("cannot request log site information prior to postProcess()");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final zzaaf zzh() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final Object[] zzi() {
        zzabr.zzc(this.f != null, "cannot get arguments unless a template context exists");
        Object[] objArr = this.g;
        if (objArr != null) {
            return objArr;
        }
        ah.f("cannot get arguments before calling log()");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final Object zzj() {
        zzabr.zzc(this.f == null, "cannot get literal argument if a template context exists");
        Object[] objArr = this.g;
        if (objArr != null) {
            return objArr[0];
        }
        ah.f("cannot get literal argument before calling log()");
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final boolean zzk() {
        shc shcVar = this.c;
        return shcVar != null && Boolean.TRUE.equals(shcVar.zzd(zzxx.zzg));
    }

    @Override // com.google.android.gms.internal.measurement.zzzd
    public final zzzj zzl() {
        shc shcVar = this.c;
        return shcVar != null ? shcVar : zzzj.zzg();
    }

    @Override // com.google.android.gms.internal.measurement.zzyi
    public final zzyi zzn(String str, String str2, int i, String str3) {
        zzyc zzycVar = zzyc.zza;
        bic bicVar = new bic();
        if (this.d == null) {
            this.d = bicVar;
        }
        return d();
    }

    @Override // com.google.android.gms.internal.measurement.zzyi
    public final zzyi zzo(Throwable th) {
        zzyl zzylVar = zzxx.zza;
        zzabr.zza(zzylVar, "metadata key");
        if (th != null) {
            e(zzylVar, th);
        }
        return d();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zzyi
    public final void zzp(String str, Object[] objArr) {
        shc shcVar;
        zzyd zzydVar = this.d;
        zzyd jicVar = zzydVar;
        if (zzydVar == null) {
            zzyc zzycVarZzb = zzaad.zzb().zzb(zzxz.class, 1);
            this.d = zzycVarZzb;
            jicVar = zzycVarZzb;
        }
        if (jicVar != zzyc.zza) {
            shc shcVar2 = this.c;
            if (shcVar2 != null && shcVar2.b > 0) {
                zzabr.zza(jicVar, "logSiteKey");
                int i = shcVar2.b;
                int i2 = 0;
                while (i2 < i) {
                    if (zzxx.zzf.equals(shcVar2.zzb(i2))) {
                        Object objZzc = shcVar2.zzc(i2);
                        if (objZzc instanceof zzyj) {
                            jicVar = jicVar;
                            jicVar = ((zzyj) objZzc).b();
                        } else {
                            jicVar = jicVar;
                            jicVar = new jic(jicVar, objZzc);
                        }
                    } else {
                        jicVar = jicVar;
                    }
                    i2++;
                    jicVar = jicVar;
                }
                jicVar = jicVar;
            }
        } else {
            jicVar = null;
        }
        boolean zB = b(jicVar);
        zzyq zzyqVar = this.e;
        if (zzyqVar != null) {
            gic gicVar = (gic) gic.c.zzb(jicVar, this.c);
            AtomicInteger atomicInteger = gicVar.b;
            AtomicBoolean atomicBoolean = gicVar.a;
            int iIncrementAndGet = atomicInteger.incrementAndGet();
            int i3 = -1;
            if (zzyqVar != zzyq.zzc && atomicBoolean.compareAndSet(false, true)) {
                try {
                    zzyqVar.a();
                    atomicBoolean.set(false);
                    gicVar.b.addAndGet(-iIncrementAndGet);
                    i3 = (-1) + iIncrementAndGet;
                } catch (Throwable th) {
                    atomicBoolean.set(false);
                    throw th;
                }
            }
            if (zB && i3 > 0 && (shcVar = this.c) != null) {
                shcVar.a(zzxx.zze, Integer.valueOf(i3));
            }
            zB &= i3 >= 0;
        }
        if (zB) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            this.g = objArrCopyOf;
            for (int i4 = 0; i4 < objArrCopyOf.length; i4++) {
                Object obj = objArrCopyOf[i4];
                if (obj instanceof zzxu) {
                    objArrCopyOf[i4] = ((zzxu) obj).zza();
                }
            }
            if (str != h) {
                this.f = new zzaaf(a(), str);
            }
            zzabe zzabeVarZzi = zzaad.zzi();
            if (!zzabeVarZzi.zzc()) {
                zzzj zzzjVarZzl = zzl();
                zzyl zzylVar = zzxx.zzh;
                zzabe zzabeVar = (zzabe) zzzjVarZzl.zzd(zzylVar);
                if (zzabeVar != null) {
                    zzabeVarZzi = zzabeVarZzi.zzd(zzabeVar);
                }
                e(zzylVar, zzabeVarZzi);
            }
            zzzf zzzfVar = c().a;
            try {
                zzabt zzabtVarZzc = zzabt.zzc();
                try {
                    if (zzabtVarZzc.zzb() <= 100) {
                        zzzfVar.zzc(this);
                    } else {
                        zzxi.a("unbounded recursion in log statement", this);
                    }
                    zzabtVarZzc.close();
                } catch (Throwable th2) {
                    if (zzabtVarZzc != null) {
                        try {
                            zzabtVarZzc.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (RuntimeException e) {
                try {
                    zzzfVar.zzd(e, this);
                } catch (zzzg e2) {
                    throw e2;
                } catch (RuntimeException e3) {
                    String name = e3.getClass().getName();
                    String message = e3.getMessage();
                    StringBuilder sb = new StringBuilder(name.length() + 2 + String.valueOf(message).length());
                    sb.append(name);
                    sb.append(": ");
                    sb.append(message);
                    zzxi.a(sb.toString(), this);
                    try {
                        e3.printStackTrace(System.err);
                    } catch (RuntimeException unused) {
                    }
                }
            }
        }
    }
}
