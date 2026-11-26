package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.a;
import okhttp3.b;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;

/* JADX INFO: loaded from: classes5.dex */
public final class p13 {
    public final py6 a;
    public final l9 b;
    public final jy6 c;
    public final b d;
    public k87.a e;
    public k87 f;
    public int g;
    public int h;
    public int i;
    public i87 j;

    public p13(py6 py6Var, l9 l9Var, jy6 jy6Var, b bVar) {
        bVar.getClass();
        this.a = py6Var;
        this.b = l9Var;
        this.c = jy6Var;
        this.d = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x025a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0271  */
    /* JADX WARN: Code duplicated, block: B:126:0x027d  */
    /* JADX WARN: Code duplicated, block: B:127:0x028d  */
    /* JADX WARN: Code duplicated, block: B:129:0x0293  */
    /* JADX WARN: Code duplicated, block: B:138:0x02db  */
    /* JADX WARN: Code duplicated, block: B:139:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:179:0x02f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x02c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x035d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x0234 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x0357 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x0353 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0075  */
    /* JADX WARN: Code duplicated, block: B:37:0x0084  */
    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:74:0x0146  */
    public final ly6 a(int i, boolean z, boolean z2, int i2, int i3) throws IOException {
        i87 i87Var;
        k87.a aVar;
        k87 k87Var;
        ArrayList arrayList;
        k87.a aVar2;
        l9 l9Var;
        Proxy proxy;
        String hostAddress;
        int port;
        List<InetAddress> listH;
        boolean zContains;
        ly6 ly6Var;
        j87 j87Var;
        i87 i87Var2;
        Socket socketH;
        while (!this.c.p) {
            ly6 ly6Var2 = this.c.j;
            if (ly6Var2 != null) {
                synchronized (ly6Var2) {
                    try {
                        if (!ly6Var2.j) {
                            fz3 fz3Var = ly6Var2.b.a.h;
                            fz3 fz3Var2 = this.b.h;
                            socketH = !(fz3Var.e == fz3Var2.e && aa4.e(fz3Var.d, fz3Var2.d)) ? this.c.h() : null;
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (this.c.j == null) {
                    if (socketH != null) {
                        gb9.e(socketH);
                    }
                    this.d.connectionReleased(this.c, ly6Var2);
                    this.g = 0;
                    this.h = 0;
                    this.i = 0;
                    if (this.a.a(this.b, this.c, null, false)) {
                        ly6Var2 = this.c.j;
                        ly6Var2.getClass();
                        this.d.connectionAcquired(this.c, ly6Var2);
                    } else {
                        i87Var = this.j;
                        try {
                            if (i87Var != null) {
                                this.j = null;
                            } else {
                                aVar = this.e;
                                if (aVar == null && aVar.a()) {
                                    k87.a aVar3 = this.e;
                                    aVar3.getClass();
                                    if (!aVar3.a()) {
                                        qz0.e();
                                        return null;
                                    }
                                    ArrayList arrayList2 = aVar3.a;
                                    int i4 = aVar3.b;
                                    aVar3.b = i4 + 1;
                                    i87Var = (i87) arrayList2.get(i4);
                                } else {
                                    k87Var = this.f;
                                    if (k87Var == null) {
                                        l9 l9Var2 = this.b;
                                        jy6 jy6Var = this.c;
                                        k87Var = new k87(l9Var2, jy6Var.b.C, jy6Var, this.d);
                                        this.f = k87Var;
                                    }
                                    if (k87Var.a()) {
                                        qz0.e();
                                        return null;
                                    }
                                    arrayList = new ArrayList();
                                    while (k87Var.f < k87Var.e.size()) {
                                        l9Var = k87Var.a;
                                        if (k87Var.f < k87Var.e.size()) {
                                            throw new SocketException("No route to " + l9Var.h.d + "; exhausted proxy configurations: " + k87Var.e);
                                        }
                                        List<? extends Proxy> list = k87Var.e;
                                        int i5 = k87Var.f;
                                        k87Var.f = i5 + 1;
                                        proxy = list.get(i5);
                                        a aVar4 = k87Var.c;
                                        b bVar = k87Var.d;
                                        ArrayList arrayList3 = new ArrayList();
                                        k87Var.g = arrayList3;
                                        if (proxy.type() != Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                                            fz3 fz3Var3 = l9Var.h;
                                            hostAddress = fz3Var3.d;
                                            port = fz3Var3.e;
                                        } else {
                                            SocketAddress socketAddressAddress = proxy.address();
                                            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                                                eg.d(socketAddressAddress.getClass(), "Proxy.address() is not an InetSocketAddress: ");
                                                return null;
                                            }
                                            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                                            InetAddress address = inetSocketAddress.getAddress();
                                            if (address == null) {
                                                hostAddress = inetSocketAddress.getHostName();
                                                hostAddress.getClass();
                                            } else {
                                                hostAddress = address.getHostAddress();
                                                hostAddress.getClass();
                                            }
                                            port = inetSocketAddress.getPort();
                                        }
                                        if (1 <= port || port >= 65536) {
                                            throw new SocketException("No route to " + hostAddress + ':' + port + "; port is out of range");
                                        }
                                        if (proxy.type() == Proxy.Type.SOCKS) {
                                            arrayList3.add(InetSocketAddress.createUnresolved(hostAddress, port));
                                        } else {
                                            byte[] bArr = gb9.a;
                                            hostAddress.getClass();
                                            if (gb9.f.e(hostAddress)) {
                                                listH = u96.h(InetAddress.getByName(hostAddress));
                                            } else {
                                                bVar.dnsStart(aVar4, hostAddress);
                                                vp2 vp2Var = l9Var.a;
                                                hostAddress.getClass();
                                                try {
                                                    InetAddress[] allByName = InetAddress.getAllByName(hostAddress);
                                                    allByName.getClass();
                                                    List<InetAddress> listH0 = yr.h0(allByName);
                                                    if (listH0.isEmpty()) {
                                                        throw new UnknownHostException(l9Var.a + " returned no addresses for " + hostAddress);
                                                    }
                                                    bVar.dnsEnd(aVar4, hostAddress, listH0);
                                                    listH = listH0;
                                                } catch (NullPointerException e) {
                                                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(hostAddress));
                                                    unknownHostException.initCause(e);
                                                    throw unknownHostException;
                                                }
                                            }
                                            Iterator<InetAddress> it = listH.iterator();
                                            while (it.hasNext()) {
                                                arrayList3.add(new InetSocketAddress(it.next(), port));
                                            }
                                        }
                                        Iterator<? extends InetSocketAddress> it2 = k87Var.g.iterator();
                                        while (it2.hasNext()) {
                                            i87 i87Var3 = new i87(k87Var.a, proxy, it2.next());
                                            j87 j87Var2 = k87Var.b;
                                            synchronized (j87Var2) {
                                                zContains = j87Var2.a.contains(i87Var3);
                                            }
                                            if (zContains) {
                                                k87Var.h.add(i87Var3);
                                            } else {
                                                arrayList.add(i87Var3);
                                            }
                                        }
                                        if (!arrayList.isEmpty()) {
                                            break;
                                        }
                                    }
                                    if (arrayList.isEmpty()) {
                                        nn1.s(k87Var.h, arrayList);
                                        k87Var.h.clear();
                                    }
                                    aVar2 = new k87.a(arrayList);
                                    this.e = aVar2;
                                    if (!this.c.p) {
                                        ki0.d("Canceled");
                                        return null;
                                    }
                                    if (this.a.a(this.b, this.c, arrayList, false)) {
                                        ly6Var2 = this.c.j;
                                        ly6Var2.getClass();
                                        this.d.connectionAcquired(this.c, ly6Var2);
                                    } else {
                                        if (aVar2.a()) {
                                            qz0.e();
                                            return null;
                                        }
                                        int i6 = aVar2.b;
                                        aVar2.b = i6 + 1;
                                        i87Var = (i87) arrayList.get(i6);
                                        ly6Var = new ly6(this.a, i87Var);
                                        this.c.r = ly6Var;
                                        ly6Var.d(i, i2, i3, z, this.c, this.d);
                                        this.c.r = null;
                                        j87Var = this.c.b.C;
                                        i87Var2 = ly6Var.b;
                                        synchronized (j87Var) {
                                            i87Var2.getClass();
                                            j87Var.a.remove(i87Var2);
                                        }
                                        if (this.a.a(this.b, this.c, arrayList, true)) {
                                            ly6 ly6Var3 = this.c.j;
                                            ly6Var3.getClass();
                                            this.j = i87Var;
                                            Socket socket = ly6Var.d;
                                            socket.getClass();
                                            gb9.e(socket);
                                            this.d.connectionAcquired(this.c, ly6Var3);
                                            ly6Var2 = ly6Var3;
                                        } else {
                                            synchronized (ly6Var) {
                                                py6 py6Var = this.a;
                                                byte[] bArr2 = gb9.a;
                                                py6Var.d.add(ly6Var);
                                                py6Var.b.c(py6Var.c, 0L);
                                                this.c.b(ly6Var);
                                                j59 j59Var2 = j59.a;
                                            }
                                            this.d.connectionAcquired(this.c, ly6Var);
                                            ly6Var2 = ly6Var;
                                        }
                                    }
                                }
                            }
                            ly6Var.d(i, i2, i3, z, this.c, this.d);
                            this.c.r = null;
                            j87Var = this.c.b.C;
                            i87Var2 = ly6Var.b;
                            synchronized (j87Var) {
                                i87Var2.getClass();
                                j87Var.a.remove(i87Var2);
                                if (this.a.a(this.b, this.c, arrayList, true)) {
                                    ly6 ly6Var4 = this.c.j;
                                    ly6Var4.getClass();
                                    this.j = i87Var;
                                    Socket socket2 = ly6Var.d;
                                    socket2.getClass();
                                    gb9.e(socket2);
                                    this.d.connectionAcquired(this.c, ly6Var4);
                                    ly6Var2 = ly6Var4;
                                } else {
                                    synchronized (ly6Var) {
                                        py6 py6Var2 = this.a;
                                        byte[] bArr3 = gb9.a;
                                        py6Var2.d.add(ly6Var);
                                        py6Var2.b.c(py6Var2.c, 0L);
                                        this.c.b(ly6Var);
                                        j59 j59Var3 = j59.a;
                                        this.d.connectionAcquired(this.c, ly6Var);
                                        ly6Var2 = ly6Var;
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            this.c.r = null;
                            throw th2;
                        }
                        arrayList = null;
                        ly6Var = new ly6(this.a, i87Var);
                        this.c.r = ly6Var;
                    }
                } else if (socketH != null) {
                    ah.f("Check failed.");
                    return null;
                }
            } else {
                this.g = 0;
                this.h = 0;
                this.i = 0;
                if (this.a.a(this.b, this.c, null, false)) {
                    ly6Var2 = this.c.j;
                    ly6Var2.getClass();
                    this.d.connectionAcquired(this.c, ly6Var2);
                } else {
                    i87Var = this.j;
                    if (i87Var != null) {
                        this.j = null;
                    } else {
                        aVar = this.e;
                        if (aVar == null) {
                        }
                        k87Var = this.f;
                        if (k87Var == null) {
                            l9 l9Var3 = this.b;
                            jy6 jy6Var2 = this.c;
                            k87Var = new k87(l9Var3, jy6Var2.b.C, jy6Var2, this.d);
                            this.f = k87Var;
                        }
                        if (k87Var.a()) {
                            qz0.e();
                            return null;
                        }
                        arrayList = new ArrayList();
                        while (k87Var.f < k87Var.e.size()) {
                            l9Var = k87Var.a;
                            if (k87Var.f < k87Var.e.size()) {
                                throw new SocketException("No route to " + l9Var.h.d + "; exhausted proxy configurations: " + k87Var.e);
                            }
                            List<? extends Proxy> list2 = k87Var.e;
                            int i7 = k87Var.f;
                            k87Var.f = i7 + 1;
                            proxy = list2.get(i7);
                            a aVar5 = k87Var.c;
                            b bVar2 = k87Var.d;
                            ArrayList arrayList4 = new ArrayList();
                            k87Var.g = arrayList4;
                            if (proxy.type() != Proxy.Type.DIRECT) {
                                fz3 fz3Var4 = l9Var.h;
                                hostAddress = fz3Var4.d;
                                port = fz3Var4.e;
                            } else {
                                fz3 fz3Var5 = l9Var.h;
                                hostAddress = fz3Var5.d;
                                port = fz3Var5.e;
                            }
                            if (1 <= port) {
                            }
                            throw new SocketException("No route to " + hostAddress + ':' + port + "; port is out of range");
                        }
                        if (arrayList.isEmpty()) {
                            nn1.s(k87Var.h, arrayList);
                            k87Var.h.clear();
                        }
                        aVar2 = new k87.a(arrayList);
                        this.e = aVar2;
                        if (!this.c.p) {
                            ki0.d("Canceled");
                            return null;
                        }
                        if (this.a.a(this.b, this.c, arrayList, false)) {
                            ly6Var2 = this.c.j;
                            ly6Var2.getClass();
                            this.d.connectionAcquired(this.c, ly6Var2);
                        } else {
                            if (aVar2.a()) {
                                qz0.e();
                                return null;
                            }
                            int i8 = aVar2.b;
                            aVar2.b = i8 + 1;
                            i87Var = (i87) arrayList.get(i8);
                            ly6Var = new ly6(this.a, i87Var);
                            this.c.r = ly6Var;
                            ly6Var.d(i, i2, i3, z, this.c, this.d);
                            this.c.r = null;
                            j87Var = this.c.b.C;
                            i87Var2 = ly6Var.b;
                            synchronized (j87Var) {
                                i87Var2.getClass();
                                j87Var.a.remove(i87Var2);
                                if (this.a.a(this.b, this.c, arrayList, true)) {
                                    ly6 ly6Var5 = this.c.j;
                                    ly6Var5.getClass();
                                    this.j = i87Var;
                                    Socket socket3 = ly6Var.d;
                                    socket3.getClass();
                                    gb9.e(socket3);
                                    this.d.connectionAcquired(this.c, ly6Var5);
                                    ly6Var2 = ly6Var5;
                                } else {
                                    synchronized (ly6Var) {
                                        py6 py6Var3 = this.a;
                                        byte[] bArr4 = gb9.a;
                                        py6Var3.d.add(ly6Var);
                                        py6Var3.b.c(py6Var3.c, 0L);
                                        this.c.b(ly6Var);
                                        j59 j59Var4 = j59.a;
                                        this.d.connectionAcquired(this.c, ly6Var);
                                        ly6Var2 = ly6Var;
                                    }
                                }
                            }
                        }
                    }
                    arrayList = null;
                    ly6Var = new ly6(this.a, i87Var);
                    this.c.r = ly6Var;
                    ly6Var.d(i, i2, i3, z, this.c, this.d);
                    this.c.r = null;
                    j87Var = this.c.b.C;
                    i87Var2 = ly6Var.b;
                    synchronized (j87Var) {
                        i87Var2.getClass();
                        j87Var.a.remove(i87Var2);
                        if (this.a.a(this.b, this.c, arrayList, true)) {
                            ly6 ly6Var6 = this.c.j;
                            ly6Var6.getClass();
                            this.j = i87Var;
                            Socket socket4 = ly6Var.d;
                            socket4.getClass();
                            gb9.e(socket4);
                            this.d.connectionAcquired(this.c, ly6Var6);
                            ly6Var2 = ly6Var6;
                        } else {
                            synchronized (ly6Var) {
                                py6 py6Var4 = this.a;
                                byte[] bArr5 = gb9.a;
                                py6Var4.d.add(ly6Var);
                                py6Var4.b.c(py6Var4.c, 0L);
                                this.c.b(ly6Var);
                                j59 j59Var5 = j59.a;
                                this.d.connectionAcquired(this.c, ly6Var);
                                ly6Var2 = ly6Var;
                            }
                        }
                    }
                }
            }
            if (ly6Var2.j(z2)) {
                return ly6Var2;
            }
            ly6Var2.l();
            if (this.j == null) {
                k87.a aVar6 = this.e;
                if (aVar6 != null ? aVar6.a() : true) {
                    continue;
                } else {
                    k87 k87Var2 = this.f;
                    if (!(k87Var2 != null ? k87Var2.a() : true)) {
                        ki0.d("exhausted all routes");
                        return null;
                    }
                }
            }
        }
        ki0.d("Canceled");
        return null;
    }

    public final void b(IOException iOException) {
        iOException.getClass();
        this.j = null;
        if ((iOException instanceof StreamResetException) && ((StreamResetException) iOException).b == p03.REFUSED_STREAM) {
            this.g++;
        } else if (iOException instanceof ConnectionShutdownException) {
            this.h++;
        } else {
            this.i++;
        }
    }
}
