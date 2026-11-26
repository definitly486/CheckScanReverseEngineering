package defpackage;

import androidx.tracing.Trace;
import com.bumptech.glide.Registry;
import com.bumptech.glide.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class q17 implements br3<Registry> {
    public boolean b;
    public final /* synthetic */ a c;
    public final /* synthetic */ ArrayList d;

    public q17(a aVar, ArrayList arrayList, kp kpVar) {
        this.c = aVar;
        this.d = arrayList;
    }

    @Override // defpackage.br3
    public final Registry get() {
        if (this.b) {
            ah.f("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
            return null;
        }
        Trace.beginSection("Glide registry");
        this.b = true;
        try {
            return r17.a(this.c, this.d);
        } finally {
            this.b = false;
            Trace.endSection();
        }
    }
}
