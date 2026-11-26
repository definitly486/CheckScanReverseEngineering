package defpackage;

import com.google.android.gms.internal.mlkit_common.zzay;
import com.google.firebase.encoders.FieldDescriptor;
import java.util.List;
import yads.bt2;
import yads.d0;
import yads.e92;
import yads.g0;
import yads.gl1;
import yads.l66;
import yads.st3;
import yads.th1;
import yads.ws2;
import yads.yt1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rz0 implements bt2, l66, st3 {
    public final /* synthetic */ int b;

    public static String c(int i, int i2, String str, String str2) {
        return str + i + str2 + i2;
    }

    public static StringBuilder d(bm3 bm3Var, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4) {
        charSequence.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        bm3Var.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence4);
        return sb;
    }

    public static void e(int i, FieldDescriptor.Builder builder) {
        zzay zzayVar = new zzay();
        zzayVar.zza(i);
        builder.withProperty(zzayVar.zzb()).build();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 5:
                return e92.a(((Long) obj).longValue());
            case 6:
            default:
                return th1.a(((Long) obj).longValue());
            case 7:
                return gl1.a(((Double) obj).doubleValue());
        }
    }

    @Override // yads.bt2
    public ws2[] b() {
        switch (this.b) {
            case 4:
                return d0.a();
            default:
                return g0.a();
        }
    }

    @Override // yads.st3
    public boolean a(List list) {
        return yt1.a(list);
    }
}
