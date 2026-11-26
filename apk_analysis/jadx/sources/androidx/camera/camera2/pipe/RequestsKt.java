package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.m05;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class RequestsKt {
    public static final Map<CaptureRequest.Key<?>, Object> filterToCaptureRequestParameters(Map<Object, ? extends Object> map) {
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Object, ? extends Object> entry : map.entrySet()) {
            if (entry.getKey() instanceof CaptureRequest.Key) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(m05.b(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key = entry2.getKey();
            key.getClass();
            linkedHashMap2.put((CaptureRequest.Key) key, entry2.getValue());
        }
        return linkedHashMap2;
    }

    public static final Map<Metadata.Key<?>, Object> filterToMetadataParameters(Map<Object, ? extends Object> map) {
        map.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Object, ? extends Object> entry : map.entrySet()) {
            if (entry.getKey() instanceof Metadata.Key) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(m05.b(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key = entry2.getKey();
            key.getClass();
            linkedHashMap2.put((Metadata.Key) key, entry2.getValue());
        }
        return linkedHashMap2;
    }

    public static final String formatForLogs(Request request) {
        request.getClass();
        return "Request(" + request.getStreams() + ")@" + Integer.toHexString(request.hashCode());
    }

    public static final <T> T getOrDefault(Request request, Metadata.Key<T> key, T t) {
        request.getClass();
        key.getClass();
        T t2 = (T) request.get(key);
        return t2 == null ? t : t2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void putAllMetadata(Map<Object, Object> map, Map<?, ? extends Object> map2) {
        map.getClass();
        map2.getClass();
        map.putAll(map2);
    }

    public static final void writeParameter(CaptureRequest.Builder builder, Object obj, Object obj2) {
        builder.getClass();
        if (obj == null || !(obj instanceof CaptureRequest.Key)) {
            return;
        }
        try {
            builder.set((CaptureRequest.Key) obj, obj2);
        } catch (IllegalArgumentException e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to set [" + ((CaptureRequest.Key) obj).getName() + ": " + obj2 + "] on CaptureRequest.Builder", e);
            }
        }
    }

    public static final void writeParameters(CaptureRequest.Builder builder, Map<?, ? extends Object> map) {
        builder.getClass();
        map.getClass();
        for (Map.Entry<?, ? extends Object> entry : map.entrySet()) {
            writeParameter(builder, entry.getKey(), entry.getValue());
        }
    }

    public static final <T> T getOrDefault(Request request, CaptureRequest.Key<T> key, T t) {
        request.getClass();
        key.getClass();
        T t2 = (T) request.get(key);
        return t2 == null ? t : t2;
    }
}
