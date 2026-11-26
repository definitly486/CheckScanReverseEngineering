package androidx.camera.core.impl.utils;

import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;

/* JADX INFO: loaded from: classes.dex */
public final class LiveDataUtil {
    public static final LiveDataUtil INSTANCE = new LiveDataUtil();

    private LiveDataUtil() {
    }

    public static final <I, O> LiveData<O> map(LiveData<I> liveData, Function<I, O> function) {
        liveData.getClass();
        function.getClass();
        MappingRedirectableLiveData mappingRedirectableLiveData = new MappingRedirectableLiveData(function.apply(liveData.getValue()), function);
        mappingRedirectableLiveData.redirectTo(liveData);
        return mappingRedirectableLiveData;
    }
}
