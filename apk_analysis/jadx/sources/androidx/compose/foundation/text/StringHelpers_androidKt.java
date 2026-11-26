package androidx.compose.foundation.text;

import androidx.emoji2.text.EmojiCompat;
import java.text.BreakIterator;

/* JADX INFO: loaded from: classes2.dex */
public final class StringHelpers_androidKt {
    private static final int findCodePointBefore(CharSequence charSequence, int i, int i2) {
        return i <= 0 ? i2 : Character.offsetByCodePoints(charSequence, i, -1);
    }

    public static final int findCodePointOrEmojiStartBefore(String str, int i, int i2) {
        int emojiStart;
        if (i <= 0) {
            return i2;
        }
        EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
        return (emojiCompatIfLoaded != null && (emojiStart = emojiCompatIfLoaded.getEmojiStart(str, i + (-1))) >= 0) ? emojiStart : findCodePointBefore(str, i, i2);
    }

    public static final int findFollowingBreak(String str, int i) {
        EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
        Integer num = null;
        if (emojiCompatIfLoaded != null) {
            Integer numValueOf = Integer.valueOf(emojiCompatIfLoaded.getEmojiEnd(str, i));
            if (numValueOf.intValue() != -1) {
                num = numValueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.following(i);
    }

    public static final int findPrecedingBreak(String str, int i) {
        EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
        Integer num = null;
        if (emojiCompatIfLoaded != null) {
            Integer numValueOf = Integer.valueOf(emojiCompatIfLoaded.getEmojiStart(str, Math.max(0, i - 1)));
            if (numValueOf.intValue() != -1) {
                num = numValueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.preceding(i);
    }

    private static final EmojiCompat getEmojiCompatIfLoaded() {
        if (EmojiCompat.isConfigured()) {
            EmojiCompat emojiCompat = EmojiCompat.get();
            if (emojiCompat.getLoadState() == 1) {
                return emojiCompat;
            }
        }
        return null;
    }
}
