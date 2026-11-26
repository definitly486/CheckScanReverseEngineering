package androidx.compose.ui.autofill;

import defpackage.l1;

/* JADX INFO: loaded from: classes2.dex */
public final class ContentType_androidKt {
    public static final ContentType ContentType(String str) {
        return new AndroidContentType(l1.f(str));
    }

    public static final String[] getContentHints(ContentType contentType) {
        contentType.getClass();
        return (String[]) ((AndroidContentType) contentType).getAndroidAutofillHints().toArray(new String[0]);
    }
}
