package io.appmetrica.analytics.coreutils.internal.limitation.hierarchical;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionTrimInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class HierarchicalListTrimmer<T> extends BaseHierarchicalTrimmer<List<T>, CollectionTrimInfo> {
    private final HierarchicalTrimmer b;

    public HierarchicalListTrimmer(int i, HierarchicalTrimmer<T, BytesTruncatedProvider> hierarchicalTrimmer) {
        super(i);
        this.b = hierarchicalTrimmer;
    }

    public int byteSizeOf(T t) {
        return 0;
    }

    public HierarchicalTrimmer<T, BytesTruncatedProvider> getItemTrimmer() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalTrimmer
    public TrimmingResult<List<T>, CollectionTrimInfo> trim(List<T> list) {
        int iByteSizeOf;
        int i = 0;
        if (list == null || (list.size() <= getLimit() && this.b == null)) {
            iByteSizeOf = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            iByteSizeOf = 0;
            int i2 = 0;
            for (T t : list) {
                if (i2 < getLimit()) {
                    HierarchicalTrimmer hierarchicalTrimmer = this.b;
                    if (hierarchicalTrimmer != null) {
                        TrimmingResult trimmingResultTrim = hierarchicalTrimmer.trim(t);
                        Object obj = trimmingResultTrim.value;
                        iByteSizeOf += trimmingResultTrim.getBytesTruncated();
                        Objects.equals(t, trimmingResultTrim.value);
                        t = (T) obj;
                    }
                    arrayList.add(t);
                } else {
                    i++;
                    iByteSizeOf += byteSizeOf(t);
                }
                i2++;
            }
            list = arrayList;
        }
        return new TrimmingResult<>(list, new CollectionTrimInfo(i, iByteSizeOf));
    }

    public HierarchicalListTrimmer(int i) {
        this(i, null);
    }
}
