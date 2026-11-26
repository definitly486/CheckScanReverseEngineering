package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import com.my.target.common.views.StarsRatingView;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pd6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ pd6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                qd6 qd6Var = (qd6) obj;
                qd6Var.d.b();
                qd6Var.a.v.a("Replay buffer cleared");
                break;
            case 1:
                StarsRatingView starsRatingView = (StarsRatingView) obj;
                Paint paint = StarsRatingView.g;
                if (starsRatingView.b > 0) {
                    int iFloor = (int) Math.floor(starsRatingView.d);
                    int iCeil = (int) Math.ceil(5.0f - starsRatingView.d);
                    float f = iFloor;
                    boolean z = starsRatingView.d - f >= 0.2f;
                    try {
                        int i2 = starsRatingView.b;
                        int i3 = (int) ((i2 + starsRatingView.c) * 5.0f);
                        Bitmap.Config config = Bitmap.Config.ARGB_8888;
                        starsRatingView.e = Bitmap.createBitmap(i3, i2, config);
                        Canvas canvas = new Canvas(starsRatingView.e);
                        int i4 = starsRatingView.b;
                        Paint paint2 = StarsRatingView.g;
                        paint2.setColor(-552162);
                        canvas.drawPath(starsRatingView.a(i4 / 2, 0, iFloor), paint2);
                        int i5 = starsRatingView.b;
                        int i6 = (int) (((i5 + starsRatingView.c) * f) + 0.0f);
                        paint2.setColor(-3355444);
                        canvas.drawPath(starsRatingView.a(i5 / 2, i6, iCeil), paint2);
                        if (z) {
                            int i7 = starsRatingView.b;
                            double d = starsRatingView.d;
                            float fFloor = (float) (d - Math.floor(d));
                            paint2.setColor(-552162);
                            Path pathA = starsRatingView.a(i7 / 2, 0, 1);
                            float f2 = i7 * fFloor;
                            Rect rect = new Rect(i6, 0, (int) (i6 + f2), i7);
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) f2, i7, config);
                            new Canvas(bitmapCreateBitmap).drawPath(pathA, paint2);
                            canvas.drawBitmap(bitmapCreateBitmap, (Rect) null, rect, paint2);
                        }
                        starsRatingView.invalidate();
                        starsRatingView.f = false;
                    } catch (OutOfMemoryError unused) {
                        y14.r(null, "StarsRatingView: Unable to create rating bitmap because of OOME");
                        return;
                    }
                    break;
                }
                break;
            default:
                ((TakePictureManagerImpl) obj).lambda$trackCurrentRequests$0();
                break;
        }
    }
}
