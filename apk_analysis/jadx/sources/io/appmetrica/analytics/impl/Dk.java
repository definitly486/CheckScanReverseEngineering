package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Dk extends Wc {
    public final Fo a;

    public Dk() {
        this(Fa.k().D().b());
    }

    @Override // io.appmetrica.analytics.impl.Wc
    public final void a(int i) {
        Fo fo = this.a;
        synchronized (fo) {
            JSONObject jSONObjectA = fo.a.a();
            if (jSONObjectA.optInt("last_migration_api_level", -1) != i) {
                fo.a.a(jSONObjectA.put("last_migration_api_level", i));
            }
            Ho ho = fo.a;
            Ho.a(ho.a);
            Ho.a(ho.b);
        }
    }

    @Override // io.appmetrica.analytics.impl.Wc
    public final int b() {
        int iOptInt;
        Fo fo = this.a;
        synchronized (fo) {
            iOptInt = fo.a.a().optInt("last_migration_api_level", -1);
        }
        return iOptInt;
    }

    @Override // io.appmetrica.analytics.impl.Wc
    public final SparseArray<Vc> c() {
        SparseArray<Vc> sparseArray = new SparseArray<>(1);
        sparseArray.put(112, new Ek(this.a));
        sparseArray.put(115, new Fk());
        sparseArray.put(116, new Ik());
        return sparseArray;
    }

    public Dk(Fo fo) {
        this.a = fo;
    }
}
