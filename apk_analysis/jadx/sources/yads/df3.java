package yads;

import com.google.firebase.ktx.BuildConfig;

/* JADX INFO: loaded from: classes6.dex */
public enum df3 {
    /* JADX INFO: Fake field, exist only in values array */
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    /* JADX INFO: Fake field, exist only in values array */
    UNSPECIFIED(BuildConfig.VERSION_NAME),
    /* JADX INFO: Fake field, exist only in values array */
    LOADED("loaded"),
    /* JADX INFO: Fake field, exist only in values array */
    BEGIN_TO_RENDER("beginToRender"),
    /* JADX INFO: Fake field, exist only in values array */
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    /* JADX INFO: Fake field, exist only in values array */
    AUDIBLE("audible"),
    /* JADX INFO: Fake field, exist only in values array */
    OTHER("other");

    public final String b;

    df3(String str) {
        this.b = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.b;
    }
}
