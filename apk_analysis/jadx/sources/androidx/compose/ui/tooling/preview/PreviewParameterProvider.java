package androidx.compose.ui.tooling.preview;

import defpackage.u96;
import defpackage.zo7;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface PreviewParameterProvider<T> {

    public static final class DefaultImpls {
        @Deprecated
        public static <T> int getCount(PreviewParameterProvider<T> previewParameterProvider) {
            return PreviewParameterProvider.super.getCount();
        }

        @Deprecated
        public static <T> String getDisplayName(PreviewParameterProvider<T> previewParameterProvider, int i) {
            return PreviewParameterProvider.super.getDisplayName(i);
        }
    }

    default int getCount() {
        zo7<T> values = getValues();
        values.getClass();
        Iterator<T> it = values.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
            if (i < 0) {
                u96.n();
                throw null;
            }
        }
        return i;
    }

    default String getDisplayName(int i) {
        return null;
    }

    zo7<T> getValues();
}
