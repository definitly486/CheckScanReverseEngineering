.class public final Lob5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.scanner.presentation.detector.MlQrDetector$detect$1"
    f = "MlQrDetector.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lug6<",
        "-",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Landroid/graphics/Bitmap;

.field public final synthetic o:Lpb5;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lpb5;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lpb5;",
            "Le02<",
            "-",
            "Lob5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lob5;->n:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lob5;->o:Lpb5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lob5;

    iget-object v1, p0, Lob5;->n:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lob5;->o:Lpb5;

    invoke-direct {v0, v1, p0, p2}, Lob5;-><init>(Landroid/graphics/Bitmap;Lpb5;Le02;)V

    iput-object p1, v0, Lob5;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lug6;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lob5;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lob5;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lob5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lob5;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lob5;->m:Ljava/lang/Object;

    check-cast p1, Lug6;

    new-instance v1, Lsc0;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Lsc0;-><init>(I)V

    invoke-static {v1}, Ltc0;->h(Lsc0;)Lylb;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v12, Lq54;

    iget-object v3, p0, Lob5;->n:Landroid/graphics/Bitmap;

    invoke-direct {v12, v3}, Lq54;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v10

    const-string v3, "vision-common"

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzms;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmu;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;IIJIIII)V

    invoke-virtual {v1, v12}, Lylb;->a(Lq54;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lob5$a;

    iget-object v5, p0, Lob5;->o:Lpb5;

    invoke-direct {v4, v5, p1}, Lob5$a;-><init>(Lpb5;Lug6;)V

    new-instance v5, Lff1;

    invoke-direct {v5, v4}, Lff1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lgd0;

    invoke-direct {v4, p1}, Lgd0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v3, Lob5$b;

    invoke-direct {v3, v1}, Lob5$b;-><init>(Lylb;)V

    iput v2, p0, Lob5;->l:I

    invoke-static {p1, v3, p0}, Lsg6;->a(Lug6;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
