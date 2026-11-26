package yads;

import androidx.core.net.MailTo;

/* JADX INFO: loaded from: classes6.dex */
public enum d56 {
    /* JADX INFO: Fake field, exist only in values array */
    SMS_SCHEME("sms:"),
    /* JADX INFO: Fake field, exist only in values array */
    MAIL_SCHEME(MailTo.MAILTO_SCHEME),
    /* JADX INFO: Fake field, exist only in values array */
    VOICE_MAIL_SCHEME("voicemail:"),
    /* JADX INFO: Fake field, exist only in values array */
    TEL_SCHEME("tel:"),
    /* JADX INFO: Fake field, exist only in values array */
    CALLTO("callto:"),
    /* JADX INFO: Fake field, exist only in values array */
    FAX("fax:"),
    /* JADX INFO: Fake field, exist only in values array */
    GEO_SCHEME("geo:"),
    /* JADX INFO: Fake field, exist only in values array */
    MAP_SCHEME("map:"),
    /* JADX INFO: Fake field, exist only in values array */
    MAPS_SCHEME("maps:"),
    GOOGLE_MARKET_SCHEME("market:"),
    GOOGLE_PLAY_SCHEME("play:"),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_STREET_VIEW_SCHEME("google.streetview:"),
    GOOGLE_MARKET_HOST("market.android"),
    GOOGLE_PLAY_HOST("play.google"),
    /* JADX INFO: Fake field, exist only in values array */
    MAP_HOST("map"),
    /* JADX INFO: Fake field, exist only in values array */
    MAPS_HOST("maps"),
    /* JADX INFO: Fake field, exist only in values array */
    MOBMAPS("mobile.maps"),
    /* JADX INFO: Fake field, exist only in values array */
    SHORTMOBMAPS("m.maps"),
    /* JADX INFO: Fake field, exist only in values array */
    MESSAGE("message:"),
    /* JADX INFO: Fake field, exist only in values array */
    SIP("sip:"),
    /* JADX INFO: Fake field, exist only in values array */
    SKYPE("skype:"),
    /* JADX INFO: Fake field, exist only in values array */
    SMS("sms:"),
    /* JADX INFO: Fake field, exist only in values array */
    GTALK("gtalk:"),
    /* JADX INFO: Fake field, exist only in values array */
    SPOTIFY("spotify:"),
    /* JADX INFO: Fake field, exist only in values array */
    LASTFM("lastfm:");

    public static final c56 c = new c56();
    public final String b;

    d56(String str) {
        this.b = str;
    }
}
