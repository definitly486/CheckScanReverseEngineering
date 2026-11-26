.class public final Lyads/sv4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sv4;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(JLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lyads/nv4;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/nv4;

    iget v1, v0, Lyads/nv4;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/nv4;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/nv4;

    invoke-direct {v0, p0, p3}, Lyads/nv4;-><init>(Lyads/sv4;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/nv4;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/nv4;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    new-instance p3, Lyads/qv4;

    invoke-direct {p3, p0, v3}, Lyads/qv4;-><init>(Lyads/sv4;Le02;)V

    iput v4, v0, Lyads/nv4;->d:I

    invoke-static {p1, p2, p3, v0}, Lyv8;->c(JLbm3;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/google/android/gms/appset/AppSetIdInfo;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    return-object p0

    :catchall_0
    :cond_4
    return-object v3
.end method
