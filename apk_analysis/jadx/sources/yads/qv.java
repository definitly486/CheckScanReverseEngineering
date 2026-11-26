package yads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class qv implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((byte[]) obj).length - ((byte[]) obj2).length;
    }
}
