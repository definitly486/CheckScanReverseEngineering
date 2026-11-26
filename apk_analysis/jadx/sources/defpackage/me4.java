package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface me4<R> extends le4 {
    R call(Object... objArr);

    R callBy(Map<Object, ? extends Object> map);

    String getName();

    List<Object> getParameters();

    ef4 getReturnType();

    List<Object> getTypeParameters();

    hf4 getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
