package defpackage;

import android.content.Context;
import android.location.Location;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes5.dex */
public final class ju4 implements hu4 {
    public final jf6 a;
    public final eu4 b;
    public final Context c;
    public final fh8 d = nm4.b(a.f);
    public FusedLocationProviderClient e;

    public static final class a extends gh4 implements ll3<hi0<du4>> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final hi0<du4> invoke() {
            return new hi0<>();
        }
    }

    public static final class b extends gh4 implements nl3<Throwable, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            ju4.this.f(55.7558d, 37.6173d);
            return j59.a;
        }
    }

    public ju4(jf6 jf6Var, eu4 eu4Var, Context context) {
        this.a = jf6Var;
        this.b = eu4Var;
        this.c = context;
    }

    @Override // defpackage.hu4
    public final hi0 a() {
        Context context = this.c;
        if (!aq.a(context)) {
            e();
        } else if (this.e == null) {
            FusedLocationProviderClient fusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(context);
            Task<Location> lastLocation = fusedLocationProviderClient.getLastLocation();
            final mu4 mu4Var = new mu4(this, 0);
            lastLocation.addOnSuccessListener(new OnSuccessListener() { // from class: iu4
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    mu4Var.invoke(obj);
                }
            }).addOnFailureListener(new ci(this));
            this.e = fusedLocationProviderClient;
        }
        Object value = this.d.getValue();
        value.getClass();
        return (hi0) value;
    }

    @Override // defpackage.hu4
    public final hu4.a b() {
        return new hu4.a();
    }

    @Override // defpackage.hu4
    public final double c() {
        return this.a.l();
    }

    @Override // defpackage.hu4
    public final double d() {
        return this.a.c();
    }

    public final void e() {
        mz7<du4> mz7VarA = this.b.a();
        uo0 uo0Var = new uo0(new lu4(this));
        mz7VarA.getClass();
        new wz7(new p08(mz7VarA, uo0Var).i(ne7.c), new zd0(new b(), 1)).g(rm3.d, rm3.e);
    }

    public final void f(double d, double d2) {
        jf6 jf6Var = this.a;
        jf6Var.b0(d);
        jf6Var.q(d2);
        Object value = this.d.getValue();
        value.getClass();
        ((hi0) value).onNext(new du4(d, d2, (String) null, (String) null, (String) null, 28, (jh2) null));
    }
}
