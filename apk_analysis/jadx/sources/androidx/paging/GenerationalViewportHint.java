package androidx.paging;

import defpackage.aa4;

/* JADX INFO: loaded from: classes3.dex */
public final class GenerationalViewportHint {
    private final int generationId;
    private final ViewportHint hint;

    public GenerationalViewportHint(int i, ViewportHint viewportHint) {
        viewportHint.getClass();
        this.generationId = i;
        this.hint = viewportHint;
    }

    public static /* synthetic */ GenerationalViewportHint copy$default(GenerationalViewportHint generationalViewportHint, int i, ViewportHint viewportHint, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = generationalViewportHint.generationId;
        }
        if ((i2 & 2) != 0) {
            viewportHint = generationalViewportHint.hint;
        }
        return generationalViewportHint.copy(i, viewportHint);
    }

    public final int component1() {
        return this.generationId;
    }

    public final ViewportHint component2() {
        return this.hint;
    }

    public final GenerationalViewportHint copy(int i, ViewportHint viewportHint) {
        viewportHint.getClass();
        return new GenerationalViewportHint(i, viewportHint);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GenerationalViewportHint)) {
            return false;
        }
        GenerationalViewportHint generationalViewportHint = (GenerationalViewportHint) obj;
        return this.generationId == generationalViewportHint.generationId && aa4.e(this.hint, generationalViewportHint.hint);
    }

    public final int getGenerationId() {
        return this.generationId;
    }

    public final ViewportHint getHint() {
        return this.hint;
    }

    public int hashCode() {
        return this.hint.hashCode() + (Integer.hashCode(this.generationId) * 31);
    }

    public String toString() {
        return "GenerationalViewportHint(generationId=" + this.generationId + ", hint=" + this.hint + ')';
    }
}
