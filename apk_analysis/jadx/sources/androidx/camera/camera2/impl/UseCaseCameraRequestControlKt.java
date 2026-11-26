package androidx.camera.camera2.impl;

import androidx.camera.core.impl.TagBundle;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraRequestControlKt {
    public static final int DEFAULT_REQUEST_TEMPLATE = 1;

    public static final Map<String, Object> toMap(TagBundle tagBundle) {
        tagBundle.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set<String> setListKeys = tagBundle.listKeys();
        setListKeys.getClass();
        for (String str : setListKeys) {
            Object tag = tagBundle.getTag(str);
            tag.getClass();
            linkedHashMap.put(str, tag);
        }
        return linkedHashMap;
    }
}
