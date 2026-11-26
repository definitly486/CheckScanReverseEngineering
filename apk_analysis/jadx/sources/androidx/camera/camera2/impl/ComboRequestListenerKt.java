package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.impl.TagBundle;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class ComboRequestListenerKt {
    public static final boolean containsTag(RequestMetadata requestMetadata, String str, Object obj) {
        requestMetadata.getClass();
        str.getClass();
        obj.getClass();
        return aa4.e(((TagBundle) requestMetadata.getOrDefault(TagsKt.getCAMERAX_TAG_BUNDLE(), TagBundle.emptyBundle())).getTag(str), obj);
    }
}
