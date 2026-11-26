.class public final Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field final synthetic $generationId$inlined:I

.field final synthetic $this_unsafeFlow:Lid3;


# direct methods
.method public constructor <init>(Lid3;I)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2;->$this_unsafeFlow:Lid3;

    iput p2, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2;->$generationId$inlined:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;

    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;-><init>(Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2;->$this_unsafeFlow:Lid3;

    check-cast p1, Landroidx/paging/ViewportHint;

    new-instance v2, Landroidx/paging/GenerationalViewportHint;

    iget p0, p0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2;->$generationId$inlined:I

    invoke-direct {v2, p0, p1}, Landroidx/paging/GenerationalViewportHint;-><init>(ILandroidx/paging/ViewportHint;)V

    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda$0$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, v2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
