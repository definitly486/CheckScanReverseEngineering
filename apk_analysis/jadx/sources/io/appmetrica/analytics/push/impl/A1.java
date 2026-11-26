package io.appmetrica.analytics.push.impl;

import android.content.Context;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import defpackage.b37;
import defpackage.b57;
import defpackage.jy6;
import defpackage.lx0;
import defpackage.z47;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.io.IOException;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class A1 implements C0 {
    public final OkHttpClient a;

    public A1(Context context) {
        lx0 lx0Var = new lx0(context.getCacheDir());
        OkHttpClient.a aVar = new OkHttpClient.a();
        aVar.k = lx0Var;
        this.a = new OkHttpClient(aVar);
    }

    @Override // io.appmetrica.analytics.push.impl.C0
    public final byte[] a(String str) throws Throwable {
        z47 z47VarExecute;
        b37.a aVar = new b37.a();
        aVar.e(str);
        b37 b37VarA = aVar.a();
        z47 z47Var = null;
        z47Var = null;
        try {
            OkHttpClient okHttpClient = this.a;
            try {
                okHttpClient.getClass();
                z47VarExecute = FirebasePerfOkHttpClient.execute(new jy6(okHttpClient, b37VarA));
                try {
                    try {
                        z47 z47Var2 = z47VarExecute.j;
                        b57 b57Var = z47VarExecute.h;
                        byte[] bArrM = b57Var != null ? b57Var.m() : null;
                        G2.a(z47VarExecute);
                        return bArrM;
                    } catch (IOException e) {
                        e = e;
                        PublicLogger.INSTANCE.error(e, e.getMessage(), new Object[0]);
                        G2.a(z47VarExecute);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    z47Var = z47VarExecute;
                    G2.a(z47Var);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                z47VarExecute = null;
                PublicLogger.INSTANCE.error(e, e.getMessage(), new Object[0]);
                G2.a(z47VarExecute);
                return null;
            } catch (Throwable th2) {
                th = th2;
                G2.a(z47Var);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
