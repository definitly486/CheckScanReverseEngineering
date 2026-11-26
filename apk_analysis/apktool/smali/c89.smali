.class public final Lc89;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk5;

.field public final b:Ldc7;


# direct methods
.method public constructor <init>(Lk5;Ldc7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc89;->a:Lk5;

    iput-object p2, p0, Lc89;->b:Ldc7;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lb89;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb89;

    iget v1, v0, Lb89;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lb89;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lb89;

    invoke-direct {v0, p0, p1}, Lb89;-><init>(Lc89;Lf02;)V

    :goto_0
    iget-object p1, v0, Lb89;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lb89;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lb89;->l:Ldc7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc89;->b:Ldc7;

    iput-object p1, v0, Lb89;->l:Ldc7;

    iput v3, v0, Lb89;->o:I

    iget-object p0, p0, Lc89;->a:Lk5;

    invoke-interface {p0, v0}, Lk5;->c(Lb89;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    check-cast p1, Lt99;

    invoke-virtual {p0, p1}, Ldc7;->a(Lt99;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
