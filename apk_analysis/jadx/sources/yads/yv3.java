package yads;

import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.ContextThemeWrapper;

/* JADX INFO: loaded from: classes6.dex */
public final class yv3 extends fu {
    public final ContextThemeWrapper a;
    public RenderScript b;

    public yv3(ContextThemeWrapper contextThemeWrapper) {
        this.a = contextThemeWrapper;
    }

    public final Bitmap a(Bitmap bitmap, float f) {
        float f2;
        if (!bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && f > 0.0f) {
            RenderScript renderScriptCreateMultiContext = this.b;
            if (renderScriptCreateMultiContext == null) {
                ContextThemeWrapper contextThemeWrapper = this.a;
                renderScriptCreateMultiContext = RenderScript.createMultiContext(contextThemeWrapper, RenderScript.ContextType.NORMAL, 0, contextThemeWrapper.getApplicationInfo().targetSdkVersion);
                this.b = renderScriptCreateMultiContext;
            }
            float f3 = 25.0f;
            if (f > 25.0f) {
                f2 = (f * 1.0f) / 25.0f;
            } else {
                f3 = f;
                f2 = 1.0f;
            }
            if (f2 == 1.0f) {
                Bitmap.Config config = bitmap.getConfig();
                if (config == null) {
                    config = Bitmap.Config.ARGB_8888;
                }
                bitmap = bitmap.copy(config, false);
            } else {
                bitmap = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() / f2), (int) (bitmap.getHeight() / f2), false);
            }
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreateMultiContext, bitmap);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreateMultiContext, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreateMultiContext, Element.U8_4(renderScriptCreateMultiContext));
            scriptIntrinsicBlurCreate.setRadius(f3);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmap);
            allocationCreateFromBitmap.destroy();
            allocationCreateTyped.destroy();
            scriptIntrinsicBlurCreate.destroy();
        }
        return bitmap;
    }

    public final Bitmap b(Bitmap bitmap, float f) {
        if (bitmap.isRecycled() || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0 || f <= 0.0f) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ALPHA_8);
        RenderScript renderScriptCreateMultiContext = this.b;
        if (renderScriptCreateMultiContext == null) {
            ContextThemeWrapper contextThemeWrapper = this.a;
            renderScriptCreateMultiContext = RenderScript.createMultiContext(contextThemeWrapper, RenderScript.ContextType.NORMAL, 0, contextThemeWrapper.getApplicationInfo().targetSdkVersion);
            this.b = renderScriptCreateMultiContext;
        }
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreateMultiContext, Element.A_8(renderScriptCreateMultiContext));
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreateMultiContext, bitmap);
        Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreateMultiContext, bitmapCreateBitmap);
        scriptIntrinsicBlurCreate.setRadius(f);
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
        allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
        allocationCreateFromBitmap2.destroy();
        allocationCreateFromBitmap.destroy();
        scriptIntrinsicBlurCreate.destroy();
        return bitmapCreateBitmap;
    }

    public final void a() {
        RenderScript renderScript = this.b;
        if (renderScript != null) {
            renderScript.destroy();
        }
        this.b = null;
    }
}
