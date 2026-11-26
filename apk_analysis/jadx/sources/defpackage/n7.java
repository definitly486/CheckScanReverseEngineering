package defpackage;

import android.graphics.Color;
import android.os.Bundle;
import io.appmetrica.analytics.impl.C1296u2;
import io.appmetrica.analytics.impl.InterfaceC1274t6;
import java.io.EOFException;
import java.util.HashMap;
import yads.ef1;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.p04;
import yads.z71;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class n7 implements l66, jv, InterfaceC1274t6 {
    public final /* synthetic */ int b;

    public static float b(float f, float f2, float f3, float f4) {
        return (f3 - (f * f2)) * f4;
    }

    public static StringBuilder c(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder d(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static /* synthetic */ void e() throws EOFException {
        throw new EOFException();
    }

    public static void f(int i, int i2, int i3, HashMap map, String str) {
        map.put(str, Integer.valueOf(Color.rgb(i, i2, i3)));
    }

    public static /* synthetic */ void g(String str) {
        throw new RuntimeException(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 5:
                return ef1.a(l.longValue());
            default:
                return z71.b(l.longValue());
        }
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return p04.a(bundle);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1274t6
    public boolean a(Throwable th) {
        return C1296u2.a(th);
    }
}
