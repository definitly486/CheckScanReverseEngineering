package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.CheckScanApplication;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemNotificationCardBinding;
import com.warefly.checkscan.presentation.notifications.presenter.NotificationsPresenter;
import eightbitlab.com.blurview.BlurView;
import java.time.Clock;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class vo5 extends vd9<cp5, ItemNotificationCardBinding> {
    public final NotificationsPresenter b;

    public interface a {
        void onNotificationCardClicked(boolean z, String str);

        void onNotificationOrdClicked(b06 b06Var);
    }

    public vo5(NotificationsPresenter notificationsPresenter) {
        super(uo5.c);
        this.b = notificationsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof cp5;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00b5  */
    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, cp5 cp5Var) {
        j59 j59Var;
        j59 j59Var2;
        String str;
        String strC;
        ItemNotificationCardBinding itemNotificationCardBinding = (ItemNotificationCardBinding) viewBinding;
        cp5 cp5Var2 = cp5Var;
        itemNotificationCardBinding.getClass();
        String str2 = cp5Var2.g;
        cp5.a aVar = cp5Var2.h;
        String str3 = cp5Var2.b;
        itemNotificationCardBinding.getRoot().setOnClickListener(null);
        if (!cp5Var2.e) {
            str3.getClass();
            Map mapSingletonMap = Collections.singletonMap("Shown", str3);
            mapSingletonMap.getClass();
            new kd.v.a.c(mapSingletonMap).c();
        }
        if (cp5Var2.j != null && aVar == null) {
            ConstraintLayout root = itemNotificationCardBinding.getRoot();
            root.getClass();
            root.setOnClickListener(new lb7(new p30(this, cp5Var2, 2)));
        }
        int i = 1;
        if (str2 != null) {
            com.bumptech.glide.a.e(itemNotificationCardBinding.getRoot()).h(str2).B(new ur3(pl2.d(16.0f), pl2.d(16.0f), 0.0f, 0.0f), true).L(itemNotificationCardBinding.ivBanner);
            ImageView imageView = itemNotificationCardBinding.ivBanner;
            imageView.getClass();
            imageView.setVisibility(0);
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            ImageView imageView2 = itemNotificationCardBinding.ivBanner;
            imageView2.getClass();
            imageView2.setVisibility(8);
        }
        if (aVar != null) {
            itemNotificationCardBinding.btnGo.setText(aVar.a);
            TextView textView = itemNotificationCardBinding.btnGo;
            textView.getClass();
            textView.setVisibility(0);
            String str4 = aVar.b;
            if (str4 != null) {
                TextView textView2 = itemNotificationCardBinding.btnGo;
                textView2.getClass();
                textView2.setOnClickListener(new lb7(new qo0(this, str4, i)));
                j59Var2 = j59.a;
            } else {
                j59Var2 = null;
            }
        } else {
            j59Var2 = null;
        }
        if (j59Var2 == null) {
            TextView textView3 = itemNotificationCardBinding.btnGo;
            textView3.getClass();
            textView3.setVisibility(8);
        }
        ImageView imageView3 = itemNotificationCardBinding.ivBanner;
        imageView3.getClass();
        ViewGroup.LayoutParams layoutParams = imageView3.getLayoutParams();
        if (layoutParams == null) {
            o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            return;
        }
        ConstraintLayout.LayoutParams layoutParams2 = layoutParams instanceof ConstraintLayout.LayoutParams ? (ConstraintLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            Object obj = cp5Var2.k;
            if (obj == null) {
                obj = "343:180";
            }
            layoutParams2.dimensionRatio = obj.toString();
        }
        imageView3.setLayoutParams(layoutParams);
        b06 b06Var = cp5Var2.i;
        boolean z = b06Var != null && b06Var.b;
        BlurView blurView = itemNotificationCardBinding.incldAdsBadge.blurView;
        blurView.getClass();
        blurView.setVisibility(z ? 0 : 8);
        if (z) {
            BlurView root2 = itemNotificationCardBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new t30(this, cp5Var2, i)));
        }
        itemNotificationCardBinding.tvNotifTitle.setText(str3);
        itemNotificationCardBinding.tvNotifBody.setText(cp5Var2.c);
        TextView textView4 = itemNotificationCardBinding.tvNotifDate;
        pb2 pb2Var = pb2.a;
        String str5 = cp5Var2.d;
        pb2Var.getClass();
        str5.getClass();
        try {
            h64.a aVar2 = h64.Companion;
            aVar2.getClass();
            Instant instant = Clock.systemUTC().instant();
            instant.getClass();
            h64 h64Var = new h64(instant);
            sv8.Companion.getClass();
            ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
            zoneIdSystemDefault.getClass();
            jt4 jt4VarA = tv8.a(h64Var, sv8.a.b(zoneIdSystemDefault));
            h64 h64VarA = h64.a.a(aVar2, str5);
            ZoneId zoneIdSystemDefault2 = ZoneId.systemDefault();
            zoneIdSystemDefault2.getClass();
            jt4 jt4VarA2 = tv8.a(h64VarA, sv8.a.b(zoneIdSystemDefault2));
            if (jt4VarA.a().equals(jt4VarA2.a())) {
                strC = pb2.c(R.string.today);
            } else {
                strC = it4.a(jt4VarA.a(), -1, new lc2.c(1)).equals(jt4VarA2.a()) ? pb2.c(R.string.yesterday) : jt4VarA2.a().b.format(DateTimeFormatter.ofPattern(pb2.c(R.string.wordy_date_format)));
            }
            Context context = CheckScanApplication.c;
            str = CheckScanApplication.a.a().getString(R.string.wordy_date_format_with_time, strC, jt4VarA2.b.format(DateTimeFormatter.ofPattern(pb2.c(R.string.time_format))));
            str.getClass();
        } catch (Throwable unused) {
            str = new String();
        }
        textView4.setText(str);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemNotificationCardBinding itemNotificationCardBinding = (ItemNotificationCardBinding) viewBinding;
        itemNotificationCardBinding.getClass();
        BlurView blurView = itemNotificationCardBinding.incldAdsBadge.blurView;
        blurView.b(itemNotificationCardBinding.getRoot());
        blurView.b.a();
        blurView.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        blurView.setClipToOutline(true);
    }
}
