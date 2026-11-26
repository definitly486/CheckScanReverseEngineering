package yads;

import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class zf6 implements View.OnLayoutChangeListener {
    public final /* synthetic */ ImageView b;
    public final /* synthetic */ View c;

    public zf6(ImageView imageView, View view) {
        this.b = imageView;
        this.c = view;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        ag6.b(this.b, this.c);
    }
}
