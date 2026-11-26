package androidx.compose.ui.text.font;

import defpackage.aa4;
import defpackage.fg;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class FontMatcher {
    public static final int $stable = 0;

    public static /* synthetic */ List filterByClosestWeight$ui_text$default(FontMatcher fontMatcher, List list, FontWeight fontWeight, boolean z, FontWeight fontWeight2, FontWeight fontWeight3, int i, Object obj) {
        FontWeight fontWeight4 = null;
        if ((i & 4) != 0) {
            fontWeight2 = null;
        }
        if ((i & 8) != 0) {
            fontWeight3 = null;
        }
        int size = list.size();
        FontWeight fontWeight5 = null;
        for (int i2 = 0; i2 < size; i2++) {
            FontWeight weight = ((Font) list.get(i2)).getWeight();
            if ((fontWeight2 == null || weight.compareTo(fontWeight2) >= 0) && (fontWeight3 == null || weight.compareTo(fontWeight3) <= 0)) {
                if (weight.compareTo(fontWeight) >= 0) {
                    if (weight.compareTo(fontWeight) <= 0) {
                        fontWeight4 = weight;
                        fontWeight5 = fontWeight4;
                        break;
                    }
                    if (fontWeight5 == null || weight.compareTo(fontWeight5) < 0) {
                        fontWeight5 = weight;
                    }
                } else if (fontWeight4 == null || weight.compareTo(fontWeight4) > 0) {
                    fontWeight4 = weight;
                }
            }
        }
        if (!z ? fontWeight5 != null : fontWeight4 == null) {
            fontWeight4 = fontWeight5;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Object obj2 = list.get(i3);
            if (aa4.e(((Font) obj2).getWeight(), fontWeight4)) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public final List<Font> filterByClosestWeight$ui_text(List<? extends Font> list, FontWeight fontWeight, boolean z, FontWeight fontWeight2, FontWeight fontWeight3) {
        int size = list.size();
        FontWeight fontWeight4 = null;
        FontWeight fontWeight5 = null;
        for (int i = 0; i < size; i++) {
            FontWeight weight = list.get(i).getWeight();
            if ((fontWeight2 == null || weight.compareTo(fontWeight2) >= 0) && (fontWeight3 == null || weight.compareTo(fontWeight3) <= 0)) {
                if (weight.compareTo(fontWeight) >= 0) {
                    if (weight.compareTo(fontWeight) <= 0) {
                        fontWeight4 = weight;
                        fontWeight5 = fontWeight4;
                        break;
                    }
                    if (fontWeight5 == null || weight.compareTo(fontWeight5) < 0) {
                        fontWeight5 = weight;
                    }
                } else if (fontWeight4 == null || weight.compareTo(fontWeight4) > 0) {
                    fontWeight4 = weight;
                }
            }
        }
        if (!z ? fontWeight5 != null : fontWeight4 == null) {
            fontWeight4 = fontWeight5;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Font font = list.get(i2);
            if (aa4.e(font.getWeight(), fontWeight4)) {
                arrayList.add(font);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: matchFont-RetOiIg, reason: not valid java name */
    public final List<Font> m8599matchFontRetOiIg(List<? extends Font> list, FontWeight fontWeight, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        List<? extends Font> list2 = list;
        int size = list2.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Font font = list.get(i3);
            Font font2 = font;
            if (aa4.e(font2.getWeight(), fontWeight) && FontStyle.m8603equalsimpl0(font2.mo8556getStyle_LCdwA(), i)) {
                arrayList.add(font);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(list.size());
        int size2 = list2.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Font font3 = list.get(i4);
            if (FontStyle.m8603equalsimpl0(font3.mo8556getStyle_LCdwA(), i)) {
                arrayList2.add(font3);
            }
        }
        if (!arrayList2.isEmpty()) {
            list = arrayList2;
        }
        List<? extends Font> list3 = list;
        FontWeight.Companion companion = FontWeight.Companion;
        FontWeight fontWeight2 = null;
        if (fontWeight.compareTo(companion.getW400()) < 0) {
            List<? extends Font> list4 = list3;
            int size3 = list4.size();
            FontWeight fontWeight3 = null;
            for (int i5 = 0; i5 < size3; i5++) {
                FontWeight weight = list3.get(i5).getWeight();
                if (weight.compareTo(fontWeight) >= 0) {
                    if (weight.compareTo(fontWeight) <= 0) {
                        fontWeight2 = weight;
                        fontWeight3 = fontWeight2;
                        break;
                    }
                    if (fontWeight3 == null || weight.compareTo(fontWeight3) < 0) {
                        fontWeight3 = weight;
                    }
                } else if (fontWeight2 == null || weight.compareTo(fontWeight2) > 0) {
                    fontWeight2 = weight;
                }
            }
            if (fontWeight2 == null) {
                fontWeight2 = fontWeight3;
            }
            ArrayList arrayList3 = new ArrayList(list3.size());
            int size4 = list4.size();
            while (i2 < size4) {
                Font font4 = list3.get(i2);
                if (aa4.e(font4.getWeight(), fontWeight2)) {
                    arrayList3.add(font4);
                }
                i2++;
            }
            return arrayList3;
        }
        if (fontWeight.compareTo(companion.getW500()) > 0) {
            List<? extends Font> list5 = list3;
            int size5 = list5.size();
            FontWeight fontWeight4 = null;
            for (int i6 = 0; i6 < size5; i6++) {
                FontWeight weight2 = list3.get(i6).getWeight();
                if (weight2.compareTo(fontWeight) >= 0) {
                    if (weight2.compareTo(fontWeight) <= 0) {
                        fontWeight2 = weight2;
                        fontWeight4 = fontWeight2;
                        break;
                    }
                    if (fontWeight4 == null || weight2.compareTo(fontWeight4) < 0) {
                        fontWeight4 = weight2;
                    }
                } else if (fontWeight2 == null || weight2.compareTo(fontWeight2) > 0) {
                    fontWeight2 = weight2;
                }
            }
            if (fontWeight4 != null) {
                fontWeight2 = fontWeight4;
            }
            ArrayList arrayList4 = new ArrayList(list3.size());
            int size6 = list5.size();
            while (i2 < size6) {
                Font font5 = list3.get(i2);
                if (aa4.e(font5.getWeight(), fontWeight2)) {
                    arrayList4.add(font5);
                }
                i2++;
            }
            return arrayList4;
        }
        FontWeight w500 = companion.getW500();
        List<? extends Font> list6 = list3;
        int size7 = list6.size();
        FontWeight fontWeight5 = null;
        FontWeight fontWeight6 = null;
        for (int i7 = 0; i7 < size7; i7++) {
            FontWeight weight3 = list3.get(i7).getWeight();
            if (w500 == null || weight3.compareTo(w500) <= 0) {
                if (weight3.compareTo(fontWeight) >= 0) {
                    if (weight3.compareTo(fontWeight) <= 0) {
                        fontWeight5 = weight3;
                        fontWeight6 = fontWeight5;
                        break;
                    }
                    if (fontWeight6 == null || weight3.compareTo(fontWeight6) < 0) {
                        fontWeight6 = weight3;
                    }
                } else if (fontWeight5 == null || weight3.compareTo(fontWeight5) > 0) {
                    fontWeight5 = weight3;
                }
            }
        }
        if (fontWeight6 != null) {
            fontWeight5 = fontWeight6;
        }
        ArrayList arrayList5 = new ArrayList(list3.size());
        int size8 = list6.size();
        for (int i8 = 0; i8 < size8; i8++) {
            Font font6 = list3.get(i8);
            if (aa4.e(font6.getWeight(), fontWeight5)) {
                arrayList5.add(font6);
            }
        }
        if (arrayList5.isEmpty()) {
            FontWeight w501 = FontWeight.Companion.getW500();
            int size9 = list6.size();
            FontWeight fontWeight7 = null;
            for (int i9 = 0; i9 < size9; i9++) {
                FontWeight weight4 = list3.get(i9).getWeight();
                if (w501 == null || weight4.compareTo(w501) >= 0) {
                    if (weight4.compareTo(fontWeight) >= 0) {
                        if (weight4.compareTo(fontWeight) <= 0) {
                            fontWeight2 = weight4;
                            fontWeight7 = fontWeight2;
                            break;
                        }
                        if (fontWeight7 == null || weight4.compareTo(fontWeight7) < 0) {
                            fontWeight7 = weight4;
                        }
                    } else if (fontWeight2 == null || weight4.compareTo(fontWeight2) > 0) {
                        fontWeight2 = weight4;
                    }
                }
            }
            if (fontWeight7 != null) {
                fontWeight2 = fontWeight7;
            }
            arrayList5 = new ArrayList(list3.size());
            int size10 = list6.size();
            while (i2 < size10) {
                Font font7 = list3.get(i2);
                if (aa4.e(font7.getWeight(), fontWeight2)) {
                    arrayList5.add(font7);
                }
                i2++;
            }
        }
        return arrayList5;
    }

    /* JADX INFO: renamed from: matchFont-RetOiIg, reason: not valid java name */
    public final List<Font> m8598matchFontRetOiIg(FontListFontFamily fontListFontFamily, FontWeight fontWeight, int i) {
        return m8599matchFontRetOiIg(fontListFontFamily.getFonts(), fontWeight, i);
    }

    /* JADX INFO: renamed from: matchFont-RetOiIg, reason: not valid java name */
    public final List<Font> m8597matchFontRetOiIg(FontFamily fontFamily, FontWeight fontWeight, int i) {
        if (fontFamily instanceof FontListFontFamily) {
            return m8598matchFontRetOiIg((FontListFontFamily) fontFamily, fontWeight, i);
        }
        fg.c("Only FontFamily instances that presents a list of Fonts can be used");
        return null;
    }
}
