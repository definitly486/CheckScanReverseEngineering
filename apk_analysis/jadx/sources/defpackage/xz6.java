package defpackage;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import androidx.camera.video.Recorder;
import com.google.android.material.search.SearchView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xz6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xz6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((Recorder) obj).tryServicePendingRecording();
                break;
            case 1:
                ((SearchView) obj).lambda$clearFocusAndHideKeyboard$11();
                break;
            case 2:
                ((WebView) obj).destroy();
                break;
            default:
                View view = (View) obj;
                view.requestFocus();
                Context context = view.getContext();
                if (context != null) {
                    Object systemService = context.getSystemService("input_method");
                    InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
                    if (inputMethodManager != null) {
                        inputMethodManager.showSoftInput(view, 1);
                    }
                }
                break;
        }
    }
}
