.class public final Lyads/s83;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/s83;->a:Lyads/e4;

    iput-object p2, p0, Lyads/s83;->b:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/dt;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lyads/r83;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/r83;

    iget v1, v0, Lyads/r83;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/r83;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/r83;

    invoke-direct {v0, p0, p3}, Lyads/r83;-><init>(Lyads/s83;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/r83;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/r83;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Lyads/jn2;

    iget-object v2, p0, Lyads/s83;->a:Lyads/e4;

    iget-object p0, p0, Lyads/s83;->b:Lyads/bf5;

    invoke-direct {p3, v2, p0, p2}, Lyads/jn2;-><init>(Lyads/e4;Lyads/bf5;Lyads/dt;)V

    iput v3, v0, Lyads/r83;->d:I

    invoke-virtual {p3, p1, v0}, Lyads/jn2;->a(Landroid/content/Context;Lf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/String;

    return-object p3
.end method
