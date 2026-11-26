package androidx.compose.ui.autofill;

import defpackage.mr7;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidContentType implements ContentType {
    private final Set<String> androidAutofillHints;

    public AndroidContentType(Set<String> set) {
        this.androidAutofillHints = set;
    }

    public final Set<String> getAndroidAutofillHints() {
        return this.androidAutofillHints;
    }

    @Override // androidx.compose.ui.autofill.ContentType
    public ContentType plus(ContentType contentType) {
        contentType.getClass();
        return new AndroidContentType(mr7.l(this.androidAutofillHints, ((AndroidContentType) contentType).androidAutofillHints));
    }
}
