package io.grpc;

import defpackage.o8;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class d {
    public static final a.b<String> d = new a.b<>("io.grpc.EquivalentAddressGroup.ATTR_AUTHORITY_OVERRIDE");
    public static final a.b<String> e = new a.b<>("io.grpc.EquivalentAddressGroup.LOCALITY");
    public static final a.b<String> f = new a.b<>("io.grpc.EquivalentAddressGroup.BACKEND_SERVICE");
    public static final a.b<Long> g = new a.b<>("io.grpc.EquivalentAddressGroup.ATTR_WEIGHT");
    public final List<SocketAddress> a;
    public final a b;
    public final int c;

    public d(List<SocketAddress> list, a aVar) {
        o8.f(!list.isEmpty(), "addrs is empty");
        List<SocketAddress> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.a = listUnmodifiableList;
        o8.l(aVar, "attrs");
        this.b = aVar;
        this.c = listUnmodifiableList.hashCode();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        List<SocketAddress> list = dVar.a;
        List<SocketAddress> list2 = this.a;
        if (list2.size() != list.size()) {
            return false;
        }
        for (int i = 0; i < list2.size(); i++) {
            if (!list2.get(i).equals(list.get(i))) {
                return false;
            }
        }
        return this.b.equals(dVar.b);
    }

    public final int hashCode() {
        return this.c;
    }

    public final String toString() {
        return "[" + this.a + "/" + this.b + "]";
    }

    public d(SocketAddress socketAddress) {
        this(a.b, socketAddress);
    }

    public d(a aVar, SocketAddress socketAddress) {
        this((List<SocketAddress>) Collections.singletonList(socketAddress), aVar);
    }
}
