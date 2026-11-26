.class public final Lrc4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.serialization.json.JsonUnquotedLiteral"

    sget-object v1, Lca8;->a:Lca8;

    invoke-static {v0, v1}, Lk54;->a(Ljava/lang/String;Ldf4;)Li54;

    move-result-object v0

    sput-object v0, Lrc4;->a:Li54;

    return-void
.end method

.method public static final a(Loc4;)Lpd4;
    .locals 3

    instance-of v0, p0, Lpd4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lpd4;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    const-string v0, " is not a JsonPrimitive"

    const-string v2, "Element "

    invoke-static {p0, v2, v0}, Lbg;->h(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final b(Lpd4;)J
    .locals 5

    sget-object v0, Lxb4;->d:Lxb4$a;

    invoke-virtual {p0}, Lpd4;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lyp2;->b(Lxb4;Ljava/lang/String;)Lw98;

    move-result-object p0

    iget-object v0, p0, Lw98;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lw98;->h()J

    move-result-wide v1

    invoke-virtual {p0}, Lw98;->e()B

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    iget v1, p0, Lw98;->b:I

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "EOF"

    :goto_2
    const-string v1, "Expected input to contain a single valid number, but got \'"

    const-string v3, "\' after it"

    invoke-static {v1, v0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_3
    return-wide v1
.end method
