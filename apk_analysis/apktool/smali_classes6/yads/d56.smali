.class public final enum Lyads/d56;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/c56;

.field public static final enum d:Lyads/d56;

.field public static final enum e:Lyads/d56;

.field public static final enum f:Lyads/d56;

.field public static final enum g:Lyads/d56;

.field public static final synthetic h:[Lyads/d56;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v1, Lyads/d56;

    const-string v0, "SMS_SCHEME"

    const/4 v2, 0x0

    const-string v3, "sms:"

    invoke-direct {v1, v0, v2, v3}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/d56;

    const/4 v0, 0x1

    const-string v4, "mailto:"

    const-string v5, "MAIL_SCHEME"

    invoke-direct {v2, v5, v0, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lyads/d56;

    const/4 v4, 0x2

    const-string v5, "voicemail:"

    const-string v6, "VOICE_MAIL_SCHEME"

    invoke-direct {v0, v6, v4, v5}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lyads/d56;

    const/4 v5, 0x3

    const-string v6, "tel:"

    const-string v7, "TEL_SCHEME"

    invoke-direct {v4, v7, v5, v6}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lyads/d56;

    const/4 v6, 0x4

    const-string v7, "callto:"

    const-string v8, "CALLTO"

    invoke-direct {v5, v8, v6, v7}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lyads/d56;

    const/4 v7, 0x5

    const-string v8, "fax:"

    const-string v9, "FAX"

    invoke-direct {v6, v9, v7, v8}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lyads/d56;

    const/4 v8, 0x6

    const-string v9, "geo:"

    const-string v10, "GEO_SCHEME"

    invoke-direct {v7, v10, v8, v9}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v8, Lyads/d56;

    const/4 v9, 0x7

    const-string v10, "map:"

    const-string v11, "MAP_SCHEME"

    invoke-direct {v8, v11, v9, v10}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lyads/d56;

    const/16 v10, 0x8

    const-string v11, "maps:"

    const-string v12, "MAPS_SCHEME"

    invoke-direct {v9, v12, v10, v11}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v10, Lyads/d56;

    const/16 v11, 0x9

    const-string v12, "market:"

    const-string v13, "GOOGLE_MARKET_SCHEME"

    invoke-direct {v10, v13, v11, v12}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lyads/d56;->d:Lyads/d56;

    new-instance v11, Lyads/d56;

    const/16 v12, 0xa

    const-string v13, "play:"

    const-string v14, "GOOGLE_PLAY_SCHEME"

    invoke-direct {v11, v14, v12, v13}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lyads/d56;->e:Lyads/d56;

    new-instance v12, Lyads/d56;

    const/16 v13, 0xb

    const-string v14, "google.streetview:"

    const-string v15, "GOOGLE_STREET_VIEW_SCHEME"

    invoke-direct {v12, v15, v13, v14}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lyads/d56;

    const/16 v14, 0xc

    const-string v15, "market.android"

    move-object/from16 v16, v0

    const-string v0, "GOOGLE_MARKET_HOST"

    invoke-direct {v13, v0, v14, v15}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lyads/d56;->f:Lyads/d56;

    new-instance v14, Lyads/d56;

    const/16 v0, 0xd

    const-string v15, "play.google"

    move-object/from16 v17, v1

    const-string v1, "GOOGLE_PLAY_HOST"

    invoke-direct {v14, v1, v0, v15}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lyads/d56;->g:Lyads/d56;

    new-instance v15, Lyads/d56;

    const/16 v0, 0xe

    const-string v1, "map"

    move-object/from16 v18, v2

    const-string v2, "MAP_HOST"

    invoke-direct {v15, v2, v0, v1}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lyads/d56;

    const/16 v1, 0xf

    const-string v2, "maps"

    move-object/from16 v19, v4

    const-string v4, "MAPS_HOST"

    invoke-direct {v0, v4, v1, v2}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/d56;

    const/16 v2, 0x10

    const-string v4, "mobile.maps"

    move-object/from16 v20, v0

    const-string v0, "MOBMAPS"

    invoke-direct {v1, v0, v2, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lyads/d56;

    const/16 v2, 0x11

    const-string v4, "m.maps"

    move-object/from16 v21, v1

    const-string v1, "SHORTMOBMAPS"

    invoke-direct {v0, v1, v2, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/d56;

    const/16 v2, 0x12

    const-string v4, "message:"

    move-object/from16 v22, v0

    const-string v0, "MESSAGE"

    invoke-direct {v1, v0, v2, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lyads/d56;

    const/16 v2, 0x13

    const-string v4, "sip:"

    move-object/from16 v23, v1

    const-string v1, "SIP"

    invoke-direct {v0, v1, v2, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/d56;

    const/16 v2, 0x14

    const-string v4, "skype:"

    move-object/from16 v24, v0

    const-string v0, "SKYPE"

    invoke-direct {v1, v0, v2, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lyads/d56;

    const-string v2, "SMS"

    const/16 v4, 0x15

    invoke-direct {v0, v2, v4, v3}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lyads/d56;

    const/16 v3, 0x16

    const-string v4, "gtalk:"

    move-object/from16 v25, v0

    const-string v0, "GTALK"

    invoke-direct {v2, v0, v3, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lyads/d56;

    const/16 v3, 0x17

    const-string v4, "spotify:"

    move-object/from16 v26, v1

    const-string v1, "SPOTIFY"

    invoke-direct {v0, v1, v3, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lyads/d56;

    const/16 v3, 0x18

    const-string v4, "lastfm:"

    move-object/from16 v27, v0

    const-string v0, "LASTFM"

    invoke-direct {v1, v0, v3, v4}, Lyads/d56;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v16, v20

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v24, v27

    move-object/from16 v23, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v22

    move-object/from16 v22, v25

    move-object/from16 v25, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v26

    filled-new-array/range {v1 .. v25}, [Lyads/d56;

    move-result-object v0

    sput-object v0, Lyads/d56;->h:[Lyads/d56;

    new-instance v0, Lyads/c56;

    invoke-direct {v0}, Lyads/c56;-><init>()V

    sput-object v0, Lyads/d56;->c:Lyads/c56;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/d56;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/d56;
    .locals 1

    const-class v0, Lyads/d56;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/d56;

    return-object p0
.end method

.method public static values()[Lyads/d56;
    .locals 1

    sget-object v0, Lyads/d56;->h:[Lyads/d56;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/d56;

    return-object v0
.end method
