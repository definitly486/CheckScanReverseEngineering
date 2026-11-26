.class public abstract Lyads/u66;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gp4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/gp4;

    invoke-direct {v0}, Lyads/gp4;-><init>()V

    iput-object v0, p0, Lyads/u66;->a:Lyads/gp4;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 195
    invoke-static {p0}, Lta8;->e0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    invoke-static {v1}, Lyads/d70;->a(I)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 198
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 199
    :cond_1
    new-instance v1, Lyads/k76;

    const-string v2, "Unable to convert "

    const-string v3, " to boolean"

    .line 200
    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    .line 201
    invoke-direct {v1, p0, v0, v2}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :catch_0
    move-exception p0

    .line 202
    new-instance v1, Lyads/k76;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    .line 216
    sget-object v0, Lyads/bt4;->a:Lnl3;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 217
    invoke-static {p0}, Lyads/l20;->b(I)I

    move-result p0

    return p0

    .line 218
    :cond_0
    new-instance v0, Lyads/k76;

    const-string v1, "Wrong value format for color variable: \'"

    const-string v2, "\'"

    .line 219
    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 220
    invoke-direct {v0, p0, v1, v2}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    instance-of v0, p0, Lyads/s66;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lyads/s66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyads/s66;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p0, Lyads/r66;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lyads/r66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lyads/r66;->b(J)V

    return-void

    :cond_1
    instance-of v0, p0, Lyads/n66;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lyads/n66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lyads/n66;->b(Z)V

    return-void

    :cond_2
    instance-of v0, p0, Lyads/q66;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lyads/q66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lyads/q66;->b(D)V

    return-void

    :cond_3
    instance-of v0, p0, Lyads/o66;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lyads/o66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lyads/l20;

    invoke-virtual {v1}, Lyads/l20;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lyads/o66;->b(I)V

    return-void

    :cond_4
    instance-of v0, p0, Lyads/t66;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lyads/t66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lyads/t66;->b(Landroid/net/Uri;)V

    return-void

    :cond_5
    instance-of v0, p0, Lyads/p66;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lyads/p66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    return-void

    :cond_6
    instance-of v0, p0, Lyads/m66;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lyads/m66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lyads/m66;->b(Lorg/json/JSONArray;)V

    return-void

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lyads/k76;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to set value with type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final a(Lyads/u66;)V
    .locals 2

    .line 192
    iget-object p0, p0, Lyads/u66;->a:Lyads/gp4;

    .line 193
    invoke-virtual {p0}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, Lyads/fp4;

    invoke-virtual {v0}, Lyads/fp4;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl3;

    .line 194
    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 195
    instance-of v0, p0, Lyads/s66;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/s66;

    .line 196
    iget-object p0, p0, Lyads/s66;->c:Ljava/lang/String;

    return-object p0

    .line 197
    :cond_0
    instance-of v0, p0, Lyads/r66;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/r66;

    .line 198
    iget-wide v0, p0, Lyads/r66;->c:J

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    instance-of v0, p0, Lyads/n66;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/n66;

    .line 201
    iget-boolean p0, p0, Lyads/n66;->c:Z

    .line 202
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 203
    :cond_2
    instance-of v0, p0, Lyads/q66;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/q66;

    .line 204
    iget-wide v0, p0, Lyads/q66;->c:D

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 206
    :cond_3
    instance-of v0, p0, Lyads/o66;

    if-eqz v0, :cond_4

    check-cast p0, Lyads/o66;

    .line 207
    iget p0, p0, Lyads/o66;->c:I

    .line 208
    new-instance v0, Lyads/l20;

    invoke-direct {v0, p0}, Lyads/l20;-><init>(I)V

    return-object v0

    .line 209
    :cond_4
    instance-of v0, p0, Lyads/t66;

    if-eqz v0, :cond_5

    check-cast p0, Lyads/t66;

    .line 210
    iget-object p0, p0, Lyads/t66;->c:Landroid/net/Uri;

    return-object p0

    .line 211
    :cond_5
    instance-of v0, p0, Lyads/p66;

    if-eqz v0, :cond_6

    check-cast p0, Lyads/p66;

    .line 212
    iget-object p0, p0, Lyads/p66;->c:Lorg/json/JSONObject;

    return-object p0

    .line 213
    :cond_6
    instance-of v0, p0, Lyads/m66;

    if-eqz v0, :cond_7

    check-cast p0, Lyads/m66;

    .line 214
    iget-object p0, p0, Lyads/m66;->c:Lorg/json/JSONArray;

    return-object p0

    .line 215
    :cond_7
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lyads/u66;)V
    .locals 3

    instance-of v0, p0, Lyads/s66;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lyads/s66;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/s66;

    check-cast p1, Lyads/s66;

    invoke-virtual {p1}, Lyads/s66;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/s66;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p0, Lyads/r66;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lyads/r66;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/r66;

    check-cast p1, Lyads/r66;

    invoke-virtual {p1}, Lyads/r66;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyads/r66;->b(J)V

    return-void

    :cond_1
    instance-of v0, p0, Lyads/n66;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lyads/n66;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/n66;

    check-cast p1, Lyads/n66;

    invoke-virtual {p1}, Lyads/n66;->c()Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/n66;->b(Z)V

    return-void

    :cond_2
    instance-of v0, p0, Lyads/q66;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lyads/q66;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/q66;

    check-cast p1, Lyads/q66;

    invoke-virtual {p1}, Lyads/q66;->c()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyads/q66;->b(D)V

    return-void

    :cond_3
    instance-of v0, p0, Lyads/o66;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lyads/o66;

    if-eqz v0, :cond_4

    check-cast p0, Lyads/o66;

    check-cast p1, Lyads/o66;

    invoke-virtual {p1}, Lyads/o66;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/o66;->b(I)V

    return-void

    :cond_4
    instance-of v0, p0, Lyads/t66;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lyads/t66;

    if-eqz v0, :cond_5

    check-cast p0, Lyads/t66;

    check-cast p1, Lyads/t66;

    invoke-virtual {p1}, Lyads/t66;->c()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/t66;->b(Landroid/net/Uri;)V

    return-void

    :cond_5
    instance-of v0, p0, Lyads/p66;

    if-eqz v0, :cond_6

    instance-of v0, p1, Lyads/p66;

    if-eqz v0, :cond_6

    check-cast p0, Lyads/p66;

    check-cast p1, Lyads/p66;

    invoke-virtual {p1}, Lyads/p66;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    return-void

    :cond_6
    instance-of v0, p0, Lyads/m66;

    if-eqz v0, :cond_7

    instance-of v0, p1, Lyads/m66;

    if-eqz v0, :cond_7

    check-cast p0, Lyads/m66;

    check-cast p1, Lyads/m66;

    invoke-virtual {p1}, Lyads/m66;->c()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/m66;->b(Lorg/json/JSONArray;)V

    return-void

    :cond_7
    new-instance v0, Lyads/k76;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting value to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    instance-of v0, p0, Lyads/s66;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/s66;

    invoke-virtual {p0, p1}, Lyads/s66;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p0, Lyads/r66;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lyads/r66;

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, v1}, Lyads/r66;->b(J)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lyads/k76;

    invoke-direct {p1, v2, p0, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_1
    instance-of v0, p0, Lyads/n66;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/n66;

    invoke-static {p1}, Lyads/u66;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/n66;->b(Z)V

    return-void

    :cond_2
    instance-of v0, p0, Lyads/q66;

    if-eqz v0, :cond_3

    check-cast p0, Lyads/q66;

    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0, v0, v1}, Lyads/q66;->b(D)V

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lyads/k76;

    invoke-direct {p1, v2, p0, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_3
    instance-of v0, p0, Lyads/o66;

    if-eqz v0, :cond_4

    check-cast p0, Lyads/o66;

    invoke-static {p1}, Lyads/u66;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/o66;->b(I)V

    return-void

    :cond_4
    instance-of v0, p0, Lyads/t66;

    if-eqz v0, :cond_5

    check-cast p0, Lyads/t66;

    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p0, p1}, Lyads/t66;->b(Landroid/net/Uri;)V

    return-void

    :catch_2
    move-exception p0

    new-instance p1, Lyads/k76;

    invoke-direct {p1, v2, p0, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_5
    instance-of v0, p0, Lyads/p66;

    if-eqz v0, :cond_6

    check-cast p0, Lyads/p66;

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {p0, v0}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    return-void

    :catch_3
    move-exception p0

    new-instance p1, Lyads/k76;

    invoke-direct {p1, v2, p0, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_6
    instance-of v0, p0, Lyads/m66;

    if-eqz v0, :cond_7

    check-cast p0, Lyads/m66;

    :try_start_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-virtual {p0, v0}, Lyads/m66;->b(Lorg/json/JSONArray;)V

    return-void

    :catch_4
    move-exception p0

    new-instance p1, Lyads/k76;

    invoke-direct {p1, v2, p0, v1}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_7
    invoke-static {}, Lme0;->e()V

    return-void
.end method
