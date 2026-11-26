package io.appmetrica.analytics.impl;

import androidx.work.WorkInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ye, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1408ye implements InterfaceC1095m8 {
    public final Ce a;
    public final C1372x3 b;
    public final HierarchicalStringTrimmer c;
    public final Xf d;

    public C1408ye() {
        this(new Ce(), new C1372x3(), new HierarchicalStringTrimmer(100), new Xf());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Li> fromModel(C1383xe c1383xe) {
        Li liFromModel;
        F8 f8 = new F8();
        f8.a = c1383xe.a;
        f8.f = new C1302u8();
        C1433ze c1433ze = c1383xe.b;
        C1250s8 c1250s8 = new C1250s8();
        c1250s8.a = StringUtils.getUTF8Bytes(c1433ze.a);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.c.trim(c1433ze.b);
        c1250s8.b = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        c1250s8.e = c1433ze.c.size();
        Map<String, String> map = c1433ze.d;
        if (map != null) {
            liFromModel = this.a.fromModel(map);
            c1250s8.c = (C1352w8) liFromModel.a;
        } else {
            liFromModel = null;
        }
        f8.f.a = c1250s8;
        int i = 0;
        char c = 1;
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(trimmingResultTrim, liFromModel);
        List list = c1433ze.c;
        ArrayList arrayList = new ArrayList();
        this.d.getClass();
        int iComputeInt32Size = f8.a != new F8().a ? CodedOutputByteBufferNano.computeInt32Size(1, f8.a) : 0;
        E8 e8 = f8.b;
        if (e8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(2, e8);
        }
        C8 c8 = f8.c;
        if (c8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(3, c8);
        }
        D8 d8 = f8.d;
        int i2 = 4;
        if (d8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(4, d8);
        }
        C1147o8 c1147o8 = f8.e;
        if (c1147o8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(5, c1147o8);
        }
        C1302u8 c1302u8 = f8.f;
        if (c1302u8 != null) {
            iComputeInt32Size += CodedOutputByteBufferNano.computeMessageSize(6, c1302u8);
        }
        ArrayList arrayList2 = new ArrayList();
        F8 f9 = new F8();
        f9.a = f8.a;
        C1302u8 c1302u9 = new C1302u8();
        f9.f = c1302u9;
        c1302u9.a = new C1250s8();
        C1250s8 c1250s9 = f9.f.a;
        C1250s8 c1250s10 = f8.f.a;
        c1250s9.b = c1250s10.b;
        c1250s9.a = c1250s10.a;
        c1250s9.e = c1250s10.e;
        c1250s9.c = c1250s10.c;
        BytesTruncatedProvider bytesTruncatedProvider2 = bytesTruncatedProvider;
        int i3 = 0;
        int i4 = iComputeInt32Size;
        while (i3 < list.size()) {
            C1397y3 c1397y3 = (C1397y3) list.get(i3);
            char c2 = c;
            C1276t8 c1276t8 = new C1276t8();
            c1276t8.a = i3;
            int i5 = i;
            Li liFromModel2 = this.b.fromModel(c1397y3);
            c1276t8.b = (C1173p8) liFromModel2.a;
            liFromModel2.b.getBytesTruncated();
            Li li = new Li(c1276t8, liFromModel2);
            Xf xf = this.d;
            C1276t8 c1276t9 = (C1276t8) li.a;
            xf.getClass();
            int iComputeTagSize = CodedOutputByteBufferNano.computeTagSize(i2);
            int iComputeMessageSizeNoTag = CodedOutputByteBufferNano.computeMessageSizeNoTag(c1276t9);
            int iComputeRawVarint32Size = iComputeTagSize + iComputeMessageSizeNoTag + ((iComputeMessageSizeNoTag & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) == 0 ? i5 : CodedOutputByteBufferNano.computeRawVarint32Size(iComputeMessageSizeNoTag));
            if (arrayList2.size() != 0 && i4 + iComputeRawVarint32Size > 204800) {
                f9.f.a.d = (C1276t8[]) arrayList2.toArray(new C1276t8[arrayList2.size()]);
                ArrayList arrayList3 = new ArrayList();
                arrayList.add(new Li(f9, bytesTruncatedProvider2));
                F8 f10 = new F8();
                f10.a = f8.a;
                C1302u8 c1302u10 = new C1302u8();
                f10.f = c1302u10;
                c1302u10.a = new C1250s8();
                C1250s8 c1250s11 = f10.f.a;
                C1250s8 c1250s12 = f8.f.a;
                c1250s11.b = c1250s12.b;
                c1250s11.a = c1250s12.a;
                c1250s11.e = c1250s12.e;
                c1250s11.c = c1250s12.c;
                bytesTruncatedProvider2 = bytesTruncatedProvider;
                i4 = iComputeInt32Size;
                f9 = f10;
                arrayList2 = arrayList3;
            }
            arrayList2.add((C1276t8) li.a);
            BytesTruncatedProvider bytesTruncatedProvider3 = li.b;
            BytesTruncatedProvider[] bytesTruncatedProviderArr = new BytesTruncatedProvider[2];
            bytesTruncatedProviderArr[i5] = bytesTruncatedProvider2;
            bytesTruncatedProviderArr[c2] = bytesTruncatedProvider3;
            bytesTruncatedProvider2 = BytesTruncatedInfo.total(bytesTruncatedProviderArr);
            i4 += iComputeRawVarint32Size;
            i3++;
            c = c2;
            i = i5;
            i2 = 4;
        }
        f9.f.a.d = (C1276t8[]) arrayList2.toArray(new C1276t8[arrayList2.size()]);
        arrayList.add(new Li(f9, bytesTruncatedProvider2));
        return arrayList;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1408ye(Ce ce, C1372x3 c1372x3, HierarchicalStringTrimmer hierarchicalStringTrimmer, Xf xf) {
        this.a = ce;
        this.b = c1372x3;
        this.c = hierarchicalStringTrimmer;
        this.d = xf;
    }

    public final C1383xe a(List<Li> list) {
        throw new UnsupportedOperationException();
    }
}
