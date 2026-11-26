package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzae;
import com.google.firebase.encoders.FieldDescriptor;
import org.conscrypt.OpenSSLProvider;
import yads.l62;
import yads.l66;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class w7 implements l66, e5a {
    public static FieldDescriptor d(int i, FieldDescriptor.Builder builder) {
        zzae zzaeVar = new zzae();
        zzaeVar.zza(i);
        return builder.withProperty(zzaeVar.zzb()).build();
    }

    public static StringBuilder e(OpenSSLProvider openSSLProvider, String str, String str2, String str3, String str4) {
        openSSLProvider.put(str, str2);
        openSSLProvider.put(str3, str4);
        return new StringBuilder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void f(int i, String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3 + ((char) i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void g(Object obj, String str, int i) {
        throw new IllegalArgumentException((str + obj + ((char) i)).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return l62.a(((Double) obj).doubleValue());
    }

    @Override // defpackage.e5a
    public void accept(Object obj) {
    }
}
