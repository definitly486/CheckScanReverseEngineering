package com.google.firebase.inappmessaging.display.internal;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.GlideException;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import com.google.firebase.inappmessaging.model.InAppMessage;
import defpackage.o37;
import defpackage.wk8;
import defpackage.y82;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes4.dex */
public class GlideErrorListener implements o37<Drawable> {
    private final FirebaseInAppMessagingDisplayCallbacks displayCallbacks;
    private final InAppMessage inAppMessage;

    public GlideErrorListener(InAppMessage inAppMessage, FirebaseInAppMessagingDisplayCallbacks firebaseInAppMessagingDisplayCallbacks) {
        this.inAppMessage = inAppMessage;
        this.displayCallbacks = firebaseInAppMessagingDisplayCallbacks;
    }

    @Override // defpackage.o37
    public boolean onLoadFailed(GlideException glideException, Object obj, wk8<Drawable> wk8Var, boolean z) {
        Logging.logd("Image Downloading  Error : " + glideException.getMessage() + StringUtils.PROCESS_POSTFIX_DELIMITER + glideException.getCause());
        if (this.inAppMessage == null || this.displayCallbacks == null) {
            return false;
        }
        boolean zContains = glideException.getLocalizedMessage().contains("Failed to decode");
        FirebaseInAppMessagingDisplayCallbacks firebaseInAppMessagingDisplayCallbacks = this.displayCallbacks;
        if (zContains) {
            firebaseInAppMessagingDisplayCallbacks.displayErrorEncountered(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.IMAGE_UNSUPPORTED_FORMAT);
            return false;
        }
        firebaseInAppMessagingDisplayCallbacks.displayErrorEncountered(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.UNSPECIFIED_RENDER_ERROR);
        return false;
    }

    @Override // defpackage.o37
    public boolean onResourceReady(Drawable drawable, Object obj, wk8<Drawable> wk8Var, y82 y82Var, boolean z) {
        Logging.logd("Image Downloading  Success : " + drawable);
        return false;
    }
}
