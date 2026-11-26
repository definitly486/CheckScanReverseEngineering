package defpackage;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzez;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class cbb implements Runnable {
    public final long b;
    public final long c;
    public final boolean d;
    public final /* synthetic */ zzez e;

    public cbb(zzez zzezVar, boolean z) {
        Objects.requireNonNull(zzezVar);
        this.e = zzezVar;
        Clock clock = zzezVar.a;
        this.b = clock.currentTimeMillis();
        this.c = clock.elapsedRealtime();
        this.d = z;
    }

    public abstract void a();

    public void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzez zzezVar = this.e;
        if (zzezVar.f) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e) {
            zzezVar.b(e, false, this.d);
            b();
        }
    }
}
