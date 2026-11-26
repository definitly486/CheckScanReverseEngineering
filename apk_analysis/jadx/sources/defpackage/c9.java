package defpackage;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzbk;
import com.google.android.gms.internal.measurement.zzh;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c9 implements mq5 {
    public static Object b(zzbk zzbkVar, int i, List list, int i2) {
        zzh.zza(zzbkVar.name(), i, list);
        return list.get(i2);
    }

    public static String d(int i, String str, String str2, String str3, String str4) {
        return str + i + str2 + str3 + str4;
    }

    public static String e(int i, StringBuilder sb) {
        sb.append(Integer.toHexString(i));
        return sb.toString();
    }

    public static /* synthetic */ void f(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void g(Object obj, String str, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void i(String str, Object obj, Throwable th) throws IOException {
        throw new IOException(str + obj, th);
    }

    public static boolean j(Bundle bundle, String str, Class cls) {
        bundle.getClass();
        bundle.setClassLoader(cls.getClassLoader());
        return bundle.containsKey(str);
    }

    @Override // defpackage.mq5
    public Object c() {
        return new ArrayDeque();
    }
}
