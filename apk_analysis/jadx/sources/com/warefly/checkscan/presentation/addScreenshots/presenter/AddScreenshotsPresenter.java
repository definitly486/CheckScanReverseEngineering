package com.warefly.checkscan.presentation.addScreenshots.presenter;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.addScreenshots.presenter.AddScreenshotsPresenter;
import com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView;
import defpackage.b36;
import defpackage.cp2;
import defpackage.cu3;
import defpackage.d37;
import defpackage.ex0;
import defpackage.f9;
import defpackage.gh4;
import defpackage.h6;
import defpackage.hy1;
import defpackage.ii7;
import defpackage.j59;
import defpackage.j95;
import defpackage.l08;
import defpackage.l89;
import defpackage.lg5;
import defpackage.m96;
import defpackage.n05;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.ot6;
import defpackage.p51;
import defpackage.pt6;
import defpackage.ri7;
import defpackage.rj;
import defpackage.si7;
import defpackage.ta8;
import defpackage.tt6;
import defpackage.uf3;
import defpackage.uz7;
import defpackage.xz7;
import defpackage.yb8;
import defpackage.yt6;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class AddScreenshotsPresenter extends BasePresenter<AddScreenshotsView> implements cu3 {
    private static final String BANK_IMAGE_FIELD_NAME = "bankImage";
    public static final b Companion = new b();
    private static final String IMAGE_TYPE = "image/*";
    private static final String SHOP_IMAGE_FIELD_NAME = "shopImage";
    private final p51 cashBackInteractor;
    private final hy1 contentResolverProvider;
    private final long id;
    private final HashMap<si7, ri7> imagesMap;
    private final uf3 router;

    public static final class a extends gh4 implements nl3<ot6, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(ot6 ot6Var) {
            AddScreenshotsView addScreenshotsView;
            AddScreenshotsView addScreenshotsView2;
            ot6 ot6Var2 = ot6Var;
            pt6 pt6Var = ot6Var2.d;
            tt6 tt6Var = ot6Var2.e;
            String str = pt6Var.c;
            String str2 = pt6Var.b;
            boolean zM = ta8.M(str);
            AddScreenshotsPresenter addScreenshotsPresenter = AddScreenshotsPresenter.this;
            if (!zM && !ta8.M(str2) && (addScreenshotsView2 = (AddScreenshotsView) addScreenshotsPresenter.getViewState()) != null) {
                addScreenshotsView2.showBankDescription(str2, pt6Var.c);
            }
            String str3 = tt6Var.c;
            String str4 = tt6Var.d;
            String str5 = tt6Var.b;
            if (!ta8.M(str3) && !ta8.M(str5) && (addScreenshotsView = (AddScreenshotsView) addScreenshotsPresenter.getViewState()) != null) {
                addScreenshotsView.showShopDescription(str5, tt6Var.c);
            }
            if (!ta8.M(str4)) {
                ((AddScreenshotsView) addScreenshotsPresenter.getViewState()).showShopExampleImage(str4);
            }
            return j59.a;
        }
    }

    public static final class b {
    }

    public static final class c extends gh4 implements nl3<Throwable, j59> {
        public static final c f = new c(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<String, j59> {
        public final /* synthetic */ si7 f;
        public final /* synthetic */ AddScreenshotsPresenter g;
        public final /* synthetic */ Uri h;

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[si7.values().length];
                try {
                    iArr[si7.Bank.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[si7.Shop.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(AddScreenshotsPresenter addScreenshotsPresenter, Uri uri, si7 si7Var) {
            super(1);
            this.f = si7Var;
            this.g = addScreenshotsPresenter;
            this.h = uri;
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            AddScreenshotsView addScreenshotsView;
            String str2 = str;
            int i = a.a[this.f.ordinal()];
            AddScreenshotsPresenter addScreenshotsPresenter = this.g;
            if (i == 1) {
                AddScreenshotsView addScreenshotsView2 = (AddScreenshotsView) addScreenshotsPresenter.getViewState();
                if (addScreenshotsView2 != null) {
                    str2.getClass();
                    addScreenshotsView2.replaceLoadBankButton(str2);
                }
            } else if (i == 2 && (addScreenshotsView = (AddScreenshotsView) addScreenshotsPresenter.getViewState()) != null) {
                str2.getClass();
                addScreenshotsView.replaceLoadShopButton(str2, this.h);
            }
            addScreenshotsPresenter.checkUploadEnable();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<cp2, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(cp2 cp2Var) {
            AddScreenshotsView addScreenshotsView = (AddScreenshotsView) AddScreenshotsPresenter.this.getViewState();
            if (addScreenshotsView != null) {
                addScreenshotsView.showLoading(true);
            }
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Throwable, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            AddScreenshotsPresenter.this.showError();
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<l89, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(l89 l89Var) {
            l89Var.a(AddScreenshotsPresenter.this);
            return j59.a;
        }
    }

    public AddScreenshotsPresenter(p51 p51Var, hy1 hy1Var, uf3 uf3Var, long j) {
        p51Var.getClass();
        hy1Var.getClass();
        uf3Var.getClass();
        this.cashBackInteractor = p51Var;
        this.contentResolverProvider = hy1Var;
        this.router = uf3Var;
        this.id = j;
        si7 si7Var = si7.Shop;
        ri7 ri7Var = ri7.c;
        this.imagesMap = n05.d(new b36(si7Var, ri7Var), new b36(si7.Bank, ri7Var));
        BasePresenter.disposeOnDestroy$default(this, yb8.f(p51Var.a.c(j).i(ne7.c).f(rj.a()), null, new a(), 1), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkUploadEnable() {
        AddScreenshotsView addScreenshotsView = (AddScreenshotsView) getViewState();
        if (addScreenshotsView != null) {
            HashMap<si7, ri7> map = this.imagesMap;
            boolean z = true;
            if (!map.isEmpty()) {
                Iterator<Map.Entry<si7, ri7>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().a == null) {
                        z = false;
                        break;
                    }
                }
            }
            addScreenshotsView.isUploadButtonVisible(z);
        }
    }

    private final void getScreenshotByUri(final Uri uri, final si7 si7Var) {
        if (uri == null) {
            return;
        }
        disposeOnDestroy(yb8.d(new l08(new Callable() { // from class: e9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return AddScreenshotsPresenter.getScreenshotByUri$lambda$4(this.b, uri, si7Var);
            }
        }).i(ne7.c).f(rj.a()), c.f, new d(this, uri, si7Var)), "getScreenshotByUri" + si7Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getScreenshotByUri$lambda$4(AddScreenshotsPresenter addScreenshotsPresenter, Uri uri, si7 si7Var) throws FileNotFoundException {
        Integer numValueOf;
        ContentResolver contentResolverA = addScreenshotsPresenter.contentResolverProvider.a();
        Cursor cursorQuery = contentResolverA.query(uri, null, null, null, null);
        if (cursorQuery != null) {
            try {
                numValueOf = Integer.valueOf(cursorQuery.getColumnIndex("_display_name"));
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    m96.c(cursorQuery, th);
                    throw th2;
                }
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            cursorQuery.moveToFirst();
            String string = cursorQuery.getString(numValueOf.intValue());
            HashMap<si7, ri7> map = addScreenshotsPresenter.imagesMap;
            ri7 ri7Var = (ri7) n05.c(si7Var, map);
            string.getClass();
            map.put(si7Var, ri7.a(ri7Var, null, string, 1));
        }
        j59 j59Var = j59.a;
        m96.c(cursorQuery, null);
        InputStream inputStreamOpenInputStream = contentResolverA.openInputStream(uri);
        if (inputStreamOpenInputStream != null) {
            try {
                File fileCreateTempFile = File.createTempFile(si7Var.name(), "image");
                FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                try {
                    fileOutputStream.write(ex0.d(inputStreamOpenInputStream));
                    fileOutputStream.close();
                    HashMap<si7, ri7> map2 = addScreenshotsPresenter.imagesMap;
                    map2.put(si7Var, ri7.a((ri7) n05.c(si7Var, map2), fileCreateTempFile, null, 2));
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        m96.c(fileOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    m96.c(inputStreamOpenInputStream, th5);
                    throw th6;
                }
            }
        }
        m96.c(inputStreamOpenInputStream, null);
        return ((ri7) n05.c(si7Var, addScreenshotsPresenter.imagesMap)).b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void uploadScreenshots$lambda$6(AddScreenshotsPresenter addScreenshotsPresenter) {
        AddScreenshotsView addScreenshotsView = (AddScreenshotsView) addScreenshotsPresenter.getViewState();
        if (addScreenshotsView != null) {
            addScreenshotsView.showLoading(false);
        }
    }

    public final void getUriBankScreenshot(Uri uri) {
        getScreenshotByUri(uri, si7.Bank);
    }

    public final void getUriShopScreenshot(Uri uri) {
        getScreenshotByUri(uri, si7.Shop);
    }

    public final void onBackClick() {
        this.router.i();
    }

    public final j59 onHelpScreenshotClick() {
        AddScreenshotsView addScreenshotsView = (AddScreenshotsView) getViewState();
        if (addScreenshotsView == null) {
            return null;
        }
        addScreenshotsView.showHelpScreenshotDialog(this.id);
        return j59.a;
    }

    public final j59 onLoadBankScreenshotClick() {
        AddScreenshotsView addScreenshotsView = (AddScreenshotsView) getViewState();
        if (addScreenshotsView == null) {
            return null;
        }
        addScreenshotsView.getBankScreenshot();
        return j59.a;
    }

    public final j59 onLoadShopScreenshotClick() {
        AddScreenshotsView addScreenshotsView = (AddScreenshotsView) getViewState();
        if (addScreenshotsView == null) {
            return null;
        }
        addScreenshotsView.getShopScreenshot();
        return j59.a;
    }

    @Override // defpackage.cu3
    public void showError() {
        AddScreenshotsView addScreenshotsView = (AddScreenshotsView) getViewState();
        if (addScreenshotsView != null) {
            addScreenshotsView.showSomeError();
        }
    }

    @Override // defpackage.cu3
    public void showSuccess() {
        this.router.h(ii7.a);
    }

    public final void uploadScreenshots() {
        ri7 ri7Var = (ri7) n05.c(si7.Bank, this.imagesMap);
        ri7 ri7Var2 = (ri7) n05.c(si7.Shop, this.imagesMap);
        File file = ri7Var.a;
        if (file == null || ri7Var2.a == null) {
            return;
        }
        p51 p51Var = this.cashBackInteractor;
        long j = this.id;
        String str = ri7Var.b;
        Pattern pattern = j95.e;
        lg5.c cVarA = lg5.c.a.a(BANK_IMAGE_FIELD_NAME, str, new d37(j95.a.a(IMAGE_TYPE), file));
        String str2 = ri7Var2.b;
        File file2 = ri7Var2.a;
        j95 j95VarA = j95.a.a(IMAGE_TYPE);
        file2.getClass();
        lg5.c cVarA2 = lg5.c.a.a(SHOP_IMAGE_FIELD_NAME, str2, new d37(j95VarA, file2));
        yt6 yt6Var = yt6.ADMITAD_ONLINE;
        p51Var.getClass();
        yt6Var.getClass();
        disposeOnDestroy(yb8.d(new uz7(new xz7(p51Var.a.l(j, cVarA, cVarA2, yt6Var).i(ne7.c).f(rj.a()), new f9(new e(), 0)), new h6() { // from class: g9
            @Override // defpackage.h6
            public final void run() {
                AddScreenshotsPresenter.uploadScreenshots$lambda$6(this.a);
            }
        }), new f(), new g()), "uploadScreenshots");
    }
}
