.class public final Lyads/bz2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vy2;

.field public final b:Lyads/rz2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lyads/vy2;

    invoke-direct {v0, p1}, Lyads/vy2;-><init>(Landroid/content/Context;)V

    new-instance v1, Lyads/rz2;

    invoke-direct {v1, p1}, Lyads/rz2;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/bz2;->a:Lyads/vy2;

    iput-object v1, p0, Lyads/bz2;->b:Lyads/rz2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/c65;Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lyads/xy2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/xy2;

    iget v1, v0, Lyads/xy2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/xy2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/xy2;

    invoke-direct {v0, p0, p2}, Lyads/xy2;-><init>(Lyads/bz2;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/xy2;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/xy2;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lyads/xy2;->b:Lyads/c65;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lyads/xy2;->b:Lyads/c65;

    :try_start_1
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lyads/c65;->a()Lyads/cz2;

    move-result-object p2

    iget-object v2, p0, Lyads/bz2;->b:Lyads/rz2;

    invoke-virtual {v2, p2}, Lyads/rz2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    :try_start_2
    iget-object p2, p0, Lyads/bz2;->a:Lyads/vy2;

    invoke-virtual {p1}, Lyads/c65;->b()Ljava/lang/String;

    move-result-object v2

    iput-object p1, v0, Lyads/xy2;->b:Lyads/c65;

    iput v6, v0, Lyads/xy2;->e:I

    invoke-virtual {p2, v2, v0}, Lyads/vy2;->a(Ljava/lang/String;Lyads/xy2;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p2, [B

    invoke-virtual {p1}, Lyads/c65;->a()Lyads/cz2;

    move-result-object v2

    iput-object p1, v0, Lyads/xy2;->b:Lyads/c65;

    iput v5, v0, Lyads/xy2;->e:I

    sget-object v5, Lqo2;->a:Loi2;

    sget-object v5, Lsh2;->c:Lsh2;

    new-instance v7, Lyads/az2;

    invoke-direct {v7, p2, p0, v2, v3}, Lyads/az2;-><init>([BLyads/bz2;Lyads/cz2;Le02;)V

    invoke-static {v5, v7, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    iget-object p0, p0, Lyads/bz2;->b:Lyads/rz2;

    invoke-virtual {p1}, Lyads/c65;->a()Lyads/cz2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lyads/rz2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_7

    move v4, v6

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lyads/c65;->a()Lyads/cz2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
