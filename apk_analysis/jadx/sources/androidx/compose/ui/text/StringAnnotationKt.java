package androidx.compose.ui.text;

/* JADX INFO: loaded from: classes2.dex */
public final class StringAnnotationKt {
    public static final AnnotatedString.Range<String> unbox(AnnotatedString.Range<? extends AnnotatedString.Annotation> range) {
        AnnotatedString.Annotation item = range.getItem();
        item.getClass();
        return new AnnotatedString.Range<>(((StringAnnotation) item).m8445unboximpl(), range.getStart(), range.getEnd(), range.getTag());
    }
}
