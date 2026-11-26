package yads;

import androidx.core.view.ViewCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public abstract class l84 {
    public static final String[] a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    public static gw5 a(int i, String str, os4 os4Var) {
        int iA = os4Var.a();
        if (os4Var.a() == 1684108385 && iA >= 22) {
            os4Var.e(os4Var.b + 10);
            int iP = os4Var.p();
            if (iP > 0) {
                String strA = vx4.a(iP, "");
                int iP2 = os4Var.p();
                if (iP2 > 0) {
                    strA = strA + "/" + iP2;
                }
                return new gw5(str, null, strA);
            }
        }
        sv3.d("MetadataUtil", "Failed to parse index/count attribute: " + ll.a(i));
        return null;
    }

    public static bp3 b(int i, os4 os4Var) {
        String strB = null;
        String strB2 = null;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            int i4 = os4Var.b;
            if (i4 >= i) {
                break;
            }
            int iA = os4Var.a();
            int iA2 = os4Var.a();
            os4Var.e(os4Var.b + 4);
            if (iA2 == 1835360622) {
                strB = os4Var.b(iA - 12);
            } else if (iA2 == 1851878757) {
                strB2 = os4Var.b(iA - 12);
            } else {
                if (iA2 == 1684108385) {
                    i2 = i4;
                    i3 = iA;
                }
                os4Var.e(os4Var.b + (iA - 12));
            }
        }
        if (strB == null || strB2 == null || i2 == -1) {
            return null;
        }
        os4Var.e(i2);
        os4Var.e(os4Var.b + 16);
        return new bp3(strB, strB2, os4Var.b(i3 - 16));
    }

    public static b40 a(int i, os4 os4Var) {
        int iA = os4Var.a();
        if (os4Var.a() == 1684108385) {
            os4Var.e(os4Var.b + 8);
            String strB = os4Var.b(iA - 16);
            return new b40(C.LANGUAGE_UNDETERMINED, strB, strB);
        }
        sv3.d("MetadataUtil", "Failed to parse comment attribute: " + ll.a(i));
        return null;
    }

    public static gw5 b(int i, String str, os4 os4Var) {
        int iA = os4Var.a();
        if (os4Var.a() == 1684108385) {
            os4Var.e(os4Var.b + 8);
            return new gw5(str, null, os4Var.b(iA - 16));
        }
        sv3.d("MetadataUtil", "Failed to parse text attribute: " + ll.a(i));
        return null;
    }

    public static nb3 a(int i, String str, os4 os4Var, boolean z, boolean z2) {
        int iMin;
        os4Var.e(os4Var.b + 4);
        if (os4Var.a() == 1684108385) {
            os4Var.e(os4Var.b + 8);
            iMin = os4Var.k();
        } else {
            sv3.d("MetadataUtil", "Failed to parse uint8 attribute value");
            iMin = -1;
        }
        if (z2) {
            iMin = Math.min(1, iMin);
        }
        if (iMin >= 0) {
            if (z) {
                return new gw5(str, null, Integer.toString(iMin));
            }
            return new b40(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iMin));
        }
        sv3.d("MetadataUtil", "Failed to parse uint8 attribute: " + ll.a(i));
        return null;
    }

    public static qf a(os4 os4Var) {
        String str;
        int iA = os4Var.a();
        if (os4Var.a() == 1684108385) {
            int iA2 = os4Var.a() & ViewCompat.MEASURED_SIZE_MASK;
            if (iA2 == 13) {
                str = MimeTypes.IMAGE_JPEG;
            } else {
                str = iA2 == 14 ? MimeTypes.IMAGE_PNG : null;
            }
            if (str == null) {
                qt3.a(iA2, "Unrecognized cover art flags: ", "MetadataUtil");
                return null;
            }
            os4Var.e(os4Var.b + 4);
            int i = iA - 16;
            byte[] bArr = new byte[i];
            os4Var.a(bArr, 0, i);
            return new qf(str, null, 3, bArr);
        }
        sv3.d("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }
}
