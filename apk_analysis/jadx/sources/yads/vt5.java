package yads;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class vt5 implements lq3 {
    public final View b;

    public vt5(View view) {
        this.b = view;
    }

    @Override // yads.lq3
    public final String a() {
        return String.format("supports: {inlineVideo: %s}", Arrays.copyOf(new Object[]{Boolean.valueOf(this.b.isHardwareAccelerated())}, 1));
    }
}
