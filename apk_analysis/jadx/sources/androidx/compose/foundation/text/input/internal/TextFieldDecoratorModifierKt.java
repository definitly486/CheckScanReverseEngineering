package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.content.MediaType;
import defpackage.l1;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldDecoratorModifierKt {
    private static final Set<MediaType> MediaTypesAll;
    private static final Set<MediaType> MediaTypesText;

    static {
        MediaType.Companion companion = MediaType.Companion;
        MediaTypesText = l1.f(companion.getText());
        MediaTypesAll = l1.f(companion.getAll());
    }

    private static /* synthetic */ void getMediaTypesAll$annotations() {
    }

    private static /* synthetic */ void getMediaTypesText$annotations() {
    }
}
