.class public final Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt;->transform(Landroidx/paging/PagingData;Lbm3;)Landroidx/paging/PagingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Landroidx/paging/PageEvent<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $this_unsafeTransform$inlined:Lhd3;

.field final synthetic $transform$inlined:Lbm3;


# direct methods
.method public constructor <init>(Lhd3;Lbm3;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->$this_unsafeTransform$inlined:Lhd3;

    iput-object p2, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->$transform$inlined:Lbm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->$this_unsafeTransform$inlined:Lhd3;

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2;

    iget-object p0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->$transform$inlined:Lbm3;

    invoke-direct {v1, p1, p0}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2;-><init>(Lid3;Lbm3;)V

    invoke-interface {v0, v1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public collect$$forInline(Lid3;Le02;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;-><init>(Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;Le02;)V

    iget-object v0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->$this_unsafeTransform$inlined:Lhd3;

    new-instance v1, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2;

    iget-object p0, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->$transform$inlined:Lbm3;

    invoke-direct {v1, p1, p0}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$2;-><init>(Lid3;Lbm3;)V

    invoke-interface {v0, v1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
