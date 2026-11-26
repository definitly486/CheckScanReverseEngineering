package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdw;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class vib extends yjb {
    public vib() {
        Map map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    @Override // defpackage.yjb
    public final void a() {
        if (!this.e) {
            for (int i = 0; i < this.c; i++) {
                ((zzdw) d(i).b).zzg();
            }
            Iterator it = b().iterator();
            while (it.hasNext()) {
                ((zzdw) ((Map.Entry) it.next()).getKey()).zzg();
            }
        }
        super.a();
    }
}
