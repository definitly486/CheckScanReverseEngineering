.class public final Lyads/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/pt3;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;Lyads/pt3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/kk;->a:Lyads/q84;

    iput-object p3, p0, Lyads/kk;->b:Lyads/pt3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/kk;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lyads/yo;)Lyads/ak;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "name"

    const-string v4, "type"

    const-string v5, "clickable"

    const-string v6, "required"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lyads/rj4;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    const-string v9, "Native Ad json has not required attributes"

    if-eqz v7, :cond_7

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "null"

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "link"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v14, v8

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lyads/kk;->b:Lyads/pt3;

    invoke-virtual {v4, v3, v2}, Lyads/pt3;->a(Lorg/json/JSONObject;Lyads/yo;)Lyads/ot3;

    move-result-object v3

    move-object v14, v3

    :goto_0
    iget-object v3, v0, Lyads/kk;->c:Landroid/content/Context;

    iget-object v0, v0, Lyads/kk;->a:Lyads/q84;

    const-string v4, "close_button"

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lyads/h10;

    invoke-direct {v0}, Lyads/h10;-><init>()V

    goto/16 :goto_1

    :cond_1
    const-string v4, "feedback"

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lyads/ud3;

    invoke-direct {v0}, Lyads/ud3;-><init>()V

    new-instance v2, Lyads/ow2;

    invoke-direct {v2, v0}, Lyads/ow2;-><init>(Lyads/ud3;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v0, "warning"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/kj6;

    invoke-direct {v0}, Lyads/kj6;-><init>()V

    goto :goto_1

    :sswitch_1
    const-string v4, "media"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lyads/w14;

    invoke-direct {v4, v3, v0, v2}, Lyads/w14;-><init>(Landroid/content/Context;Lyads/q84;Lyads/yo;)V

    move-object v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/ud3;

    invoke-direct {v0}, Lyads/ud3;-><init>()V

    goto :goto_1

    :sswitch_3
    const-string v0, "container"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/en2;

    invoke-direct {v0}, Lyads/en2;-><init>()V

    goto :goto_1

    :sswitch_4
    const-string v0, "string"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/et5;

    invoke-direct {v0}, Lyads/et5;-><init>()V

    goto :goto_1

    :sswitch_5
    const-string v0, "qrcode"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/k00;

    invoke-direct {v0}, Lyads/k00;-><init>()V

    goto :goto_1

    :sswitch_6
    const-string v0, "number"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lyads/vo4;

    invoke-direct {v0}, Lyads/vo4;-><init>()V

    :goto_1
    invoke-interface {v0, v1}, Lyads/lk;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v0, "layoutRestriction"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    move-object/from16 v17, v8

    goto :goto_3

    :cond_3
    new-instance v8, Lyads/wr3;

    const-string v1, "minWidth"

    invoke-static {v1, v0}, Lyads/zq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minHeight"

    invoke-static {v2, v0}, Lyads/zq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v8, v1, v0}, Lyads/wr3;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    :goto_3
    new-instance v10, Lyads/ak;

    invoke-direct/range {v10 .. v17}, Lyads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lyads/ot3;ZZLyads/wr3;)V

    return-object v10

    :cond_4
    :goto_4
    invoke-static {v9}, Lqg;->g(Ljava/lang/String;)V

    return-object v8

    :cond_5
    invoke-static {v9}, Lqg;->g(Ljava/lang/String;)V

    return-object v8

    :cond_6
    invoke-static {v9}, Lqg;->g(Ljava/lang/String;)V

    return-object v8

    :cond_7
    invoke-static {v9}, Lqg;->g(Ljava/lang/String;)V

    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_6
        -0x38b73c72 -> :sswitch_5
        -0x352a9fef -> :sswitch_4
        -0x187eb37f -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x62f6fe4 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
.end method
