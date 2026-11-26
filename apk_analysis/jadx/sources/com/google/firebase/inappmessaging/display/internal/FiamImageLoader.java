package com.google.firebase.inappmessaging.display.internal;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import defpackage.cr3;
import defpackage.dq3;
import defpackage.h37;
import defpackage.j72;
import defpackage.k29;
import defpackage.ld2;
import defpackage.lm4;
import defpackage.mm4;
import defpackage.p37;
import defpackage.r96;
import defpackage.vq2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class FiamImageLoader {
    private final p37 requestManager;
    private final Map<String, Set<j72>> tags = new HashMap();

    /* JADX INFO: loaded from: classes4.dex */
    public class FiamImageRequestCreator {
        private final h37<Drawable> requestBuilder;
        private String tag;
        private Callback target;

        public FiamImageRequestCreator(h37<Drawable> h37Var) {
            this.requestBuilder = h37Var;
        }

        private void checkAndTag() {
            Set hashSet;
            if (this.target == null || TextUtils.isEmpty(this.tag)) {
                return;
            }
            synchronized (FiamImageLoader.this.tags) {
                try {
                    if (FiamImageLoader.this.tags.containsKey(this.tag)) {
                        hashSet = (Set) FiamImageLoader.this.tags.get(this.tag);
                    } else {
                        hashSet = new HashSet();
                        FiamImageLoader.this.tags.put(this.tag, hashSet);
                    }
                    if (!hashSet.contains(this.target)) {
                        hashSet.add(this.target);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public FiamImageRequestCreator addErrorListener(GlideErrorListener glideErrorListener) {
            this.requestBuilder.F(glideErrorListener);
            return this;
        }

        public void into(ImageView imageView, Callback callback) {
            Logging.logd("Downloading Image Callback : " + callback);
            callback.setImageView(imageView);
            h37<Drawable> h37Var = this.requestBuilder;
            h37Var.K(callback, h37Var);
            this.target = callback;
            checkAndTag();
        }

        public FiamImageRequestCreator placeholder(int i) {
            this.requestBuilder.q(i);
            Logging.logd("Downloading Image Placeholder : " + i);
            return this;
        }

        public FiamImageRequestCreator tag(Class cls) {
            this.tag = cls.getSimpleName();
            checkAndTag();
            return this;
        }
    }

    public FiamImageLoader(p37 p37Var) {
        this.requestManager = p37Var;
    }

    public void cancelTag(Class cls) {
        String simpleName = cls.getSimpleName();
        synchronized (simpleName) {
            try {
                if (this.tags.containsKey(simpleName)) {
                    for (j72 j72Var : this.tags.get(simpleName)) {
                        if (j72Var != null) {
                            this.requestManager.c(j72Var);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean containsTag(String str) {
        Map<String, Set<j72>> map = this.tags;
        return map != null && map.containsKey(str) && this.tags.get(str) != null && this.tags.get(str).size() > 0;
    }

    public FiamImageRequestCreator load(String str) {
        Logging.logd("Starting Downloading Image : " + str);
        mm4.a aVar = new mm4.a();
        mm4.b bVar = new mm4.b("image/*");
        HashMap map = new HashMap(aVar.a.size());
        for (Map.Entry<String, List<lm4>> entry : aVar.a.entrySet()) {
            map.put(entry.getKey(), new ArrayList(entry.getValue()));
        }
        aVar.a = map;
        List<lm4> arrayList = aVar.a.get("Accept");
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            aVar.a.put("Accept", arrayList);
        }
        arrayList.add(bVar);
        h37<Drawable> h37VarG = this.requestManager.g(new cr3(str, new mm4(aVar.a)));
        ld2 ld2Var = ld2.PREFER_ARGB_8888;
        h37VarG.getClass();
        r96.b(ld2Var);
        return new FiamImageRequestCreator((h37) h37VarG.w(vq2.f, ld2Var).w(dq3.a, ld2Var));
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class Callback extends j72<Drawable> {
        private ImageView imageView;

        private void setImage(Drawable drawable) {
            ImageView imageView = this.imageView;
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            }
        }

        public abstract void onError(Exception exc);

        @Override // defpackage.wk8
        public void onLoadCleared(Drawable drawable) {
            Logging.logd("Downloading Image Cleared");
            setImage(drawable);
            onSuccess();
        }

        @Override // defpackage.j72, defpackage.wk8
        public void onLoadFailed(Drawable drawable) {
            Logging.logd("Downloading Image Failed");
            setImage(drawable);
            onError(new Exception("Image loading failed!"));
        }

        public void onResourceReady(Drawable drawable, k29<? super Drawable> k29Var) {
            Logging.logd("Downloading Image Success!!!");
            setImage(drawable);
            onSuccess();
        }

        public abstract void onSuccess();

        public void setImageView(ImageView imageView) {
            this.imageView = imageView;
        }

        @Override // defpackage.wk8
        public /* bridge */ /* synthetic */ void onResourceReady(Object obj, k29 k29Var) {
            onResourceReady((Drawable) obj, (k29<? super Drawable>) k29Var);
        }
    }
}
