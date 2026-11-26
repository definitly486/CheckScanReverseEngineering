package androidx.camera.core.impl.utils;

import android.util.Range;
import defpackage.aa4;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class RangeUtil {
    public static final RangeUtil INSTANCE = new RangeUtil();

    private RangeUtil() {
    }

    public static final Set<Range<Integer>> filterFixedRanges(Set<Range<Integer>> set) {
        set.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            Range range = (Range) obj;
            if (aa4.e(range.getUpper(), range.getLower())) {
                arrayList.add(obj);
            }
        }
        return new LinkedHashSet(arrayList);
    }
}
