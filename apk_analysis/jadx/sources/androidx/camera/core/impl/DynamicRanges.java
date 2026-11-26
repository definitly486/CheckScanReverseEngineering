package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;
import androidx.core.util.Preconditions;
import defpackage.fg;
import defpackage.ir7;
import defpackage.l1;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class DynamicRanges {
    public static final DynamicRanges INSTANCE = new DynamicRanges();

    private DynamicRanges() {
    }

    private final boolean canMatchBitDepth(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
        Preconditions.checkState(dynamicRange2.isFullySpecified(), "Fully specified range is not actually fully specified.");
        return dynamicRange.getBitDepth() == 0 || dynamicRange.getBitDepth() == dynamicRange2.getBitDepth();
    }

    private final boolean canMatchEncoding(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
        Preconditions.checkState(dynamicRange2.isFullySpecified(), "Fully specified range is not actually fully specified.");
        int encoding = dynamicRange.getEncoding();
        if (encoding == 0) {
            return true;
        }
        int encoding2 = dynamicRange2.getEncoding();
        return (encoding == 2 && encoding2 != 1) || encoding == encoding2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0030 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0032 A[RETURN] */
    public static final boolean canResolve(DynamicRange dynamicRange, Set<DynamicRange> set) {
        dynamicRange.getClass();
        set.getClass();
        if (dynamicRange.isFullySpecified()) {
            return set.contains(dynamicRange);
        }
        for (Object obj : set) {
            if (INSTANCE.canResolveUnderSpecifiedTo(dynamicRange, (DynamicRange) obj)) {
                if (obj != null) {
                    return true;
                }
                return false;
            }
        }
        obj = null;
        if (obj != null) {
            return true;
        }
        return false;
    }

    private final boolean canResolveUnderSpecifiedTo(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
        return canMatchBitDepth(dynamicRange, dynamicRange2) && canMatchEncoding(dynamicRange, dynamicRange2);
    }

    public static final Set<DynamicRange> findAllPossibleMatches(Set<DynamicRange> set, Set<DynamicRange> set2) {
        set.getClass();
        set2.getClass();
        if (set.isEmpty()) {
            fg.c("Candidate dynamic range set must contain at least 1 candidate dynamic range.");
            return null;
        }
        ir7 ir7Var = new ir7();
        for (DynamicRange dynamicRange : set) {
            if (!dynamicRange.isFullySpecified()) {
                for (DynamicRange dynamicRange2 : set2) {
                    if (INSTANCE.canResolveUnderSpecifiedTo(dynamicRange, dynamicRange2)) {
                        ir7Var.add(dynamicRange2);
                    }
                }
            } else if (set2.contains(dynamicRange)) {
                ir7Var.add(dynamicRange);
            }
        }
        return l1.d(ir7Var);
    }
}
