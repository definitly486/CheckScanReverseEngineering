package defpackage;

import com.google.android.gms.measurement.internal.zzpg;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class uac implements dlb {
    public final /* synthetic */ String a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ zzpg c;

    public uac(zzpg zzpgVar, String str, ArrayList arrayList) {
        this.a = str;
        this.b = arrayList;
        this.c = zzpgVar;
    }

    @Override // defpackage.dlb
    public final void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.c.u(true, i, th, bArr, this.a, this.b, map);
    }
}
