package defpackage;

import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;
import androidx.window.area.WindowAreaControllerImpl;
import androidx.window.area.WindowAreaSessionCallback;
import com.my.tracker.obfuscated.e;
import com.warefly.checkscan.presentation.bonuses.search.view.BonusesSearchFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rr0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rr0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                BonusesSearchFragment bonusesSearchFragment = (BonusesSearchFragment) obj;
                ze4<Object>[] ze4VarArr = BonusesSearchFragment.l;
                if (bonusesSearchFragment.isResumed()) {
                    WindowCompat.getInsetsController(bonusesSearchFragment.requireActivity().getWindow(), bonusesSearchFragment.n().searchView).show(WindowInsetsCompat.Type.ime());
                }
                break;
            case 1:
                ((EncoderImpl) obj).signalEndOfInputStream();
                break;
            case 2:
                ((PreloadMediaSource) obj).lambda$releasePreloadMediaSource$3();
                break;
            case 3:
                WindowAreaControllerImpl.transferActivityToWindowArea$lambda$1((WindowAreaSessionCallback) obj);
                break;
            default:
                ((e) obj).b();
                break;
        }
    }
}
