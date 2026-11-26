package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.Trimmer;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ll, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1082ll {
    public final Trimmer a;
    public final InterfaceC0814bb b;

    public C1082ll(BytesTrimmer bytesTrimmer, C0900ek c0900ek) {
        this.a = bytesTrimmer;
        this.b = c0900ek;
    }

    public final Ni a(long j, C1225r9 c1225r9, List list, C1233rh c1233rh, int i, Yg yg) {
        boolean z;
        C1200q9 c1200q9A;
        int iComputeMessageSize;
        C0941g9 c0941g9;
        ArrayList arrayList = new ArrayList();
        int i2 = yg.a;
        int i3 = yg.b;
        Integer num = yg.c;
        Iterator it = list.iterator();
        int i4 = i3;
        C1061l0 c1061l0 = null;
        int iComputeMessageSize2 = i2;
        Integer numValueOf = num;
        while (true) {
            if (it.hasNext()) {
                ContentValues contentValues = (ContentValues) it.next();
                if (i4 < 100) {
                    Z8 z8 = new Z8(contentValues);
                    try {
                        EnumC1176pb enumC1176pb = z8.h;
                        if (enumC1176pb != null) {
                            c0941g9 = (C0941g9) AbstractC0871dg.d.get(enumC1176pb);
                        } else {
                            Map map = AbstractC0871dg.a;
                            c0941g9 = null;
                        }
                        if (c0941g9 == null) {
                            c0941g9 = C0941g9.i;
                        }
                        try {
                            c1200q9A = c0941g9.a(z8, c1233rh);
                        } catch (Throwable th) {
                            th = th;
                            this.b.reportError("protobuf_serialization_error", th);
                            c1200q9A = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    if (c1200q9A != null) {
                        String str = z8.u;
                        C1061l0 c1061l1 = new C1061l0(str, z8.v);
                        if (c1061l0 != null) {
                            if (!c1061l0.equals(c1061l1)) {
                                z = true;
                                break;
                            }
                        } else {
                            if (numValueOf == null) {
                                try {
                                    JSONObject jSONObject = new JSONObject(str);
                                    Iterator<String> itKeys = jSONObject.keys();
                                    iComputeMessageSize = 0;
                                    while (itKeys.hasNext()) {
                                        String next = itKeys.next();
                                        C1044k9 c1044k9 = new C1044k9();
                                        c1044k9.a = next;
                                        c1044k9.b = jSONObject.getString(next);
                                        iComputeMessageSize += CodedOutputByteBufferNano.computeMessageSize(7, c1044k9);
                                    }
                                } catch (Throwable unused) {
                                    iComputeMessageSize = 0;
                                }
                                numValueOf = Integer.valueOf(iComputeMessageSize);
                                iComputeMessageSize2 += iComputeMessageSize;
                            }
                            c1061l0 = c1061l1;
                        }
                        byte[] bArr = (byte[]) this.a.trim(c1200q9A.e);
                        byte[] bArr2 = c1200q9A.e;
                        if (bArr2 != bArr) {
                            c1200q9A.i = ((bArr2 != null ? bArr2.length : 0) - (bArr != null ? bArr.length : 0)) + c1200q9A.i;
                            c1200q9A.e = bArr;
                        }
                        iComputeMessageSize2 += CodedOutputByteBufferNano.computeMessageSize(3, c1200q9A);
                        if (arrayList.isEmpty() && i == 0) {
                            if (iComputeMessageSize2 >= 1048576) {
                            }
                            arrayList.add(c1200q9A);
                        } else {
                            if (iComputeMessageSize2 >= 250880) {
                            }
                            arrayList.add(c1200q9A);
                        }
                    }
                    i4++;
                }
            }
            z = false;
            break;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        C1251s9 c1251s9 = new C1251s9();
        c1251s9.a = j;
        c1251s9.b = c1225r9;
        c1251s9.c = (C1200q9[]) arrayList.toArray(new C1200q9[0]);
        return new Ni(c1251s9, c1061l0, z, iComputeMessageSize2, i4, numValueOf);
    }
}
