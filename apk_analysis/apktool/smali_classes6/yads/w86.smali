.class public final Lyads/w86;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/u76;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/u76;

    invoke-direct {v1, p1, p2}, Lyads/u76;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/w86;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/w86;->b:Lyads/u76;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/yo;)Lyads/q76;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    new-instance v3, Ljava/io/StringReader;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v3, v0, Lyads/w86;->a:Lyads/zl6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v6, "VAST"

    invoke-interface {v2, v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lyads/w86;->b:Lyads/u76;

    iget-object v6, v0, Lyads/u76;->a:Lyads/zl6;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "version"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    iget-object v8, v0, Lyads/u76;->a:Lyads/zl6;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_10

    iget-object v8, v0, Lyads/u76;->a:Lyads/zl6;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-ne v8, v3, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Ad"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Lyads/u76;->b:Lyads/va6;

    iget-object v11, v8, Lyads/va6;->e:Lyads/ft5;

    iget-object v11, v11, Lyads/ft5;->a:Lyads/zl6;

    invoke-interface {v2, v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "id"

    invoke-interface {v2, v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    :cond_1
    move-object v11, v5

    :cond_2
    iget-object v12, v8, Lyads/va6;->d:Lyads/si5;

    iget-object v12, v12, Lyads/si5;->a:Lyads/zl6;

    invoke-interface {v2, v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "sequence"

    invoke-interface {v2, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lyads/tc6;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ltz v13, :cond_3

    goto :goto_1

    :cond_3
    move-object v12, v5

    :cond_4
    :goto_1
    iget-object v13, v8, Lyads/va6;->a:Lyads/zl6;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v10, v5

    :cond_5
    :goto_3
    iget-object v13, v8, Lyads/va6;->a:Lyads/zl6;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    if-eq v13, v9, :cond_e

    iget-object v13, v8, Lyads/va6;->a:Lyads/zl6;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    if-ne v13, v3, :cond_d

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "InLine"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v10, v8, Lyads/va6;->f:Landroid/content/Context;

    new-instance v13, Lyads/s96;

    invoke-direct {v13, v10, v4}, Lyads/s96;-><init>(Landroid/content/Context;Z)V

    iput-object v11, v13, Lyads/s96;->k:Ljava/lang/String;

    iput-object v12, v13, Lyads/s96;->j:Ljava/lang/Integer;

    iget-object v10, v8, Lyads/va6;->b:Lyads/ef3;

    iget-object v15, v10, Lyads/ef3;->b:Lyads/zl6;

    invoke-interface {v2, v3, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    if-eq v14, v9, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    if-ne v14, v3, :cond_6

    iget-object v14, v10, Lyads/ef3;->a:Lyads/x96;

    invoke-virtual {v14, v2, v13, v1}, Lyads/x96;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/s96;Lyads/yo;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v13}, Lyads/s96;->a()Lyads/t96;

    move-result-object v10

    iget-object v13, v10, Lyads/t96;->b:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_8
    const-string v14, "Wrapper"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v10, v8, Lyads/va6;->f:Landroid/content/Context;

    new-instance v13, Lyads/s96;

    const/4 v15, 0x1

    invoke-direct {v13, v10, v15}, Lyads/s96;-><init>(Landroid/content/Context;Z)V

    iput-object v11, v13, Lyads/s96;->k:Ljava/lang/String;

    iput-object v12, v13, Lyads/s96;->j:Ljava/lang/Integer;

    iget-object v10, v8, Lyads/va6;->c:Lyads/ul6;

    iget-object v9, v10, Lyads/ul6;->a:Lyads/zl6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, v10, Lyads/ul6;->c:Lyads/sl6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "allowMultipleAds"

    invoke-static {v2, v9, v4}, Lyads/sl6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v9

    const-string v14, "followAdditionalWrappers"

    invoke-static {v2, v14, v15}, Lyads/sl6;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    new-instance v15, Lyads/rl6;

    invoke-direct {v15, v9, v14}, Lyads/rl6;-><init>(ZZ)V

    iput-object v15, v13, Lyads/s96;->c:Lyads/rl6;

    :cond_9
    :goto_5
    iget-object v9, v10, Lyads/ul6;->a:Lyads/zl6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v14, 0x3

    if-eq v9, v14, :cond_b

    iget-object v9, v10, Lyads/ul6;->a:Lyads/zl6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v3, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v15, "VASTAdTagURI"

    invoke-virtual {v15, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v10, Lyads/ul6;->a:Lyads/zl6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v13, Lyads/s96;->h:Ljava/lang/String;

    goto :goto_5

    :cond_a
    iget-object v9, v10, Lyads/ul6;->b:Lyads/x96;

    invoke-virtual {v9, v2, v13, v1}, Lyads/x96;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/s96;Lyads/yo;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v13}, Lyads/s96;->a()Lyads/t96;

    move-result-object v10

    :goto_6
    move v9, v14

    goto/16 :goto_3

    :cond_c
    move v14, v9

    iget-object v9, v8, Lyads/va6;->a:Lyads/zl6;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_d
    move v14, v9

    goto :goto_6

    :cond_e
    if-eqz v10, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    iget-object v8, v0, Lyads/u76;->a:Lyads/zl6;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_10
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    new-instance v0, Lyads/q76;

    invoke-direct {v0, v6, v7}, Lyads/q76;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_12
    :goto_7
    return-object v5
.end method
