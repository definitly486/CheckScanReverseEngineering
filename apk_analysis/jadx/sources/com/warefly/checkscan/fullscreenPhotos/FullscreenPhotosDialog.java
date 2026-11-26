package com.warefly.checkscan.fullscreenPhotos;

import android.os.Bundle;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogFullScreenPhotoBinding;
import defpackage.bs6;
import defpackage.gl4;
import defpackage.il3;
import defpackage.kd;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.x07;
import defpackage.ze4;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class FullscreenPhotosDialog extends FullScreenDialog<DialogFullScreenPhotoBinding> {
    public static final /* synthetic */ ze4<Object>[] d;
    public final gl4 c;

    static {
        bs6 bs6Var = new bs6(FullscreenPhotosDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogFullScreenPhotoBinding;", 0);
        x07.a.getClass();
        d = new ze4[]{bs6Var};
    }

    public FullscreenPhotosDialog() {
        super(R.layout.dialog_full_screen_photo);
        this.c = new gl4(DialogFullScreenPhotoBinding.class);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        ArrayList<String> stringArrayList;
        view.getClass();
        super.onViewCreated(view, bundle);
        Map mapSingletonMap = Collections.singletonMap("Products", "VIEW_FULL_SIZE_PICTURE");
        mapSingletonMap.getClass();
        new kd.h0.a.C0263a("Products events", mapSingletonMap).a();
        ViewPager viewPager = ((DialogFullScreenPhotoBinding) this.c.getValue(this, d[0])).photosViewPager;
        Bundle arguments = getArguments();
        List listT0 = (arguments == null || (stringArrayList = arguments.getStringArrayList("PHOTOS_KEY")) == null) ? null : qn1.t0(stringArrayList);
        if (listT0 == null) {
            listT0 = kx2.b;
        }
        viewPager.setAdapter(new il3(listT0));
    }
}
