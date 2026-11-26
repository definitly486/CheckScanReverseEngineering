package io.appmetrica.analytics.impl;

import android.util.Base64;
import android.util.Pair;
import defpackage.b36;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.StringByBytesTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.a4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0781a4 extends C0783a6 {
    public HashMap r;
    public StringTrimmer s;
    public StringByBytesTrimmer t;
    public StringByBytesTrimmer u;
    public BytesTrimmer v;
    public StringTrimmer w;

    public C0781a4(String str, String str2, int i, int i2, PublicLogger publicLogger) {
        this.r = new HashMap();
        a(publicLogger);
        this.b = e(str);
        this.a = d(str2);
        setType(i);
        setCustomType(i2);
    }

    public static C0781a4 a(PublicLogger publicLogger, Xi xi) {
        int length;
        C0781a4 c0781a4 = new C0781a4(publicLogger);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0781a4.d = 40976;
        Vi vi = new Vi();
        vi.b = xi.a.currency.getCurrencyCode().getBytes();
        vi.f = xi.a.priceMicros;
        vi.c = StringUtils.stringToBytesForProtobuf(new StringTrimmer(200, "revenue productID", xi.e).trim(xi.a.productID));
        vi.a = ((Integer) WrapUtils.getOrDefault(xi.a.quantity, 1)).intValue();
        vi.d = StringUtils.stringToBytesForProtobuf((String) xi.b.trim((Object) xi.a.payload));
        if (xo.a(xi.a.receipt)) {
            Qi qi = new Qi();
            String str = (String) xi.c.trim(xi.a.receipt.data);
            length = !StringUtils.equalsNullSafety(xi.a.receipt.data, str) ? xi.a.receipt.data.length() : 0;
            String str2 = (String) xi.d.trim(xi.a.receipt.signature);
            qi.a = StringUtils.stringToBytesForProtobuf(str);
            qi.b = StringUtils.stringToBytesForProtobuf(str2);
            vi.e = qi;
        } else {
            length = 0;
        }
        Pair pair = new Pair(MessageNano.toByteArray(vi), Integer.valueOf(length));
        c0781a4.b = c0781a4.e(new String(Base64.encode((byte[]) pair.first, 0)));
        c0781a4.g = ((Integer) pair.second).intValue();
        return c0781a4;
    }

    public static C0783a6 b(String str, String str2) {
        C0783a6 c0783a6 = new C0783a6("", 0);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6.d = 5376;
        c0783a6.a(str, str2);
        return c0783a6;
    }

    public static C0783a6 n() {
        C0783a6 c0783a6 = new C0783a6("", 0);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6.d = 5632;
        return c0783a6;
    }

    public static C0783a6 o() {
        C0783a6 c0783a6 = new C0783a6("", 0);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6.d = 40961;
        return c0783a6;
    }

    @Override // io.appmetrica.analytics.impl.C0783a6
    public final void c(String str) {
        this.h = (String) this.w.trim((Object) str);
    }

    public final String d(String str) {
        String str2 = (String) this.s.trim((Object) str);
        a(str, str2, Z3.NAME);
        return str2;
    }

    public final String e(String str) {
        String str2 = (String) this.t.trim((Object) str);
        a(str, str2, Z3.VALUE);
        return str2;
    }

    public final C0781a4 f(String str) {
        String str2 = (String) this.u.trim((Object) str);
        a(str, str2, Z3.VALUE);
        this.b = str2;
        return this;
    }

    public final HashMap<Z3, Integer> p() {
        return this.r;
    }

    @Override // io.appmetrica.analytics.impl.C0783a6, io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setName(String str) {
        this.a = d(str);
    }

    @Override // io.appmetrica.analytics.impl.C0783a6, io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setValue(String str) {
        this.b = e(str);
    }

    @Override // io.appmetrica.analytics.impl.C0783a6, io.appmetrica.analytics.coreapi.internal.event.CounterReportApi
    public final void setValueBytes(byte[] bArr) {
        a(bArr);
    }

    public C0781a4(String str, int i, PublicLogger publicLogger) {
        this("", str, i, publicLogger);
    }

    public C0781a4(String str, String str2, int i, PublicLogger publicLogger) {
        this(str, str2, i, 0, publicLogger);
    }

    public C0781a4(int i, PublicLogger publicLogger, long j) {
        this("", "", i, publicLogger);
        b(j);
    }

    public C0781a4(byte[] bArr, String str, int i, PublicLogger publicLogger) {
        this.r = new HashMap();
        a(publicLogger);
        a(bArr);
        this.a = d(str);
        setType(i);
    }

    public C0781a4(byte[] bArr, String str, int i, PublicLogger publicLogger, long j) {
        this(bArr, str, i, publicLogger);
        b(j);
    }

    public C0781a4(PublicLogger publicLogger) {
        this("", "", 0, 0, publicLogger);
    }

    public final C0781a4 a(HashMap<Z3, Integer> map) {
        this.r = map;
        return this;
    }

    public final void a(PublicLogger publicLogger) {
        this.s = new StringTrimmer(1000, "event name", publicLogger);
        this.t = new StringByBytesTrimmer(245760, "event value", publicLogger);
        this.u = new StringByBytesTrimmer(1024000, "event extended value", publicLogger);
        this.v = new BytesTrimmer(245760, "event value bytes", publicLogger);
        this.w = new StringTrimmer(200, "user profile id", publicLogger);
    }

    public final void a(byte[] bArr) {
        byte[] bArr2 = (byte[]) this.v.trim((Object) bArr);
        Z3 z3 = Z3.VALUE;
        int iIntValue = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            this.r.put(z3, Integer.valueOf((bArr != null ? bArr.length : 0) - (bArr2 != null ? bArr2.length : 0)));
        } else {
            this.r.remove(z3);
        }
        Iterator it = this.r.values().iterator();
        while (it.hasNext()) {
            iIntValue += ((Integer) it.next()).intValue();
        }
        this.g = iIntValue;
        super.setValueBytes(bArr2);
    }

    public static C0783a6 a(uo uoVar) {
        C0783a6 c0783a6O = o();
        c0783a6O.setValue(new String(Base64.encode(MessageNano.toByteArray(uoVar), 0)));
        return c0783a6O;
    }

    public final void a(String str, String str2, Z3 z3) {
        boolean zEqualsNullSafety = StringUtils.equalsNullSafety(str, str2);
        HashMap map = this.r;
        if (!zEqualsNullSafety) {
            map.put(z3, Integer.valueOf(StringUtils.getUTF8Bytes(str).length - StringUtils.getUTF8Bytes(str2).length));
        } else {
            map.remove(z3);
        }
        Iterator it = this.r.values().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += ((Integer) it.next()).intValue();
        }
        this.g = iIntValue;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C0781a4 a(PublicLogger publicLogger, F f) {
        C0781a4 c0781a4 = new C0781a4(publicLogger);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0781a4.d = 40977;
        b36 b36VarA = f.a();
        c0781a4.b = c0781a4.e(new String(Base64.encode((byte[]) b36VarA.b, 0)));
        c0781a4.g = ((Integer) b36VarA.c).intValue();
        return c0781a4;
    }
}
