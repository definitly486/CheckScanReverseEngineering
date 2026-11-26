package org.conscrypt;

import defpackage.fg;
import defpackage.n1;
import defpackage.r01;
import defpackage.rs2;
import defpackage.ti0;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.EncodedKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OpenSslMlDsaKeyFactory extends KeyFactorySpi {
    private final MlDsaAlgorithm defaultAlgorithm;

    public static class MlDsa extends OpenSslMlDsaKeyFactory {
        public MlDsa() {
            super(MlDsaAlgorithm.ML_DSA_65);
        }

        @Override // org.conscrypt.OpenSslMlDsaKeyFactory
        public boolean supportsAlgorithm(MlDsaAlgorithm mlDsaAlgorithm) {
            return mlDsaAlgorithm.equals(MlDsaAlgorithm.ML_DSA_44) || mlDsaAlgorithm.equals(MlDsaAlgorithm.ML_DSA_65) || mlDsaAlgorithm.equals(MlDsaAlgorithm.ML_DSA_87);
        }
    }

    public static class MlDsa44 extends OpenSslMlDsaKeyFactory {
        public MlDsa44() {
            super(MlDsaAlgorithm.ML_DSA_44);
        }

        @Override // org.conscrypt.OpenSslMlDsaKeyFactory
        public boolean supportsAlgorithm(MlDsaAlgorithm mlDsaAlgorithm) {
            return mlDsaAlgorithm.equals(MlDsaAlgorithm.ML_DSA_44);
        }
    }

    public static class MlDsa65 extends OpenSslMlDsaKeyFactory {
        public MlDsa65() {
            super(MlDsaAlgorithm.ML_DSA_65);
        }

        @Override // org.conscrypt.OpenSslMlDsaKeyFactory
        public boolean supportsAlgorithm(MlDsaAlgorithm mlDsaAlgorithm) {
            return mlDsaAlgorithm.equals(MlDsaAlgorithm.ML_DSA_65);
        }
    }

    public static class MlDsa87 extends OpenSslMlDsaKeyFactory {
        public MlDsa87() {
            super(MlDsaAlgorithm.ML_DSA_87);
        }

        @Override // org.conscrypt.OpenSslMlDsaKeyFactory
        public boolean supportsAlgorithm(MlDsaAlgorithm mlDsaAlgorithm) {
            return mlDsaAlgorithm.equals(MlDsaAlgorithm.ML_DSA_87);
        }
    }

    private OpenSslMlDsaKeyFactory(MlDsaAlgorithm mlDsaAlgorithm) {
        this.defaultAlgorithm = mlDsaAlgorithm;
    }

    public static MlDsaAlgorithm getMlDsaAlgorithm(OpenSSLKey openSSLKey) {
        int iEVP_PKEY_type = NativeCrypto.EVP_PKEY_type(openSSLKey.getNativeRef());
        if (iEVP_PKEY_type == 967) {
            return MlDsaAlgorithm.ML_DSA_44;
        }
        if (iEVP_PKEY_type == 968) {
            return MlDsaAlgorithm.ML_DSA_65;
        }
        if (iEVP_PKEY_type == 969) {
            return MlDsaAlgorithm.ML_DSA_87;
        }
        fg.c("Unsupported key type");
        return null;
    }

    public static int getPKeyType(MlDsaAlgorithm mlDsaAlgorithm) {
        if (mlDsaAlgorithm == MlDsaAlgorithm.ML_DSA_44) {
            return 967;
        }
        if (mlDsaAlgorithm == MlDsaAlgorithm.ML_DSA_65) {
            return 968;
        }
        if (mlDsaAlgorithm == MlDsaAlgorithm.ML_DSA_87) {
            return 969;
        }
        r01.e(mlDsaAlgorithm, "Unsupported algorithm: ");
        return 0;
    }

    private OpenSslMlDsaPrivateKey makePrivateKey(OpenSSLKey openSSLKey) throws InvalidKeySpecException {
        MlDsaAlgorithm mlDsaAlgorithm = getMlDsaAlgorithm(openSSLKey);
        if (!supportsAlgorithm(mlDsaAlgorithm)) {
            rs2.e(mlDsaAlgorithm);
            return null;
        }
        try {
            return new OpenSslMlDsaPrivateKey(openSSLKey, mlDsaAlgorithm);
        } catch (IllegalArgumentException e) {
            throw new InvalidKeySpecException("Invalid private key", e);
        }
    }

    private OpenSslMlDsaPrivateKey makePrivateKeyFromSeed(byte[] bArr, MlDsaAlgorithm mlDsaAlgorithm) throws InvalidKeySpecException {
        if (!supportsAlgorithm(mlDsaAlgorithm)) {
            rs2.e(mlDsaAlgorithm);
            return null;
        }
        if (bArr.length != 32) {
            n1.c("Invalid raw private key");
            return null;
        }
        try {
            return new OpenSslMlDsaPrivateKey(bArr, mlDsaAlgorithm);
        } catch (IllegalArgumentException e) {
            throw new InvalidKeySpecException("Invalid raw private key", e);
        }
    }

    private OpenSslMlDsaPublicKey makePublicKey(OpenSSLKey openSSLKey) throws InvalidKeySpecException {
        MlDsaAlgorithm mlDsaAlgorithm = getMlDsaAlgorithm(openSSLKey);
        if (!supportsAlgorithm(mlDsaAlgorithm)) {
            rs2.e(mlDsaAlgorithm);
            return null;
        }
        try {
            return new OpenSslMlDsaPublicKey(openSSLKey, mlDsaAlgorithm);
        } catch (IllegalArgumentException e) {
            throw new InvalidKeySpecException("Invalid public key", e);
        }
    }

    private OpenSslMlDsaPublicKey makePublicKeyFromRaw(byte[] bArr, MlDsaAlgorithm mlDsaAlgorithm) throws InvalidKeySpecException {
        if (!supportsAlgorithm(mlDsaAlgorithm)) {
            rs2.e(mlDsaAlgorithm);
            return null;
        }
        if (bArr.length != mlDsaAlgorithm.publicKeySize()) {
            n1.c("Invalid raw public key");
            return null;
        }
        try {
            return new OpenSslMlDsaPublicKey(bArr, mlDsaAlgorithm);
        } catch (IllegalArgumentException e) {
            throw new InvalidKeySpecException("Invalid raw public key", e);
        }
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec == null) {
            n1.c("keySpec == null");
            return null;
        }
        if (!(keySpec instanceof EncodedKeySpec)) {
            throw new InvalidKeySpecException("Currently only EncodedKeySpec is supported; was ".concat(keySpec.getClass().getName()));
        }
        EncodedKeySpec encodedKeySpec = (EncodedKeySpec) keySpec;
        if (encodedKeySpec.getFormat().equalsIgnoreCase("raw")) {
            return makePrivateKeyFromSeed(encodedKeySpec.getEncoded(), this.defaultAlgorithm);
        }
        if (!encodedKeySpec.getFormat().equals("PKCS#8")) {
            n1.c("Encoding must be in PKCS#8 format");
            return null;
        }
        try {
            return makePrivateKey(new OpenSSLKey(NativeCrypto.EVP_PKEY_from_private_key_info(encodedKeySpec.getEncoded(), new int[]{967, 968, 969})));
        } catch (OpenSSLX509CertificateFactory.ParsingException e) {
            throw new InvalidKeySpecException("Unable to parse key. Only ML-DSA-44, ML-DSA-65 and ML-DSA-87 are currently supported. Please use ML-DSA 'seed format' as specified and recommended in RFC 9881.", e);
        }
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec == null) {
            n1.c("keySpec == null");
            return null;
        }
        if (!(keySpec instanceof EncodedKeySpec)) {
            throw new InvalidKeySpecException("Currently only EncodedKeySpec is supported; was ".concat(keySpec.getClass().getName()));
        }
        EncodedKeySpec encodedKeySpec = (EncodedKeySpec) keySpec;
        if (encodedKeySpec.getFormat().equalsIgnoreCase("raw")) {
            return makePublicKeyFromRaw(encodedKeySpec.getEncoded(), this.defaultAlgorithm);
        }
        if (!encodedKeySpec.getFormat().equals("X.509")) {
            n1.c("Encoding must be in X.509 format");
            return null;
        }
        try {
            return makePublicKey(new OpenSSLKey(NativeCrypto.EVP_PKEY_from_subject_public_key_info(encodedKeySpec.getEncoded(), new int[]{967, 968, 969})));
        } catch (OpenSSLX509CertificateFactory.ParsingException e) {
            throw new InvalidKeySpecException("Unable to parse key. Only ML-DSA-44, ML-DSA-65 and ML-DSA-87 are currently supported.", e);
        }
    }

    @Override // java.security.KeyFactorySpi
    public <T extends KeySpec> T engineGetKeySpec(Key key, Class<T> cls) throws InvalidKeySpecException {
        if (key == null) {
            n1.c("key == null");
            return null;
        }
        if (cls == null) {
            n1.c("keySpec == null");
            return null;
        }
        if (!key.getAlgorithm().equals("ML-DSA")) {
            n1.c("Key must be an ML-DSA key");
            return null;
        }
        if (key instanceof OpenSslMlDsaPublicKey) {
            OpenSslMlDsaPublicKey openSslMlDsaPublicKey = (OpenSslMlDsaPublicKey) key;
            if (!supportsAlgorithm(openSslMlDsaPublicKey.getMlDsaAlgorithm())) {
                n1.c("Key algorithm mismatch");
                return null;
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
            if (EncodedKeySpec.class.isAssignableFrom(cls)) {
                return (T) KeySpecUtil.makeRawKeySpec(openSslMlDsaPublicKey.getRaw(), cls);
            }
        } else if (key instanceof OpenSslMlDsaPrivateKey) {
            OpenSslMlDsaPrivateKey openSslMlDsaPrivateKey = (OpenSslMlDsaPrivateKey) key;
            if (!supportsAlgorithm(openSslMlDsaPrivateKey.getMlDsaAlgorithm())) {
                n1.c("Key algorithm mismatch");
                return null;
            }
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
            if (EncodedKeySpec.class.isAssignableFrom(cls)) {
                return (T) KeySpecUtil.makeRawKeySpec(openSslMlDsaPrivateKey.getSeed(), cls);
            }
        }
        throw new InvalidKeySpecException("Unsupported key type and key spec combination; key=" + key.getClass().getName() + ", keySpec=" + cls.getName());
    }

    @Override // java.security.KeyFactorySpi
    public Key engineTranslateKey(Key key) throws InvalidKeyException {
        if (key instanceof OpenSslMlDsaPublicKey) {
            OpenSslMlDsaPublicKey openSslMlDsaPublicKey = (OpenSslMlDsaPublicKey) key;
            if (supportsAlgorithm(openSslMlDsaPublicKey.getMlDsaAlgorithm())) {
                return openSslMlDsaPublicKey;
            }
            ti0.e("Key algorithm mismatch");
            return null;
        }
        if (key instanceof OpenSslMlDsaPrivateKey) {
            if (supportsAlgorithm(((OpenSslMlDsaPrivateKey) key).getMlDsaAlgorithm())) {
                return key;
            }
            ti0.e("Key algorithm mismatch");
            return null;
        }
        if ((key instanceof PrivateKey) && key.getFormat().equals("PKCS#8")) {
            try {
                return engineGeneratePrivate(new PKCS8EncodedKeySpec(key.getEncoded()));
            } catch (InvalidKeySpecException e) {
                r01.f(e);
                return null;
            }
        }
        if (!(key instanceof PublicKey) || !key.getFormat().equals("X.509")) {
            ti0.e("Unable to translate key into ML-DSA key");
            return null;
        }
        try {
            return engineGeneratePublic(new X509EncodedKeySpec(key.getEncoded()));
        } catch (InvalidKeySpecException e2) {
            r01.f(e2);
            return null;
        }
    }

    public abstract boolean supportsAlgorithm(MlDsaAlgorithm mlDsaAlgorithm);
}
