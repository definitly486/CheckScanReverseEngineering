package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class eeb implements sl {
    public static final m00 b = new m00(6);
    public final Object a;

    public eeb() {
        lgb lgbVar = lgb.c;
        aeb aebVar = new aeb(b9b.b, b);
        Charset charset = zzep.a;
        this.a = aebVar;
    }

    @Override // defpackage.sl
    public ld0 a() {
        ArrayList arrayList = (ArrayList) this.a;
        return ((vf4) arrayList.get(0)).c() ? new w96(arrayList) : new n46(arrayList);
    }

    @Override // defpackage.sl
    public List b() {
        return (ArrayList) this.a;
    }

    @Override // defpackage.sl
    public boolean c() {
        ArrayList arrayList = (ArrayList) this.a;
        return arrayList.size() == 1 && ((vf4) arrayList.get(0)).c();
    }

    public eeb(ArrayList arrayList) {
        this.a = arrayList;
    }
}
