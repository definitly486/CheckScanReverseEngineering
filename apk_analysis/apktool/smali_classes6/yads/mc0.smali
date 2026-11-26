.class public final Lyads/mc0;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lyads/it4;


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:[I


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/mc0;->b:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/mc0;->c:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lyads/mc0;->d:Ljava/util/regex/Pattern;

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lyads/mc0;->e:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lyads/mc0;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Couldn\'t create XmlPullParserFactory instance"

    invoke-static {v0, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Ljava/util/ArrayList;JJIJ)J
    .locals 2

    if-ltz p5, :cond_0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p6, p1

    .line 5913
    sget p5, Lyads/u56;->a:I

    add-long/2addr p6, p3

    const-wide/16 v0, 0x1

    sub-long/2addr p6, v0

    .line 5914
    div-long/2addr p6, p3

    long-to-int p5, p6

    :goto_0
    const/4 p6, 0x0

    :goto_1
    if-ge p6, p5, :cond_1

    .line 5915
    new-instance p7, Lyads/ci5;

    invoke-direct {p7, p1, p2, p3, p4}, Lyads/ci5;-><init>(JJ)V

    .line 5916
    invoke-virtual {p0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr p1, p3

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    const/4 v0, 0x0

    .line 5977
    const-string v1, "availabilityTimeOffset"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p1

    .line 5978
    :cond_0
    const-string p1, "INF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 5979
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const p1, 0x49742400    # 1000000.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 10

    const/4 v0, 0x0

    .line 5988
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 5989
    :cond_0
    sget-object p1, Lyads/u56;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5990
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    if-eqz p2, :cond_8

    const/4 p0, 0x1

    .line 5991
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x3

    .line 5992
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    .line 5993
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    mul-double/2addr p2, v6

    goto :goto_0

    :cond_1
    move-wide p2, v4

    :goto_0
    const/4 v6, 0x5

    .line 5994
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 5995
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4144103580000000L    # 2629739.0

    mul-double/2addr v6, v8

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    add-double/2addr p2, v6

    const/4 v6, 0x7

    .line 5996
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 5997
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v6, v8

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    add-double/2addr p2, v6

    const/16 v6, 0xa

    .line 5998
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 5999
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    add-double/2addr p2, v6

    const/16 v2, 0xc

    .line 6000
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6001
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v6

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    add-double/2addr p2, v2

    const/16 v2, 0xe

    .line 6002
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 6003
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    :cond_6
    add-double/2addr p2, v4

    mul-double/2addr p2, v0

    double-to-long p1, p2

    if-nez p0, :cond_7

    neg-long p0, p1

    return-wide p0

    :cond_7
    return-wide p1

    .line 6004
    :cond_8
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    mul-double/2addr p0, v2

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p0

    .line 5896
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    move-wide v5, v9

    move v4, v11

    move v7, v4

    .line 5897
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5898
    const-string v8, "S"

    invoke-static {v0, v8}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 5899
    const-string v8, "t"

    const/4 v12, 0x0

    .line 5900
    invoke-interface {v0, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    move-wide v13, v9

    goto :goto_0

    .line 5901
    :cond_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    :goto_0
    if-eqz v4, :cond_2

    move-wide v4, v5

    move v6, v7

    move-wide v7, v13

    .line 5902
    invoke-static/range {v1 .. v8}, Lyads/mc0;->a(Ljava/util/ArrayList;JJIJ)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move-wide v7, v13

    :goto_1
    cmp-long v4, v7, v9

    if-eqz v4, :cond_3

    move-wide v2, v7

    .line 5903
    :cond_3
    const-string v4, "d"

    .line 5904
    invoke-interface {v0, v12, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move-wide v5, v9

    goto :goto_2

    .line 5905
    :cond_4
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v5, v4

    .line 5906
    :goto_2
    const-string v4, "r"

    .line 5907
    invoke-interface {v0, v12, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v7, v11

    goto :goto_3

    .line 5908
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v7, v4

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    .line 5909
    :cond_6
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5910
    :goto_4
    const-string v8, "SegmentTimeline"

    invoke-static {v0, v8}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v4, :cond_7

    const-wide/16 v16, 0x3e8

    move-wide/from16 v14, p1

    move-wide/from16 v12, p3

    .line 5911
    invoke-static/range {v12 .. v17}, Lyads/u56;->a(JJJ)J

    move-result-wide v8

    move-object v0, v1

    move-wide v1, v2

    move-wide v3, v5

    move v5, v7

    move-wide v6, v8

    .line 5912
    invoke-static/range {v0 .. v7}, Lyads/mc0;->a(Ljava/util/ArrayList;JJIJ)J

    move-object v1, v0

    :cond_7
    return-object v1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8

    .line 5956
    const-string v0, "dvb:priority"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5957
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    .line 5958
    :goto_0
    const-string v3, "dvb:weight"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5959
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5960
    :cond_2
    const-string v3, "serviceLocation"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5961
    const-string v3, ""

    .line 5962
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5963
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 5964
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 5965
    :cond_4
    invoke-static {p0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5966
    :goto_1
    const-string v4, "BaseURL"

    invoke-static {p0, v4}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p0, 0x0

    if-eqz v3, :cond_6

    .line 5967
    invoke-static {v3}, Lyads/o46;->a(Ljava/lang/String;)[I

    move-result-object v4

    aget v4, v4, p0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    if-nez v1, :cond_5

    move-object v1, v3

    .line 5968
    :cond_5
    new-instance p0, Lyads/ms;

    invoke-direct {p0, v0, v2, v3, v1}, Lyads/ms;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {p0}, [Lyads/ms;

    move-result-object p0

    invoke-static {p0}, Lyads/xt3;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 5969
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5970
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge p0, v5, :cond_9

    .line 5971
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/ms;

    .line 5972
    iget-object v6, v5, Lyads/ms;->a:Ljava/lang/String;

    invoke-static {v6, v3}, Lyads/o46;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_7

    move-object v7, v6

    goto :goto_3

    :cond_7
    move-object v7, v1

    :goto_3
    if-eqz p2, :cond_8

    .line 5973
    iget v0, v5, Lyads/ms;->c:I

    .line 5974
    iget v2, v5, Lyads/ms;->d:I

    .line 5975
    iget-object v7, v5, Lyads/ms;->b:Ljava/lang/String;

    .line 5976
    :cond_8
    new-instance v5, Lyads/ms;

    invoke-direct {v5, v0, v2, v6, v7}, Lyads/ms;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_9
    return-object v4
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lyads/ai5;JJJJJ)Lyads/ai5;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 5836
    iget-wide v4, v1, Lyads/ei5;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v6, 0x0

    .line 5837
    const-string v7, "timescale"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-wide v9, v4

    goto :goto_2

    .line 5838
    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    .line 5839
    iget-wide v4, v1, Lyads/ei5;->c:J

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    .line 5840
    :goto_3
    const-string v7, "presentationTimeOffset"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_4
    move-wide v11, v4

    goto :goto_5

    .line 5841
    :cond_3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_4

    :goto_5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4

    .line 5842
    iget-wide v7, v1, Lyads/zh5;->e:J

    goto :goto_6

    :cond_4
    move-wide v7, v4

    .line 5843
    :goto_6
    const-string v13, "duration"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    :goto_7
    move-wide v15, v7

    goto :goto_8

    .line 5844
    :cond_5
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_6

    .line 5845
    iget-wide v2, v1, Lyads/zh5;->d:J

    .line 5846
    :cond_6
    const-string v7, "startNumber"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :goto_9
    move-wide v13, v2

    goto :goto_a

    .line 5847
    :cond_7
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_9

    :goto_a
    cmp-long v2, p8, v4

    if-nez v2, :cond_8

    move-wide/from16 v2, p6

    goto :goto_b

    :cond_8
    move-wide/from16 v2, p8

    :goto_b
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v2, v7

    if-nez v7, :cond_9

    move-wide/from16 v18, v4

    goto :goto_c

    :cond_9
    move-wide/from16 v18, v2

    :goto_c
    move-object v2, v6

    move-object v3, v2

    .line 5848
    :cond_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5849
    const-string v4, "Initialization"

    invoke-static {v0, v4}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 5850
    const-string v2, "sourceURL"

    const-string v4, "range"

    invoke-static {v0, v2, v4}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/y35;

    move-result-object v2

    move-wide/from16 v4, p4

    goto :goto_d

    .line 5851
    :cond_b
    const-string v4, "SegmentTimeline"

    invoke-static {v0, v4}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-wide/from16 v4, p4

    .line 5852
    invoke-static {v0, v9, v10, v4, v5}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_d

    :cond_c
    move-wide/from16 v4, p4

    .line 5853
    const-string v7, "SegmentURL"

    invoke-static {v0, v7}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v6, :cond_d

    .line 5854
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5855
    :cond_d
    const-string v7, "media"

    const-string v8, "mediaRange"

    invoke-static {v0, v7, v8}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/y35;

    move-result-object v7

    .line 5856
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 5857
    :cond_e
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5858
    :goto_d
    const-string v7, "SegmentList"

    invoke-static {v0, v7}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v1, :cond_11

    if-eqz v2, :cond_f

    goto :goto_e

    .line 5859
    :cond_f
    iget-object v0, v1, Lyads/ei5;->a:Lyads/y35;

    move-object v2, v0

    :goto_e
    if-eqz v3, :cond_10

    goto :goto_f

    .line 5860
    :cond_10
    iget-object v0, v1, Lyads/zh5;->f:Ljava/util/List;

    move-object v3, v0

    :goto_f
    if-eqz v6, :cond_12

    :cond_11
    :goto_10
    move-object v8, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v6

    goto :goto_11

    .line 5861
    :cond_12
    iget-object v6, v1, Lyads/ai5;->j:Ljava/util/List;

    goto :goto_10

    .line 5862
    :goto_11
    new-instance v7, Lyads/ai5;

    .line 5863
    invoke-static/range {p10 .. p11}, Lyads/u56;->a(J)J

    move-result-wide v21

    .line 5864
    invoke-static/range {p2 .. p3}, Lyads/u56;->a(J)J

    move-result-wide v23

    invoke-direct/range {v7 .. v24}, Lyads/ai5;-><init>(Lyads/y35;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v7
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lyads/bi5;Ljava/util/List;JJJJJ)Lyads/bi5;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 5865
    iget-wide v4, v1, Lyads/ei5;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v6, 0x0

    .line 5866
    const-string v7, "timescale"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-wide v9, v4

    goto :goto_2

    .line 5867
    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    .line 5868
    iget-wide v4, v1, Lyads/ei5;->c:J

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    .line 5869
    :goto_3
    const-string v7, "presentationTimeOffset"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_4
    move-wide v11, v4

    goto :goto_5

    .line 5870
    :cond_3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_4

    :goto_5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4

    .line 5871
    iget-wide v7, v1, Lyads/zh5;->e:J

    goto :goto_6

    :cond_4
    move-wide v7, v4

    .line 5872
    :goto_6
    const-string v13, "duration"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    :goto_7
    move-wide/from16 v17, v7

    goto :goto_8

    .line 5873
    :cond_5
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_6

    .line 5874
    iget-wide v2, v1, Lyads/zh5;->d:J

    .line 5875
    :cond_6
    const-string v7, "startNumber"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :goto_9
    move-wide v13, v2

    goto :goto_a

    .line 5876
    :cond_7
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_9

    :goto_a
    const/4 v2, 0x0

    .line 5877
    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    move-object/from16 v3, p2

    .line 5878
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/kn0;

    .line 5879
    iget-object v8, v7, Lyads/kn0;->a:Ljava/lang/String;

    const-string v15, "http://dashif.org/guidelines/last-segment-number"

    invoke-static {v15, v8}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5880
    iget-object v2, v7, Lyads/kn0;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_c
    move-wide v15, v2

    goto :goto_d

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_9
    const-wide/16 v2, -0x1

    goto :goto_c

    :goto_d
    cmp-long v2, p9, v4

    if-nez v2, :cond_a

    move-wide/from16 v2, p7

    goto :goto_e

    :cond_a
    move-wide/from16 v2, p9

    :goto_e
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v2, v7

    if-nez v7, :cond_b

    move-wide/from16 v20, v4

    goto :goto_f

    :cond_b
    move-wide/from16 v20, v2

    :goto_f
    if-eqz v1, :cond_c

    .line 5881
    iget-object v2, v1, Lyads/bi5;->k:Lyads/y46;

    goto :goto_10

    :cond_c
    move-object v2, v6

    :goto_10
    const-string v3, "media"

    invoke-static {v0, v3, v2}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lyads/y46;)Lyads/y46;

    move-result-object v23

    if-eqz v1, :cond_d

    .line 5882
    iget-object v2, v1, Lyads/bi5;->j:Lyads/y46;

    goto :goto_11

    :cond_d
    move-object v2, v6

    .line 5883
    :goto_11
    const-string v3, "initialization"

    invoke-static {v0, v3, v2}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lyads/y46;)Lyads/y46;

    move-result-object v22

    move-object v2, v6

    .line 5884
    :cond_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5885
    const-string v3, "Initialization"

    invoke-static {v0, v3}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5886
    const-string v3, "sourceURL"

    const-string v4, "range"

    invoke-static {v0, v3, v4}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/y35;

    move-result-object v3

    move-object v6, v3

    move-wide/from16 v3, p5

    goto :goto_12

    .line 5887
    :cond_f
    const-string v3, "SegmentTimeline"

    invoke-static {v0, v3}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-wide/from16 v3, p5

    .line 5888
    invoke-static {v0, v9, v10, v3, v4}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_12

    :cond_10
    move-wide/from16 v3, p5

    .line 5889
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5890
    :goto_12
    const-string v5, "SegmentTemplate"

    invoke-static {v0, v5}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v1, :cond_12

    if-eqz v6, :cond_11

    goto :goto_13

    .line 5891
    :cond_11
    iget-object v0, v1, Lyads/ei5;->a:Lyads/y35;

    move-object v6, v0

    :goto_13
    if-eqz v2, :cond_13

    :cond_12
    :goto_14
    move-object/from16 v19, v2

    move-object v8, v6

    goto :goto_15

    .line 5892
    :cond_13
    iget-object v2, v1, Lyads/zh5;->f:Ljava/util/List;

    goto :goto_14

    .line 5893
    :goto_15
    new-instance v7, Lyads/bi5;

    .line 5894
    invoke-static/range {p11 .. p12}, Lyads/u56;->a(J)J

    move-result-wide v24

    .line 5895
    invoke-static/range {p3 .. p4}, Lyads/u56;->a(J)J

    move-result-wide v26

    invoke-direct/range {v7 .. v27}, Lyads/bi5;-><init>(Lyads/y35;JJJJJLjava/util/List;JLyads/y46;Lyads/y46;JJ)V

    return-object v7
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lyads/di5;)Lyads/di5;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 5817
    iget-wide v4, v1, Lyads/ei5;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v6, 0x0

    .line 5818
    const-string v7, "timescale"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-wide v9, v4

    goto :goto_2

    .line 5819
    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :goto_2
    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    .line 5820
    iget-wide v7, v1, Lyads/ei5;->c:J

    goto :goto_3

    :cond_2
    move-wide v7, v4

    .line 5821
    :goto_3
    const-string v11, "presentationTimeOffset"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    :goto_4
    move-wide v11, v7

    goto :goto_5

    .line 5822
    :cond_3
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_4

    .line 5823
    iget-wide v7, v1, Lyads/di5;->d:J

    goto :goto_6

    :cond_4
    move-wide v7, v4

    :goto_6
    if-eqz v1, :cond_5

    .line 5824
    iget-wide v4, v1, Lyads/di5;->e:J

    .line 5825
    :cond_5
    const-string v13, "indexRange"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 5826
    const-string v4, "-"

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 5827
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v5, 0x1

    .line 5828
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v7

    add-long/2addr v4, v2

    :cond_6
    move-wide v15, v4

    move-wide v13, v7

    if-eqz v1, :cond_7

    .line 5829
    iget-object v6, v1, Lyads/ei5;->a:Lyads/y35;

    .line 5830
    :cond_7
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5831
    const-string v1, "Initialization"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5832
    const-string v1, "sourceURL"

    const-string v2, "range"

    invoke-static {v0, v1, v2}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/y35;

    move-result-object v6

    :goto_8
    move-object v8, v6

    goto :goto_9

    .line 5833
    :cond_8
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    .line 5834
    :goto_9
    const-string v1, "SegmentBase"

    invoke-static {v0, v1}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5835
    new-instance v7, Lyads/di5;

    invoke-direct/range {v7 .. v16}, Lyads/di5;-><init>(Lyads/y35;JJJJ)V

    return-object v7

    :cond_9
    move-object v6, v8

    goto :goto_7
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lyads/kc0;
    .locals 149

    move-object/from16 v0, p0

    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v2, "profiles"

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    move v3, v13

    :goto_1
    const/4 v15, 0x1

    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "urn:dvb:dash:profile:dvb-dash:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v12, v15

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v12, v13

    :goto_2
    const-string v1, "availabilityStartTime"

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_3

    move-wide/from16 v17, v2

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lyads/u56;->f(Ljava/lang/String;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    :goto_3
    const-string v1, "mediaPresentationDuration"

    invoke-static {v0, v1, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    const-string v1, "minBufferTime"

    invoke-static {v0, v1, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    const-string v1, "type"

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "dynamic"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    const-string v1, "minimumUpdatePeriod"

    invoke-static {v0, v1, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide/from16 v24, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v24, v2

    :goto_4
    if-eqz v23, :cond_5

    const-string v1, "timeShiftBufferDepth"

    invoke-static {v0, v1, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v10, v4

    goto :goto_5

    :cond_5
    move-wide v10, v2

    :goto_5
    if-eqz v23, :cond_6

    const-string v1, "suggestedPresentationDelay"

    invoke-static {v0, v1, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide/from16 v28, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v28, v2

    :goto_6
    const-string v1, "publishTime"

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-wide/from16 v30, v2

    goto :goto_7

    :cond_7
    invoke-static {v1}, Lyads/u56;->f(Ljava/lang/String;)J

    move-result-wide v4

    move-wide/from16 v30, v4

    :goto_7
    const-wide/16 v26, 0x0

    if-eqz v23, :cond_8

    move-wide/from16 v4, v26

    goto :goto_8

    :cond_8
    move-wide v4, v2

    :goto_8
    new-instance v1, Lyads/ms;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v12, :cond_9

    move v8, v15

    goto :goto_9

    :cond_9
    const/high16 v8, -0x80000000

    :goto_9
    invoke-direct {v1, v8, v15, v6, v7}, Lyads/ms;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {v1}, [Lyads/ms;

    move-result-object v1

    invoke-static {v1}, Lyads/xt3;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v23, :cond_a

    move-wide v7, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v7, v26

    :goto_a
    move/from16 v16, v13

    move/from16 v32, v16

    move-object/from16 v33, v14

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v37, v35

    :goto_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "BaseURL"

    invoke-static {v0, v9}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    if-nez v16, :cond_b

    invoke-static {v0, v4, v5}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    move/from16 v16, v15

    :cond_b
    invoke-static {v0, v1, v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v51, v1

    move-wide v13, v2

    move-object/from16 v48, v6

    move-wide/from16 v58, v7

    move/from16 v60, v12

    move-object/from16 v7, v36

    const/16 v39, 0x0

    :goto_c
    move-wide v11, v10

    goto/16 :goto_9c

    :cond_c
    const-string v13, "ProgramInformation"

    invoke-static {v0, v13}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v40

    const-string v15, "lang"

    if-eqz v40, :cond_13

    const-string v9, "moreInformationURL"

    invoke-interface {v0, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    move-object/from16 v46, v14

    goto :goto_d

    :cond_d
    move-object/from16 v46, v9

    :goto_d
    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    move-object v9, v14

    move-object v15, v9

    move-object/from16 v33, v15

    move-object/from16 v47, v33

    goto :goto_e

    :cond_e
    move-object/from16 v47, v9

    move-object v9, v14

    move-object v15, v9

    move-object/from16 v33, v15

    :goto_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-wide/from16 v48, v2

    const-string v2, "Title"

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    :goto_f
    move-object/from16 v43, v9

    move-object/from16 v44, v15

    move-object/from16 v45, v33

    goto :goto_10

    :cond_f
    const-string v2, "Source"

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    :cond_10
    const-string v2, "Copyright"

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v33

    goto :goto_f

    :cond_11
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :goto_10
    invoke-static {v0, v13}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v42, Lyads/w05;

    invoke-direct/range {v42 .. v47}, Lyads/w05;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v51, v1

    move-wide/from16 v58, v7

    move/from16 v60, v12

    move-object/from16 v7, v36

    move-object/from16 v33, v42

    :goto_11
    move-wide/from16 v13, v48

    :goto_12
    const/16 v39, 0x0

    move-object/from16 v48, v6

    goto :goto_c

    :cond_12
    move-object/from16 v9, v43

    move-object/from16 v15, v44

    move-object/from16 v33, v45

    move-wide/from16 v2, v48

    goto :goto_e

    :cond_13
    move-wide/from16 v48, v2

    const-string v2, "UTCTiming"

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const-string v13, "value"

    const-string v3, "schemeIdUri"

    if-eqz v2, :cond_14

    invoke-interface {v0, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lyads/t56;

    invoke-direct {v9, v2, v3}, Lyads/t56;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v51, v1

    move-wide/from16 v58, v7

    move-object/from16 v34, v9

    :goto_13
    move/from16 v60, v12

    move-object/from16 v7, v36

    goto :goto_11

    :cond_14
    const-string v2, "Location"

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyads/o46;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v51, v1

    move-wide/from16 v58, v7

    goto :goto_13

    :cond_15
    const-string v2, "ServiceDescription"

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1e

    const v40, -0x800001

    move/from16 v3, v40

    move v9, v3

    move-wide/from16 v42, v48

    move-wide/from16 v44, v42

    move-wide/from16 v46, v44

    :goto_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v13, "Latency"

    invoke-static {v0, v13}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const-string v15, "max"

    const-string v14, "min"

    if-eqz v13, :cond_1a

    const-string v13, "target"

    move-object/from16 v51, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_16

    move-wide/from16 v42, v48

    goto :goto_15

    :cond_16
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    :goto_15
    invoke-interface {v0, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_17

    move-wide/from16 v44, v48

    goto :goto_16

    :cond_17
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v44, v13

    :goto_16
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_18

    move-wide/from16 v46, v48

    goto :goto_17

    :cond_18
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v46, v13

    :cond_19
    :goto_17
    move/from16 v59, v3

    move/from16 v60, v9

    move-wide/from16 v53, v42

    move-wide/from16 v55, v44

    move-wide/from16 v57, v46

    goto :goto_19

    :cond_1a
    move-object/from16 v51, v1

    const/4 v1, 0x0

    const-string v13, "PlaybackRate"

    invoke-static {v0, v13}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v0, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    move/from16 v3, v40

    goto :goto_18

    :cond_1b
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :goto_18
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1c

    move/from16 v9, v40

    goto :goto_17

    :cond_1c
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v9, v1

    goto :goto_17

    :goto_19
    invoke-static {v0, v2}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v52, Lyads/bj5;

    invoke-direct/range {v52 .. v60}, Lyads/bj5;-><init>(JJJFF)V

    move-wide/from16 v58, v7

    move/from16 v60, v12

    move-object/from16 v7, v36

    move-wide/from16 v13, v48

    move-object/from16 v37, v52

    goto/16 :goto_12

    :cond_1d
    move-object/from16 v1, v51

    move-wide/from16 v42, v53

    move-wide/from16 v44, v55

    move-wide/from16 v46, v57

    move/from16 v3, v59

    move/from16 v9, v60

    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_1e
    move-object/from16 v51, v1

    const-string v14, "Period"

    invoke-static {v0, v14}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dc

    if-nez v32, :cond_dc

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    move-object v1, v6

    goto :goto_1a

    :cond_1f
    move-object/from16 v1, v51

    :goto_1a
    const-string v2, "id"

    move-object/from16 v40, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v3, "start"

    invoke-static {v0, v3, v7, v8}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v44

    cmp-long v3, v17, v48

    if-eqz v3, :cond_20

    add-long v46, v17, v44

    goto :goto_1b

    :cond_20
    move-wide/from16 v46, v48

    :goto_1b
    const-string v3, "duration"

    move-wide/from16 v52, v4

    move-wide/from16 v4, v48

    invoke-static {v0, v3, v4, v5}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v48

    move-object/from16 v42, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v54, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v55, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v58, v3

    move-wide/from16 v61, v4

    move-wide/from16 v3, v52

    const/16 v56, 0x0

    const/16 v57, 0x0

    :goto_1c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v0, v9}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    if-nez v57, :cond_21

    invoke-static {v0, v3, v4}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v3

    const/16 v57, 0x1

    :cond_21
    invoke-static {v0, v1, v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v59, v48

    move-object/from16 v48, v6

    move-wide/from16 v5, v59

    move-object/from16 v63, v1

    move-object/from16 v93, v2

    move-wide/from16 v68, v3

    move-object/from16 v127, v9

    move/from16 v60, v12

    move-object/from16 v65, v13

    move-object/from16 v66, v14

    move-object/from16 v78, v15

    move-object/from16 v139, v40

    move-object/from16 v1, v42

    move-wide/from16 v2, v46

    move-object/from16 v47, v55

    move-object/from16 v138, v58

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x0

    move-wide/from16 v58, v7

    move-wide v11, v10

    move-object/from16 v40, v36

    goto/16 :goto_98

    :cond_22
    const-string v5, "AdaptationSet"

    invoke-static {v0, v5}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v63

    const-string v64, ""

    move-object/from16 v65, v13

    const-string v13, "SegmentTemplate"

    move-object/from16 v66, v14

    const-string v14, "SegmentList"

    move-object/from16 v67, v13

    const-string v13, "SegmentBase"

    if-eqz v63, :cond_c5

    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v63

    if-nez v63, :cond_23

    move-object/from16 v63, v1

    move-object/from16 v1, v65

    :goto_1d
    move-wide/from16 v68, v3

    const/4 v3, 0x0

    goto :goto_1e

    :cond_23
    move-object/from16 v63, v1

    goto :goto_1d

    :goto_1e
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    const/16 v71, -0x1

    goto :goto_1f

    :cond_24
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v71, v4

    :goto_1f
    const-string v4, "contentType"

    move-object/from16 v72, v5

    const/4 v3, 0x0

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    move/from16 v73, v3

    const-string v3, "text"

    const/16 v74, 0x3

    move-object/from16 v75, v6

    const-string v6, "video"

    move-wide/from16 v76, v7

    const-string v7, "audio"

    if-eqz v73, :cond_25

    goto :goto_20

    :cond_25
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_26

    const/4 v5, 0x1

    goto :goto_21

    :cond_26
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_27

    const/4 v5, 0x2

    goto :goto_21

    :cond_27
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move/from16 v5, v74

    goto :goto_21

    :cond_28
    :goto_20
    const/4 v5, -0x1

    :goto_21
    const-string v8, "mimeType"

    move/from16 v78, v5

    const/4 v5, 0x0

    invoke-interface {v0, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const-string v8, "codecs"

    invoke-interface {v0, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    const-string v8, "width"

    invoke-interface {v0, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_29

    const/16 v81, -0x1

    goto :goto_22

    :cond_29
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v81, v8

    :goto_22
    const-string v8, "height"

    invoke-interface {v0, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2a

    const/16 v82, -0x1

    goto :goto_23

    :cond_2a
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move/from16 v82, v8

    :goto_23
    const-string v8, "frameRate"

    invoke-interface {v0, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2c

    sget-object v5, Lyads/mc0;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2c

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v83

    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-wide/from16 v83, v10

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2b

    int-to-float v8, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v8, v5

    :goto_24
    move/from16 v85, v8

    goto :goto_25

    :cond_2b
    int-to-float v8, v8

    goto :goto_24

    :cond_2c
    move-wide/from16 v83, v10

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_24

    :goto_25
    const-string v5, "audioSamplingRate"

    const/4 v8, 0x0

    invoke-interface {v0, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2d

    const/16 v86, -0x1

    goto :goto_26

    :cond_2d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v86, v5

    :goto_26
    invoke-interface {v0, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "label"

    invoke-interface {v0, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v87, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v88, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v89, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v90, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v91, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v92, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move/from16 v93, v78

    move-object/from16 v78, v14

    move/from16 v14, v93

    move-object/from16 v93, v2

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v56

    move-wide/from16 v98, v61

    move-wide/from16 v10, v68

    move-object/from16 v2, v87

    const/16 v87, 0x0

    const/16 v94, 0x0

    const/16 v100, -0x1

    :goto_27
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v0, v9}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v101

    if-eqz v101, :cond_2f

    if-nez v94, :cond_2e

    invoke-static {v0, v10, v11}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v10

    const/16 v94, 0x1

    :cond_2e
    move-wide/from16 v101, v10

    invoke-static {v0, v1, v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v60, v12

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-wide/from16 v11, v83

    move-object/from16 v8, v88

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v143, v93

    move-wide/from16 v102, v101

    const/4 v10, 0x2

    const/16 v70, -0x1

    move-object/from16 v101, v1

    move-object/from16 v78, v15

    move-object/from16 v40, v36

    move-object/from16 v15, v90

    move-object/from16 v1, v92

    :goto_28
    move-object/from16 v147, v13

    move-object v13, v2

    move-wide/from16 v2, v46

    move-object/from16 v47, v95

    move-object/from16 v46, v5

    move-object/from16 v95, v147

    move-object/from16 v5, v72

    :goto_29
    move/from16 v72, v14

    goto/16 :goto_76

    :cond_2f
    move-object/from16 v101, v1

    const-string v1, "ContentProtection"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {v0}, Lyads/mc0;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    move-wide/from16 v102, v10

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v10, :cond_30

    move-object/from16 v87, v10

    check-cast v87, Ljava/lang/String;

    :cond_30
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_31

    check-cast v1, Lyads/pl2;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v60, v12

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-wide/from16 v11, v83

    move-object/from16 v8, v88

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    const/4 v10, 0x2

    const/16 v70, -0x1

    :goto_2a
    move-object/from16 v78, v15

    move-object/from16 v40, v36

    move-object/from16 v15, v90

    goto :goto_28

    :cond_32
    move-wide/from16 v102, v10

    const-string v1, "ContentComponent"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v2, :cond_33

    move-object v2, v10

    goto :goto_2b

    :cond_33
    if-nez v10, :cond_34

    goto :goto_2b

    :cond_34
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    :goto_2b
    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_2d

    :cond_35
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    :goto_2c
    const/4 v10, -0x1

    goto :goto_2e

    :cond_36
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x2

    goto :goto_2c

    :cond_37
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    move/from16 v1, v74

    goto :goto_2c

    :cond_38
    :goto_2d
    const/4 v1, -0x1

    goto :goto_2c

    :goto_2e
    if-ne v14, v10, :cond_39

    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v70, v10

    move/from16 v60, v12

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-wide/from16 v11, v83

    move-object/from16 v8, v88

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v143, v93

    const/4 v10, 0x2

    move-object/from16 v78, v15

    move-object/from16 v40, v36

    move-object/from16 v15, v90

    move-object/from16 v147, v72

    move/from16 v72, v1

    move-object/from16 v1, v92

    move-object/from16 v148, v13

    move-object v13, v2

    move-wide/from16 v2, v46

    move-object/from16 v47, v95

    move-object/from16 v46, v5

    move-object/from16 v95, v148

    move-object/from16 v5, v147

    goto/16 :goto_76

    :cond_39
    if-ne v1, v10, :cond_3a

    goto :goto_2f

    :cond_3a
    if-ne v14, v1, :cond_3b

    :goto_2f
    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v70, v10

    move/from16 v60, v12

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-wide/from16 v11, v83

    move-object/from16 v8, v88

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    const/4 v10, 0x2

    goto/16 :goto_2a

    :cond_3b
    invoke-static {}, Lud;->g()V

    const/16 v50, 0x0

    return-object v50

    :cond_3c
    move-object/from16 v50, v1

    invoke-static {}, Lud;->g()V

    return-object v50

    :cond_3d
    const/4 v10, -0x1

    const-string v1, "Role"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "Role"

    invoke-static {v0, v1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v1

    move-object/from16 v11, v95

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_30
    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v70, v10

    move/from16 v60, v12

    move-object/from16 v95, v13

    move/from16 v104, v14

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v137, v72

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    const/4 v10, 0x2

    :goto_31
    move-object v13, v2

    move-object/from16 v78, v15

    move-object/from16 v40, v36

    move-wide/from16 v2, v46

    move-object/from16 v15, v90

    :goto_32
    move-object/from16 v46, v5

    move-object/from16 v47, v11

    move-wide/from16 v11, v83

    move-wide/from16 v5, v98

    goto/16 :goto_75

    :cond_3e
    move-object/from16 v11, v95

    const-string v1, "AudioChannelConfiguration"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {v0}, Lyads/mc0;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    move/from16 v100, v1

    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v70, v10

    move/from16 v60, v12

    move-object/from16 v95, v13

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-object/from16 v8, v88

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    const/4 v10, 0x2

    move-object v13, v2

    move-object/from16 v78, v15

    move-object/from16 v40, v36

    move-wide/from16 v2, v46

    move-object/from16 v15, v90

    move-object/from16 v46, v5

    move-object/from16 v47, v11

    move-object/from16 v5, v72

    move-wide/from16 v11, v83

    goto/16 :goto_29

    :cond_3f
    const-string v1, "Accessibility"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "Accessibility"

    invoke-static {v0, v1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :cond_40
    const-string v1, "EssentialProperty"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v70

    if-eqz v70, :cond_41

    invoke-static {v0, v1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v1

    move-object/from16 v10, v96

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v60, v12

    move-object/from16 v95, v13

    move/from16 v104, v14

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v137, v72

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v76, v78

    move-object/from16 v9, v89

    move-object/from16 v7, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    const/4 v10, 0x2

    const/16 v70, -0x1

    goto/16 :goto_31

    :cond_41
    move-object/from16 v95, v13

    move-object/from16 v10, v96

    const-string v13, "SupplementalProperty"

    invoke-static {v0, v13}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v96

    if-eqz v96, :cond_42

    invoke-static {v0, v13}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v1

    move-object/from16 v13, v78

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object/from16 v144, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move-object/from16 v96, v10

    move/from16 v60, v12

    move/from16 v104, v14

    move-object/from16 v78, v15

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v4, v67

    move-object/from16 v137, v72

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-object/from16 v9, v89

    move-object/from16 v15, v90

    move-object/from16 v7, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    const/4 v10, 0x2

    const/16 v70, -0x1

    move-object/from16 v76, v13

    move-object/from16 v40, v36

    move-object v13, v2

    move-wide/from16 v2, v46

    goto/16 :goto_32

    :cond_42
    move-object/from16 v96, v78

    move-object/from16 v78, v15

    move-object/from16 v15, v96

    move-object/from16 v96, v1

    const-string v1, "Representation"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    move/from16 v104, v14

    const-string v14, "InbandEventStream"

    if-eqz v1, :cond_ab

    invoke-virtual/range {v95 .. v95}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    move-object/from16 v1, v93

    move-object/from16 v93, v2

    move-object v2, v1

    move-object/from16 v1, v95

    :goto_33
    move-object/from16 v105, v3

    move-object/from16 v106, v13

    const/4 v3, 0x0

    goto :goto_34

    :cond_43
    move-object/from16 v1, v93

    move-object/from16 v93, v2

    move-object v2, v1

    move-object/from16 v1, v101

    goto :goto_33

    :goto_34
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v107, v2

    const-string v2, "bandwidth"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    const/16 v108, -0x1

    goto :goto_35

    :cond_44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v108, v2

    :goto_35
    const-string v2, "mimeType"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_45

    move-object/from16 v109, v79

    goto :goto_36

    :cond_45
    move-object/from16 v109, v2

    :goto_36
    const-string v2, "codecs"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_46

    move-object/from16 v110, v80

    goto :goto_37

    :cond_46
    move-object/from16 v110, v2

    :goto_37
    const-string v2, "width"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_47

    move/from16 v111, v81

    goto :goto_38

    :cond_47
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v111, v2

    :goto_38
    const-string v2, "height"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_48

    move/from16 v112, v82

    goto :goto_39

    :cond_48
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v112, v2

    :goto_39
    const-string v2, "frameRate"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    sget-object v3, Lyads/mc0;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v113

    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v113, v4

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v73

    if-nez v73, :cond_49

    int-to-float v3, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_3a

    :cond_49
    int-to-float v3, v3

    goto :goto_3a

    :cond_4a
    move-object/from16 v113, v4

    const/4 v4, 0x2

    move/from16 v3, v85

    :goto_3a
    const-string v2, "audioSamplingRate"

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4b

    move/from16 v2, v86

    goto :goto_3b

    :cond_4b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_3b
    new-instance v119, Ljava/util/ArrayList;

    invoke-direct/range {v119 .. v119}, Ljava/util/ArrayList;-><init>()V

    new-instance v120, Ljava/util/ArrayList;

    invoke-direct/range {v120 .. v120}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v114, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v115, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move/from16 v122, v2

    move/from16 v121, v3

    move-object/from16 v124, v6

    move-object/from16 v125, v7

    move-object/from16 v118, v97

    move-wide/from16 v2, v98

    move/from16 v123, v100

    move-wide/from16 v6, v102

    const/16 v116, 0x0

    const/16 v117, 0x0

    :goto_3c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v0, v9}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v126

    if-eqz v126, :cond_4d

    if-nez v116, :cond_4c

    invoke-static {v0, v6, v7}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v6

    const/16 v116, 0x1

    :cond_4c
    move-object/from16 v126, v4

    invoke-static {v0, v1, v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3d
    move-wide/from16 v59, v46

    move-object/from16 v46, v5

    move-wide/from16 v4, v59

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move-object/from16 v47, v11

    move/from16 v60, v12

    move-object/from16 v139, v40

    move-object/from16 v138, v58

    move-object/from16 v146, v67

    move-object/from16 v137, v72

    move-wide/from16 v58, v76

    move-wide/from16 v11, v83

    move-object/from16 v129, v89

    move-object/from16 v140, v90

    move-object/from16 v141, v91

    move-object/from16 v130, v93

    move-object/from16 v142, v96

    move-object/from16 v8, v106

    move-object/from16 v143, v107

    move/from16 v131, v108

    move/from16 v132, v111

    move/from16 v133, v112

    move-object/from16 v76, v115

    move/from16 v134, v121

    move/from16 v135, v122

    move-object/from16 v144, v124

    move-object/from16 v145, v125

    move-object/from16 v9, v126

    move-object/from16 v91, v1

    move-wide/from16 v83, v2

    move-wide/from16 v72, v6

    move-object/from16 v96, v10

    move-object v1, v13

    move-object/from16 v40, v36

    move-wide/from16 v6, v48

    move-object/from16 v48, v75

    move-object/from16 v49, v109

    move-object/from16 v10, v118

    move-object/from16 v13, v120

    move/from16 v2, v123

    move-object/from16 v36, v15

    move-object/from16 v118, v117

    move-object/from16 v15, v119

    goto/16 :goto_41

    :cond_4d
    move-object/from16 v126, v4

    const-string v4, "AudioChannelConfiguration"

    invoke-static {v0, v4}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-static {v0}, Lyads/mc0;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v123

    goto :goto_3d

    :cond_4e
    move-object/from16 v4, v91

    invoke-static {v0, v4}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v91

    if-eqz v91, :cond_4f

    move-object/from16 v91, v1

    move-object/from16 v1, v118

    check-cast v1, Lyads/di5;

    invoke-static {v0, v1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/di5;)Lyads/di5;

    move-result-object v118

    move-object/from16 v141, v4

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move/from16 v60, v12

    move-object v1, v13

    move-object/from16 v139, v40

    move-object/from16 v138, v58

    move-object/from16 v146, v67

    move-object/from16 v137, v72

    move-wide/from16 v58, v76

    move-object/from16 v129, v89

    move-object/from16 v140, v90

    move-object/from16 v130, v93

    move-object/from16 v142, v96

    move-object/from16 v8, v106

    move-object/from16 v143, v107

    move/from16 v131, v108

    move/from16 v132, v111

    move/from16 v133, v112

    move-object/from16 v76, v115

    move-object/from16 v13, v120

    move/from16 v134, v121

    move/from16 v135, v122

    move-object/from16 v144, v124

    move-object/from16 v145, v125

    move-object/from16 v9, v126

    move-wide/from16 v72, v6

    move-object/from16 v96, v10

    move-object/from16 v40, v36

    move-wide/from16 v6, v48

    move-object/from16 v48, v75

    move-object/from16 v49, v109

    move-object/from16 v10, v118

    move-object/from16 v36, v15

    move-object/from16 v118, v117

    move-object/from16 v15, v119

    move-wide/from16 v147, v46

    move-object/from16 v46, v5

    move-object/from16 v47, v11

    move-wide/from16 v4, v147

    move-wide/from16 v11, v83

    move-wide/from16 v83, v2

    move/from16 v2, v123

    goto/16 :goto_41

    :cond_4f
    move-object/from16 v91, v1

    move-object/from16 v1, v90

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v90

    if-eqz v90, :cond_50

    move-object/from16 v90, v8

    move-object/from16 v127, v9

    invoke-static {v0, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    check-cast v118, Lyads/ai5;

    move-object/from16 v140, v1

    move-object/from16 v141, v4

    move-object/from16 v139, v40

    move-wide/from16 v2, v46

    move-object/from16 v138, v58

    move-object/from16 v137, v72

    move-wide/from16 v58, v76

    move-object/from16 v129, v89

    move-object/from16 v128, v90

    move-object/from16 v130, v93

    move-object/from16 v142, v96

    move-object/from16 v143, v107

    move/from16 v131, v108

    move/from16 v132, v111

    move/from16 v133, v112

    move-object/from16 v1, v118

    move/from16 v134, v121

    move/from16 v135, v122

    move-object/from16 v144, v124

    move-object/from16 v145, v125

    move-object/from16 v136, v126

    move-object/from16 v46, v5

    move-object/from16 v96, v10

    move-object/from16 v47, v11

    move-object/from16 v122, v13

    move-object/from16 v40, v36

    move-wide/from16 v4, v48

    move-object/from16 v48, v75

    move-wide/from16 v10, v83

    move-object/from16 v49, v109

    move-object/from16 v13, v120

    move-object/from16 v36, v15

    move-object/from16 v15, v119

    invoke-static/range {v0 .. v11}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/ai5;JJJJJ)Lyads/ai5;

    move-result-object v118

    move-wide/from16 v72, v6

    move-wide v6, v4

    move-wide v4, v2

    move-wide/from16 v83, v8

    move/from16 v60, v12

    move-object/from16 v146, v67

    move-object/from16 v8, v106

    move-object/from16 v76, v115

    move-object/from16 v1, v122

    move/from16 v2, v123

    move-object/from16 v9, v136

    move-wide v11, v10

    move-object/from16 v10, v118

    :goto_3e
    move-object/from16 v118, v117

    goto/16 :goto_41

    :cond_50
    move-object/from16 v140, v1

    move-object/from16 v141, v4

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move-object/from16 v139, v40

    move-object/from16 v138, v58

    move-object/from16 v1, v67

    move-object/from16 v137, v72

    move-wide/from16 v58, v76

    move-object/from16 v129, v89

    move-object/from16 v130, v93

    move-object/from16 v142, v96

    move-object/from16 v143, v107

    move/from16 v131, v108

    move/from16 v132, v111

    move/from16 v133, v112

    move/from16 v134, v121

    move/from16 v135, v122

    move-object/from16 v144, v124

    move-object/from16 v145, v125

    move-object/from16 v136, v126

    move-wide/from16 v72, v6

    move-object/from16 v96, v10

    move-object/from16 v122, v13

    move-object/from16 v40, v36

    move-wide/from16 v6, v48

    move-object/from16 v48, v75

    move-object/from16 v49, v109

    move-object/from16 v13, v120

    move-object/from16 v36, v15

    move-object/from16 v15, v119

    move-wide/from16 v147, v46

    move-object/from16 v46, v5

    move-object/from16 v47, v11

    move-wide/from16 v4, v147

    move-wide/from16 v10, v83

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_51

    move-wide/from16 v83, v10

    invoke-static {v0, v2, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    check-cast v118, Lyads/bi5;

    move-object/from16 v146, v1

    move-wide v3, v4

    move-wide v5, v6

    move/from16 v60, v12

    move-wide/from16 v7, v72

    move-wide/from16 v11, v83

    move-object/from16 v2, v115

    move-object/from16 v1, v118

    invoke-static/range {v0 .. v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/bi5;Ljava/util/List;JJJJJ)Lyads/bi5;

    move-result-object v118

    move-object/from16 v76, v2

    move-wide v6, v5

    move-wide v4, v3

    move-wide/from16 v83, v9

    :goto_3f
    move-object/from16 v8, v106

    move-object/from16 v10, v118

    move-object/from16 v1, v122

    move/from16 v2, v123

    move-object/from16 v9, v136

    goto :goto_3e

    :cond_51
    move-object/from16 v146, v1

    move/from16 v60, v12

    move-object/from16 v76, v115

    move-wide v11, v10

    const-string v1, "ContentProtection"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-static {v0}, Lyads/mc0;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v8, :cond_52

    move-object/from16 v117, v8

    check-cast v117, Ljava/lang/String;

    :cond_52
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_53

    check-cast v1, Lyads/pl2;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    move-wide/from16 v83, v2

    goto :goto_3f

    :cond_54
    invoke-static {v0, v14}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {v0, v14}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v106

    move-object/from16 v1, v122

    move-object/from16 v9, v136

    goto :goto_40

    :cond_55
    move-object/from16 v1, v142

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-static {v0, v1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v8

    move-object/from16 v9, v136

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v142, v1

    move-object/from16 v8, v106

    move-object/from16 v1, v122

    goto :goto_40

    :cond_56
    move-object/from16 v8, v106

    move-object/from16 v9, v136

    invoke-static {v0, v8}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-static {v0, v8}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v10

    move-object/from16 v142, v1

    move-object/from16 v1, v122

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_57
    move-object/from16 v142, v1

    move-object/from16 v1, v122

    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_40
    move-wide/from16 v83, v2

    move-object/from16 v10, v118

    move/from16 v2, v123

    goto/16 :goto_3e

    :goto_41
    const-string v3, "Representation"

    invoke-static {v0, v3}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    invoke-static/range {v49 .. v49}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v145

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    if-nez v110, :cond_59

    move-wide/from16 v89, v4

    :cond_58
    move-object/from16 v5, v49

    move-object/from16 v4, v144

    goto/16 :goto_48

    :cond_59
    sget v3, Lyads/u56;->a:I

    invoke-static/range {v110 .. v110}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v3, 0x0

    new-array v14, v3, [Ljava/lang/String;

    move-wide/from16 v89, v4

    goto :goto_42

    :cond_5a
    invoke-virtual/range {v110 .. v110}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v14, "(\\s*,\\s*)"

    move-wide/from16 v89, v4

    const/4 v4, -0x1

    invoke-virtual {v3, v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    :goto_42
    array-length v3, v14

    const/4 v4, 0x0

    :goto_43
    if-ge v4, v3, :cond_58

    aget-object v5, v14, v4

    invoke-static {v5}, Lyads/z84;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v67, v3

    if-eqz v5, :cond_5b

    invoke-static {v5}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object/from16 v67, v5

    move-object/from16 v4, v144

    goto :goto_46

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v67

    goto :goto_43

    :cond_5c
    move-wide/from16 v89, v4

    invoke-static/range {v49 .. v49}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v144

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    if-nez v110, :cond_5e

    :cond_5d
    move-object/from16 v5, v49

    goto/16 :goto_48

    :cond_5e
    sget v3, Lyads/u56;->a:I

    invoke-static/range {v110 .. v110}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/String;

    goto :goto_44

    :cond_5f
    invoke-virtual/range {v110 .. v110}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "(\\s*,\\s*)"

    const/4 v14, -0x1

    invoke-virtual {v3, v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    :goto_44
    array-length v3, v5

    const/4 v14, 0x0

    :goto_45
    if-ge v14, v3, :cond_5d

    aget-object v67, v5, v14

    invoke-static/range {v67 .. v67}, Lyads/z84;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    move/from16 v72, v3

    if-eqz v67, :cond_60

    invoke-static/range {v67 .. v67}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_46
    move-object/from16 v5, v49

    move-object/from16 v3, v67

    goto :goto_49

    :cond_60
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v72

    goto :goto_45

    :cond_61
    invoke-static/range {v49 .. v49}, Lyads/z84;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_47

    :cond_62
    invoke-static/range {v49 .. v49}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "image"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    :goto_47
    move-object/from16 v3, v49

    move-object v5, v3

    goto :goto_49

    :cond_63
    const-string v3, "application/mp4"

    move-object/from16 v5, v49

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-static/range {v110 .. v110}, Lyads/z84;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "text/vtt"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_65

    const-string v3, "application/x-mp4-vtt"

    goto :goto_49

    :cond_64
    :goto_48
    const/4 v3, 0x0

    :cond_65
    :goto_49
    const-string v14, "audio/eac3"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6b

    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_69

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyads/kn0;

    move/from16 v49, v3

    iget-object v3, v14, Lyads/kn0;->a:Ljava/lang/String;

    move-wide/from16 v106, v6

    const-string v6, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    iget-object v6, v14, Lyads/kn0;->b:Ljava/lang/String;

    const-string v7, "JOC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    :cond_66
    const-string v6, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, v14, Lyads/kn0;->b:Ljava/lang/String;

    const-string v6, "ec+3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_67
    const-string v3, "audio/eac3-joc"

    goto :goto_4b

    :cond_68
    add-int/lit8 v3, v49, 0x1

    move-wide/from16 v6, v106

    goto :goto_4a

    :cond_69
    move-wide/from16 v106, v6

    const-string v3, "audio/eac3"

    :goto_4b
    const-string v6, "audio/eac3-joc"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const-string v110, "ec+3"

    :cond_6a
    :goto_4c
    move-object/from16 v6, v110

    goto :goto_4d

    :cond_6b
    move-wide/from16 v106, v6

    goto :goto_4c

    :goto_4d
    move-object/from16 v49, v10

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_4e
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-wide/from16 v108, v11

    const-string v11, "forced-subtitle"

    const-string v12, "forced_subtitle"

    move-object/from16 v120, v13

    const-string v13, "urn:mpeg:dash:role:2011"

    if-ge v7, v10, :cond_6f

    move-object/from16 v10, v47

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    move/from16 v67, v7

    move-object/from16 v7, v47

    check-cast v7, Lyads/kn0;

    move-object/from16 v119, v15

    iget-object v15, v7, Lyads/kn0;->a:Ljava/lang/String;

    invoke-static {v13, v15}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6e

    iget-object v7, v7, Lyads/kn0;->b:Ljava/lang/String;

    if-nez v7, :cond_6c

    goto :goto_4f

    :cond_6c
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6d

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    :goto_4f
    const/4 v7, 0x0

    goto :goto_50

    :cond_6d
    const/4 v7, 0x2

    :goto_50
    or-int/2addr v7, v14

    move v14, v7

    :cond_6e
    add-int/lit8 v7, v67, 0x1

    move-object/from16 v47, v10

    move-wide/from16 v11, v108

    move-object/from16 v15, v119

    move-object/from16 v13, v120

    goto :goto_4e

    :cond_6f
    move-object/from16 v119, v15

    move-object/from16 v10, v47

    const/4 v7, 0x0

    const/16 v47, 0x0

    :goto_51
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v67, 0x8

    if-ge v7, v15, :cond_7f

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/kn0;

    move/from16 v72, v7

    iget-object v7, v15, Lyads/kn0;->a:Ljava/lang/String;

    invoke-static {v13, v7}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget-object v7, v15, Lyads/kn0;->b:Ljava/lang/String;

    if-nez v7, :cond_70

    goto/16 :goto_54

    :cond_70
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_52
    const/4 v7, -0x1

    goto/16 :goto_53

    :sswitch_0
    const-string v15, "supplementary"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_71

    goto :goto_52

    :cond_71
    const/16 v7, 0xc

    goto/16 :goto_53

    :sswitch_1
    const-string v15, "emergency"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_72

    goto :goto_52

    :cond_72
    const/16 v7, 0xb

    goto/16 :goto_53

    :sswitch_2
    const-string v15, "commentary"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_73

    goto :goto_52

    :cond_73
    const/16 v7, 0xa

    goto/16 :goto_53

    :sswitch_3
    const-string v15, "caption"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    goto :goto_52

    :cond_74
    const/16 v7, 0x9

    goto/16 :goto_53

    :sswitch_4
    const-string v15, "sign"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_75

    goto :goto_52

    :cond_75
    move/from16 v7, v67

    goto :goto_53

    :sswitch_5
    const-string v15, "main"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_76

    goto :goto_52

    :cond_76
    const/4 v7, 0x7

    goto :goto_53

    :sswitch_6
    const-string v15, "dub"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_77

    goto :goto_52

    :cond_77
    const/4 v7, 0x6

    goto :goto_53

    :sswitch_7
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_78

    goto :goto_52

    :cond_78
    const/4 v7, 0x5

    goto :goto_53

    :sswitch_8
    const-string v15, "alternate"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_79

    goto :goto_52

    :cond_79
    const/4 v7, 0x4

    goto :goto_53

    :sswitch_9
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    goto :goto_52

    :cond_7a
    move/from16 v7, v74

    goto :goto_53

    :sswitch_a
    const-string v15, "enhanced-audio-intelligibility"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7b

    goto :goto_52

    :cond_7b
    const/4 v7, 0x2

    goto :goto_53

    :sswitch_b
    const-string v15, "description"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    goto/16 :goto_52

    :cond_7c
    const/4 v7, 0x1

    goto :goto_53

    :sswitch_c
    const-string v15, "subtitle"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7d

    goto/16 :goto_52

    :cond_7d
    const/4 v7, 0x0

    :goto_53
    packed-switch v7, :pswitch_data_0

    :goto_54
    const/4 v7, 0x0

    goto :goto_55

    :pswitch_0
    const/4 v7, 0x4

    goto :goto_55

    :pswitch_1
    const/16 v7, 0x20

    goto :goto_55

    :pswitch_2
    move/from16 v7, v67

    goto :goto_55

    :pswitch_3
    const/16 v7, 0x40

    goto :goto_55

    :pswitch_4
    const/16 v7, 0x100

    goto :goto_55

    :pswitch_5
    const/4 v7, 0x1

    goto :goto_55

    :pswitch_6
    const/16 v7, 0x10

    goto :goto_55

    :pswitch_7
    const/4 v7, 0x2

    goto :goto_55

    :pswitch_8
    const/16 v7, 0x800

    goto :goto_55

    :pswitch_9
    const/16 v7, 0x200

    goto :goto_55

    :pswitch_a
    const/16 v7, 0x80

    :goto_55
    or-int v7, v47, v7

    move/from16 v47, v7

    :cond_7e
    add-int/lit8 v7, v72, 0x1

    goto/16 :goto_51

    :cond_7f
    move-object/from16 v75, v10

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_56
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_96

    move-object/from16 v10, v46

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move/from16 v72, v7

    move-object/from16 v7, v46

    check-cast v7, Lyads/kn0;

    move/from16 v46, v15

    iget-object v15, v7, Lyads/kn0;->a:Ljava/lang/String;

    invoke-static {v13, v15}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8e

    iget-object v7, v7, Lyads/kn0;->b:Ljava/lang/String;

    if-nez v7, :cond_80

    :goto_57
    move-object/from16 v73, v11

    goto/16 :goto_5d

    :cond_80
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_58
    const/4 v7, -0x1

    goto/16 :goto_59

    :sswitch_d
    const-string v15, "supplementary"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_81

    goto :goto_58

    :cond_81
    const/16 v7, 0xc

    goto/16 :goto_59

    :sswitch_e
    const-string v15, "emergency"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_82

    goto :goto_58

    :cond_82
    const/16 v7, 0xb

    goto/16 :goto_59

    :sswitch_f
    const-string v15, "commentary"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    goto :goto_58

    :cond_83
    const/16 v7, 0xa

    goto/16 :goto_59

    :sswitch_10
    const-string v15, "caption"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_84

    goto :goto_58

    :cond_84
    const/16 v7, 0x9

    goto/16 :goto_59

    :sswitch_11
    const-string v15, "sign"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    goto :goto_58

    :cond_85
    move/from16 v7, v67

    goto :goto_59

    :sswitch_12
    const-string v15, "main"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    goto :goto_58

    :cond_86
    const/4 v7, 0x7

    goto :goto_59

    :sswitch_13
    const-string v15, "dub"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_87

    goto :goto_58

    :cond_87
    const/4 v7, 0x6

    goto :goto_59

    :sswitch_14
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    goto :goto_58

    :cond_88
    const/4 v7, 0x5

    goto :goto_59

    :sswitch_15
    const-string v15, "alternate"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    goto :goto_58

    :cond_89
    const/4 v7, 0x4

    goto :goto_59

    :sswitch_16
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    goto :goto_58

    :cond_8a
    move/from16 v7, v74

    goto :goto_59

    :sswitch_17
    const-string v15, "enhanced-audio-intelligibility"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8b

    goto :goto_58

    :cond_8b
    const/4 v7, 0x2

    goto :goto_59

    :sswitch_18
    const-string v15, "description"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    goto/16 :goto_58

    :cond_8c
    const/4 v7, 0x1

    goto :goto_59

    :sswitch_19
    const-string v15, "subtitle"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d

    goto/16 :goto_58

    :cond_8d
    const/4 v7, 0x0

    :goto_59
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_57

    :pswitch_b
    move-object/from16 v73, v11

    goto/16 :goto_60

    :pswitch_c
    const/16 v7, 0x20

    :goto_5a
    move-object/from16 v73, v11

    goto/16 :goto_63

    :pswitch_d
    move-object/from16 v73, v11

    goto/16 :goto_5f

    :pswitch_e
    const/16 v7, 0x40

    goto :goto_5a

    :pswitch_f
    const/16 v7, 0x100

    goto :goto_5a

    :pswitch_10
    move-object/from16 v73, v11

    goto/16 :goto_5e

    :pswitch_11
    const/16 v7, 0x10

    goto :goto_5a

    :pswitch_12
    move-object/from16 v73, v11

    const/4 v7, 0x2

    goto/16 :goto_63

    :pswitch_13
    move-object/from16 v73, v11

    goto/16 :goto_61

    :pswitch_14
    move-object/from16 v73, v11

    goto/16 :goto_62

    :pswitch_15
    const/16 v7, 0x80

    goto :goto_5a

    :cond_8e
    iget-object v15, v7, Lyads/kn0;->a:Ljava/lang/String;

    move-object/from16 v73, v11

    const-string v11, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    invoke-static {v11, v15}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_95

    iget-object v7, v7, Lyads/kn0;->b:Ljava/lang/String;

    if-nez v7, :cond_8f

    goto :goto_5d

    :cond_8f
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    packed-switch v11, :pswitch_data_2

    :goto_5b
    :pswitch_16
    const/4 v7, -0x1

    goto :goto_5c

    :pswitch_17
    const-string v11, "6"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    goto :goto_5b

    :cond_90
    const/4 v7, 0x4

    goto :goto_5c

    :pswitch_18
    const-string v11, "4"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_91

    goto :goto_5b

    :cond_91
    move/from16 v7, v74

    goto :goto_5c

    :pswitch_19
    const-string v11, "3"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    goto :goto_5b

    :cond_92
    const/4 v7, 0x2

    goto :goto_5c

    :pswitch_1a
    const-string v11, "2"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    goto :goto_5b

    :cond_93
    const/4 v7, 0x1

    goto :goto_5c

    :pswitch_1b
    const-string v11, "1"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_94

    goto :goto_5b

    :cond_94
    const/4 v7, 0x0

    :goto_5c
    packed-switch v7, :pswitch_data_3

    :goto_5d
    const/4 v7, 0x0

    goto :goto_63

    :goto_5e
    :pswitch_1c
    const/4 v7, 0x1

    goto :goto_63

    :goto_5f
    :pswitch_1d
    move/from16 v7, v67

    goto :goto_63

    :goto_60
    :pswitch_1e
    const/4 v7, 0x4

    goto :goto_63

    :goto_61
    :pswitch_1f
    const/16 v7, 0x800

    goto :goto_63

    :goto_62
    :pswitch_20
    const/16 v7, 0x200

    :goto_63
    or-int v7, v46, v7

    move v15, v7

    goto :goto_64

    :cond_95
    move/from16 v15, v46

    :goto_64
    add-int/lit8 v7, v72, 0x1

    move-object/from16 v46, v10

    move-object/from16 v11, v73

    goto/16 :goto_56

    :cond_96
    move-object/from16 v10, v46

    move/from16 v46, v15

    or-int v7, v47, v46

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_65
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_98

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/kn0;

    iget-object v13, v13, Lyads/kn0;->a:Ljava/lang/String;

    const-string v15, "http://dashif.org/guidelines/trickmode"

    invoke-static {v15, v13}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_97

    const/16 v12, 0x4000

    :cond_97
    add-int/lit8 v11, v11, 0x1

    goto :goto_65

    :cond_98
    or-int/2addr v7, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_9a

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lyads/kn0;

    iget-object v13, v13, Lyads/kn0;->a:Ljava/lang/String;

    const-string v15, "http://dashif.org/guidelines/trickmode"

    invoke-static {v15, v13}, Lyads/oj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_99

    const/16 v12, 0x4000

    :cond_99
    add-int/lit8 v11, v11, 0x1

    goto :goto_66

    :cond_9a
    or-int/2addr v7, v12

    new-instance v11, Lyads/uz2;

    invoke-direct {v11}, Lyads/uz2;-><init>()V

    move-object/from16 v12, v114

    iput-object v12, v11, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v5, v11, Lyads/uz2;->j:Ljava/lang/String;

    iput-object v3, v11, Lyads/uz2;->k:Ljava/lang/String;

    iput-object v6, v11, Lyads/uz2;->h:Ljava/lang/String;

    move/from16 v6, v131

    iput v6, v11, Lyads/uz2;->g:I

    iput v14, v11, Lyads/uz2;->d:I

    iput v7, v11, Lyads/uz2;->e:I

    move-object/from16 v13, v130

    iput-object v13, v11, Lyads/uz2;->c:Ljava/lang/String;

    invoke-static {v3}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    move/from16 v7, v132

    iput v7, v11, Lyads/uz2;->p:I

    move/from16 v15, v133

    iput v15, v11, Lyads/uz2;->q:I

    move/from16 v3, v134

    iput v3, v11, Lyads/uz2;->r:F

    goto/16 :goto_6a

    :cond_9b
    move/from16 v7, v132

    move/from16 v15, v133

    invoke-static {v3}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    iput v2, v11, Lyads/uz2;->x:I

    move/from16 v2, v135

    iput v2, v11, Lyads/uz2;->y:I

    goto/16 :goto_6a

    :cond_9c
    invoke-static {v3}, Lyads/z84;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string v2, "application/cea-608"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    const/4 v3, 0x0

    :goto_67
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_a2

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/kn0;

    iget-object v5, v2, Lyads/kn0;->a:Ljava/lang/String;

    const-string v6, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    iget-object v5, v2, Lyads/kn0;->b:Ljava/lang/String;

    if-eqz v5, :cond_9e

    sget-object v6, Lyads/mc0;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_9d

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_69

    :cond_9d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to parse CEA-608 channel number from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lyads/kn0;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MpdParser"

    invoke-static {v5, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    add-int/lit8 v3, v3, 0x1

    goto :goto_67

    :cond_9f
    const-string v2, "application/cea-708"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const/4 v3, 0x0

    :goto_68
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_a2

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/kn0;

    iget-object v5, v2, Lyads/kn0;->a:Ljava/lang/String;

    const-string v6, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    iget-object v5, v2, Lyads/kn0;->b:Ljava/lang/String;

    if-eqz v5, :cond_a1

    sget-object v6, Lyads/mc0;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_a0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_69

    :cond_a0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to parse CEA-708 service block number from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lyads/kn0;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "MpdParser"

    invoke-static {v5, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    :cond_a2
    const/4 v3, -0x1

    :goto_69
    iput v3, v11, Lyads/uz2;->C:I

    goto :goto_6a

    :cond_a3
    invoke-static {v3}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    iput v7, v11, Lyads/uz2;->p:I

    iput v15, v11, Lyads/uz2;->q:I

    :cond_a4
    :goto_6a
    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v11}, Lyads/vz2;-><init>(Lyads/uz2;)V

    if-eqz v49, :cond_a5

    move-object/from16 v117, v49

    goto :goto_6b

    :cond_a5
    new-instance v3, Lyads/di5;

    invoke-direct {v3}, Lyads/di5;-><init>()V

    move-object/from16 v117, v3

    :goto_6b
    new-instance v114, Lyads/lc0;

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a6

    move-object/from16 v116, v36

    :goto_6c
    move-object/from16 v122, v1

    move-object/from16 v115, v2

    move-object/from16 v121, v9

    goto :goto_6d

    :cond_a6
    move-object/from16 v116, v91

    goto :goto_6c

    :goto_6d
    invoke-direct/range {v114 .. v122}, Lyads/lc0;-><init>(Lyads/vz2;Ljava/util/ArrayList;Lyads/ei5;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, v114

    move-object/from16 v1, v115

    iget-object v1, v1, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v1}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v1

    move/from16 v9, v104

    const/4 v11, -0x1

    if-ne v9, v11, :cond_a7

    move v14, v1

    :goto_6e
    move-object/from16 v1, v92

    goto :goto_70

    :cond_a7
    if-ne v1, v11, :cond_a8

    goto :goto_6f

    :cond_a8
    if-ne v9, v1, :cond_a9

    :goto_6f
    move v14, v9

    goto :goto_6e

    :goto_70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v144, v4

    move-object/from16 v125, v8

    move-object/from16 v46, v10

    move/from16 v70, v11

    move/from16 v72, v14

    move-object/from16 v47, v75

    move-object/from16 v8, v88

    move-wide/from16 v2, v89

    move-wide/from16 v11, v108

    move-object/from16 v9, v129

    move-object/from16 v5, v137

    move-object/from16 v15, v140

    :goto_71
    move-object/from16 v7, v141

    :goto_72
    move-object/from16 v4, v146

    :goto_73
    const/4 v10, 0x2

    goto/16 :goto_76

    :cond_a9
    invoke-static {}, Lud;->g()V

    const/16 v50, 0x0

    return-object v50

    :cond_aa
    move-wide/from16 v89, v4

    move-wide/from16 v106, v6

    move-wide/from16 v108, v11

    move-object/from16 v119, v15

    move-object/from16 v5, v49

    move-object/from16 v49, v10

    move-object/from16 v10, v46

    move/from16 v123, v2

    move-object v4, v9

    move-object/from16 v120, v13

    move-object/from16 v15, v36

    move-object/from16 v36, v40

    move-object/from16 v11, v47

    move-object/from16 v75, v48

    move/from16 v12, v60

    move-wide/from16 v6, v72

    move-object/from16 v115, v76

    move-wide/from16 v2, v83

    move-wide/from16 v46, v89

    move-wide/from16 v83, v108

    move-object/from16 v117, v118

    move-object/from16 v9, v127

    move-object/from16 v89, v129

    move-object/from16 v93, v130

    move/from16 v108, v131

    move/from16 v111, v132

    move/from16 v112, v133

    move/from16 v121, v134

    move/from16 v122, v135

    move-object/from16 v72, v137

    move-object/from16 v40, v139

    move-object/from16 v90, v140

    move-object/from16 v124, v144

    move-object/from16 v125, v145

    move-object/from16 v67, v146

    move-object v13, v1

    move-object/from16 v109, v5

    move-object v5, v10

    move-object/from16 v118, v49

    move-wide/from16 v76, v58

    move-object/from16 v1, v91

    move-object/from16 v10, v96

    move-wide/from16 v48, v106

    move-object/from16 v58, v138

    move-object/from16 v91, v141

    move-object/from16 v96, v142

    move-object/from16 v107, v143

    move-object/from16 v106, v8

    move-object/from16 v8, v128

    goto/16 :goto_3c

    :cond_ab
    move-object v13, v2

    move-object/from16 v105, v3

    move-object/from16 v113, v4

    move-object v4, v6

    move-object/from16 v125, v7

    move-object/from16 v128, v8

    move-object/from16 v127, v9

    move-object/from16 v96, v10

    move/from16 v60, v12

    move-object/from16 v139, v40

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v146, v67

    move-object/from16 v137, v72

    move-object/from16 v48, v75

    move-wide/from16 v58, v76

    move-wide/from16 v108, v83

    move-object/from16 v129, v89

    move-object/from16 v140, v90

    move-object/from16 v2, v91

    move-object/from16 v1, v92

    move-object/from16 v143, v93

    move/from16 v9, v104

    move-object v10, v5

    move-object/from16 v75, v11

    move-object/from16 v76, v15

    move-object/from16 v40, v36

    move-wide/from16 v89, v46

    const/4 v11, -0x1

    invoke-static {v0, v2}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    move-object/from16 v3, v97

    check-cast v3, Lyads/di5;

    invoke-static {v0, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/di5;)Lyads/di5;

    move-result-object v97

    move-object v7, v2

    move-object/from16 v144, v4

    move/from16 v72, v9

    move-object/from16 v46, v10

    move/from16 v70, v11

    move-object/from16 v47, v75

    move-object/from16 v8, v88

    move-wide/from16 v2, v89

    move-wide/from16 v11, v108

    move-object/from16 v9, v129

    move-object/from16 v5, v137

    move-object/from16 v15, v140

    goto/16 :goto_72

    :cond_ac
    move-object/from16 v15, v140

    invoke-static {v0, v15}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    move/from16 v104, v9

    move-wide/from16 v5, v98

    invoke-static {v0, v5, v6}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    check-cast v97, Lyads/ai5;

    move-object/from16 v92, v1

    move-object/from16 v141, v2

    move-object/from16 v144, v4

    move-object/from16 v46, v10

    move/from16 v70, v11

    move-object/from16 v47, v75

    move-wide/from16 v2, v89

    move-object/from16 v1, v97

    move-wide/from16 v6, v102

    move-wide/from16 v4, v106

    move-wide/from16 v10, v108

    invoke-static/range {v0 .. v11}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/ai5;JJJJJ)Lyads/ai5;

    move-result-object v97

    move-wide/from16 v98, v8

    move-wide v11, v10

    move-object/from16 v8, v88

    move-object/from16 v1, v92

    move/from16 v72, v104

    move-object/from16 v9, v129

    move-object/from16 v5, v137

    goto/16 :goto_71

    :cond_ad
    move-object/from16 v92, v1

    move-object/from16 v141, v2

    move-object/from16 v144, v4

    move/from16 v104, v9

    move-object/from16 v46, v10

    move/from16 v70, v11

    move-object/from16 v47, v75

    move-wide/from16 v2, v89

    move-wide/from16 v5, v98

    move-wide/from16 v10, v108

    move-object/from16 v1, v146

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ae

    move-wide v11, v10

    invoke-static {v0, v5, v6}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    check-cast v97, Lyads/bi5;

    move-object/from16 v67, v1

    move-wide v3, v2

    move-object/from16 v2, v76

    move-object/from16 v1, v97

    move-wide/from16 v7, v102

    move-wide/from16 v5, v106

    invoke-static/range {v0 .. v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/bi5;Ljava/util/List;JJJJJ)Lyads/bi5;

    move-result-object v97

    move-wide v2, v3

    move-wide/from16 v98, v9

    move-object/from16 v4, v67

    move-object/from16 v8, v88

    move-object/from16 v1, v92

    move/from16 v72, v104

    move-object/from16 v9, v129

    move-object/from16 v5, v137

    move-object/from16 v7, v141

    goto/16 :goto_73

    :cond_ae
    move-object v4, v1

    move-wide v11, v10

    move-object/from16 v1, v92

    move-object/from16 v7, v141

    invoke-static {v0, v14}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-static {v0, v14}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    move-result-object v8

    move-object/from16 v9, v129

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    goto :goto_75

    :cond_af
    move-object/from16 v9, v129

    const-string v8, "Label"

    invoke-static {v0, v8}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b2

    move-object/from16 v8, v64

    :cond_b0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v14, 0x4

    if-ne v10, v14, :cond_b1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_74

    :cond_b1
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_74
    const-string v10, "Label"

    invoke-static {v0, v10}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b0

    move-wide/from16 v98, v5

    move/from16 v72, v104

    move-object/from16 v5, v137

    goto/16 :goto_73

    :cond_b2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_b3

    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_b3
    :goto_75
    move-wide/from16 v98, v5

    move-object/from16 v8, v88

    move/from16 v72, v104

    move-object/from16 v5, v137

    :goto_76
    invoke-static {v0, v5}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c4

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/lc0;

    iget-object v7, v6, Lyads/lc0;->a:Lyads/vz2;

    new-instance v10, Lyads/uz2;

    invoke-direct {v10, v7}, Lyads/uz2;-><init>(Lyads/vz2;)V

    if-eqz v8, :cond_b4

    iput-object v8, v10, Lyads/uz2;->b:Ljava/lang/String;

    :cond_b4
    iget-object v7, v6, Lyads/lc0;->d:Ljava/lang/String;

    if-nez v7, :cond_b5

    move-object/from16 v7, v87

    :cond_b5
    iget-object v13, v6, Lyads/lc0;->e:Ljava/util/ArrayList;

    move-object/from16 v14, v128

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    move-object/from16 v92, v1

    if-nez v15, :cond_c0

    const/4 v15, 0x0

    :goto_78
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v15, v1, :cond_b7

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/pl2;

    move-wide/from16 v89, v2

    sget-object v2, Lyads/uv;->c:Ljava/util/UUID;

    iget-object v3, v1, Lyads/pl2;->c:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v1, v1, Lyads/pl2;->d:Ljava/lang/String;

    if-eqz v1, :cond_b6

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_79

    :cond_b6
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v2, v89

    goto :goto_78

    :cond_b7
    move-wide/from16 v89, v2

    const/4 v1, 0x0

    :goto_79
    if-nez v1, :cond_b9

    :cond_b8
    move/from16 v36, v5

    move-object/from16 v49, v8

    goto :goto_7c

    :cond_b9
    const/4 v3, 0x0

    :goto_7a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_b8

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/pl2;

    sget-object v15, Lyads/uv;->b:Ljava/util/UUID;

    move/from16 v36, v5

    iget-object v5, v2, Lyads/pl2;->c:Ljava/util/UUID;

    invoke-virtual {v15, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    iget-object v5, v2, Lyads/pl2;->d:Ljava/lang/String;

    if-nez v5, :cond_ba

    new-instance v5, Lyads/pl2;

    sget-object v15, Lyads/uv;->c:Ljava/util/UUID;

    move-object/from16 v49, v8

    iget-object v8, v2, Lyads/pl2;->e:Ljava/lang/String;

    iget-object v2, v2, Lyads/pl2;->f:[B

    invoke-direct {v5, v15, v1, v8, v2}, Lyads/pl2;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v13, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    :cond_ba
    move-object/from16 v49, v8

    :goto_7b
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v36

    move-object/from16 v8, v49

    goto :goto_7a

    :goto_7c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v41, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_7d
    if-ltz v1, :cond_bf

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/pl2;

    iget-object v3, v2, Lyads/pl2;->f:[B

    if-eqz v3, :cond_bb

    goto :goto_80

    :cond_bb
    const/4 v3, 0x0

    :goto_7e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_be

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/pl2;

    iget-object v8, v5, Lyads/pl2;->f:[B

    if-eqz v8, :cond_bd

    iget-object v8, v2, Lyads/pl2;->f:[B

    if-eqz v8, :cond_bc

    goto :goto_7f

    :cond_bc
    iget-object v8, v2, Lyads/pl2;->c:Ljava/util/UUID;

    invoke-virtual {v5, v8}, Lyads/pl2;->a(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_80

    :cond_bd
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_be
    :goto_80
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    :cond_bf
    new-instance v1, Lyads/ql2;

    const/4 v2, 0x0

    new-array v3, v2, [Lyads/pl2;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lyads/pl2;

    invoke-direct {v1, v7, v2, v3}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    iput-object v1, v10, Lyads/uz2;->n:Lyads/ql2;

    goto :goto_81

    :cond_c0
    move-wide/from16 v89, v2

    move/from16 v36, v5

    move-object/from16 v49, v8

    const/4 v2, 0x0

    :goto_81
    iget-object v1, v6, Lyads/lc0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v10}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v5, v6, Lyads/lc0;->b:Lyads/oe3;

    iget-object v6, v6, Lyads/lc0;->c:Lyads/ei5;

    instance-of v7, v6, Lyads/di5;

    if-eqz v7, :cond_c1

    new-instance v7, Lyads/n75;

    check-cast v6, Lyads/di5;

    invoke-direct {v7, v3, v5, v6, v1}, Lyads/n75;-><init>(Lyads/vz2;Lyads/oe3;Lyads/di5;Ljava/util/ArrayList;)V

    goto :goto_82

    :cond_c1
    instance-of v7, v6, Lyads/zh5;

    if-eqz v7, :cond_c2

    new-instance v7, Lyads/m75;

    check-cast v6, Lyads/zh5;

    invoke-direct {v7, v3, v5, v6, v1}, Lyads/m75;-><init>(Lyads/vz2;Lyads/oe3;Lyads/zh5;Ljava/util/ArrayList;)V

    :goto_82
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v36, 0x1

    move-object/from16 v128, v14

    move-object/from16 v8, v49

    move-wide/from16 v2, v89

    move-object/from16 v1, v92

    goto/16 :goto_77

    :cond_c2
    const-string v0, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :cond_c3
    move-wide/from16 v89, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v70, Lyads/eb;

    move-object/from16 v73, v4

    move-object/from16 v74, v46

    move-object/from16 v75, v96

    invoke-direct/range {v70 .. v76}, Lyads/eb;-><init>(IILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v66

    move-object/from16 v4, v70

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v39, v2

    move-object/from16 v47, v55

    move-wide/from16 v2, v89

    move-wide/from16 v5, v106

    move-object/from16 v93, v143

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_97

    :cond_c4
    move-object/from16 v49, v8

    move-object/from16 v92, v1

    move-object/from16 v67, v4

    move-object/from16 v91, v7

    move-object/from16 v89, v9

    move-wide/from16 v83, v11

    move-object/from16 v90, v15

    move-object/from16 v36, v40

    move-object/from16 v75, v48

    move-object/from16 v88, v49

    move/from16 v12, v60

    move/from16 v14, v72

    move-object/from16 v15, v78

    move-object/from16 v1, v101

    move-wide/from16 v10, v102

    move-wide/from16 v48, v106

    move-object/from16 v4, v113

    move-object/from16 v7, v125

    move-object/from16 v9, v127

    move-object/from16 v8, v128

    move-object/from16 v40, v139

    move-object/from16 v93, v143

    move-object/from16 v6, v144

    move-object/from16 v72, v5

    move-object/from16 v5, v46

    move-object/from16 v78, v76

    move-wide/from16 v76, v58

    move-object/from16 v58, v138

    move-wide/from16 v147, v2

    move-object v2, v13

    move-object/from16 v13, v95

    move-object/from16 v3, v105

    move-object/from16 v95, v47

    move-wide/from16 v46, v147

    goto/16 :goto_27

    :cond_c5
    move-object/from16 v63, v1

    move-object/from16 v143, v2

    move-wide/from16 v68, v3

    move-object/from16 v127, v9

    move/from16 v60, v12

    move-object/from16 v78, v15

    move-object/from16 v139, v40

    move-wide/from16 v89, v46

    move-wide/from16 v106, v48

    move-object/from16 v138, v58

    move-object/from16 v1, v66

    move-object/from16 v4, v67

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v48, v6

    move-wide/from16 v58, v7

    move-wide v11, v10

    move-object v7, v13

    move-object v15, v14

    move-object/from16 v40, v36

    const-string v5, "EventStream"

    invoke-static {v0, v5}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    move-object/from16 v13, v139

    invoke-interface {v0, v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c6

    move-object/from16 v71, v64

    :goto_83
    move-object/from16 v14, v54

    goto :goto_84

    :cond_c6
    move-object/from16 v71, v4

    goto :goto_83

    :goto_84
    invoke-interface {v0, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c7

    move-object/from16 v72, v64

    goto :goto_85

    :cond_c7
    move-object/from16 v72, v4

    :goto_85
    const-string v4, "timescale"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c8

    const-wide/16 v3, 0x1

    :goto_86
    move-wide v9, v3

    goto :goto_87

    :cond_c8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_86

    :goto_87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_88
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Event"

    invoke-static {v0, v5}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    move-object/from16 v15, v143

    const/4 v5, 0x0

    invoke-interface {v0, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c9

    move-wide/from16 v75, v26

    :goto_89
    move-object/from16 v6, v138

    goto :goto_8a

    :cond_c9
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v75, v6

    goto :goto_89

    :goto_8a
    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_ca

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8b

    :cond_ca
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_8b
    const-string v2, "presentationTime"

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_cb

    move-wide/from16 v46, v26

    :goto_8c
    move-object/from16 v50, v5

    move-object/from16 v138, v6

    move-wide v5, v7

    goto :goto_8d

    :cond_cb
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v46

    goto :goto_8c

    :goto_8d
    const-wide/16 v7, 0x3e8

    move-object/from16 v2, v50

    invoke-static/range {v5 .. v10}, Lyads/u56;->a(JJJ)J

    move-result-wide v73

    const-wide/32 v7, 0xf4240

    move-wide/from16 v5, v46

    invoke-static/range {v5 .. v10}, Lyads/u56;->a(JJJ)J

    move-result-wide v5

    const-string v7, "messageData"

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_cc

    const/4 v7, 0x0

    :cond_cc
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    sget-object v8, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_8e
    const-string v8, "Event"

    invoke-static {v0, v8}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ce

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    packed-switch v8, :pswitch_data_4

    :goto_8f
    move-object/from16 v66, v1

    :cond_cd
    :goto_90
    move-object/from16 v36, v4

    move-wide/from16 v46, v5

    goto/16 :goto_92

    :pswitch_21
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_8f

    :pswitch_22
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_8f

    :pswitch_23
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_8f

    :pswitch_24
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_8f

    :pswitch_25
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_8f

    :pswitch_26
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_8f

    :pswitch_27
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8f

    :pswitch_28
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v66, v1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_90

    :pswitch_29
    move-object/from16 v66, v1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    :goto_91
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v1, v8, :cond_cd

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v36, v4

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v46, v5

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v36

    move-wide/from16 v5, v46

    goto :goto_91

    :pswitch_2a
    move-object/from16 v66, v1

    move-object/from16 v36, v4

    move-wide/from16 v46, v5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_92

    :pswitch_2b
    move-object/from16 v66, v1

    move-object/from16 v36, v4

    move-wide/from16 v46, v5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_92
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-object/from16 v4, v36

    move-wide/from16 v5, v46

    move-object/from16 v1, v66

    goto/16 :goto_8e

    :cond_ce
    move-object/from16 v66, v1

    move-object/from16 v36, v4

    move-wide/from16 v46, v5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual/range {v36 .. v36}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-nez v7, :cond_cf

    :goto_93
    move-object/from16 v77, v1

    goto :goto_94

    :cond_cf
    invoke-static {v7}, Lyads/u56;->c(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_93

    :goto_94
    new-instance v70, Lyads/ep2;

    invoke-direct/range {v70 .. v77}, Lyads/ep2;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v4, v70

    move-object/from16 v1, v71

    move-object/from16 v5, v72

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_d0
    move-object/from16 v66, v1

    move-object/from16 v36, v4

    move-object/from16 v1, v71

    move-object/from16 v5, v72

    move-object/from16 v15, v143

    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_95
    const-string v2, "EventStream"

    invoke-static {v0, v2}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lyads/ep2;

    const/4 v6, 0x0

    :goto_96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v2, v6

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lyads/ep2;

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    :cond_d1
    new-instance v3, Lyads/ip2;

    invoke-direct {v3, v1, v5, v2, v4}, Lyads/ip2;-><init>(Ljava/lang/String;Ljava/lang/String;[J[Lyads/ep2;)V

    move-object/from16 v2, v55

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v47, v2

    move-object/from16 v139, v13

    move-object/from16 v54, v14

    move-object/from16 v93, v15

    move-wide/from16 v2, v89

    move-wide/from16 v5, v106

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x0

    goto/16 :goto_97

    :cond_d2
    move-object/from16 v71, v1

    move-object/from16 v72, v5

    move-object/from16 v143, v15

    move-object/from16 v4, v36

    move-object/from16 v1, v66

    const/4 v2, 0x0

    goto/16 :goto_88

    :cond_d3
    move-object/from16 v66, v1

    move-object/from16 v14, v54

    move-object/from16 v2, v55

    move-object/from16 v13, v139

    move-object/from16 v93, v143

    invoke-static {v0, v7}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/di5;)Lyads/di5;

    move-result-object v56

    move-object/from16 v47, v2

    move-object/from16 v139, v13

    move-object/from16 v54, v14

    move-object/from16 v1, v42

    move-wide/from16 v2, v89

    move-wide/from16 v5, v106

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x0

    goto/16 :goto_98

    :cond_d4
    invoke-static {v0, v15}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v5, v6}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    const/4 v1, 0x0

    move-object/from16 v47, v2

    move-wide v10, v11

    move-object/from16 v139, v13

    move-object/from16 v54, v14

    move-wide/from16 v2, v89

    const/16 v39, 0x0

    move-wide v13, v5

    move-wide/from16 v6, v68

    move-wide/from16 v4, v106

    invoke-static/range {v0 .. v11}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/ai5;JJJJJ)Lyads/ai5;

    move-result-object v56

    move-wide v11, v10

    move-wide v5, v4

    move-wide/from16 v61, v8

    :goto_97
    move-object/from16 v1, v42

    goto :goto_98

    :cond_d5
    move-object/from16 v47, v2

    move-object/from16 v139, v13

    move-object/from16 v54, v14

    move-wide/from16 v2, v89

    move-wide/from16 v5, v106

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x0

    invoke-static {v0, v4}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-static {v0, v13, v14}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    move-wide v3, v2

    sget-object v2, Lyads/k55;->f:Lyads/k55;

    const/4 v1, 0x0

    move-wide/from16 v7, v68

    invoke-static/range {v0 .. v12}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/bi5;Ljava/util/List;JJJJJ)Lyads/bi5;

    move-result-object v56

    move-wide v2, v3

    move-wide/from16 v61, v9

    goto :goto_97

    :cond_d6
    const-string v1, "AssetIdentifier"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    const-string v1, "AssetIdentifier"

    invoke-static {v0, v1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;

    goto :goto_97

    :cond_d7
    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_97

    :goto_98
    invoke-static {v0, v1}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_db

    new-instance v42, Lyads/au4;

    move-object/from16 v46, v66

    invoke-direct/range {v42 .. v47}, Lyads/au4;-><init>(Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/List;)V

    move-object/from16 v1, v42

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lyads/au4;

    iget-wide v3, v2, Lyads/au4;->b:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_d9

    if-eqz v23, :cond_d8

    move-object/from16 v7, v40

    move-wide/from16 v4, v52

    const/16 v32, 0x1

    goto/16 :goto_9c

    :cond_d8
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine start of period "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyads/xs4;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x4

    invoke-direct {v1, v0, v3, v6, v14}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v1

    :cond_d9
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v13

    if-nez v1, :cond_da

    move-wide v3, v13

    :goto_99
    move-object/from16 v7, v40

    goto :goto_9a

    :cond_da
    iget-wide v5, v2, Lyads/au4;->b:J

    add-long/2addr v3, v5

    goto :goto_99

    :goto_9a
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v58, v3

    :goto_9b
    move-wide/from16 v4, v52

    goto :goto_9c

    :cond_db
    move-wide v7, v5

    move-object/from16 v6, v48

    move-wide/from16 v48, v7

    move-object/from16 v42, v1

    move-wide v10, v11

    move-object/from16 v36, v40

    move-object/from16 v55, v47

    move-wide/from16 v7, v58

    move/from16 v12, v60

    move-object/from16 v1, v63

    move-object/from16 v13, v65

    move-object/from16 v14, v66

    move-object/from16 v15, v78

    move-object/from16 v9, v127

    move-object/from16 v58, v138

    move-object/from16 v40, v139

    move-wide/from16 v46, v2

    move-wide/from16 v3, v68

    move-object/from16 v2, v93

    goto/16 :goto_1c

    :cond_dc
    move-wide/from16 v52, v4

    move-wide/from16 v58, v7

    move/from16 v60, v12

    move-object/from16 v7, v36

    move-wide/from16 v13, v48

    const/16 v39, 0x0

    move-object/from16 v48, v6

    move-wide v11, v10

    invoke-static {v0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9b

    :goto_9c
    const-string v1, "MPD"

    invoke-static {v0, v1}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e1

    cmp-long v0, v19, v13

    if-nez v0, :cond_dd

    cmp-long v0, v58, v13

    if-eqz v0, :cond_de

    move-wide/from16 v19, v58

    :cond_dd
    :goto_9d
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x4

    goto :goto_9e

    :cond_de
    if-eqz v23, :cond_df

    goto :goto_9d

    :cond_df
    new-instance v0, Lyads/xs4;

    const-string v1, "Unable to determine duration of static manifest."

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x4

    invoke-direct {v0, v1, v3, v6, v14}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :goto_9e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e0

    new-instance v16, Lyads/kc0;

    move-object/from16 v36, v7

    move-wide/from16 v26, v11

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v37

    invoke-direct/range {v16 .. v36}, Lyads/kc0;-><init>(JJJZJJJJLyads/w05;Lyads/t56;Lyads/bj5;Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-object v16

    :cond_e0
    new-instance v0, Lyads/xs4;

    const-string v1, "No periods found."

    invoke-direct {v0, v1, v3, v6, v14}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_e1
    move-object/from16 v36, v7

    move-wide v10, v11

    move-wide v2, v13

    move/from16 v13, v39

    move-object/from16 v6, v48

    move-object/from16 v1, v51

    move-wide/from16 v7, v58

    move/from16 v12, v60

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_b

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_19
        -0x66ca7c04 -> :sswitch_18
        -0x5e3a5c50 -> :sswitch_17
        -0x5dde3142 -> :sswitch_16
        -0x53ecbf86 -> :sswitch_15
        -0x533bdf74 -> :sswitch_14
        0x185f1 -> :sswitch_13
        0x3305b9 -> :sswitch_12
        0x35ddbd -> :sswitch_11
        0x20ef99e6 -> :sswitch_10
        0x3597fba9 -> :sswitch_f
        0x6118c591 -> :sswitch_e
        0x6e96bb0f -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_15
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lyads/kn0;
    .locals 4

    const/4 v0, 0x0

    .line 5980
    const-string v1, "schemeIdUri"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 5981
    :cond_0
    const-string v2, "value"

    .line 5982
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 5983
    :cond_1
    const-string v3, "id"

    .line 5984
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 5985
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5986
    invoke-static {p0, p1}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5987
    new-instance p0, Lyads/kn0;

    invoke-direct {p0, v1, v2, v0}, Lyads/kn0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/y35;
    .locals 7

    const/4 v0, 0x0

    .line 5949
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5950
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, -0x1

    if-eqz p0, :cond_1

    .line 5951
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 5952
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 5953
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    .line 5954
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v3, 0x1

    add-long p1, p0, v3

    :cond_0
    :goto_0
    move-wide v5, p1

    move-wide v3, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 5955
    :goto_1
    new-instance v1, Lyads/y35;

    invoke-direct/range {v1 .. v6}, Lyads/y35;-><init>(Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lyads/y46;)Lyads/y46;
    .locals 17

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 5917
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v2, 0x5

    .line 5918
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x4

    .line 5919
    new-array v4, v3, [I

    .line 5920
    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 5921
    const-string v7, ""

    aput-object v7, v2, v6

    move v8, v6

    move v9, v8

    .line 5922
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_a

    .line 5923
    const-string v10, "$"

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 5924
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v9

    .line 5925
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_0

    :cond_0
    if-eq v11, v8, :cond_1

    .line 5926
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v2, v9

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v9

    move v8, v11

    goto :goto_0

    .line 5927
    :cond_1
    const-string v11, "$$"

    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 5928
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v2, v9

    .line 5929
    invoke-static {v11, v12, v10}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5930
    aput-object v10, v2, v9

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 5931
    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 5932
    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 5933
    const-string v11, "RepresentationID"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_3

    .line 5934
    aput v13, v4, v9

    move-object/from16 v16, v0

    goto/16 :goto_5

    .line 5935
    :cond_3
    const-string v11, "%0"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v12, :cond_6

    .line 5936
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 5937
    const-string v15, "d"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v16, v0

    const-string v0, "x"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "X"

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5938
    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_4
    move-object/from16 v16, v0

    .line 5939
    :cond_5
    :goto_1
    invoke-virtual {v8, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_6
    move-object/from16 v16, v0

    .line 5940
    const-string v14, "%01d"

    .line 5941
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v11, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v0, "Bandwidth"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move v12, v11

    goto :goto_3

    :sswitch_1
    const-string v0, "Time"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v12, v13

    goto :goto_3

    :sswitch_2
    const-string v0, "Number"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v12, v6

    :goto_3
    packed-switch v12, :pswitch_data_0

    .line 5942
    const-string v0, "Invalid template: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :pswitch_0
    const/4 v0, 0x3

    .line 5943
    aput v0, v4, v9

    goto :goto_4

    .line 5944
    :pswitch_1
    aput v3, v4, v9

    goto :goto_4

    .line 5945
    :pswitch_2
    aput v11, v4, v9

    .line 5946
    :goto_4
    aput-object v14, v5, v9

    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 5947
    aput-object v7, v2, v9

    add-int/lit8 v8, v10, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 5948
    :cond_a
    new-instance v0, Lyads/y46;

    invoke-direct {v0, v2, v4, v5, v9}, Lyads/y46;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v0

    :cond_b
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 5813
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 5814
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5815
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5816
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 9

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v8

    goto :goto_1

    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_1

    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v7

    goto :goto_1

    :sswitch_6
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v5

    :goto_1
    const-string v2, "value"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_5

    :cond_8
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_5

    :pswitch_1
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v8

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-ltz v0, :cond_f

    sget-object v1, Lyads/mc0;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget v3, v1, v0

    goto/16 :goto_7

    :pswitch_2
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v0}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_3
    move v4, v8

    goto :goto_4

    :sswitch_7
    const-string v1, "fa01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :sswitch_8
    const-string v1, "f801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    move v4, v6

    goto :goto_4

    :sswitch_9
    const-string v1, "a000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    move v4, v7

    goto :goto_4

    :sswitch_a
    const-string v1, "4000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    move v4, v5

    :cond_e
    :goto_4
    packed-switch v4, :pswitch_data_1

    goto :goto_5

    :pswitch_3
    const/16 v3, 0x8

    goto :goto_7

    :pswitch_4
    move v3, v6

    goto :goto_7

    :pswitch_5
    move v3, v7

    goto :goto_7

    :pswitch_6
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_f
    :goto_5
    move v3, v8

    goto :goto_7

    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_7

    :pswitch_7
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move v3, v8

    goto :goto_6

    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :goto_6
    if-lez v3, :cond_f

    const/16 v0, 0x21

    if-ge v3, v0, :cond_f

    :cond_12
    :goto_7
    :pswitch_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    invoke-static {p0, v0}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x185d7c -> :sswitch_a
        0x2cd22f -> :sswitch_9
        0x2f3613 -> :sswitch_8
        0x2fcffc -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 13

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lyads/oj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const-string v0, "value"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    move v7, v5

    :goto_2
    if-ge v7, v6, :cond_6

    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string v9, "default_KID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object v6, v1

    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [Ljava/util/UUID;

    move v8, v5

    :goto_5
    array-length v9, v6

    if-ge v8, v9, :cond_7

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    sget-object v6, Lyads/uv;->b:Ljava/util/UUID;

    invoke-static {v6, v7, v1}, Lyads/c35;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    move-object v8, v1

    goto :goto_a

    :cond_8
    move-object v6, v1

    :goto_6
    move-object v7, v6

    :goto_7
    move-object v8, v7

    goto :goto_a

    :pswitch_1
    sget-object v6, Lyads/uv;->d:Ljava/util/UUID;

    :goto_8
    move-object v0, v1

    move-object v7, v0

    goto :goto_7

    :pswitch_2
    sget-object v6, Lyads/uv;->e:Ljava/util/UUID;

    goto :goto_8

    :pswitch_3
    sget-object v6, Lyads/uv;->c:Ljava/util/UUID;

    goto :goto_8

    :cond_9
    :goto_9
    move-object v0, v1

    move-object v6, v0

    goto :goto_6

    :cond_a
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "clearkey:Laurl"

    invoke-static {p0, v9}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_b
    const-string v9, "ms:laurl"

    invoke-static {p0, v9}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v8, "licenseUrl"

    invoke-interface {p0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_d

    :cond_c
    if-nez v7, :cond_10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v2, :cond_10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v3, :cond_d

    goto :goto_b

    :cond_d
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_b
    const-string v11, "pssh"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-static {v6}, Lyads/c35;->a([B)Lyads/b35;

    move-result-object v7

    if-nez v7, :cond_e

    move-object v7, v1

    goto :goto_c

    :cond_e
    iget-object v7, v7, Lyads/b35;->a:Ljava/util/UUID;

    :goto_c
    if-nez v7, :cond_f

    const-string v6, "MpdParser"

    const-string v9, "Skipping malformed cenc:pssh data"

    invoke-static {v6, v9}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v1

    goto :goto_d

    :cond_f
    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_d

    :cond_10
    if-nez v7, :cond_11

    sget-object v9, Lyads/uv;->e:Ljava/util/UUID;

    invoke-virtual {v9, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v11, "mspr:pro"

    invoke-static {p0, v11}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v10, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-static {v9, v1, v7}, Lyads/c35;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    goto :goto_d

    :cond_11
    invoke-static {p0}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_d
    const-string v9, "ContentProtection"

    invoke-static {p0, v9}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v6, :cond_12

    new-instance v1, Lyads/pl2;

    const-string p0, "video/mp4"

    invoke-direct {v1, v6, v8, p0, v7}, Lyads/pl2;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_12
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lyads/yc0;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5803
    :try_start_0
    iget-object p0, p0, Lyads/mc0;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 5804
    invoke-interface {p0, p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5805
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 5806
    const-string p2, "MPD"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5807
    invoke-static {p0, p1}, Lyads/mc0;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lyads/kc0;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 5808
    :cond_0
    const-string p0, "inputStream does not contain a valid media presentation description"

    .line 5809
    new-instance p1, Lyads/xs4;

    invoke-direct {p1, p0, v2, v1, v0}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    .line 5810
    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5811
    :goto_0
    new-instance p1, Lyads/xs4;

    invoke-direct {p1, v2, p0, v1, v0}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    .line 5812
    throw p1
.end method
