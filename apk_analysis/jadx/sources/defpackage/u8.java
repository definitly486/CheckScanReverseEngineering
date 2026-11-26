package defpackage;

import android.os.Handler;
import android.os.Looper;
import androidx.camera.core.ImageCapture;
import com.google.android.material.textfield.TextInputEditText;
import com.my.tracker.obfuscated.a2;
import com.warefly.checkscan.auth.databinding.FragmentAddEmailBinding;
import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailFragment;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ u8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AddEmailFragment.a aVar = AddEmailFragment.i;
                TextInputEditText textInputEditText = ((FragmentAddEmailBinding) obj).etEmail;
                textInputEditText.getClass();
                le9.e(textInputEditText);
                break;
            case 1:
                new Handler(Looper.getMainLooper()).postDelayed(new a80((i80) obj, 0), 0L);
                break;
            case 2:
                ((ImageCapture.ScreenFlashListener) obj).onCompleted();
                break;
            default:
                ((a2) obj).a();
                break;
        }
    }
}
