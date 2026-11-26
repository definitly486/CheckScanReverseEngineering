package io.appmetrica.analytics.impl;

import defpackage.ha1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.rl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1237rl {
    public final InterfaceC1421z2 a;

    public C1237rl(InterfaceC1421z2 interfaceC1421z2) {
        this.a = interfaceC1421z2;
    }

    public final ArrayList a(Iterable iterable) {
        String hexString;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                String strA = this.a.a(str);
                if (strA == null || (hexString = StringUtils.toHexString(MessageDigest.getInstance("SHA-256").digest(strA.getBytes(ha1.b)))) == null) {
                    PublicLogger.Companion.getAnonymousInstance().info("Input " + str + " is not a valid data", new Object[0]);
                    hexString = null;
                }
            } catch (NoSuchAlgorithmException unused) {
            }
            if (hexString != null) {
                arrayList.add(hexString);
            }
        }
        return arrayList;
    }
}
