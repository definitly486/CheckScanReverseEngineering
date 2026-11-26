.class public final Lyads/d53;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/kg0;


# direct methods
.method public constructor <init>(Lyads/kg0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/d53;->a:Lyads/kg0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lyads/c53;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/c53;

    iget v1, v0, Lyads/c53;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/c53;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/c53;

    invoke-direct {v0, p0, p2}, Lyads/c53;-><init>(Lyads/d53;Lf02;)V

    :goto_0
    iget-object p2, v0, Lyads/c53;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/c53;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lyads/c53;->b:Ljava/lang/String;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/d53;->a:Lyads/kg0;

    iput-object p1, v0, Lyads/c53;->b:Ljava/lang/String;

    iput v4, v0, Lyads/c53;->e:I

    iget-object p2, p0, Lyads/kg0;->d:Lr22;

    new-instance v2, Lyads/jg0;

    invoke-direct {v2, p0, v3}, Lyads/jg0;-><init>(Lyads/kg0;Le02;)V

    invoke-static {p2, v2, v0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lyads/ef0;

    iget-object p0, p2, Lyads/ef0;->d:Lyads/ne0;

    iget-object p0, p0, Lyads/ne0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lyads/le0;

    iget-object v0, v0, Lyads/le0;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    :cond_5
    return-object v3
.end method
