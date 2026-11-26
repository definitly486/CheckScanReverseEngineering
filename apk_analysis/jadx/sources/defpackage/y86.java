package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public class y86 {
    public static final Logger b;
    public static final String[] c;
    public static final y86 d;
    public final Provider a;

    public static class a extends y86 {
        public final vz5<Socket> e;
        public final vz5<Socket> f;
        public final vz5<Socket> g;
        public final vz5<Socket> h;
        public final e i;

        public a(vz5 vz5Var, vz5 vz5Var2, vz5 vz5Var3, vz5 vz5Var4, Provider provider, e eVar) {
            super(provider);
            this.e = vz5Var;
            this.f = vz5Var2;
            this.g = vz5Var3;
            this.h = vz5Var4;
            this.i = eVar;
        }

        @Override // defpackage.y86
        public final void c(SSLSocket sSLSocket, String str, List<us6> list) {
            if (str != null) {
                this.e.d(sSLSocket, Boolean.TRUE);
                this.f.d(sSLSocket, str);
            }
            Class<?> cls = sSLSocket.getClass();
            vz5<Socket> vz5Var = this.h;
            if (vz5Var.a(cls) != null) {
                vz5Var.e(sSLSocket, y86.b(list));
            }
        }

        @Override // defpackage.y86
        public final String d(SSLSocket sSLSocket) {
            byte[] bArr;
            Class<?> cls = sSLSocket.getClass();
            vz5<Socket> vz5Var = this.g;
            if (vz5Var.a(cls) == null || (bArr = (byte[]) vz5Var.e(sSLSocket, new Object[0])) == null) {
                return null;
            }
            return new String(bArr, fb9.b);
        }

        @Override // defpackage.y86
        public final e e() {
            return this.i;
        }
    }

    public static class b extends y86 {
        public final Method e;
        public final Method f;

        public b(Provider provider, Method method, Method method2) {
            super(provider);
            this.e = method;
            this.f = method2;
        }

        @Override // defpackage.y86
        public final void c(SSLSocket sSLSocket, String str, List<us6> list) {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList arrayList = new ArrayList(list.size());
            for (us6 us6Var : list) {
                if (us6Var != us6.HTTP_1_0) {
                    arrayList.add(us6Var.toString());
                }
            }
            try {
                this.e.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
                sSLSocket.setSSLParameters(sSLParameters);
            } catch (IllegalAccessException e) {
                ti0.f(e);
            } catch (InvocationTargetException e2) {
                ti0.f(e2);
            }
        }

        @Override // defpackage.y86
        public final String d(SSLSocket sSLSocket) {
            try {
                return (String) this.f.invoke(sSLSocket, null);
            } catch (IllegalAccessException e) {
                ti0.f(e);
                return null;
            } catch (InvocationTargetException e2) {
                ti0.f(e2);
                return null;
            }
        }

        @Override // defpackage.y86
        public final e e() {
            return e.ALPN_AND_NPN;
        }
    }

    public static class c extends y86 {
        public final Method e;
        public final Method f;
        public final Method g;
        public final Class<?> h;
        public final Class<?> i;

        public c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2, Provider provider) {
            super(provider);
            this.e = method;
            this.f = method2;
            this.g = method3;
            this.h = cls;
            this.i = cls2;
        }

        @Override // defpackage.y86
        public final void a(SSLSocket sSLSocket) {
            try {
                this.g.invoke(null, sSLSocket);
            } catch (IllegalAccessException unused) {
                xp.g();
            } catch (InvocationTargetException e) {
                y86.b.log(Level.FINE, "Failed to remove SSLSocket from Jetty ALPN", (Throwable) e);
            }
        }

        @Override // defpackage.y86
        public final void c(SSLSocket sSLSocket, String str, List<us6> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                us6 us6Var = list.get(i);
                if (us6Var != us6.HTTP_1_0) {
                    arrayList.add(us6Var.toString());
                }
            }
            try {
                this.e.invoke(null, sSLSocket, Proxy.newProxyInstance(y86.class.getClassLoader(), new Class[]{this.h, this.i}, new d(arrayList)));
            } catch (IllegalAccessException e) {
                xg.d(e);
            } catch (InvocationTargetException e2) {
                xg.d(e2);
            }
        }

        @Override // defpackage.y86
        public final String d(SSLSocket sSLSocket) {
            try {
                d dVar = (d) Proxy.getInvocationHandler(this.f.invoke(null, sSLSocket));
                boolean z = dVar.b;
                if (!z && dVar.c == null) {
                    y86.b.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                }
                if (z) {
                    return null;
                }
                return dVar.c;
            } catch (IllegalAccessException unused) {
                xp.g();
                return null;
            } catch (InvocationTargetException unused2) {
                xp.g();
                return null;
            }
        }

        @Override // defpackage.y86
        public final e e() {
            return e.ALPN_AND_NPN;
        }
    }

    public static class d implements InvocationHandler {
        public final ArrayList a;
        public boolean b;
        public String c;

        public d(ArrayList arrayList) {
            this.a = arrayList;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = fb9.a;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.b = true;
                return null;
            }
            boolean zEquals = name.equals("protocols");
            ArrayList arrayList = this.a;
            if (zEquals && objArr.length == 0) {
                return arrayList;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (arrayList.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.c = str;
                            return str;
                        }
                    }
                    String str2 = (String) arrayList.get(0);
                    this.c = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.c = (String) objArr[0];
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class e {
        private static final /* synthetic */ e[] $VALUES;
        public static final e ALPN_AND_NPN;
        public static final e NONE;
        public static final e NPN;

        static {
            e eVar = new e("ALPN_AND_NPN", 0);
            ALPN_AND_NPN = eVar;
            e eVar2 = new e("NPN", 1);
            NPN = eVar2;
            e eVar3 = new e("NONE", 2);
            NONE = eVar3;
            $VALUES = new e[]{eVar, eVar2, eVar3};
        }

        public e() {
            throw null;
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) $VALUES.clone();
        }
    }

    static {
        Provider provider;
        Provider provider2;
        y86 y86Var;
        e eVar;
        Logger logger = Logger.getLogger(y86.class.getName());
        b = logger;
        c = new String[]{"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};
        Provider[] providers = Security.getProviders();
        int length = providers.length;
        int i = 0;
        loop0: while (true) {
            if (i >= length) {
                provider = null;
                break;
            }
            Provider provider3 = providers[i];
            for (String str : c) {
                if (str.equals(provider3.getClass().getName())) {
                    logger.log(Level.FINE, "Found registered provider {0}", str);
                    provider = provider3;
                    break loop0;
                }
            }
            i++;
        }
        if (provider != null) {
            vz5 vz5Var = new vz5(null, "setUseSessionTickets", Boolean.TYPE);
            vz5 vz5Var2 = new vz5(null, "setHostname", String.class);
            vz5 vz5Var3 = new vz5(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            vz5 vz5Var4 = new vz5(null, "setAlpnProtocols", byte[].class);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                cls.getMethod("tagSocket", Socket.class);
                cls.getMethod("untagSocket", Socket.class);
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
            }
            if (provider.getName().equals("GmsCore_OpenSSL") || provider.getName().equals("Conscrypt") || provider.getName().equals("Ssl_Guard")) {
                eVar = e.ALPN_AND_NPN;
            } else {
                try {
                    y86.class.getClassLoader().loadClass("android.net.Network");
                    eVar = e.ALPN_AND_NPN;
                } catch (ClassNotFoundException e2) {
                    logger.log(Level.FINE, "Can't find class", (Throwable) e2);
                    try {
                        y86.class.getClassLoader().loadClass("android.app.ActivityOptions");
                        eVar = e.NPN;
                    } catch (ClassNotFoundException e3) {
                        logger.log(Level.FINE, "Can't find class", (Throwable) e3);
                        eVar = e.NONE;
                    }
                }
            }
            y86Var = new a(vz5Var, vz5Var2, vz5Var3, vz5Var4, provider, eVar);
        } else {
            try {
                Provider provider4 = SSLContext.getDefault().getProvider();
                try {
                    try {
                        SSLContext sSLContext = SSLContext.getInstance("TLS", provider4);
                        sSLContext.init(null, null, null);
                        SSLEngine.class.getMethod("getApplicationProtocol", null).invoke(sSLContext.createSSLEngine(), null);
                        y86Var = new b(provider4, SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", null));
                    } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException unused2) {
                        Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                        try {
                            y86Var = new c(cls2.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider4);
                        } catch (ClassNotFoundException | NoSuchMethodException unused3) {
                            provider2 = provider4;
                            y86Var = new y86(provider2);
                        }
                    }
                } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                    provider2 = provider4;
                    y86Var = new y86(provider2);
                }
            } catch (NoSuchAlgorithmException e4) {
                ti0.f(e4);
                return;
            }
        }
        d = y86Var;
    }

    public y86(Provider provider) {
        this.a = provider;
    }

    public static byte[] b(List<us6> list) {
        bu0 bu0Var = new bu0();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            us6 us6Var = list.get(i);
            if (us6Var != us6.HTTP_1_0) {
                bu0Var.A0(us6Var.toString().length());
                bu0Var.I0(us6Var.toString());
            }
        }
        return bu0Var.Z(bu0Var.c);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List<us6> list) {
    }

    public String d(SSLSocket sSLSocket) {
        return null;
    }

    public e e() {
        return e.NONE;
    }
}
