package yads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class mw5 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return defpackage.pp1.a(Integer.valueOf(((Number) obj2).intValue()), Integer.valueOf(((Number) obj).intValue()));
    }
}
