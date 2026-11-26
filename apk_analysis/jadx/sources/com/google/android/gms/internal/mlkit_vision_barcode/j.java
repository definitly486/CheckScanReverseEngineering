package com.google.android.gms.internal.mlkit_vision_barcode;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.mg;
import defpackage.ti0;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends b {
    public static final Unsafe a;
    public static final long b;
    public static final long c;
    public static final long d;
    public static final long e;
    public static final long f;

    public class a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                c = unsafe.objectFieldOffset(zzdz.class.getDeclaredField("d"));
                b = unsafe.objectFieldOffset(zzdz.class.getDeclaredField("c"));
                d = unsafe.objectFieldOffset(zzdz.class.getDeclaredField("b"));
                e = unsafe.objectFieldOffset(k.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
                f = unsafe.objectFieldOffset(k.class.getDeclaredField("b"));
                a = unsafe;
            } catch (NoSuchFieldException e2) {
                ti0.f(e2);
            }
        } catch (PrivilegedActionException e3) {
            mg.e("Could not initialize intrinsics", e3.getCause());
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final e a(zzdz zzdzVar, e eVar) {
        e eVar2;
        do {
            eVar2 = zzdzVar.c;
            if (eVar == eVar2) {
                break;
            }
        } while (!e(zzdzVar, eVar2, eVar));
        return eVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final k b(zzdz zzdzVar) {
        k kVar;
        k kVar2 = k.c;
        do {
            kVar = zzdzVar.d;
            if (kVar2 == kVar) {
                break;
            }
        } while (!g(zzdzVar, kVar, kVar2));
        return kVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final void c(k kVar, k kVar2) {
        a.putObject(kVar, f, kVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final void d(k kVar, Thread thread) {
        a.putObject(kVar, e, thread);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean e(zzdz zzdzVar, e eVar, e eVar2) {
        return zzec.zza(a, zzdzVar, b, eVar, eVar2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean f(zzdz zzdzVar, Object obj, Object obj2) {
        return zzec.zza(a, zzdzVar, d, obj, obj2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.b
    public final boolean g(zzdz zzdzVar, k kVar, k kVar2) {
        return zzec.zza(a, zzdzVar, c, kVar, kVar2);
    }
}
