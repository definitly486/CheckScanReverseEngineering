package com.warefly.checkscan.presentation.scanner.info.presenter;

import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.scanner.info.view.ScannerInfoView;
import defpackage.be7;
import defpackage.pz3;
import defpackage.s47;
import defpackage.u96;
import defpackage.uf3;
import defpackage.xd7;
import defpackage.yh7;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerInfoPresenter extends BasePresenter<ScannerInfoView> {
    private final List<pz3> content;
    private final uf3 flowRouter;

    public ScannerInfoPresenter(uf3 uf3Var, s47 s47Var) {
        uf3Var.getClass();
        s47Var.getClass();
        this.flowRouter = uf3Var;
        this.content = u96.i(new be7(s47Var.getString(R.string.scanner_info_title_qr)), new xd7(s47Var.getString(R.string.scanner_info_subtitle_qr), s47Var.getString(R.string.scanner_info_description_incorrect_qr), s47Var.a(R.drawable.ic_scanner_info_error)), new xd7(s47Var.getString(R.string.scanner_info_title_scanner_dont_see_qr), s47Var.getString(R.string.scanner_info_description_scanner_dont_see_qr), s47Var.a(R.drawable.ic_scanner_dont_see)), new be7(s47Var.getString(R.string.scanner_info_title_time)), new xd7(s47Var.getString(R.string.scanner_info_description_speed_time), s47Var.a(R.drawable.ic_scanner_cart)), new xd7(s47Var.getString(R.string.scanner_info_description_queque_time), s47Var.a(R.drawable.ic_scanner_info_settings)), new xd7(s47Var.getString(R.string.scanner_info_description_date_time), s47Var.a(R.drawable.ic_scanner_info_message)));
    }

    public final void onBackClick() {
        this.flowRouter.a(new yh7(0));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        ScannerInfoView scannerInfoView = (ScannerInfoView) getViewState();
        if (scannerInfoView != null) {
            scannerInfoView.showContent(this.content);
        }
    }
}
