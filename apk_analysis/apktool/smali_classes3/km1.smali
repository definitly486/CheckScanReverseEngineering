.class public final Lkm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;


# static fields
.field public static final synthetic b:Lkm1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkm1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkm1;->b:Lkm1;

    return-void
.end method

.method public static final a(Lhd3;I)Lie3;
    .locals 1

    if-ltz p1, :cond_0

    new-instance v0, Lie3;

    invoke-direct {v0, p0, p1}, Lie3;-><init>(Lhd3;I)V

    return-object v0

    :cond_0
    const-string p0, "Drop count should be non-negative, but had "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lid3;Ljava/lang/Object;Ljava/lang/Object;Lf02;)La32;
    .locals 4

    instance-of v0, p3, Lme3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lme3;

    iget v1, v0, Lme3;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lme3;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lme3;

    invoke-direct {v0, p3}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p3, v0, Lme3;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lme3;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p2, v0, Lme3;->l:Ljava/lang/Object;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Lme3;->l:Ljava/lang/Object;

    iput v3, v0, Lme3;->n:I

    invoke-interface {p0, p1, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzI()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
