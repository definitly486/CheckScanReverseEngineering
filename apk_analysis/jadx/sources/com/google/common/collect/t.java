package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface t<E> extends Collection<E> {

    public interface a<E> {
        E a();

        int getCount();
    }

    int count(Object obj);

    Set<E> elementSet();

    Set<a<E>> entrySet();
}
