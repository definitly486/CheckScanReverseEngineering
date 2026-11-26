package defpackage;

import android.app.ApplicationExitInfo;
import android.os.Bundle;
import androidx.media3.extractor.DefaultExtractorsFactory;
import com.google.android.gms.internal.mlkit_common.zzay;
import com.google.firebase.encoders.FieldDescriptor;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.ni1;
import yads.xt4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zg implements DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier, l66, jv {
    public static int b(int i, int i2, String str) {
        return (str.hashCode() + i) * i2;
    }

    public static /* bridge */ /* synthetic */ ApplicationExitInfo c(Object obj) {
        return (ApplicationExitInfo) obj;
    }

    public static FieldDescriptor e(int i, FieldDescriptor.Builder builder) {
        zzay zzayVar = new zzay();
        zzayVar.zza(i);
        return builder.withProperty(zzayVar.zzb()).build();
    }

    public static /* synthetic */ Iterator f() {
        try {
            return Arrays.asList(new vk7(), new k06(), new fx6(), new f86()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }

    public static /* synthetic */ void g(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString().toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return ni1.a(((Double) obj).doubleValue());
    }

    @Override // androidx.media3.extractor.DefaultExtractorsFactory.ExtensionLoader.ConstructorSupplier
    public Constructor getConstructor() {
        return DefaultExtractorsFactory.getFlacExtractorConstructor();
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return xt4.b(bundle);
    }
}
