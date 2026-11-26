package defpackage;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class jb4 extends z86 {
    public final Method c;
    public final Method d;
    public final Method e;
    public final Class<?> f;
    public final Class<?> g;

    public static final class a implements InvocationHandler {
        public final ArrayList a;
        public boolean b;
        public String c;

        public a(ArrayList arrayList) {
            this.a = arrayList;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            obj.getClass();
            method.getClass();
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (aa4.e(name, "supports") && aa4.e(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (aa4.e(name, "unsupported") && aa4.e(Void.TYPE, returnType)) {
                this.b = true;
                return null;
            }
            boolean zE = aa4.e(name, "protocols");
            ArrayList arrayList = this.a;
            if (zE && objArr.length == 0) {
                return arrayList;
            }
            if ((aa4.e(name, "selectProtocol") || aa4.e(name, "select")) && String.class.equals(returnType) && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    if (size >= 0) {
                        int i = 0;
                        while (true) {
                            Object obj3 = list.get(i);
                            obj3.getClass();
                            String str = (String) obj3;
                            if (arrayList.contains(str)) {
                                this.c = str;
                                return str;
                            }
                            if (i != size) {
                                i++;
                            }
                        }
                    }
                    String str2 = (String) arrayList.get(0);
                    this.c = str2;
                    return str2;
                }
            }
            if ((!aa4.e(name, "protocolSelected") && !aa4.e(name, "selected")) || objArr.length != 1) {
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
            Object obj4 = objArr[0];
            obj4.getClass();
            this.c = (String) obj4;
            return null;
        }
    }

    public jb4(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.c = method;
        this.d = method2;
        this.e = method3;
        this.f = cls;
        this.g = cls2;
    }

    @Override // defpackage.z86
    public final void a(SSLSocket sSLSocket) {
        try {
            this.e.invoke(null, sSLSocket);
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to remove ALPN", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to remove ALPN", e2);
        }
    }

    @Override // defpackage.z86
    public final void d(SSLSocket sSLSocket, String str, List<? extends ts6> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ts6) obj) != ts6.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ts6) it.next()).toString());
        }
        try {
            this.c.invoke(null, sSLSocket, Proxy.newProxyInstance(z86.class.getClassLoader(), new Class[]{this.f, this.g}, new a(arrayList2)));
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to set ALPN", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to set ALPN", e2);
        }
    }

    @Override // defpackage.z86
    public final String f(SSLSocket sSLSocket) {
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.d.invoke(null, sSLSocket));
            invocationHandler.getClass();
            a aVar = (a) invocationHandler;
            boolean z = aVar.b;
            if (!z && aVar.c == null) {
                z86.j(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 6);
                return null;
            }
            if (z) {
                return null;
            }
            return aVar.c;
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to get ALPN selected protocol", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        }
    }
}
