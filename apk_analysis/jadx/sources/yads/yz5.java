package yads;

import android.content.Context;
import android.graphics.Point;
import android.view.GestureDetector;

/* JADX INFO: loaded from: classes6.dex */
public final class yz5 {
    public Point a;
    public final GestureDetector b;

    public yz5(Context context) {
        this.b = new GestureDetector(context, new xz5(this));
    }
}
