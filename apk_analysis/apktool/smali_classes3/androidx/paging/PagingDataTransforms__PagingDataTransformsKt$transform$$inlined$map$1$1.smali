.class public final Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;
.super Lf02;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;


# direct methods
.method public constructor <init>(Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;Le02;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;->this$0:Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;->label:I

    iget-object p1, p0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1$1;->this$0:Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$transform$$inlined$map$1;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
