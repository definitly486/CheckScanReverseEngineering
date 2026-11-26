.class public final Lyads/or5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcl4;


# direct methods
.method public constructor <init>(Lws6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhc5;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lhc5;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lfh8;

    invoke-direct {p1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object p1, p0, Lyads/or5;->a:Lcl4;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lyads/ir5;Ljava/lang/String;)Lyads/kr5;
    .locals 2

    .line 260
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "value"

    packed-switch p1, :pswitch_data_0

    .line 261
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p1, Lyads/dr5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lyads/dr5;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    .line 262
    :pswitch_1
    new-instance p1, Lyads/ar5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lyads/ar5;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object p1

    .line 263
    :pswitch_2
    new-instance p1, Lyads/jr5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/p46;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lyads/jr5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 264
    :pswitch_3
    new-instance p1, Lyads/cr5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/k20;->a(Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, p2, p0}, Lyads/cr5;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 265
    :pswitch_4
    new-instance p1, Lyads/er5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lyads/er5;-><init>(Ljava/lang/String;D)V

    return-object p1

    .line 266
    :pswitch_5
    new-instance p1, Lyads/br5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lyads/br5;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 267
    :pswitch_6
    new-instance p1, Lyads/fr5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, p2, v0, v1}, Lyads/fr5;-><init>(Ljava/lang/String;J)V

    return-object p1

    .line 268
    :pswitch_7
    new-instance p1, Lyads/gr5;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lyads/gr5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lws6;)Lyads/n45;
    .locals 0

    .line 248
    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dp3;

    .line 249
    iget-object p0, p0, Lyads/dp3;->a:Lyads/n45;

    return-object p0
.end method

.method public static a(Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 250
    new-instance v0, Lyads/lr5;

    .line 251
    const-string v1, "\' declaration failed because of unknown type \'"

    const-string v2, "\'"

    .line 252
    const-string v3, "Stored value \'"

    invoke-static {v3, p1, v1, p2, v2}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x2

    .line 253
    invoke-direct {v0, p1, p2, v1}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0, v0}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static a(Lyads/ao2;Ljava/lang/String;Lorg/json/JSONException;)V
    .locals 4

    .line 255
    new-instance v0, Lyads/lr5;

    .line 256
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stored value \'"

    const-string v3, "\' declaration failed: "

    .line 257
    invoke-static {v2, p1, v3, v1}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-direct {v0, p1, p2}, Lyads/lr5;-><init>(Ljava/lang/String;Lorg/json/JSONException;)V

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0, v0}, Lyads/ao2;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static final a(Ljava/lang/String;Lyads/k45;)Z
    .locals 0

    .line 247
    invoke-interface {p1}, Lyads/k45;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ao2;)Lyads/kr5;
    .locals 7

    .line 227
    const-string v0, "stored_value_"

    .line 228
    invoke-static {v0, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lyads/or5;->a:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/n45;

    .line 230
    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyads/n45;->a(Ljava/util/List;)Lyads/o45;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 231
    invoke-virtual {v1}, Lyads/o45;->a()Ljava/util/List;

    move-result-object v2

    .line 232
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/m45;

    .line 233
    iget-object v4, p2, Lyads/ao2;->b:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p2}, Lyads/ao2;->a()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v1}, Lyads/o45;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/k45;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lyads/k45;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 237
    :cond_1
    const-string v3, "expiration_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    .line 240
    iget-object p0, p0, Lyads/or5;->a:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n45;

    .line 241
    new-instance p1, Lad;

    const/4 p2, 0x2

    invoke-direct {p1, v0, p2}, Lad;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lyads/n45;->a(Lnl3;)V

    return-object v2

    .line 242
    :cond_2
    :try_start_0
    const-string p0, "type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    sget-object v0, Lyads/ir5;->c:Lyads/hr5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/hr5;->a(Ljava/lang/String;)Lyads/ir5;

    move-result-object v0

    if-nez v0, :cond_3

    .line 244
    invoke-static {p2, p1, p0}, Lyads/or5;->a(Lyads/ao2;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 245
    :cond_3
    invoke-static {v1, v0, p1}, Lyads/or5;->a(Lorg/json/JSONObject;Lyads/ir5;Ljava/lang/String;)Lyads/kr5;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 246
    :goto_1
    invoke-static {p2, p1, p0}, Lyads/or5;->a(Lyads/ao2;Ljava/lang/String;Lorg/json/JSONException;)V

    :cond_4
    :goto_2
    return-object v2
.end method

.method public final a(Lyads/kr5;JLyads/ao2;)Z
    .locals 10

    new-instance v0, Lyads/l45;

    invoke-virtual {p1}, Lyads/kr5;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stored_value_"

    invoke-static {v2, v1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lyads/gr5;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    instance-of v4, p1, Lyads/fr5;

    :goto_0
    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    instance-of v4, p1, Lyads/br5;

    :goto_1
    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    instance-of v4, p1, Lyads/ar5;

    :goto_2
    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    instance-of v4, p1, Lyads/dr5;

    :goto_3
    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    instance-of v4, p1, Lyads/er5;

    :goto_4
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lyads/kr5;->b()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :cond_5
    instance-of v4, p1, Lyads/jr5;

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    instance-of v3, p1, Lyads/cr5;

    :goto_5
    if-eqz v3, :cond_10

    invoke-virtual {p1}, Lyads/kr5;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr p2, v8

    add-long/2addr p2, v6

    const-string v6, "expiration_time"

    invoke-virtual {v4, v6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lyads/ir5;->c:Lyads/hr5;

    if-eqz v2, :cond_7

    sget-object p1, Lyads/ir5;->d:Lyads/ir5;

    goto :goto_7

    :cond_7
    instance-of p3, p1, Lyads/fr5;

    if-eqz p3, :cond_8

    sget-object p1, Lyads/ir5;->e:Lyads/ir5;

    goto :goto_7

    :cond_8
    instance-of p3, p1, Lyads/br5;

    if-eqz p3, :cond_9

    sget-object p1, Lyads/ir5;->f:Lyads/ir5;

    goto :goto_7

    :cond_9
    instance-of p3, p1, Lyads/er5;

    if-eqz p3, :cond_a

    sget-object p1, Lyads/ir5;->g:Lyads/ir5;

    goto :goto_7

    :cond_a
    instance-of p3, p1, Lyads/cr5;

    if-eqz p3, :cond_b

    sget-object p1, Lyads/ir5;->h:Lyads/ir5;

    goto :goto_7

    :cond_b
    instance-of p3, p1, Lyads/jr5;

    if-eqz p3, :cond_c

    sget-object p1, Lyads/ir5;->i:Lyads/ir5;

    goto :goto_7

    :cond_c
    instance-of p3, p1, Lyads/ar5;

    if-eqz p3, :cond_d

    sget-object p1, Lyads/ir5;->j:Lyads/ir5;

    goto :goto_7

    :cond_d
    instance-of p1, p1, Lyads/dr5;

    if-eqz p1, :cond_f

    sget-object p1, Lyads/ir5;->k:Lyads/ir5;

    :goto_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lyads/ir5;->b:Ljava/lang/String;

    const-string p2, "type"

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    invoke-virtual {v4, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1, v4}, Lyads/i45;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/j45;

    move-result-object p1

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/l45;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lyads/or5;->a:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/n45;

    invoke-virtual {p0, v0}, Lyads/n45;->a(Lyads/l45;)Lyads/o45;

    move-result-object p0

    invoke-virtual {p0}, Lyads/o45;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/m45;

    iget-object p3, p4, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lyads/ao2;->a()V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lyads/o45;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lme0;->e()V

    return v5

    :cond_10
    invoke-static {}, Lme0;->e()V

    return v5
.end method
