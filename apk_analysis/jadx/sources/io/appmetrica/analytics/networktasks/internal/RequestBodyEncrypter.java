package io.appmetrica.analytics.networktasks.internal;

/* JADX INFO: loaded from: classes5.dex */
public interface RequestBodyEncrypter {
    byte[] encrypt(byte[] bArr);

    RequestBodyEncryptionMode getEncryptionMode();
}
