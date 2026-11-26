package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import com.yalantis.ucrop.UCrop;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.scanner.presentation.crop.PickGalleryPictureToCropBehavior$resolvePictureToCrop$1", f = "PickGalleryPictureToCropBehavior.kt", l = {}, m = "invokeSuspend")
public final class j86 extends pg8 implements bm3<Uri, e02<? super j59>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ g86 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j86(g86 g86Var, e02<? super j86> e02Var) {
        super(2, e02Var);
        this.m = g86Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        j86 j86Var = new j86(this.m, e02Var);
        j86Var.l = obj;
        return j86Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Uri uri, e02<? super j59> e02Var) {
        return ((j86) create(uri, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws IOException {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        Uri uri = (Uri) this.l;
        g86 g86Var = this.m;
        ScannerFragment scannerFragment = g86Var.c;
        Context context = scannerFragment.getContext();
        if (context != null) {
            File fileCreateTempFile = File.createTempFile("qr_code_to_crop", null, context.getCacheDir());
            fileCreateTempFile.deleteOnExit();
            UCrop uCropWithMaxResultSize = UCrop.of(uri, Uri.fromFile(fileCreateTempFile)).withAspectRatio(1.0f, 1.0f).withMaxResultSize(800, 800);
            UCrop.Options options = new UCrop.Options();
            options.setToolbarColor(ContextCompat.getColor(context, R.color.colorAccent));
            options.setStatusBarColor(ContextCompat.getColor(context, R.color.colorPrimaryDark));
            options.setActiveControlsWidgetColor(ContextCompat.getColor(context, R.color.colorAccent));
            options.setToolbarTitle(scannerFragment.getString(R.string.title_crop_image));
            UCrop uCropWithOptions = uCropWithMaxResultSize.withOptions(options);
            ActivityResultLauncher<Intent> activityResultLauncher = g86Var.g;
            if (activityResultLauncher == null) {
                aa4.j("intentActivityResult");
                throw null;
            }
            uCropWithOptions.start(context, activityResultLauncher);
        }
        return j59.a;
    }
}
