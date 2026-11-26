.class public final Ln74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll74;


# instance fields
.field public final a:Lv64;

.field public final b:Ljf6;


# direct methods
.method public constructor <init>(Lv64;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln74;->a:Lv64;

    iput-object p2, p0, Ln74;->b:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lm74;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lm74;

    iget v1, v0, Lm74;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm74;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm74;

    invoke-direct {v0, p0, p1}, Lm74;-><init>(Ln74;Lf02;)V

    :goto_0
    iget-object p1, v0, Lm74;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lm74;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lm74;->n:I

    iget-object p1, p0, Ln74;->a:Lv64;

    invoke-interface {p1, v0}, Lv64;->a(Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lo74;

    iget-object p0, p0, Ln74;->b:Ljf6;

    invoke-interface {p0}, Ljf6;->r0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lo74;->a(Z)Lx64;

    move-result-object p0

    return-object p0
.end method
