package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public class fk implements m48 {
    public static final ek f = new ek();
    public final Class<? super SSLSocket> a;
    public final Method b;
    public final Method c;
    public final Method d;
    public final Method e;

    public fk(Class<? super SSLSocket> cls) throws NoSuchMethodException {
        this.a = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        declaredMethod.getClass();
        this.b = declaredMethod;
        this.c = cls.getMethod("setHostname", String.class);
        this.d = cls.getMethod("getAlpnSelectedProtocol", null);
        this.e = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // defpackage.m48
    public final boolean a(SSLSocket sSLSocket) {
        return this.a.isInstance(sSLSocket);
    }

    @Override // defpackage.m48
    public final String b(SSLSocket sSLSocket) {
        if (this.a.isInstance(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.d.invoke(sSLSocket, null);
                if (bArr != null) {
                    return new String(bArr, ha1.b);
                }
            } catch (IllegalAccessException e) {
                xg.d(e);
                return null;
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                if (!(cause instanceof NullPointerException) || !aa4.e(((NullPointerException) cause).getMessage(), "ssl == null")) {
                    xg.d(e2);
                    return null;
                }
            }
        }
        return null;
    }

    @Override // defpackage.m48
    public final void c(SSLSocket sSLSocket, String str, List<? extends ts6> list) {
        if (this.a.isInstance(sSLSocket)) {
            try {
                this.b.invoke(sSLSocket, Boolean.TRUE);
                if (str != null) {
                    this.c.invoke(sSLSocket, str);
                }
                Method method = this.e;
                z86 z86Var = z86.a;
                method.invoke(sSLSocket, z86.a.b(list));
            } catch (IllegalAccessException e) {
                xg.d(e);
            } catch (InvocationTargetException e2) {
                xg.d(e2);
            }
        }
    }

    @Override // defpackage.m48
    public final boolean isSupported() {
        boolean z = kj.e;
        return kj.e;
    }
}
