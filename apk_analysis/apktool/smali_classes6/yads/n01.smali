.class public final Lyads/n01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/vq0;Lyads/m01;Ljava/util/List;)Lyads/m01;
    .locals 13

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-interface {p1, v2}, Lyads/m01;->get(Ljava/lang/String;)Lyads/m01;

    move-result-object p1

    sget-object v1, Lyads/l01;->a:Lyads/l01;

    invoke-static {p1, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "Element with path \'"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {p2, v3}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    const-string v7, "/"

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a structure"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p2, v3}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    const-string v7, "/"

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :cond_1
    move v1, v3

    goto :goto_0

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unable to use \'"

    const-string v1, "\' as array index"

    invoke-static {v0, v2, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object v4

    :cond_2
    invoke-static {}, Lu96;->o()V

    throw v4

    :cond_3
    return-object p1
.end method

.method public static final a(Lyads/n01;Lyads/vq0;Ljava/util/List;Ljava/lang/Object;Lyads/u66;)Lyads/u66;
    .locals 3

    .line 168
    instance-of v0, p4, Lyads/m66;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lyads/m66;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    invoke-virtual {v0}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/json/JSONArray;

    .line 170
    new-instance v1, Lyads/j01;

    invoke-direct {v1, p0}, Lyads/j01;-><init>(Lorg/json/JSONArray;)V

    invoke-static {p2}, Lqn1;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lyads/n01;->a(Lyads/vq0;Lyads/m01;Ljava/util/List;)Lyads/m01;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {p2}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lyads/n01;->a(Lyads/vq0;Lyads/m01;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {v0, p0}, Lyads/m66;->b(Lorg/json/JSONArray;)V

    return-object p4

    .line 173
    :cond_0
    instance-of v0, p4, Lyads/p66;

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lyads/p66;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    invoke-virtual {v0}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/json/JSONObject;

    .line 175
    new-instance v1, Lyads/k01;

    invoke-direct {v1, p0}, Lyads/k01;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p2}, Lqn1;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lyads/n01;->a(Lyads/vq0;Lyads/m01;Ljava/util/List;)Lyads/m01;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-static {p2}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lyads/n01;->a(Lyads/vq0;Lyads/m01;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {v0, p0}, Lyads/p66;->b(Lorg/json/JSONObject;)V

    :cond_1
    return-object p4

    .line 178
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Action requires array or dictionary variable"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p4
.end method

.method public static a(Lyads/vq0;Lyads/m01;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 179
    :try_start_0
    invoke-interface {p1, p3, p2}, Lyads/m01;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 180
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v1, "Position \'"

    const-string v2, "\' is out of array bounds"

    .line 181
    invoke-static {v1, p2, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return v0

    :catch_1
    move-exception p1

    .line 183
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v1, "Unable to use \'"

    const-string v2, "\' as array index"

    .line 184
    invoke-static {v1, p2, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    .line 186
    instance-of p1, p2, Lyads/py0;

    if-eqz p1, :cond_0

    check-cast p2, Lyads/py0;

    .line 187
    iget-object p1, p2, Lyads/py0;->a:Lyads/q01;

    .line 188
    invoke-virtual {p0, p1, p3, p4}, Lyads/n01;->a(Lyads/q01;Lyads/vq0;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lyads/q01;Lyads/vq0;Lyads/fs2;)Z
    .locals 9

    .line 155
    iget-object v0, p1, Lyads/q01;->c:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    iget-object v1, p1, Lyads/q01;->a:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    const-string v2, "/"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lta8;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 161
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p1, Lyads/q01;->b:Lyads/oe2;

    invoke-static {p1, p3}, Lyads/o01;->c(Lyads/oe2;Lyads/fs2;)Ljava/lang/Object;

    move-result-object v7

    .line 163
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Malformed path \'"

    const-string p3, "\': all path segments are empty"

    .line 165
    invoke-static {p1, v1, p3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return v2

    .line 167
    :cond_2
    new-instance v3, Lvv9;

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lvv9;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v5, v0, p3, v3}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return v2
.end method
