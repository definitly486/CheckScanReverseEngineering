.class public final Lyads/db3;
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
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 13

    const/4 p0, 0x2

    const/4 p2, 0x0

    const-string v0, "Icon"

    invoke-interface {p1, p0, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "program"

    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {p1, p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "xPosition"

    invoke-interface {p1, p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "yPosition"

    invoke-interface {p1, p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apiFramework"

    invoke-interface {p1, p2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "offset"

    invoke-interface {p1, p2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration"

    invoke-interface {p1, p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eq v7, v8, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, p0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lyads/ab3;->c:Lyads/za3;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ab3;->values()[Lyads/ab3;

    move-result-object v8

    array-length v10, v8

    move v11, v9

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, v8, v11

    iget-object v12, v12, Lyads/ab3;->b:Ljava/lang/String;

    invoke-static {v12, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    invoke-static {}, Lyads/ab3;->values()[Lyads/ab3;

    move-result-object v8

    array-length v10, v8

    :goto_2
    if-ge v9, v10, :cond_0

    aget-object v11, v8, v9

    iget-object v11, v11, Lyads/ab3;->b:Ljava/lang/String;

    invoke-static {v11, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lyads/tc6;->b(Ljava/lang/String;)Ljava/lang/Integer;

    invoke-static {v2}, Lyads/tc6;->b(Ljava/lang/String;)Ljava/lang/Integer;

    invoke-static {}, Lyads/ya3;->values()[Lyads/ya3;

    move-result-object p0

    array-length p1, p0

    move v1, v9

    :goto_3
    if-ge v1, p1, :cond_6

    aget-object v2, p0, v1

    iget-object v7, v2, Lyads/ya3;->b:Ljava/lang/String;

    invoke-static {v7, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-object v2, p2

    :goto_4
    if-nez v2, :cond_7

    sget-object v2, Lyads/ya3;->c:Lyads/ya3;

    :cond_7
    sget-object p0, Lyads/ya3;->c:Lyads/ya3;

    if-ne v2, p0, :cond_8

    invoke-static {v3}, Lyads/tc6;->b(Ljava/lang/String;)Ljava/lang/Integer;

    :cond_8
    invoke-static {}, Lyads/bb3;->values()[Lyads/bb3;

    move-result-object p0

    array-length p1, p0

    :goto_5
    if-ge v9, p1, :cond_a

    aget-object v1, p0, v9

    iget-object v2, v1, Lyads/bb3;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object p2, v1

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p2, :cond_b

    sget-object p2, Lyads/bb3;->c:Lyads/bb3;

    :cond_b
    sget-object p0, Lyads/bb3;->c:Lyads/bb3;

    if-ne p2, p0, :cond_c

    invoke-static {v4}, Lyads/tc6;->b(Ljava/lang/String;)Ljava/lang/Integer;

    :cond_c
    invoke-static {v5}, Lyads/tc6;->a(Ljava/lang/String;)Ljava/lang/Long;

    invoke-static {v6}, Lyads/tc6;->a(Ljava/lang/String;)Ljava/lang/Long;

    new-instance p0, Lyads/cb3;

    invoke-direct {p0, v0}, Lyads/cb3;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
