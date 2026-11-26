package defpackage;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class uw1 {
    public final List<tw1> a;
    public int b;
    public boolean c;
    public boolean d;

    public uw1(List<tw1> list) {
        this.a = list;
    }

    public final tw1 a(SSLSocket sSLSocket) throws UnknownServiceException {
        tw1 tw1Var;
        int i;
        boolean z;
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        int i2 = this.b;
        List<tw1> list = this.a;
        int size = list.size();
        while (true) {
            if (i2 >= size) {
                tw1Var = null;
                break;
            }
            tw1Var = list.get(i2);
            if (tw1Var.b(sSLSocket)) {
                this.b = i2 + 1;
                break;
            }
            i2++;
        }
        if (tw1Var == null) {
            StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
            sb.append(this.d);
            sb.append(", modes=");
            sb.append(list);
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            enabledProtocols2.getClass();
            String string = Arrays.toString(enabledProtocols2);
            string.getClass();
            sb.append(", supported protocols=");
            sb.append(string);
            throw new UnknownServiceException(sb.toString());
        }
        int i3 = this.b;
        int size2 = list.size();
        while (true) {
            i = 0;
            if (i3 >= size2) {
                z = false;
                break;
            }
            if (list.get(i3).b(sSLSocket)) {
                z = true;
                break;
            }
            i3++;
        }
        this.c = z;
        boolean z2 = this.d;
        String[] strArr = tw1Var.d;
        String[] strArr2 = tw1Var.c;
        if (strArr2 != null) {
            String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
            enabledCipherSuites2.getClass();
            enabledCipherSuites = gb9.o(enabledCipherSuites2, strArr2, yj1.c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (strArr != null) {
            String[] enabledProtocols3 = sSLSocket.getEnabledProtocols();
            enabledProtocols3.getClass();
            enabledProtocols = gb9.o(enabledProtocols3, strArr, gi5.b);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        supportedCipherSuites.getClass();
        yj1.a aVar = yj1.c;
        byte[] bArr = gb9.a;
        int length = supportedCipherSuites.length;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (aVar.compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            i++;
        }
        if (z2 && i != -1) {
            enabledCipherSuites.getClass();
            String str = supportedCipherSuites[i];
            str.getClass();
            enabledCipherSuites = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        tw1.a aVar2 = new tw1.a();
        aVar2.a = tw1Var.a;
        aVar2.b = strArr2;
        aVar2.c = strArr;
        aVar2.d = tw1Var.b;
        enabledCipherSuites.getClass();
        aVar2.c((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
        enabledProtocols.getClass();
        aVar2.e((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
        tw1 tw1VarA = aVar2.a();
        if (tw1VarA.c() != null) {
            sSLSocket.setEnabledProtocols(tw1VarA.d);
        }
        if (tw1VarA.a() != null) {
            sSLSocket.setEnabledCipherSuites(tw1VarA.c);
        }
        return tw1Var;
    }
}
