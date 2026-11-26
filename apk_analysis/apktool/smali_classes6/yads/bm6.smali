.class public abstract Lyads/bm6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MicroVideo"

    const-string v1, "GCamera:MicroVideo"

    const-string v2, "Camera:MotionPhoto"

    const-string v3, "GCamera:MotionPhoto"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyads/bm6;->a:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoPresentationTimestampUs"

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    const-string v2, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v3, "GCamera:MotionPhotoPresentationTimestampUs"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyads/bm6;->b:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyads/bm6;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/k55;
    .locals 13

    .line 219
    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    .line 220
    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lyads/h20;->a(ILjava/lang/String;)I

    .line 221
    new-array v0, v1, [Ljava/lang/Object;

    .line 222
    const-string v1, ":Item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    const-string v2, ":Directory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 224
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 225
    invoke-static {p0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    const-string v3, ":Mime"

    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    const-string v4, ":Semantic"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    const-string v5, ":Length"

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    const-string v6, ":Padding"

    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-static {p0, v3}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    invoke-static {p0, v4}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-static {p0, v5}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-static {p0, v6}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v8, :cond_5

    if-nez v3, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    new-instance v7, Lyads/qa4;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_2

    .line 235
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_2
    move-wide v3, v9

    :goto_0
    if-eqz v5, :cond_3

    .line 236
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_3
    move-wide v11, v9

    move-wide v9, v3

    invoke-direct/range {v7 .. v12}, Lyads/qa4;-><init>(Ljava/lang/String;JJ)V

    add-int/lit8 v3, v2, 0x1

    .line 237
    array-length v4, v0

    if-ge v4, v3, :cond_4

    .line 238
    array-length v4, v0

    .line 239
    invoke-static {v4, v3}, Lyads/he3;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 240
    :cond_4
    aput-object v7, v0, v2

    move v2, v3

    goto :goto_2

    .line 241
    :cond_5
    :goto_1
    sget-object p0, Lyads/k55;->f:Lyads/k55;

    return-object p0

    .line 242
    :cond_6
    :goto_2
    invoke-static {p0, p1}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-static {v2, v0}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lyads/ra4;
    .locals 20

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "x:xmpmeta"

    invoke-static {v0, v1}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    sget-object v2, Lyads/oe3;->c:Lyads/le3;

    sget-object v2, Lyads/k55;->f:Lyads/k55;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v4

    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "rdf:Description"

    invoke-static {v0, v8}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v2, Lyads/bm6;->a:[Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_7

    aget-object v9, v2, v7

    invoke-static {v0, v9}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    sget-object v2, Lyads/bm6;->b:[Ljava/lang/String;

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v9, v2, v7

    invoke-static {v0, v9}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_3

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-wide v7, v4

    :cond_3
    sget-object v2, Lyads/bm6;->c:[Ljava/lang/String;

    :goto_3
    const/4 v9, 0x2

    if-ge v6, v9, :cond_5

    aget-object v9, v2, v6

    invoke-static {v0, v9}, Lyads/am6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v14, Lyads/qa4;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-string v15, "image/jpeg"

    invoke-direct/range {v14 .. v19}, Lyads/qa4;-><init>(Ljava/lang/String;JJ)V

    move-object v2, v14

    new-instance v10, Lyads/qa4;

    const-string v11, "video/mp4"

    const-wide/16 v14, 0x0

    invoke-direct/range {v10 .. v15}, Lyads/qa4;-><init>(Ljava/lang/String;JJ)V

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    :goto_4
    move-wide v6, v7

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    sget-object v2, Lyads/oe3;->c:Lyads/le3;

    sget-object v2, Lyads/k55;->f:Lyads/k55;

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return-object v3

    :cond_8
    const-string v8, "Container:Directory"

    invoke-static {v0, v8}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v2, "Container"

    const-string v8, "Item"

    invoke-static {v0, v2, v8}, Lyads/bm6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/k55;

    move-result-object v2

    goto :goto_5

    :cond_9
    const-string v8, "GContainer:Directory"

    invoke-static {v0, v8}, Lyads/am6;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v2, "GContainer"

    const-string v8, "GContainerItem"

    invoke-static {v0, v2, v8}, Lyads/bm6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lyads/k55;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-static {v0, v1}, Lyads/am6;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v3

    :cond_b
    new-instance v0, Lyads/ra4;

    invoke-direct {v0, v6, v7, v2}, Lyads/ra4;-><init>(JLyads/k55;)V

    return-object v0

    :cond_c
    const-string v0, "Couldn\'t find xmp metadata"

    invoke-static {v0, v3}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v3
.end method
