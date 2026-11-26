package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextMotion;
import defpackage.aa4;
import defpackage.au0;
import defpackage.bd7;
import defpackage.cd7;
import defpackage.dd7;
import defpackage.ed7;
import defpackage.ix6;
import defpackage.jh2;
import defpackage.ji;
import defpackage.k31;
import defpackage.lm;
import defpackage.u96;
import defpackage.xy2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Savers_androidKt {
    private static final Saver<LineBreak, Object> LineBreakSaver;
    private static final Saver<PlatformParagraphStyle, Object> PlatformParagraphStyleSaver;
    private static final Saver<TextMotion.Linearity, Object> TextMotionLinearitySaver;
    private static final Saver<TextMotion, Object> TextMotionSaver;
    private static final Saver<EmojiSupportMatch, Object> emojiSupportMatchSaver;

    static {
        int i = 3;
        PlatformParagraphStyleSaver = SaverKt.Saver(new ix6(1), new xy2(i));
        emojiSupportMatchSaver = SaverKt.Saver(new bd7(0), new k31(i));
        LineBreakSaver = SaverKt.Saver(new cd7(0), new lm(i));
        int i2 = 2;
        TextMotionSaver = SaverKt.Saver(new dd7(0), new ji(i2));
        TextMotionLinearitySaver = SaverKt.Saver(new ed7(0), new au0(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LineBreakSaver$lambda$0(SaverScope saverScope, LineBreak lineBreak) {
        return Integer.valueOf(lineBreak.m8830unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LineBreak LineBreakSaver$lambda$1(Object obj) {
        obj.getClass();
        return LineBreak.m8818boximpl(LineBreak.m8819constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object PlatformParagraphStyleSaver$lambda$0(SaverScope saverScope, PlatformParagraphStyle platformParagraphStyle) {
        return u96.a(SaversKt.save(Boolean.valueOf(platformParagraphStyle.getIncludeFontPadding())), SaversKt.save(EmojiSupportMatch.m8338boximpl(platformParagraphStyle.m8419getEmojiSupportMatch_3YsG6Y()), getSaver(EmojiSupportMatch.Companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlatformParagraphStyle PlatformParagraphStyleSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Boolean bool = obj2 != null ? (Boolean) obj2 : null;
        bool.getClass();
        boolean zBooleanValue = bool.booleanValue();
        Object obj3 = list.get(1);
        Saver<EmojiSupportMatch, Object> saver = getSaver(EmojiSupportMatch.Companion);
        EmojiSupportMatch emojiSupportMatchRestore = ((!aa4.e(obj3, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) ? saver.restore(obj3) : null;
        emojiSupportMatchRestore.getClass();
        return new PlatformParagraphStyle(emojiSupportMatchRestore.m8344unboximpl(), zBooleanValue, (jh2) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextMotionLinearitySaver$lambda$0(SaverScope saverScope, TextMotion.Linearity linearity) {
        return Integer.valueOf(linearity.m8961unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextMotion.Linearity TextMotionLinearitySaver$lambda$1(Object obj) {
        obj.getClass();
        return TextMotion.Linearity.m8955boximpl(TextMotion.Linearity.m8956constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextMotionSaver$lambda$0(SaverScope saverScope, TextMotion textMotion) {
        return u96.a(SaversKt.save(TextMotion.Linearity.m8955boximpl(textMotion.m8954getLinearity4e0Vf04$ui_text()), getSaver(TextMotion.Linearity.Companion), saverScope), SaversKt.save(Boolean.valueOf(textMotion.getSubpixelTextPositioning$ui_text())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextMotion TextMotionSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Saver<TextMotion.Linearity, Object> saver = getSaver(TextMotion.Linearity.Companion);
        TextMotion.Linearity linearityRestore = ((!aa4.e(obj2, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        linearityRestore.getClass();
        int iM8961unboximpl = linearityRestore.m8961unboximpl();
        Object obj3 = list.get(1);
        Boolean bool = obj3 != null ? (Boolean) obj3 : null;
        bool.getClass();
        return new TextMotion(iM8961unboximpl, bool.booleanValue(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object emojiSupportMatchSaver$lambda$0(SaverScope saverScope, EmojiSupportMatch emojiSupportMatch) {
        return Integer.valueOf(emojiSupportMatch.m8344unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EmojiSupportMatch emojiSupportMatchSaver$lambda$1(Object obj) {
        obj.getClass();
        return EmojiSupportMatch.m8338boximpl(EmojiSupportMatch.m8339constructorimpl(((Integer) obj).intValue()));
    }

    public static final Saver<EmojiSupportMatch, Object> getEmojiSupportMatchSaver() {
        return emojiSupportMatchSaver;
    }

    public static final Saver<PlatformParagraphStyle, Object> getSaver(PlatformParagraphStyle.Companion companion) {
        return PlatformParagraphStyleSaver;
    }

    public static final Saver<EmojiSupportMatch, Object> getSaver(EmojiSupportMatch.Companion companion) {
        return emojiSupportMatchSaver;
    }

    public static final Saver<LineBreak, Object> getSaver(LineBreak.Companion companion) {
        return LineBreakSaver;
    }

    public static final Saver<TextMotion, Object> getSaver(TextMotion.Companion companion) {
        return TextMotionSaver;
    }

    private static final Saver<TextMotion.Linearity, Object> getSaver(TextMotion.Linearity.Companion companion) {
        return TextMotionLinearitySaver;
    }
}
