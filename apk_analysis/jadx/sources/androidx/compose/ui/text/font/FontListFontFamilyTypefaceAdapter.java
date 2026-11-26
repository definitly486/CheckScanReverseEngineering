package androidx.compose.ui.text.font;

import androidx.collection.MutableScatterSet;
import androidx.compose.ui.text.platform.DispatcherKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.b36;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.ki3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oz;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.s22;
import defpackage.y22;
import defpackage.z22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontListFontFamilyTypefaceAdapter implements FontFamilyTypefaceAdapter {
    private y22 asyncLoadScope;
    private final AsyncTypefaceCache asyncTypefaceCache;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final FontMatcher fontMatcher = new FontMatcher();
    private static final s22 DropExceptionHandler = new FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1(s22.a.b);

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$preload$3", f = "FontListFontFamilyTypefaceAdapter.kt", l = {120}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ List<Font> $asyncLoads;
        final /* synthetic */ PlatformFontLoader $resourceLoader;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ FontListFontFamilyTypefaceAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(List<Font> list, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontLoader platformFontLoader, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.$asyncLoads = list;
            this.this$0 = fontListFontFamilyTypefaceAdapter;
            this.$resourceLoader = platformFontLoader;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$asyncLoads, this.this$0, this.$resourceLoader, e02Var);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                List<Font> list = this.$asyncLoads;
                MutableScatterSet mutableScatterSet = new MutableScatterSet(list.size());
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Font font = list.get(i2);
                    if (mutableScatterSet.add(font)) {
                        arrayList.add(font);
                    }
                }
                FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = this.this$0;
                PlatformFontLoader platformFontLoader = this.$resourceLoader;
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    arrayList2.add(av0.a(y22Var, null, null, new FontListFontFamilyTypefaceAdapter$preload$3$2$1(fontListFontFamilyTypefaceAdapter, (Font) arrayList.get(i3), platformFontLoader, null), 3));
                }
                this.label = 1;
                if (oz.b(arrayList2, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$resolve$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.text.font.FontListFontFamilyTypefaceAdapter$resolve$1", f = "FontListFontFamilyTypefaceAdapter.kt", l = {WebmConstants.MkvEbmlElement.CHANNELS}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ AsyncFontListLoader $asyncLoader;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AsyncFontListLoader asyncFontListLoader, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$asyncLoader = asyncFontListLoader;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$asyncLoader, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                AsyncFontListLoader asyncFontListLoader = this.$asyncLoader;
                this.label = 1;
                if (asyncFontListLoader.load(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache, o22 o22Var) {
        this.asyncTypefaceCache = asyncTypefaceCache;
        this.asyncLoadScope = z22.a(DropExceptionHandler.plus(DispatcherKt.getFontCacheManagementDispatcher()).plus(o22Var).plus(new jd8((mb4) o22Var.get(mb4.a.b))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 preload$lambda$3$0(TypefaceRequest typefaceRequest) {
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object preload(FontFamily fontFamily, PlatformFontLoader platformFontLoader, e02<? super j59> e02Var) {
        FontFamily fontFamily2 = fontFamily;
        if (!(fontFamily2 instanceof FontListFontFamily)) {
            return j59.a;
        }
        FontListFontFamily fontListFontFamily = (FontListFontFamily) fontFamily2;
        List<Font> fonts = fontListFontFamily.getFonts();
        List<Font> fonts2 = fontListFontFamily.getFonts();
        ArrayList arrayList = new ArrayList(fonts2.size());
        int size = fonts2.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Font font = fonts2.get(i2);
            if (FontLoadingStrategy.m8590equalsimpl0(font.mo8548getLoadingStrategyPKNRLFQ(), FontLoadingStrategy.Companion.m8594getAsyncPKNRLFQ())) {
                arrayList.add(new b36(font.getWeight(), FontStyle.m8600boximpl(font.mo8556getStyle_LCdwA())));
            }
        }
        MutableScatterSet mutableScatterSet = new MutableScatterSet(arrayList.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Object obj = arrayList.get(i3);
            if (mutableScatterSet.add((b36) obj)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        int size3 = arrayList2.size();
        int i4 = 0;
        while (i4 < size3) {
            b36 b36Var = (b36) arrayList2.get(i4);
            FontWeight fontWeight = (FontWeight) b36Var.b;
            int iM8606unboximpl = ((FontStyle) b36Var.c).m8606unboximpl();
            List list = (List) FontListFontFamilyTypefaceAdapterKt.firstImmediatelyAvailable(fontMatcher.m8599matchFontRetOiIg(fonts, fontWeight, iM8606unboximpl), new TypefaceRequest(fontFamily2, fontWeight, iM8606unboximpl, FontSynthesis.Companion.m8620getAllGVVA2EU(), platformFontLoader.getCacheKey(), null), this.asyncTypefaceCache, platformFontLoader, new ki3(i)).b;
            if (list != null) {
                arrayList3.add(qn1.T(list));
            }
            i4++;
            fontFamily2 = fontFamily;
        }
        Object objC = z22.c(new AnonymousClass3(arrayList3, this, platformFontLoader, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    @Override // androidx.compose.ui.text.font.FontFamilyTypefaceAdapter
    public TypefaceResult resolve(TypefaceRequest typefaceRequest, PlatformFontLoader platformFontLoader, nl3<? super TypefaceResult.Immutable, j59> nl3Var, nl3<? super TypefaceRequest, ? extends Object> nl3Var2) {
        jh2 jh2Var = null;
        if (!(typefaceRequest.getFontFamily() instanceof FontListFontFamily)) {
            return null;
        }
        b36 b36VarFirstImmediatelyAvailable = FontListFontFamilyTypefaceAdapterKt.firstImmediatelyAvailable(fontMatcher.m8599matchFontRetOiIg(((FontListFontFamily) typefaceRequest.getFontFamily()).getFonts(), typefaceRequest.getFontWeight(), typefaceRequest.m8649getFontStyle_LCdwA()), typefaceRequest, this.asyncTypefaceCache, platformFontLoader, nl3Var2);
        List list = (List) b36VarFirstImmediatelyAvailable.b;
        B b = b36VarFirstImmediatelyAvailable.c;
        if (list == null) {
            return new TypefaceResult.Immutable(b, false, 2, jh2Var);
        }
        AsyncFontListLoader asyncFontListLoader = new AsyncFontListLoader(list, b, typefaceRequest, this.asyncTypefaceCache, nl3Var, platformFontLoader);
        av0.c(this.asyncLoadScope, null, c32.UNDISPATCHED, new AnonymousClass1(asyncFontListLoader, null), 1);
        return new TypefaceResult.Async(asyncFontListLoader);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final s22 getDropExceptionHandler() {
            return FontListFontFamilyTypefaceAdapter.DropExceptionHandler;
        }

        public final FontMatcher getFontMatcher() {
            return FontListFontFamilyTypefaceAdapter.fontMatcher;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FontListFontFamilyTypefaceAdapter() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache, o22 o22Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new AsyncTypefaceCache() : asyncTypefaceCache, (i & 2) != 0 ? gx2.b : o22Var);
    }
}
