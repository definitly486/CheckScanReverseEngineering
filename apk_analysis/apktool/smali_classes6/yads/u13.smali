.class public abstract Lyads/u13;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/o13;

    invoke-direct {v0}, Lyads/o13;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/w13;)Ljava/lang/CharSequence;
    .locals 2

    .line 114
    invoke-virtual {p0}, Lyads/w13;->b()Z

    move-result v0

    invoke-virtual {p0}, Lyads/w13;->a()Lyads/xo2;

    move-result-object p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vararg "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyads/xo2;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/u13;Lyads/xo2;Lyads/xo2;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    sget-object p0, Lyads/xo2;->c:Lyads/xo2;

    if-ne p1, p0, :cond_0

    sget-object p0, Lyads/t13;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final a(Lyads/xo2;Lyads/xo2;)Z
    .locals 0

    .line 110
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
.end method

.method public abstract a()Ljava/util/List;
.end method

.method public final a(Ljava/util/List;)Lyads/s13;
    .locals 1

    .line 111
    new-instance v0, Llda;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lyads/u13;->a(Ljava/util/List;Lbm3;)Lyads/s13;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/List;Lbm3;)Lyads/s13;
    .locals 4

    invoke-virtual {p0}, Lyads/u13;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lyads/u13;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/u13;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Lyads/u13;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lyads/u13;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lu96;->g(Ljava/util/List;)I

    move-result v3

    if-le v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/w13;

    iget-object v2, v2, Lyads/w13;->a:Lyads/xo2;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance p0, Lyads/q13;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/xo2;

    invoke-direct {p0, v2, p1}, Lyads/q13;-><init>(Lyads/xo2;Lyads/xo2;)V

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object p0, Lyads/r13;->a:Lyads/r13;

    return-object p0

    :cond_5
    :goto_3
    new-instance p0, Lyads/p13;

    invoke-direct {p0, v0}, Lyads/p13;-><init>(I)V

    return-object p0
.end method

.method public final b(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lyads/u13;->a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lyads/xo2;->c:Lyads/xo2;

    instance-of p2, p1, Ljava/lang/Long;

    const/4 p3, 0x0

    const-string v0, "Unable to find type for "

    const-string v1, "Unable to find type for null"

    if-eqz p2, :cond_0

    sget-object v2, Lyads/xo2;->c:Lyads/xo2;

    goto :goto_0

    :cond_0
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    sget-object v2, Lyads/xo2;->d:Lyads/xo2;

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    sget-object v2, Lyads/xo2;->e:Lyads/xo2;

    goto :goto_0

    :cond_2
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lyads/xo2;->f:Lyads/xo2;

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lyads/fd0;

    if-eqz v2, :cond_4

    sget-object v2, Lyads/xo2;->g:Lyads/xo2;

    goto :goto_0

    :cond_4
    instance-of v2, p1, Lyads/l20;

    if-eqz v2, :cond_5

    sget-object v2, Lyads/xo2;->h:Lyads/xo2;

    goto :goto_0

    :cond_5
    instance-of v2, p1, Lyads/q46;

    if-eqz v2, :cond_6

    sget-object v2, Lyads/xo2;->i:Lyads/xo2;

    goto :goto_0

    :cond_6
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    sget-object v2, Lyads/xo2;->j:Lyads/xo2;

    goto :goto_0

    :cond_7
    instance-of v2, p1, Lorg/json/JSONArray;

    if-eqz v2, :cond_13

    sget-object v2, Lyads/xo2;->k:Lyads/xo2;

    :goto_0
    invoke-virtual {p0}, Lyads/u13;->d()Lyads/xo2;

    move-result-object v3

    if-eq v2, v3, :cond_12

    new-instance v2, Lyads/vo2;

    if-nez p2, :cond_11

    instance-of p2, p1, Ljava/lang/Double;

    if-nez p2, :cond_10

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_f

    instance-of p2, p1, Ljava/lang/String;

    if-nez p2, :cond_e

    instance-of p2, p1, Lyads/fd0;

    if-nez p2, :cond_d

    instance-of p2, p1, Lyads/l20;

    if-nez p2, :cond_c

    instance-of p2, p1, Lyads/q46;

    if-nez p2, :cond_b

    instance-of p2, p1, Lorg/json/JSONObject;

    if-nez p2, :cond_a

    instance-of p2, p1, Lorg/json/JSONArray;

    if-nez p2, :cond_9

    if-nez p1, :cond_8

    invoke-static {v1}, Lqg;->h(Ljava/lang/String;)V

    return-object p3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqg;->h(Ljava/lang/String;)V

    return-object p3

    :cond_9
    sget-object p1, Lyads/xo2;->k:Lyads/xo2;

    goto :goto_1

    :cond_a
    sget-object p1, Lyads/xo2;->j:Lyads/xo2;

    goto :goto_1

    :cond_b
    sget-object p1, Lyads/xo2;->i:Lyads/xo2;

    goto :goto_1

    :cond_c
    sget-object p1, Lyads/xo2;->h:Lyads/xo2;

    goto :goto_1

    :cond_d
    sget-object p1, Lyads/xo2;->g:Lyads/xo2;

    goto :goto_1

    :cond_e
    sget-object p1, Lyads/xo2;->f:Lyads/xo2;

    goto :goto_1

    :cond_f
    sget-object p1, Lyads/xo2;->e:Lyads/xo2;

    goto :goto_1

    :cond_10
    sget-object p1, Lyads/xo2;->d:Lyads/xo2;

    goto :goto_1

    :cond_11
    sget-object p1, Lyads/xo2;->c:Lyads/xo2;

    :goto_1
    invoke-virtual {p0}, Lyads/u13;->d()Lyads/xo2;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Function "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " returned "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was expected."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    return-object p1

    :cond_13
    if-nez p1, :cond_14

    invoke-static {v1}, Lqg;->h(Ljava/lang/String;)V

    return-object p3

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqg;->h(Ljava/lang/String;)V

    return-object p3
.end method

.method public final b(Ljava/util/List;)Lyads/s13;
    .locals 1

    .line 229
    new-instance v0, Lkda;

    invoke-direct {v0, p0}, Lkda;-><init>(Lyads/u13;)V

    invoke-virtual {p0, p1, v0}, Lyads/u13;->a(Ljava/util/List;Lbm3;)Lyads/s13;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 230
    invoke-virtual {p0}, Lyads/u13;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w13;

    if-eqz p0, :cond_0

    .line 231
    iget-boolean p0, p0, Lyads/w13;->b:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lyads/xo2;
.end method

.method public abstract e()Z
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lyads/u13;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "("

    invoke-static {p0, v1}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lxr2;

    const/4 p0, 0x4

    invoke-direct {v5, p0}, Lxr2;-><init>(I)V

    const/4 v4, 0x0

    const/16 v6, 0x19

    const/4 v1, 0x0

    const-string v3, ")"

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
