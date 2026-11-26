package defpackage;

import android.util.Base64;
import com.warefly.checkscan.R;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class en2 {
    public static final List<Integer> b = u96.i(Integer.valueOf(R.raw.dig_gov_trusted_root), Integer.valueOf(R.raw.dig_gov_trusted_sub), Integer.valueOf(R.raw.dig_gov_trusted_sub_2024));
    public final s47 a;

    public en2(s47 s47Var) {
        this.a = s47Var;
    }

    public final TrustManagerFactory a() throws NoSuchAlgorithmException, IOException, CertificateException, KeyStoreException {
        CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
        certificateFactory.getClass();
        List<Integer> list = b;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            byte[] bArrD = ex0.d(this.a.getRaw(((Number) it.next()).intValue()));
            Charset charset = StandardCharsets.ISO_8859_1;
            charset.getClass();
            arrayList.add(new ByteArrayInputStream(Base64.decode(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(na8.i(new String(bArrD, charset)), "\\s+", ""), "\n", ""), "-----BEGIN PUBLIC KEY-----", ""), "-----END PUBLIC KEY-----", ""), "-----BEGIN CERTIFICATE-----", ""), "-----END CERTIFICATE-----", ""), 2)));
        }
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        keyStore.load(null, null);
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            InputStream inputStream = (InputStream) obj;
            try {
                Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(inputStream);
                m96.c(inputStream, null);
                keyStore.setCertificateEntry("ca_" + i, certificateGenerateCertificate);
                i = i2;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(inputStream, th);
                    throw th2;
                }
            }
        }
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStore);
        return trustManagerFactory;
    }
}
