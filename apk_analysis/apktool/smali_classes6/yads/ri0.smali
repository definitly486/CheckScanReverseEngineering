.class public final Lyads/ri0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w0;


# instance fields
.field public final a:Lyads/wi0;


# direct methods
.method public constructor <init>(Lyads/wi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ri0;->a:Lyads/wi0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/pi0;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lyads/qi0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/qi0;

    iget v1, v0, Lyads/qi0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/qi0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/qi0;

    invoke-direct {v0, p0, p3}, Lyads/qi0;-><init>(Lyads/ri0;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/qi0;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/qi0;->d:I

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

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lyads/ri0;->a:Lyads/wi0;

    iput v3, v0, Lyads/qi0;->d:I

    invoke-virtual {p0, p1, p2, v0}, Lyads/wi0;->a(Landroid/content/Context;Lyads/pi0;Lf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lyads/n83;

    new-instance p0, Lyads/m83;

    invoke-direct {p0, v3, p3}, Lyads/m83;-><init>(ZLyads/n83;)V

    return-object p0
.end method

.method public final bridge synthetic a(Landroid/view/View;Lyads/u0;Lyads/c1;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p2, Lyads/pi0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ri0;->a(Landroid/view/View;Lyads/pi0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
