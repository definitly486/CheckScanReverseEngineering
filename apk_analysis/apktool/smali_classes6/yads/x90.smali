.class public final Lyads/x90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yl6;


# instance fields
.field public final a:Lyads/zl6;

.field public final b:Lyads/jt3;

.field public final c:Lyads/t90;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 3

    new-instance v0, Lyads/zl6;

    invoke-direct {v0}, Lyads/zl6;-><init>()V

    new-instance v1, Lyads/jt3;

    invoke-direct {v1}, Lyads/jt3;-><init>()V

    new-instance v2, Lyads/t90;

    invoke-direct {v2, p1, p2}, Lyads/t90;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/x90;->a:Lyads/zl6;

    iput-object v1, p0, Lyads/x90;->b:Lyads/jt3;

    iput-object v2, p0, Lyads/x90;->c:Lyads/t90;

    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lyads/x90;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v0, "Creative"

    invoke-interface {v2, v4, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lyads/x90;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-interface {v2, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_0
    iget-object v0, v1, Lyads/x90;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v7, 0x3

    if-eq v0, v7, :cond_1d

    iget-object v0, v1, Lyads/x90;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_1c

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Linear"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    iget-object v0, v1, Lyads/x90;->b:Lyads/jt3;

    iget-object v8, v0, Lyads/jt3;->a:Lyads/zl6;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v4, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lyads/jt3;->d:Lyads/em5;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "skipoffset"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    new-instance v8, Lyads/dm5;

    invoke-direct {v8, v7}, Lyads/dm5;-><init>(Ljava/lang/String;)V

    move-object v13, v8

    goto :goto_1

    :cond_1
    move-object v13, v5

    :cond_2
    :goto_1
    iget-object v7, v0, Lyads/jt3;->a:Lyads/zl6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_c

    iget-object v7, v0, Lyads/jt3;->a:Lyads/zl6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v4, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_3
    :goto_2
    move-object/from16 v18, v6

    goto/16 :goto_6

    :sswitch_0
    const-string v8, "TrackingEvents"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lyads/jt3;->g:Lyads/xl6;

    invoke-virtual {v7, v2, v3}, Lyads/xl6;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/v06;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_4
    move-object/from16 v18, v6

    goto/16 :goto_7

    :sswitch_1
    const-string v8, "Icons"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v7, v0, Lyads/jt3;->f:Lyads/xl6;

    invoke-virtual {v7, v2, v3}, Lyads/xl6;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :sswitch_2
    const-string v8, "MediaFiles"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    iget-object v7, v0, Lyads/jt3;->e:Lyads/c04;

    invoke-virtual {v7, v2, v3}, Lyads/c04;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :sswitch_3
    const-string v8, "AdParameters"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    iget-object v7, v0, Lyads/jt3;->a:Lyads/zl6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "Duration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    iget-object v7, v0, Lyads/jt3;->c:Lyads/fm2;

    iget-object v7, v7, Lyads/fm2;->a:Lyads/zl6;

    invoke-interface {v2, v4, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lyads/tc6;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-int v15, v7

    goto/16 :goto_1

    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "VideoClicks"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_2

    :cond_b
    iget-object v7, v0, Lyads/jt3;->b:Lyads/zc6;

    invoke-virtual {v7, v2}, Lyads/zc6;->a(Lorg/xmlpull/v1/XmlPullParser;)Lyads/yc6;

    move-result-object v7

    iget-object v12, v7, Lyads/yc6;->b:Ljava/lang/String;

    iget-object v7, v7, Lyads/yc6;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v4, Lyads/v06;

    move-object/from16 v18, v6

    const-string v6, "clickTracking"

    invoke-direct {v4, v6, v8, v5}, Lyads/v06;-><init>(Ljava/lang/String;Ljava/lang/String;Lyads/q86;)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v18

    const/4 v4, 0x2

    goto :goto_5

    :goto_6
    iget-object v4, v0, Lyads/jt3;->a:Lyads/zl6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    move-object/from16 v6, v18

    const/4 v4, 0x2

    goto/16 :goto_1

    :cond_c
    move-object/from16 v18, v6

    const/4 v8, 0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v6

    const-string v4, "CreativeExtensions"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v6, v1, Lyads/x90;->c:Lyads/t90;

    iget-object v0, v6, Lyads/t90;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    invoke-interface {v2, v7, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lkx2;->b:Lkx2;

    move-object v0, v4

    move-object v11, v5

    move-object/from16 v19, v11

    move-object/from16 v20, v19

    :goto_8
    iget-object v5, v6, Lyads/t90;->a:Lyads/zl6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1a

    iget-object v5, v6, Lyads/t90;->a:Lyads/zl6;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_19

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CreativeExtension"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "type"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "false_click"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v5, v6, Lyads/t90;->d:Lyads/r90;

    invoke-virtual {v5, v2, v3}, Lyads/r90;->a(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lyads/mt2;

    :goto_9
    const/4 v7, 0x2

    goto :goto_8

    :cond_e
    sget-object v7, Lyads/t90;->f:Ljava/lang/String;

    invoke-static {v7, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v5, v6, Lyads/t90;->e:Lyads/xl6;

    invoke-virtual {v5, v2, v3}, Lyads/xl6;->b(Lorg/xmlpull/v1/XmlPullParser;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v19

    goto :goto_9

    :cond_f
    sget-object v7, Lyads/t90;->g:Ljava/lang/String;

    invoke-static {v7, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v5, v6, Lyads/t90;->b:Lyads/it3;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v7, v5, Lyads/it3;->c:Lyads/zl6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v21, v4

    move-object/from16 v20, v7

    const/4 v7, 0x0

    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v8

    move-object/from16 v8, v22

    check-cast v8, Ljava/lang/String;

    move-object/from16 v22, v9

    const-string v9, "assets"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v4, v5, Lyads/it3;->a:Lyads/wk;

    invoke-virtual {v4, v2, v3}, Lyads/wk;->a(Lorg/json/JSONObject;Lyads/yo;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_10
    :goto_b
    move-object/from16 v9, v22

    move/from16 v8, v23

    goto :goto_a

    :cond_11
    const-string v9, "link"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, v5, Lyads/it3;->d:Lyads/pt3;

    invoke-virtual {v9, v8, v3}, Lyads/pt3;->a(Lorg/json/JSONObject;Lyads/yo;)Lyads/ot3;

    goto :goto_b

    :cond_12
    const-string v9, "settings"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v8, v5, Lyads/it3;->b:Lyads/u9;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "videoSelection"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_14

    const-string v8, "preferableMimeType"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_13

    goto :goto_c

    :cond_13
    const/4 v8, 0x0

    :goto_c
    const-string v9, "inOrderOfList"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    new-instance v9, Lyads/ue6;

    invoke-direct {v9, v8, v7}, Lyads/ue6;-><init>(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    :goto_d
    new-instance v7, Lyads/t9;

    invoke-direct {v7, v9}, Lyads/t9;-><init>(Lyads/ue6;)V

    goto :goto_b

    :cond_15
    move/from16 v23, v8

    move-object/from16 v22, v9

    new-instance v2, Lyads/ht3;

    invoke-direct {v2, v4, v7}, Lyads/ht3;-><init>(Ljava/util/List;Lyads/t9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v2

    move-object/from16 v4, v21

    move-object/from16 v9, v22

    move/from16 v8, v23

    const/4 v7, 0x2

    move-object/from16 v2, p1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    new-instance v1, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move-object/from16 v21, v4

    move/from16 v23, v8

    move-object/from16 v22, v9

    sget-object v2, Lyads/t90;->h:Ljava/lang/String;

    invoke-static {v2, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v6, Lyads/t90;->c:Lyads/a86;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v2, Lyads/a86;->b:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lyads/zl6;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v3, Lyads/yo;->b:Z

    invoke-virtual {v2, v0, v4}, Lyads/a86;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_e
    move-object/from16 v2, p1

    move-object/from16 v4, v21

    :goto_f
    move-object/from16 v9, v22

    move/from16 v8, v23

    goto/16 :goto_9

    :catch_1
    move-exception v0

    iget-object v2, v2, Lyads/a86;->a:Lyads/q84;

    const-string v4, "Failed to parse DivKit designs from VAST CreativeExtension"

    invoke-virtual {v2, v4, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, p1

    move-object/from16 v0, v21

    move-object v4, v0

    goto :goto_f

    :cond_17
    iget-object v2, v6, Lyads/t90;->a:Lyads/zl6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    :cond_18
    move-object/from16 v21, v4

    move/from16 v23, v8

    move-object/from16 v22, v9

    iget-object v2, v6, Lyads/t90;->a:Lyads/zl6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_e

    :cond_19
    move-object/from16 v21, v4

    move/from16 v23, v8

    move-object/from16 v22, v9

    goto :goto_e

    :cond_1a
    move/from16 v23, v8

    move-object/from16 v22, v9

    new-instance v2, Lyads/s90;

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    invoke-direct {v2, v11, v5, v4, v0}, Lyads/s90;-><init>(Lyads/mt2;Ljava/util/List;Lyads/ht3;Ljava/util/List;)V

    move-object v11, v2

    move-object/from16 v6, v18

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_1b
    move/from16 v23, v8

    move-object/from16 v22, v9

    iget-object v0, v1, Lyads/x90;->a:Lyads/zl6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lyads/zl6;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    :cond_1c
    move-object/from16 v18, v6

    move/from16 v23, v8

    move-object/from16 v22, v9

    :goto_10
    move-object/from16 v2, p1

    move-object/from16 v6, v18

    move-object/from16 v9, v22

    move/from16 v8, v23

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v18, v6

    move/from16 v23, v8

    move-object/from16 v22, v9

    if-eqz v23, :cond_22

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lyads/zz3;

    if-eqz v2, :cond_1e

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lyads/nn3;

    if-eqz v2, :cond_20

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_21
    new-instance v6, Lyads/p90;

    move-object/from16 v9, v22

    invoke-direct/range {v6 .. v16}, Lyads/p90;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lyads/s90;Ljava/lang/String;Lyads/dm5;Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v6

    goto :goto_13

    :cond_22
    const/4 v5, 0x0

    :goto_13
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_5
        -0x72e14e4c -> :sswitch_4
        -0x50659173 -> :sswitch_3
        -0x16f37aed -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch
.end method
