.class public final Lfs4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldo3;


# direct methods
.method public constructor <init>(Ldo3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs4;->a:Ldo3;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Les4;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Les4;

    iget v1, v0, Les4;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Les4;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Les4;

    invoke-direct {v0, p0, p1}, Les4;-><init>(Lfs4;Lf02;)V

    :goto_0
    iget-object p1, v0, Les4;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Les4;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Les4;->n:I

    iget-object p0, p0, Lfs4;->a:Ldo3;

    invoke-interface {p0, v0}, Ldo3;->a(Les4;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lln3;

    invoke-virtual {p1}, Lln3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfs4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_2
    move-object v2, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lln3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfs4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Lkn3;

    invoke-virtual {p1}, Lln3;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfs4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lln3;->c()Lln3$a;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lln3$a;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v3

    :goto_3
    invoke-static {p1}, Lfs4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, v1, v4, p1}, Lkn3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-eqz v2, :cond_4

    return-object v2

    :cond_8
    return-object v3
.end method
