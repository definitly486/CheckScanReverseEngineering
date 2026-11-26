package io.appmetrica.analytics.impl;

import defpackage.ex0;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class Rd implements Function {
    public final Td a;
    public final Qd b;

    public Rd(Td td, Qd qd) {
        this.a = td;
        this.b = qd;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Function
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String apply(File file) {
        byte[] bArrD;
        FileInputStream fileInputStream;
        try {
            String absolutePath = file.getAbsolutePath();
            if (absolutePath != null) {
                try {
                    fileInputStream = new FileInputStream(new File(absolutePath));
                    try {
                        bArrD = ex0.d(fileInputStream);
                        xo.a((Closeable) fileInputStream);
                    } catch (Throwable unused) {
                        xo.a((Closeable) fileInputStream);
                        bArrD = null;
                    }
                } catch (Throwable unused2) {
                    fileInputStream = null;
                }
            } else {
                bArrD = null;
            }
            if (bArrD == null) {
                return null;
            }
            if (bArrD.length == 0) {
                bArrD = null;
            }
            if (bArrD != null) {
                return Base64Utils.compressBase64(MessageNano.toByteArray(this.b.fromModel(new Wd(bArrD, this.a))));
            }
            return null;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
