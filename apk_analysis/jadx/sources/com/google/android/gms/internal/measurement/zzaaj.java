package com.google.android.gms.internal.measurement;

import android.os.Build;
import dalvik.system.VMStack;
import defpackage.apa;
import defpackage.bpa;
import defpackage.yoa;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaaj extends zzaad {
    public static final boolean b;
    public static final boolean c;
    public static final a d;

    public class a extends zzaac {
        @Override // com.google.android.gms.internal.measurement.zzaac
        public final String zza(Class<? extends zzxi<?>> cls) {
            StackTraceElement stackTraceElementZza;
            if (zzaaj.b) {
                try {
                    if (cls.equals(zzaaj.e())) {
                        return VMStack.getStackClass2().getName();
                    }
                } catch (Throwable unused) {
                }
            }
            if (!zzaaj.c || (stackTraceElementZza = zzabq.zza(cls, 1)) == null) {
                return null;
            }
            return stackTraceElementZza.getClassName();
        }

        @Override // com.google.android.gms.internal.measurement.zzaac
        public final zzyc zzb(Class<?> cls, int i) {
            return zzyc.zza;
        }
    }

    static {
        boolean zEquals;
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", null);
            zEquals = com.google.android.gms.internal.measurement.a.class.getName().equals(d());
        } catch (Throwable unused) {
            zEquals = false;
        }
        b = zEquals;
        String str = Build.FINGERPRINT;
        c = str == null || "robolectric".equals(str);
        d = new a();
    }

    public static String d() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class<?> e() {
        return VMStack.getStackClass2();
    }

    @Override // com.google.android.gms.internal.measurement.zzaad
    public final a a() {
        return d;
    }

    @Override // com.google.android.gms.internal.measurement.zzaad
    public final zzzf b(String str) {
        char cCharAt;
        AtomicReference atomicReference = apa.f;
        if (atomicReference.get() != null) {
            return ((zzaai) atomicReference.get()).zza(str);
        }
        int length = str.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
            cCharAt = str.charAt(length);
            if (cCharAt == '$') {
                str = str.replace('$', '.');
                break;
            }
        } while (cCharAt != '.');
        apa apaVar = new apa(str);
        if (apa.c || apa.d) {
            apaVar.b = new zzaah().zza(apaVar.zza());
        } else {
            apaVar.b = apa.e ? zzaas.zze().zzb(false).zza(apaVar.zza()) : null;
        }
        ConcurrentLinkedQueue concurrentLinkedQueue = yoa.a;
        concurrentLinkedQueue.offer(apaVar);
        if (atomicReference.get() != null) {
            while (true) {
                apa apaVar2 = (apa) concurrentLinkedQueue.poll();
                if (apaVar2 == null) {
                    break;
                }
                apaVar2.b = ((zzaai) atomicReference.get()).zza(apaVar2.zza());
            }
            apa.a();
        }
        return apaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaad
    public final zzaat c() {
        return bpa.b;
    }
}
