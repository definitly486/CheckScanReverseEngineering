.class public final Lyads/m23;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/kg0;


# direct methods
.method public constructor <init>(Lyads/kg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/m23;->a:Lyads/kg0;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lyads/l23;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/l23;

    iget v1, v0, Lyads/l23;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/l23;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/l23;

    invoke-direct {v0, p0, p1}, Lyads/l23;-><init>(Lyads/m23;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/l23;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/l23;->d:I

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

    iget-object p0, p0, Lyads/m23;->a:Lyads/kg0;

    iput v4, v0, Lyads/l23;->d:I

    iget-object p1, p0, Lyads/kg0;->d:Lr22;

    new-instance v2, Lyads/jg0;

    invoke-direct {v2, p0, v3}, Lyads/jg0;-><init>(Lyads/kg0;Le02;)V

    invoke-static {p1, v2, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lyads/ef0;

    iget-object p0, p1, Lyads/ef0;->g:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/od0;

    new-instance v1, Lyads/sd0;

    iget-object v2, v0, Lyads/od0;->a:Ljava/lang/String;

    iget-object v3, v0, Lyads/od0;->b:Ljava/lang/String;

    iget-object v0, v0, Lyads/od0;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lyads/sd0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lyads/fe0;

    invoke-direct {p0, p1}, Lyads/fe0;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
