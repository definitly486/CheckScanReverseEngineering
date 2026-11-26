package com.google.firebase.inappmessaging.internal.injection.modules;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.common.io.BaseEncoding;
import com.google.firebase.FirebaseApp;
import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import defpackage.la5;
import defpackage.o8;
import defpackage.pa5;
import defpackage.ul1;
import defpackage.xl1;
import defpackage.y34;
import defpackage.y81;
import defpackage.yl1;
import io.grpc.b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@Module
public class GrpcClientModule {
    private final FirebaseApp firebaseApp;

    public GrpcClientModule(FirebaseApp firebaseApp) {
        this.firebaseApp = firebaseApp;
    }

    public static String getSignature(PackageManager packageManager, String str) {
        Signature[] signatureArr;
        Signature signature;
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length != 0 && (signature = signatureArr[0]) != null) {
                return signatureDigest(signature);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private static String signatureDigest(Signature signature) {
        try {
            return BaseEncoding.c.h().c(MessageDigest.getInstance("SHA1").digest(signature.toByteArray()));
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @Provides
    public la5 providesApiKeyHeaders() {
        la5.a aVar = la5.d;
        BitSet bitSet = la5.d.d;
        la5.b bVar = new la5.b("X-Goog-Api-Key", aVar);
        la5.b bVar2 = new la5.b("X-Android-Package", aVar);
        la5.b bVar3 = new la5.b("X-Android-Cert", aVar);
        la5 la5Var = new la5();
        String packageName = this.firebaseApp.getApplicationContext().getPackageName();
        la5Var.e(bVar, this.firebaseApp.getOptions().getApiKey());
        la5Var.e(bVar2, packageName);
        String signature = getSignature(this.firebaseApp.getApplicationContext().getPackageManager(), packageName);
        if (signature != null) {
            la5Var.e(bVar3, signature);
        }
        return la5Var;
    }

    @Provides
    public y34.a providesInAppMessagingSdkServingStub(y81 y81Var, la5 la5Var) {
        xl1[] xl1VarArr = {new pa5(la5Var)};
        int i = yl1.a;
        List listAsList = Arrays.asList(xl1VarArr);
        o8.l(y81Var, "channel");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            y81Var = new yl1.b(y81Var, (xl1) it.next());
        }
        return new y34.a(y81Var, b.h.d(ul1.c, ul1.c.BLOCKING));
    }
}
