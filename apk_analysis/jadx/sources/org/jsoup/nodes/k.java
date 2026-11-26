package org.jsoup.nodes;

import java.util.Comparator;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class k implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((String) obj2).length() - ((String) obj).length();
    }
}
