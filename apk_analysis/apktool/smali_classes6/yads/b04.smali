.class public final Lyads/b04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yl6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lyads/b04;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/zz3;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/zz3;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "MediaFile"

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "delivery"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "height"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bitrate"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apiFramework"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "id"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "codec"

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "vmaf"

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lyads/yz3;->values()[Lyads/yz3;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_1

    aget-object v15, v10, v13

    iget-object v2, v15, Lyads/yz3;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_1
    const/16 v1, 0xa

    if-eqz v3, :cond_2

    invoke-static {v1, v3}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v11, v2

    goto :goto_2

    :cond_2
    move v11, v12

    :goto_2
    if-eqz v4, :cond_3

    invoke-static {v1, v4}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v12

    :goto_3
    if-eqz v5, :cond_4

    invoke-static {v1, v5}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v12

    :cond_4
    move v13, v12

    if-eqz v7, :cond_5

    invoke-static {v7}, Lqa8;->n(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    move-object v10, v1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    new-instance v4, Lyads/zz3;

    move-object v5, v0

    move v12, v2

    move-object v7, v15

    invoke-direct/range {v4 .. v14}, Lyads/zz3;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/yz3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;IIILjava/lang/String;)V

    return-object v4
.end method
