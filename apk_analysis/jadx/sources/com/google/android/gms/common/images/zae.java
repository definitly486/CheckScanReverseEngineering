package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.base.zai;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zae extends zag {
    public final WeakReference c;

    public zae(ImageView imageView, int i) {
        super(Uri.EMPTY, i);
        Asserts.checkNotNull(imageView);
        this.c = new WeakReference(imageView);
    }

    @Override // com.google.android.gms.common.images.zag
    public final void a(Drawable drawable, boolean z, boolean z2, boolean z3) {
        ImageView imageView = (ImageView) this.c.get();
        if (imageView != null) {
            if (!z2 && !z3 && (imageView instanceof zai)) {
                throw null;
            }
            boolean z4 = false;
            if (!z2 && !z) {
                z4 = true;
            }
            if (z4) {
                Drawable drawable2 = imageView.getDrawable();
                if (drawable2 == null) {
                    drawable2 = null;
                } else if (drawable2 instanceof com.google.android.gms.internal.base.zah) {
                    drawable2 = ((com.google.android.gms.internal.base.zah) drawable2).zab();
                }
                drawable = new com.google.android.gms.internal.base.zah(drawable2, drawable);
            }
            imageView.setImageDrawable(drawable);
            if (imageView instanceof zai) {
                throw null;
            }
            if (drawable == null || !z4) {
                return;
            }
            ((com.google.android.gms.internal.base.zah) drawable).zac(250);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zae)) {
            return false;
        }
        ImageView imageView = (ImageView) this.c.get();
        ImageView imageView2 = (ImageView) ((zae) obj).c.get();
        return (imageView2 == null || imageView == null || !Objects.equal(imageView2, imageView)) ? false : true;
    }

    public final int hashCode() {
        return 0;
    }

    public zae(ImageView imageView, Uri uri) {
        super(uri, 0);
        Asserts.checkNotNull(imageView);
        this.c = new WeakReference(imageView);
    }
}
