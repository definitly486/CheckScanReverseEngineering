package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Uf implements Converter {
    public final Ce a;
    public final Lf b;
    public final C1422z3 c;
    public final Wf d;
    public final HierarchicalStringTrimmer e;
    public final HierarchicalStringTrimmer f;

    public Uf() {
        this(new Ce(), new Lf(), new C1422z3(), new Wf(), new HierarchicalStringTrimmer(100), new HierarchicalStringTrimmer(1000));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(Vf vf) {
        Li liFromModel;
        Li liFromModel2;
        Li liA;
        Li liA2;
        C1402y8 c1402y8 = new C1402y8();
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.e.trim(vf.a);
        c1402y8.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.f.trim(vf.b);
        c1402y8.b = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        List<String> list = vf.c;
        Li liFromModel3 = null;
        if (list != null) {
            liFromModel = this.c.fromModel(list);
            c1402y8.c = (C1199q8) liFromModel.a;
        } else {
            liFromModel = null;
        }
        Map<String, String> map = vf.d;
        if (map != null) {
            liFromModel2 = this.a.fromModel(map);
            c1402y8.d = (C1352w8) liFromModel2.a;
        } else {
            liFromModel2 = null;
        }
        Nf nf = vf.e;
        if (nf != null) {
            liA = this.b.fromModel(nf);
            c1402y8.e = (C1377x8) liA.a;
        } else {
            liA = null;
        }
        Nf nf2 = vf.f;
        if (nf2 != null) {
            liA2 = this.b.fromModel(nf2);
            c1402y8.f = (C1377x8) liA2.a;
        } else {
            liA2 = null;
        }
        List<String> list2 = vf.g;
        if (list2 != null) {
            liFromModel3 = this.d.fromModel(list2);
            c1402y8.g = (C1427z8[]) liFromModel3.a;
        }
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(trimmingResultTrim, trimmingResultTrim2, liFromModel, liFromModel2, liA, liA2, liFromModel3);
        bytesTruncatedProvider.getBytesTruncated();
        return new Li(c1402y8, bytesTruncatedProvider);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Uf(Ce ce, Lf lf, C1422z3 c1422z3, Wf wf, HierarchicalStringTrimmer hierarchicalStringTrimmer, HierarchicalStringTrimmer hierarchicalStringTrimmer2) {
        this.a = ce;
        this.b = lf;
        this.c = c1422z3;
        this.d = wf;
        this.e = hierarchicalStringTrimmer;
        this.f = hierarchicalStringTrimmer2;
    }

    public final Vf a(Li li) {
        throw new UnsupportedOperationException();
    }
}
