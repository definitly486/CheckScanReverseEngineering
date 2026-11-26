package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public class ov5 {
    public static final Logger b;
    public static final ov5 c;
    public final y86 a;

    public static final class a extends ov5 {
        public static final vz5<Socket> d;
        public static final vz5<Socket> e;
        public static final vz5<Socket> f;
        public static final vz5<Socket> g;
        public static final vz5<Socket> h;
        public static final vz5<Socket> i;
        public static final Method j;
        public static final Method k;
        public static final Method l;
        public static final Method m;
        public static final Method n;
        public static final Method o;
        public static final Constructor<?> p;

        static {
            Method method;
            Method method2;
            Method method3;
            Method method4;
            Method method5;
            Method method6;
            Logger logger = ov5.b;
            Class cls = Boolean.TYPE;
            Constructor<?> constructor = null;
            d = new vz5<>(null, "setUseSessionTickets", cls);
            e = new vz5<>(null, "setHostname", String.class);
            f = new vz5<>(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            g = new vz5<>(null, "setAlpnProtocols", byte[].class);
            h = new vz5<>(byte[].class, "getNpnSelectedProtocol", new Class[0]);
            i = new vz5<>(null, "setNpnProtocols", byte[].class);
            try {
                method = SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
                try {
                    method2 = SSLParameters.class.getMethod("getApplicationProtocols", null);
                    try {
                        method3 = SSLSocket.class.getMethod("getApplicationProtocol", null);
                        try {
                            Class<?> cls2 = Class.forName("android.net.ssl.SSLSockets");
                            method4 = cls2.getMethod("isSupportedSocket", SSLSocket.class);
                            try {
                                method5 = cls2.getMethod("setUseSessionTickets", SSLSocket.class, cls);
                            } catch (ClassNotFoundException e2) {
                                e = e2;
                                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                                method5 = null;
                            } catch (NoSuchMethodException e3) {
                                e = e3;
                                logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                                method5 = null;
                            }
                        } catch (ClassNotFoundException e4) {
                            e = e4;
                            method4 = null;
                        } catch (NoSuchMethodException e5) {
                            e = e5;
                            method4 = null;
                        }
                    } catch (ClassNotFoundException e6) {
                        e = e6;
                        method3 = null;
                        method4 = method3;
                        logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        l = method;
                        m = method2;
                        n = method3;
                        j = method4;
                        k = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        o = method6;
                        p = constructor;
                    } catch (NoSuchMethodException e7) {
                        e = e7;
                        method3 = null;
                        method4 = method3;
                        logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        l = method;
                        m = method2;
                        n = method3;
                        j = method4;
                        k = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        o = method6;
                        p = constructor;
                    }
                } catch (ClassNotFoundException e8) {
                    e = e8;
                    method2 = null;
                    method3 = method2;
                    method4 = method3;
                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                    method5 = null;
                    l = method;
                    m = method2;
                    n = method3;
                    j = method4;
                    k = method5;
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    o = method6;
                    p = constructor;
                } catch (NoSuchMethodException e9) {
                    e = e9;
                    method2 = null;
                    method3 = method2;
                    method4 = method3;
                    logger.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                    method5 = null;
                    l = method;
                    m = method2;
                    n = method3;
                    j = method4;
                    k = method5;
                    method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                    constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                    o = method6;
                    p = constructor;
                }
            } catch (ClassNotFoundException e10) {
                e = e10;
                method = null;
                method2 = null;
            } catch (NoSuchMethodException e11) {
                e = e11;
                method = null;
                method2 = null;
            }
            l = method;
            m = method2;
            n = method3;
            j = method4;
            k = method5;
            try {
                method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                try {
                    constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                } catch (ClassNotFoundException e12) {
                    e = e12;
                    logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                } catch (NoSuchMethodException e13) {
                    e = e13;
                    logger.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                }
            } catch (ClassNotFoundException e14) {
                e = e14;
                method6 = null;
            } catch (NoSuchMethodException e15) {
                e = e15;
                method6 = null;
            }
            o = method6;
            p = constructor;
        }

        @Override // defpackage.ov5
        public final void a(SSLSocket sSLSocket, String str, List<us6> list) {
            Constructor<?> constructor;
            Method method;
            ArrayList arrayList = new ArrayList();
            Iterator<us6> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toString());
            }
            boolean z = false;
            String[] strArr = (String[]) arrayList.toArray(new String[0]);
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            if (str != null) {
                try {
                    try {
                        if (ov5.c(str)) {
                            Method method2 = j;
                            if (method2 == null || !((Boolean) method2.invoke(null, sSLSocket)).booleanValue()) {
                                d.d(sSLSocket, Boolean.TRUE);
                            } else {
                                k.invoke(null, sSLSocket, Boolean.TRUE);
                            }
                            Method method3 = o;
                            if (method3 == null || (constructor = p) == null || p44.b(tw3.a(str).b, null) != null) {
                                e.d(sSLSocket, str);
                            } else {
                                method3.invoke(sSLParameters, Collections.singletonList(constructor.newInstance(str)));
                            }
                        }
                    } catch (InvocationTargetException e2) {
                        ti0.f(e2);
                        return;
                    }
                } catch (IllegalAccessException e3) {
                    ti0.f(e3);
                    return;
                } catch (InstantiationException e4) {
                    ti0.f(e4);
                    return;
                }
            }
            Method method4 = n;
            if (method4 != null) {
                try {
                    method4.invoke(sSLSocket, null);
                    l.invoke(sSLParameters, strArr);
                    z = true;
                } catch (InvocationTargetException e5) {
                    if (!(e5.getTargetException() instanceof UnsupportedOperationException)) {
                        throw e5;
                    }
                    ov5.b.log(Level.FINER, "setApplicationProtocol unsupported, will try old methods");
                }
            }
            sSLSocket.setSSLParameters(sSLParameters);
            if (z && (method = m) != null && Arrays.equals(strArr, (String[]) method.invoke(sSLSocket.getSSLParameters(), null))) {
                return;
            }
            Object[] objArr = {y86.b(list)};
            y86 y86Var = this.a;
            if (y86Var.e() == y86.e.ALPN_AND_NPN) {
                g.e(sSLSocket, objArr);
            }
            if (y86Var.e() != y86.e.NONE) {
                i.e(sSLSocket, objArr);
            } else {
                n7.g("We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS");
            }
        }

        @Override // defpackage.ov5
        public final String b(SSLSocket sSLSocket) {
            Logger logger = ov5.b;
            Method method = n;
            if (method != null) {
                try {
                    return (String) method.invoke(sSLSocket, null);
                } catch (IllegalAccessException e2) {
                    ti0.f(e2);
                    return null;
                } catch (InvocationTargetException e3) {
                    if (!(e3.getTargetException() instanceof UnsupportedOperationException)) {
                        ti0.f(e3);
                        return null;
                    }
                    logger.log(Level.FINER, "Socket unsupported for getApplicationProtocol, will try old methods");
                }
            }
            y86 y86Var = this.a;
            if (y86Var.e() == y86.e.ALPN_AND_NPN) {
                try {
                    byte[] bArr = (byte[]) f.e(sSLSocket, new Object[0]);
                    if (bArr != null) {
                        return new String(bArr, fb9.b);
                    }
                } catch (Exception e4) {
                    logger.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e4);
                }
            }
            if (y86Var.e() != y86.e.NONE) {
                try {
                    byte[] bArr2 = (byte[]) h.e(sSLSocket, new Object[0]);
                    if (bArr2 != null) {
                        return new String(bArr2, fb9.b);
                    }
                } catch (Exception e5) {
                    logger.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e5);
                }
            }
            return null;
        }

        @Override // defpackage.ov5
        public final String d(SSLSocket sSLSocket, String str, List<us6> list) {
            String strB = b(sSLSocket);
            return strB == null ? super.d(sSLSocket, str, list) : strB;
        }
    }

    static {
        ov5 ov5Var;
        Logger logger = Logger.getLogger(ov5.class.getName());
        b = logger;
        y86 y86Var = y86.d;
        ClassLoader classLoader = ov5.class.getClassLoader();
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e) {
            logger.log(Level.FINE, "Unable to find Conscrypt. Skipping", (Throwable) e);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e2) {
                logger.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e2);
                ov5Var = new ov5(y86Var);
            }
        }
        ov5Var = new a(y86Var);
        c = ov5Var;
    }

    public ov5(y86 y86Var) {
        o8.l(y86Var, "platform");
        this.a = y86Var;
    }

    public static boolean c(String str) {
        if (str.contains("_")) {
            return false;
        }
        try {
            o8.h(vs3.a(str).getAuthority().indexOf(64) == -1, "Userinfo must not be present on authority: '%s'", str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public void a(SSLSocket sSLSocket, String str, List<us6> list) {
        this.a.c(sSLSocket, str, list);
    }

    public String b(SSLSocket sSLSocket) {
        return this.a.d(sSLSocket);
    }

    public String d(SSLSocket sSLSocket, String str, List<us6> list) {
        y86 y86Var = this.a;
        if (list != null) {
            a(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String strB = b(sSLSocket);
            if (strB != null) {
                y86Var.a(sSLSocket);
                return strB;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } catch (Throwable th) {
            y86Var.a(sSLSocket);
            throw th;
        }
    }
}
