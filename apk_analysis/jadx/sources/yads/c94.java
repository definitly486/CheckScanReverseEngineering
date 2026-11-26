package yads;

import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.PublicKey;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class c94 {
    public final int a;

    public c94(String str, int i) {
        this.a = i;
    }

    public final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, PublicKey publicKey) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr2.length + bArr3.length);
            try {
                byteArrayOutputStream.write(bArr2);
                byteArrayOutputStream.write(bArr3);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(1, publicKey);
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(bArr.length);
                try {
                    byteArrayOutputStream2.write(ByteBuffer.allocate(4).putInt(this.a).array());
                    byteArrayOutputStream2.write(cipher.doFinal(byteArray));
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
                    Cipher cipher2 = Cipher.getInstance(AESEncrypter.DEFAULT_ALGORITHM);
                    cipher2.init(1, secretKeySpec, new IvParameterSpec(bArr3));
                    byteArrayOutputStream2.write(cipher2.doFinal(bArr));
                    byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.close();
                    return byteArray2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.m96.c(byteArrayOutputStream2, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    defpackage.m96.c(byteArrayOutputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }
}
