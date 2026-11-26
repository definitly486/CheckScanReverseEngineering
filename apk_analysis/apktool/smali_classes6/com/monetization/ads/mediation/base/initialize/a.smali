.class public final Lcom/monetization/ads/mediation/base/initialize/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Lyads/bt;

.field public final c:Lyads/vy4;

.field public final d:Lyads/r44;

.field public final e:Lyads/i34;

.field public final f:Lyads/h34;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/monetization/ads/mediation/base/initialize/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/monetization/ads/mediation/base/initialize/a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lyads/bf5;)V
    .locals 5

    new-instance v0, Lyads/bt;

    invoke-direct {v0}, Lyads/bt;-><init>()V

    new-instance v1, Lyads/vy4;

    invoke-direct {v1}, Lyads/vy4;-><init>()V

    new-instance v2, Lyads/r44;

    invoke-direct {v2}, Lyads/r44;-><init>()V

    new-instance v3, Lyads/i34;

    invoke-direct {v3, v2}, Lyads/i34;-><init>(Lyads/r44;)V

    new-instance v4, Lyads/h34;

    invoke-direct {v4, v2}, Lyads/h34;-><init>(Lyads/r44;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/mediation/base/initialize/a;->a:Lyads/bf5;

    iput-object v0, p0, Lcom/monetization/ads/mediation/base/initialize/a;->b:Lyads/bt;

    iput-object v1, p0, Lcom/monetization/ads/mediation/base/initialize/a;->c:Lyads/vy4;

    iput-object v2, p0, Lcom/monetization/ads/mediation/base/initialize/a;->d:Lyads/r44;

    iput-object v3, p0, Lcom/monetization/ads/mediation/base/initialize/a;->e:Lyads/i34;

    iput-object v4, p0, Lcom/monetization/ads/mediation/base/initialize/a;->f:Lyads/h34;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/x54;Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lyads/u44;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lyads/u44;

    iget v1, v0, Lyads/u44;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/u44;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/u44;

    invoke-direct {v0, p0, p3}, Lyads/u44;-><init>(Lcom/monetization/ads/mediation/base/initialize/a;Lf02;)V

    :goto_0
    iget-object p3, v0, Lyads/u44;->c:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/u44;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/monetization/ads/mediation/base/initialize/a;->d:Lyads/r44;

    invoke-virtual {p3, p2}, Lyads/r44;->b(Lyads/x54;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/monetization/ads/mediation/base/initialize/a;->f:Lyads/h34;

    iget-object p0, p0, Lcom/monetization/ads/mediation/base/initialize/a;->a:Lyads/bf5;

    invoke-virtual {v2, p1, p2, p0}, Lyads/h34;->a(Landroid/content/Context;Lyads/x54;Lyads/bf5;)Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lyads/x54;->d()Ljava/util/Map;

    move-result-object p2

    iput-object p3, v0, Lyads/u44;->b:Ljava/lang/String;

    iput v4, v0, Lyads/u44;->e:I

    invoke-interface {p0, p1, p2, v0}, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializer;->initialize(Landroid/content/Context;Ljava/util/Map;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p3

    check-cast v3, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializationResult;

    :cond_4
    instance-of p0, v3, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializationResult$Failure;

    if-eqz p0, :cond_5

    check-cast v3, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializationResult$Failure;

    invoke-virtual {v3}, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializationResult$Failure;->getErrorCode()I

    invoke-virtual {v3}, Lcom/monetization/ads/mediation/base/initialize/MediatedAdapterInitializationResult$Failure;->getErrorMessage()Ljava/lang/String;

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
