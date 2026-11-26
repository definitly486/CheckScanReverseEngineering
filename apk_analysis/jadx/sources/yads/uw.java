package yads;

import android.graphics.Bitmap;
import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class uw {
    public final Bitmap a;
    public final Uri b;
    public final hu c;

    public uw(Bitmap bitmap, Uri uri, hu huVar) {
        this.a = bitmap;
        this.b = uri;
        this.c = huVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && uw.class == obj.getClass()) {
            uw uwVar = (uw) obj;
            if (!this.a.equals(uwVar.a) || this.c != uwVar.c) {
                return false;
            }
            Uri uri = uwVar.b;
            Uri uri2 = this.b;
            if (uri2 != null) {
                return uri2.equals(uri);
            }
            if (uri == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + (this.a.hashCode() * 31)) * 31;
        Uri uri = this.b;
        return iHashCode + (uri != null ? uri.hashCode() : 0);
    }
}
