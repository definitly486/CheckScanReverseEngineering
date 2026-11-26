package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzfa;
import com.google.firebase.encoders.FieldDescriptor;
import java.util.LinkedHashSet;
import java.util.List;
import yads.h32;
import yads.jq1;
import yads.l66;
import yads.qq0;
import yads.st3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bg implements mq5, st3, l66, qq0 {
    public static String d(long j, String str, String str2) {
        return str + j + str2;
    }

    public static String e(String str, List list, StringBuilder sb) {
        sb.append(list);
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder f(int i, int i2, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }

    public static void g(int i, FieldDescriptor.Builder builder) {
        zzfa zzfaVar = new zzfa();
        zzfaVar.zza(i);
        builder.withProperty(zzfaVar.zzb()).build();
    }

    public static /* synthetic */ void h(Object obj, String str, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return jq1.a(((Long) obj).longValue());
    }

    @Override // defpackage.mq5
    public Object c() {
        return new LinkedHashSet();
    }

    @Override // yads.st3
    public boolean a(List list) {
        return h32.b(list);
    }
}
