package androidx.window.area;

import android.content.Context;
import android.view.View;
import android.view.Window;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowAreaSessionPresenter extends WindowAreaSession {
    Context getContext();

    Window getWindow();

    void setContentView(View view);
}
