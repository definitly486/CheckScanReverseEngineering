package androidx.compose.runtime;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public interface MutableState<T> extends State<T> {
    T component1();

    nl3<T, j59> component2();

    @Override // androidx.compose.runtime.State
    T getValue();

    void setValue(T t);
}
