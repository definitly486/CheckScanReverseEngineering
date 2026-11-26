package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1353w9 {
    public final C1024jf a;
    public final Go b;
    public final C1030jl c;
    public final Y6 d;
    public final T8 e;
    public final C0798al f;
    public final C1087m0 g;
    public final C1040k5 h;
    public final TimeProvider i;
    public final int j;
    public long k;
    public int l;

    public C1353w9(C1024jf c1024jf, Go go, C1030jl c1030jl, Y6 y6, C1087m0 c1087m0, T8 t8, C0798al c0798al, int i, C1040k5 c1040k5, SystemTimeProvider systemTimeProvider) {
        this.a = c1024jf;
        this.b = go;
        this.c = c1030jl;
        this.d = y6;
        this.g = c1087m0;
        this.e = t8;
        this.f = c0798al;
        this.j = i;
        this.i = systemTimeProvider;
        this.h = c1040k5;
        this.k = c1024jf.i();
        this.l = c1024jf.h();
    }

    public final void a(C0783a6 c0783a6, C1108ml c1108ml) {
        long jOptLong;
        Map map = c0783a6.p;
        C0798al c0798al = this.f;
        c0798al.getClass();
        map.putAll(new HashMap(c0798al.b));
        c0783a6.c(this.a.j());
        c0783a6.o = Integer.valueOf(this.b.b());
        C1061l0 c1061l0A = this.g.a();
        T8 t8 = this.e;
        t8.getClass();
        S8 s8 = (S8) t8.b.a(EnumC1176pb.a(c0783a6.d));
        Y6 y6 = this.d;
        K8 k8A = s8.a(c0783a6);
        int i = c0783a6.d;
        Go go = this.b;
        C1301u7 c1301u7 = new C1301u7(y6.d, c1108ml, i, go, k8A, (C1233rh) y6.e.k.a(), c1061l0A);
        Long lValueOf = Long.valueOf(c1108ml.a);
        EnumC1160ol enumC1160ol = c1108ml.d;
        Long lValueOf2 = Long.valueOf(c1108ml.b);
        EnumC1176pb enumC1176pbA = EnumC1176pb.a(c1301u7.h.d);
        long j = 0;
        if (!I9.g.contains(EnumC1176pb.a(i))) {
            synchronized (go) {
                JSONObject jSONObjectA = go.a.a();
                jOptLong = jSONObjectA.optLong("global_number", 0L);
                go.a.a(jSONObjectA.put("global_number", jOptLong + 1));
            }
            j = jOptLong;
        }
        ContentValues contentValuesFromModel = y6.i.fromModel(new C1223r7(lValueOf, enumC1160ol, lValueOf2, enumC1176pbA, Long.valueOf(j), Long.valueOf(c1108ml.c), c1301u7.a()));
        Integer asInteger = contentValuesFromModel.getAsInteger(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        asInteger.intValue();
        y6.j.b.submit(contentValuesFromModel, AbstractC1137no.a.contains(asInteger));
        this.h.a.h();
    }
}
