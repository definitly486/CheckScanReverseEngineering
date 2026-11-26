package com.google.android.gms.internal.play_billing;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.mg;
import defpackage.ti0;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends h {
    public static final Unsafe a;
    public static final long b;
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;

    static {
        Unsafe unsafeH;
        try {
            try {
                unsafeH = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                try {
                    unsafeH = (Unsafe) Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class).invoke(null, new PrivilegedExceptionAction() { // from class: com.google.android.gms.internal.play_billing.zzcy
                        @Override // java.security.PrivilegedExceptionAction
                        public final Object run() {
                            return k.h();
                        }
                    });
                } catch (Exception unused2) {
                    unsafeH = h();
                }
            }
            try {
                c = unsafeH.objectFieldOffset(m.class.getDeclaredField("d"));
                b = unsafeH.objectFieldOffset(m.class.getDeclaredField("c"));
                d = unsafeH.objectFieldOffset(m.class.getDeclaredField("b"));
                e = unsafeH.objectFieldOffset(l.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
                f = unsafeH.objectFieldOffset(l.class.getDeclaredField("b"));
                a = unsafeH;
            } catch (NoSuchFieldException e2) {
                ti0.f(e2);
            }
        } catch (Exception e3) {
            mg.e("Could not initialize intrinsics", e3);
        }
    }

    public static /* synthetic */ Unsafe h() throws IllegalAccessException {
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final f a(zzcu zzcuVar, f fVar) {
        f fVar2;
        do {
            fVar2 = zzcuVar.c;
            if (fVar == fVar2) {
                break;
            }
        } while (!e(zzcuVar, fVar2, fVar));
        return fVar2;
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final l b(zzcu zzcuVar) {
        l lVar;
        l lVar2 = l.c;
        do {
            lVar = zzcuVar.d;
            if (lVar2 == lVar) {
                break;
            }
        } while (!g(zzcuVar, lVar, lVar2));
        return lVar;
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final void c(l lVar, l lVar2) {
        a.putObject(lVar, f, lVar2);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final void d(l lVar, Thread thread) {
        a.putObject(lVar, e, thread);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean e(zzcu zzcuVar, f fVar, f fVar2) {
        return zzcx.zza(a, zzcuVar, b, fVar, fVar2);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean f(m mVar, Object obj, Object obj2) {
        return zzcx.zza(a, mVar, d, obj, obj2);
    }

    @Override // com.google.android.gms.internal.play_billing.h
    public final boolean g(m mVar, l lVar, l lVar2) {
        return zzcx.zza(a, mVar, c, lVar, lVar2);
    }
}
